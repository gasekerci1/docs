# MVP Build Audit: Personal Alpha

Audit date: 2026-05-28

Scope: current repository code only. This audit inspected `package.json`, root-level `app/` routes, `app/api` routes, `lib/` helpers, `components/`, and `supabase/migrations`. It does not assume behavior from product documents unless code exists in the app.

## 1. Current App Architecture

- Framework: Next.js App Router using root-level `app/` routes. There is no `src/app/`, and the active app entry points are `app/layout.tsx` and `app/page.tsx`.
- Main UI: `app/page.tsx` renders `components/PersonalAlphaApp.tsx`.
- Client app: `components/PersonalAlphaApp.tsx` is a single `"use client"` component that owns auth state, tab navigation, data loading, and most UI flows.
- Styling: Tailwind CSS configured in `tailwind.config.ts`, global CSS in `app/globals.css`.
- Backend: Next route handlers under `app/api/**/route.ts`.
- Database: Supabase client helpers in `lib/supabase.ts`; schema migration in `supabase/migrations/001_personal_alpha.sql`.
- AI: OpenAI helper functions in `lib/openai.ts`.
- Validation: API request validation uses Zod through `lib/api.ts`.
- Authentication model: Supabase magic-link auth from the browser, then server API routes require an `Authorization: Bearer <access_token>` header via `lib/auth.ts`.
- Invite gate: `lib/auth.ts` allows `OWNER_EMAIL` or an email found in the `allowed_users` table.

`package.json` scripts:

- `dev`: `next dev`
- `build`: Next build with telemetry disabled and `NEXT_TEST_WASM_DIR`
- `start`: `next start`
- `lint`: ESLint over `app`, `components`, `lib`, and config files
- `typecheck`: `tsc --noEmit`
- `health`: lint, typecheck, build
- `clean`: removes `.next` and `tsconfig.tsbuildinfo`

Dependencies found:

- Runtime: `next`, `react`, `react-dom`, `@supabase/supabase-js`, `openai`, `zod`, `lucide-react`
- Dev: TypeScript, ESLint, Tailwind, PostCSS, Next SWC WASM package

## 2. Current API Routes

### `GET /api/me`

File: `app/api/me/route.ts`

- Requires a valid Supabase session through `requireUser`.
- Returns `{ user: { id, email } }`.
- `requireUser` also upserts `profiles` and `user_settings`.

### `POST /api/ai/reflect`

File: `app/api/ai/reflect/route.ts`

- Requires auth.
- Accepts `{ content }`, 5 to 12000 characters.
- Sends the reflection text to OpenAI through `privateResponse`.
- Prompts the model to return strict JSON with `reflection` and up to 4 draft memories.
- Parses model JSON if possible.
- If parsing fails, falls back to one draft memory containing the original reflection.
- Inserts a `journal_entries` row.
- Inserts draft `memories` rows with `status: "draft"`, `source: "reflection"`, and `metadata.journal_entry_id`.
- Logs an `ai_interactions` row.
- Returns `{ reflection, drafts }`.

### `POST /api/memories/confirm`

File: `app/api/memories/confirm/route.ts`

- Requires auth.
- Accepts `{ id, title?, content? }`.
- Loads the memory by ID.
- Rejects confirmation if the existing status is `rejected`, `deleted`, or `archived`.
- Uses existing title/content unless edits are supplied.
- Sets status to `confirmed` if existing status is `draft`; otherwise sets status to `edited`.
- Creates an OpenAI embedding for `title + content`.
- Updates the memory with `embedding`, `confirmed_at`, and clears `deleted_at`/`archived_at`.
- Returns `{ memory }`.

### `POST /api/memories/reject`

File: `app/api/memories/reject/route.ts`

- Requires auth.
- Accepts `{ id }`.
- Updates the memory to `status: "rejected"` and clears `embedding`.
- Returns `{ memory }`.

### `POST /api/memories/archive`

File: `app/api/memories/archive/route.ts`

