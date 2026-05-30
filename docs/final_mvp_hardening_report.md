# Final MVP Hardening Report

Date: 2026-05-28

Scope: static hardening pass for the private personal-alpha MVP. This was not a penetration test, production readiness review, or legal/compliance review.

## Issues Found

### Fixed

1. Legacy migration exposed the invite allowlist
   - File: `supabase/migrations/001_personal_alpha.sql`
   - Finding: the older migration created a policy allowing all authenticated users to read `allowed_users`.
   - Risk: allowlisted friend emails could be exposed if someone applied the legacy migration instead of the MVP migration.
   - Fix: enabled RLS on `allowed_users` in the legacy migration and removed the authenticated read policy. The current MVP migration already had the safer shape.

### Reviewed With No Clear Issue Found

1. Hardcoded secrets
   - Searched for OpenAI keys, Supabase service role keys, bearer tokens, secret-looking names, and common key patterns.
   - Found only environment variable references, placeholder documentation values, and local smoke-test env checks.

2. Console logs with secrets
   - Runtime server logging uses `lib/logger.ts`.
   - Normal mode logs ids, counts, statuses, lengths, route paths, and reasons.
   - Secret-looking field names are redacted by the logger.
   - `DEBUG_LOGS=true` can include sensitive user text by design for local debugging; keep it off in deployed environments.

3. Routes missing auth
   - All `app/api/**/route.ts` files call `requireUser` or owner-gated `requireOwner`.
   - Admin allowlist route checks authenticated user email against `OWNER_EMAIL` before using the Supabase admin client.

4. Memory query user scoping
   - Server API routes use authenticated Supabase clients, relying on RLS.
   - Browser reads also rely on RLS from the Supabase browser client.
   - `match_memories` in `001_personal_alpha_mvp.sql` includes `memories.user_id = auth.uid()`.

5. Inactive memory leakage into AI
   - Ask AI retrieval goes through `match_memories`, which filters to `confirmed` and `edited`.
   - `buildMemoryPrompt` filters to active memory statuses before formatting.
   - Today route explicitly queries only `confirmed` and `edited`.
   - Confirm/reject/archive/delete flows clear or regenerate embeddings as expected.

## Files Changed

- `supabase/migrations/001_personal_alpha.sql`
  - Removed authenticated allowlist read exposure and enabled RLS on `allowed_users`.
- `docs/final_mvp_hardening_report.md`
  - Added this hardening report.

## Risks Remaining

- The app still relies on Supabase RLS for browser-side table reads and many server-side authenticated table operations. A live Supabase project should be checked after migration application.
- `DEBUG_LOGS=true` may log sensitive reflection/question/answer text. Use only for local debugging and keep `DEBUG_LOGS=false` in deployed environments.
- AI interaction rows intentionally store raw inputs and outputs. This is existing app behavior and should be reviewed before any broader launch.
- The smoke test validates live OpenAI/Supabase connectivity only when real local credentials are present. It is not run in CI.
- This remains a private personal-alpha MVP, not a production, clinical, emergency-support, or legal-ready product.

## Manual Tests Recommended

1. Apply `supabase/migrations/001_personal_alpha_mvp.sql` to a clean Supabase project.
2. Run `npm run smoke` with real local `.env.local` values.
3. Sign in as `OWNER_EMAIL`.
4. Confirm `/admin` is owner-only.
5. Add a friend email to `allowed_users`.
6. Sign in as the allowlisted friend.
7. Confirm a non-allowlisted authenticated user is blocked.
8. Submit a reflection and verify draft memories are created.
9. Confirm a draft memory and verify it appears on Memories.
10. Ask AI a memory-relevant question and verify only confirmed/edited memories are shown as used.
11. Reject/archive/delete a memory and verify it disappears from active views and AI context.
12. Generate Today and verify it does not include draft/rejected/deleted/archived memories.
13. Create, edit, and delete a calendar event.
14. Create a daily review and optionally generate an AI summary.
15. Export current-user data from Settings.
16. Delete personal data using `DELETE MY DATA` and verify current-user app data disappears while auth and allowlist records remain.

## Build Status

Final local validation passed:

- `npm run typecheck` equivalent: `tsc --noEmit`
- `npm run lint` equivalent: repository ESLint command
- `npm run build` equivalent: `next build`