- Requires auth.
- Accepts `{ id }`.
- Updates the memory to `status: "archived"`, clears `embedding`, and sets `archived_at`.
- Returns `{ memory }`.

### `POST /api/memories/delete`

File: `app/api/memories/delete/route.ts`

- Requires auth.
- Accepts `{ id, hard? }`.
- If `hard` is true, deletes the memory row.
- Otherwise sets `status: "deleted"`, clears `embedding`, and sets `deleted_at`.
- Returns either `{ deleted: true }` or `{ memory }`.

### `POST /api/ai/ask`

File: `app/api/ai/ask/route.ts`

- Requires auth.
- Accepts `{ question }`, 3 to 4000 characters.
- Embeds the question.
- Calls Supabase RPC `match_memories` with `match_count: 8`.
- Prompts OpenAI with only the returned confirmed/edited memories plus the question.
- Logs an `ai_interactions` row with memory IDs.
- Returns `{ answer, memories }`.

### `GET /api/ai/today`

File: `app/api/ai/today/route.ts`

- Requires auth.
- Loads up to 8 confirmed/edited memories.
- Loads calendar events for the server-computed current day.
- Loads the 3 most recent reviews.
- Prompts OpenAI for a concise Today directive.
- Logs an `ai_interactions` row.
- Returns `{ directive, events, reviews }`.

### `GET /api/export`

File: `app/api/export/route.ts`

- Requires auth.
- Selects all rows visible to the user from:
  `profiles`, `memories`, `journal_entries`, `modules`, `lessons`, `questions`, `answers`, `calendar_events`, `reviews`, `ai_interactions`, `user_settings`.
- Returns JSON with `exported_at`, `user_id`, and `data`.

### `DELETE /api/export`

File: `app/api/export/route.ts`

- Requires auth.
- Deletes user rows from:
  `ai_interactions`, `answers`, `questions`, `lessons`, `modules`, `reviews`, `calendar_events`, `journal_entries`, `memories`.
- Does not delete `profiles`, `user_settings`, the Supabase auth user, or `allowed_users`.
- Returns `{ deleted: true }`.

## 3. Current Data Model Assumptions

Migration file: `supabase/migrations/001_personal_alpha.sql`

Tables found:

- `allowed_users`: invite allowlist by email.
- `profiles`: one profile per Supabase auth user.
- `memories`: user-owned memory records with lifecycle status, tags, metadata, and optional vector embedding.
- `journal_entries`: raw reflection entries plus AI reflection text.
- `modules`: user-owned learning modules.
- `lessons`: user-owned lessons under modules.
- `questions`: user-owned lesson questions.
- `answers`: user-owned answers to questions.
- `calendar_events`: lightweight events.
- `reviews`: daily/weekly review records.
- `ai_interactions`: prompt/response logging for AI routes.
- `user_settings`: tone and timezone preferences.

Enums found:

- `memory_status`: `draft`, `confirmed`, `edited`, `rejected`, `deleted`, `archived`.
- `review_kind`: `daily`, `weekly`.

Vector assumptions:

- `create extension if not exists vector`.
- `memories.embedding` is `vector(1536)`.
- `lib/openai.ts` uses `text-embedding-3-small`, which returns 1536-dimensional embeddings.
- The schema includes a check constraint requiring embeddings to be null unless status is `confirmed` or `edited`.
- `match_memories(query_embedding vector(1536), match_count int default 8)` only returns memories for `auth.uid()`, with status `confirmed` or `edited`, and non-null embedding.

RLS assumptions:

- RLS is enabled on all user-owned tables except `allowed_users`.
- User-owned table policies use `auth.uid() = user_id`.
- A select policy exists on `allowed_users`, but this migration does not include `alter table allowed_users enable row level security`.

UI/database assumptions found in `components/PersonalAlphaApp.tsx`:

- The browser directly selects from `memories`, `calendar_events`, `reviews`, `modules`, and `user_settings`.
- The browser directly inserts manual draft memories, starter modules/lessons/questions, calendar events, reviews, and settings.
- Memory confirmation/rejection/archive/delete flows use server API routes.
- Reflection, Ask AI, Today, export, and delete-data flows use server API routes.

## 4. Current AI/Memory Flow

### Reflection

Found in:

- UI: `components/PersonalAlphaApp.tsx`
- API: `app/api/ai/reflect/route.ts`
- AI helper: `lib/openai.ts`

Flow:

1. User enters a reflection in the Memory Inbox tab.
2. UI calls `POST /api/ai/reflect`.
3. API sends the raw reflection to OpenAI using `privateResponse`.
4. API asks for a short reflection and up to 4 possible memories.
5. API stores the original content and reflection in `journal_entries`.
6. API stores extracted memories as draft rows in `memories`.
7. UI refreshes and shows draft memories.

### Draft Memory

Found in:

- Reflection draft creation: `app/api/ai/reflect/route.ts`
- Manual draft creation: `components/PersonalAlphaApp.tsx`
- Schema: `supabase/migrations/001_personal_alpha.sql`

Draft memories are stored with `status: "draft"` and no embedding. Draft memories appear in the Memory Inbox. Manual memories are inserted directly from the browser as drafts with `source: "manual"`.

### Confirmation

Found in:

- UI: `components/PersonalAlphaApp.tsx`
- API: `app/api/memories/confirm/route.ts`

Flow:

1. User clicks confirm or edits and saves a memory card.
2. UI calls `POST /api/memories/confirm`.
3. API blocks inactive memories.
4. API updates title/content if provided.
5. API sets status to `confirmed` for drafts or `edited` otherwise.
6. API stores `confirmed_at`.

### Embedding

Found in:

- API: `app/api/memories/confirm/route.ts`
- Helper: `lib/openai.ts`

Embeddings are created only during memory confirmation/edit confirmation. Draft, rejected, archived, and deleted memories have no embedding in the implemented flows.

### Retrieval

Found in:

- API: `app/api/ai/ask/route.ts`
- Migration RPC: `match_memories` in `supabase/migrations/001_personal_alpha.sql`

Flow:

1. Ask AI embeds the user question.
2. Ask AI calls `match_memories`.
3. The RPC filters to `auth.uid()`, status `confirmed`/`edited`, and non-null embeddings.
4. Results are sorted by vector distance and limited to 8.

### Ask AI

Found in:

- UI: `components/PersonalAlphaApp.tsx`
- API: `app/api/ai/ask/route.ts`

Flow:

1. User asks a question in the Ask AI tab.
2. API retrieves matching confirmed/edited memories.
3. Prompt tells the model to use only those memories, and not infer from rejected, deleted, archived, or draft memories.
4. API logs input, output, and memory IDs in `ai_interactions`.
5. UI displays the answer and source memory titles/similarity scores.

## 5. Missing MVP Pieces

### Product flow gaps

- No onboarding flow beyond magic-link sign-in and starter module seeding.
- No first-run setup for values, goals, consent, timezone, or safety boundaries.
- No dedicated answer-taking flow for `questions`; the `answers` table exists but no UI/API code writes answers.
- Modules can be seeded, but there is no module authoring/editing UI in the app.
- Calendar supports create/list only; no edit/delete UI found.
- Reviews support create/list only; no edit/delete UI found.
- Settings are stored, but `tone` and `timezone` are not used by the AI prompts found in `app/api/ai/*`.
- Today uses server-side `new Date()` instead of `user_settings.timezone`.
- No visible memory search/filter/tag management beyond active/draft tab separation.
- No UI for archived, rejected, or deleted memories.
- No confirmation step before "Delete my data" in the UI.
- No code found for account deletion or Supabase auth user deletion.

### API/backend gaps

- Several CRUD operations are done directly from the browser against Supabase instead of through validated API routes.
- No server API found for modules, lessons, questions, answers, calendar events, reviews, or settings.
- No rate limiting found on AI routes.
- No timeout/retry/error-normalization layer found around OpenAI calls.
- No robust structured-output enforcement for `/api/ai/reflect`; it asks for JSON, then falls back if parsing fails.
- No validation found for model-extracted draft memory title/content/tags before insert.
- No deduplication or similarity check before creating draft/confirmed memories.
- No migration seed for starter modules; seed content lives only in `lib/seed.ts` and is inserted from the browser.
- No migrations found beyond `001_personal_alpha.sql`.

### AI/memory gaps

- Reflection draft extraction exists, but there is no evidence of eval tests or prompt regression tests.
- Confirmation embeds memories, but manual draft creation does not call an API until confirmation.
- Retrieval exists for Ask AI, but Today does not use semantic retrieval; it loads the latest 8 confirmed/edited memories.
- `ai_interactions` logs raw AI inputs and outputs, but no retention policy code was found.
- No memory provenance UI beyond status/title/content; `source`, `tags`, and `metadata` are not surfaced meaningfully.
- No user-facing controls for what data is sent to OpenAI per request.
- No code found for a "forget this source/journal entry and derived memories" flow.

### Quality/testing gaps

- No test files or test config were found in the app code.
- No Playwright/Vitest/Jest config found.
- No generated Supabase TypeScript database types found.
- `lib/types.ts` is hand-written and partial.
- No API contract tests found for auth failures, validation errors, RLS behavior, memory lifecycle, vector retrieval, or export/delete.
- No accessibility tests found.

## 6. Security/Privacy Risks

- Raw reflections, questions, memory content, calendar data, and review data are sent to OpenAI in AI routes. `lib/openai.ts` sets `store: false` for Responses API calls, but the app still transmits sensitive personal data to a third party.
- Embedding calls use the OpenAI SDK and send memory/question text to OpenAI; no user-facing consent or per-flow disclosure was found in app code.
- `ai_interactions` stores raw inputs and outputs. Export includes it, but delete-data does not remove `profiles` or `user_settings`, and no retention policy was found.
- `allowed_users` has a select policy but no RLS enable statement in the migration. That policy is not effective unless RLS is enabled.
- The browser directly accesses and mutates several tables. RLS policies limit rows by user, but client-side writes have less centralized validation and auditability than server routes.
- The client refresh fetches all memory rows visible to the user, including statuses not displayed in the active UI. This is still user-owned data, but it means rejected/deleted/archived memory content can be present in the browser response.
- Memory action API routes update by memory ID and rely on RLS for ownership scoping; there is no explicit `.eq("user_id", auth.user.id)` in those route handlers.
- No rate limiting or abuse controls were found for AI routes.
- No CSRF-specific protection was found. The API relies on bearer tokens supplied by the browser app.
- No crisis/safety escalation or self-harm boundary handling was found in AI prompts or route code.
- No UI confirmation found before bulk data deletion.
- No audit trail for memory status changes was found beyond current row fields and AI interaction logs.

## 7. Recommended Build Order

1. Stabilize the schema/security foundation.
   - Enable RLS on `allowed_users` or remove the ineffective policy.
   - Generate typed Supabase database types.
   - Add explicit user ownership filters in mutation routes where practical.
   - Decide and document retention behavior for `ai_interactions`, `journal_entries`, and deleted memories.

2. Move MVP writes behind validated server APIs.
   - Add route handlers for calendar events, reviews, settings, modules/lessons/questions, and answers.
   - Keep browser direct reads only where intentionally accepted.
   - Reuse Zod validation patterns from `lib/api.ts`.

3. Complete the memory lifecycle.
   - Add archived/rejected/deleted views or explicit recovery/permanent-delete rules.
   - Add provenance display for `source`, `tags`, and journal-derived metadata.
   - Add deduplication checks before creating or confirming memories.
   - Add safe handling for deleting a journal entry and its derived drafts.

4. Make AI behavior dependable.
   - Use structured output or stricter JSON response handling for reflection extraction.
   - Add prompt/version metadata to `ai_interactions`.
   - Use settings tone/timezone in AI prompts where intended.
   - Add AI route error handling that returns user-safe errors.
   - Add rate limits.

5. Fill the core user MVP.
   - Add first-run onboarding.
   - Add question-answer flow for modules.
   - Add calendar/review edit and delete.
   - Add privacy/consent copy inside the app before AI use.
   - Add a delete confirmation and clarify what is and is not deleted.

6. Add verification.
   - Add unit/API tests for request validation and memory lifecycle.
   - Add integration tests against Supabase local or mocked clients.
   - Add at least one end-to-end test for sign-in bypass/mocked session, reflection, confirm, ask, export/delete.
   - Run `npm run health` as the main pre-MVP check.

## 8. Exact Files That Need Work

### Existing files likely needing changes

- `supabase/migrations/001_personal_alpha.sql`
  - Enable/clarify RLS for `allowed_users`.
  - Add any missing schema fields needed for retention, consent, audit history, or memory lifecycle.

- `lib/auth.ts`
  - Harden invite-gate assumptions and error handling.
  - Consider whether profile/settings upserts belong in every authenticated API call.

- `lib/supabase.ts`
  - Keep server/browser client boundaries clear.
  - Add typed Supabase clients after database types exist.

- `lib/openai.ts`
  - Add structured-output support or stricter response parsing.
  - Add safer error mapping/timeouts.
  - Consider prompt/version metadata support.

- `lib/api.ts`
  - Reuse for new route validation.
  - Potentially add shared error helpers.

- `lib/types.ts`
  - Replace or align with generated Supabase types.

- `lib/seed.ts`
  - Decide whether starter module seeding should move behind a server route or migration.

- `app/api/ai/reflect/route.ts`
  - Validate model-produced memories before insert.
  - Add structured output, better failure behavior, and safety/privacy handling.

- `app/api/ai/ask/route.ts`
  - Add rate limiting, safer error handling, and possibly prompt/version metadata.

- `app/api/ai/today/route.ts`
  - Use `user_settings.timezone` if Today is meant to be user-local.
  - Decide whether Today should use semantic retrieval, latest memories, or both.

- `app/api/memories/confirm/route.ts`
  - Add explicit ownership filters if desired in addition to RLS.
  - Add deduplication and validation rules.

- `app/api/memories/reject/route.ts`
  - Consider timestamp/provenance for rejection.

- `app/api/memories/archive/route.ts`
  - Confirm archive/recovery behavior.

- `app/api/memories/delete/route.ts`
  - Clarify soft vs hard delete behavior and UI access.

- `app/api/export/route.ts`
  - Clarify delete scope.
  - Add confirmation semantics at the UI/API boundary if needed.
  - Decide whether `profiles` and `user_settings` should be deleted.

- `components/PersonalAlphaApp.tsx`
  - Split the single component once flows expand.
  - Add missing MVP UI: onboarding, consent, answer flow, edit/delete for reviews/calendar, archived/rejected/deleted memory views, delete confirmation, error states.
  - Move direct writes to server APIs if that is the chosen architecture.

- `app/page.tsx`
  - No current change required unless the main app shell is split.

- `app/layout.tsx`
  - Potential place for app metadata updates only.

- `app/globals.css`
  - Potential place for accessibility and responsive polish only.

- `package.json`
  - Add test scripts and dependencies once tests are introduced.

- `.env.example`
  - Add any new required environment variables for rate limiting, AI settings, or app URLs.

### New files that would likely be needed for MVP

These files do not currently exist; create only if implementing the corresponding MVP work.

- Server routes for currently direct client writes:
  - `app/api/calendar-events/route.ts`
  - `app/api/reviews/route.ts`
  - `app/api/settings/route.ts`
  - `app/api/modules/route.ts`
  - `app/api/lessons/route.ts`
  - `app/api/questions/route.ts`
  - `app/api/answers/route.ts`

- Test/config files:
  - A test runner config such as `vitest.config.ts` or equivalent.
  - API/lifecycle test files under an agreed test directory.
  - Optional end-to-end config if browser tests are added.

- Supabase type output:
  - A generated database type file, for example under `lib/` or another agreed generated-types location.

No `src/app/` work is recommended for this MVP path because the current app uses root-level `app/` routes.
