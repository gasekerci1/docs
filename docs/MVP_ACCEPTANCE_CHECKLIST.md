# MVP Acceptance Checklist

This checklist is for the private personal-alpha MVP only. It is not a production launch checklist, clinical safety review, legal review, or public release approval.

## 1. Setup Checklist

- [ ] Install Node dependencies with `npm install` or `npm ci`.
- [ ] Copy `.env.example` to `.env.local`.
- [ ] Fill `.env.local` with real local development values.
- [ ] Apply the MVP Supabase migration.
- [ ] Confirm the owner email is set in `OWNER_EMAIL`.
- [ ] Run `npm run typecheck`.
- [ ] Run `npm run lint`.
- [ ] Run `npm run build`.
- [ ] Optional local service check: run `npm run smoke` after real Supabase and OpenAI credentials are present.
- [ ] Start the app with `npm run dev`.

## 2. Required Env Vars

- [ ] `NEXT_PUBLIC_SUPABASE_URL`
- [ ] `NEXT_PUBLIC_SUPABASE_ANON_KEY`
- [ ] `SUPABASE_SERVICE_ROLE_KEY`
- [ ] `OPENAI_API_KEY`
- [ ] `OWNER_EMAIL`
- [ ] `NEXT_PUBLIC_APP_URL`
- [ ] Optional: `DEBUG_LOGS=false`

Do not commit `.env.local`. Do not expose `SUPABASE_SERVICE_ROLE_KEY` in browser code.

## 3. Supabase Migration Checklist

- [ ] Run `supabase/migrations/001_personal_alpha_mvp.sql` in the Supabase SQL Editor.
- [ ] Confirm `vector` extension exists.
- [ ] Confirm required tables exist: `profiles`, `allowed_users`, `user_settings`, `memories`, `journal_entries`, `ai_interactions`, `modules`, `lessons`, `questions`, `answers`, `calendar_events`, `reviews`.
- [ ] Confirm `memories.embedding` is `vector(1536)`.
- [ ] Confirm `match_memories(query_embedding vector(1536), match_count int)` exists.
- [ ] Confirm RLS is enabled on user-owned tables.
- [ ] Confirm user-owned policies enforce `auth.uid() = user_id`.
- [ ] Confirm `allowed_users` is not publicly readable.

## 4. Auth / Invite-Only Checklist

- [ ] Owner can sign in with Supabase auth.
- [ ] Owner email exactly matches `OWNER_EMAIL` after lowercase normalization.
- [ ] Owner can access the app without being in `allowed_users`.
- [ ] Owner can access `/admin`.
- [ ] Owner can add a friend email to the allowlist.
- [ ] Allowlisted friend can sign in and use the app.
- [ ] Non-allowlisted authenticated user is blocked with the invite-only message.
- [ ] Non-owner user cannot access `/admin`.
- [ ] API calls include a Supabase Bearer token.

## 5. Memory Lifecycle Checklist

- [ ] Reflection creates a journal entry.
- [ ] Reflection proposes draft memories.
- [ ] Draft memories appear in Memory Inbox.
- [ ] Draft memory can be confirmed.
- [ ] Confirmed memory receives a 1536-dimension embedding.
- [ ] Editing a confirmed memory sets status to `edited` and regenerates embedding.
- [ ] Rejected, deleted, and archived memories leave active views.
- [ ] Rejected, deleted, archived, and draft memories are not retrieved by Ask AI.
- [ ] Active Memories page shows only `confirmed` and `edited`.

## 6. AI Behavior Checklist

- [ ] Ask AI uses confirmed/edited memories only when relevant.
- [ ] Ask AI says when memory is insufficient.
- [ ] Ask AI shows memories used.
- [ ] Reflect keeps generated memories as drafts.
- [ ] Today can generate a directive with or without memories.
- [ ] Review AI summary can suggest draft memory candidates without confirming them.
- [ ] AI prompts include shared safety boundaries.
- [ ] AI avoids diagnosis, therapy claims, and medical/legal/financial advice.
- [ ] AI refuses high-impact decisions.
- [ ] Crisis boundary text is available in AI instructions.
- [ ] OpenAI requests use `store:false`.

## 7. Export / Delete Checklist

- [ ] Settings shows signed-in email.
- [ ] Export downloads a JSON file for the current user.
- [ ] Export does not require service role key in browser.
- [ ] Delete requires typing `DELETE MY DATA`.
- [ ] Delete removes current user's personal data only.
- [ ] Delete does not remove `allowed_users`.
- [ ] Delete does not delete the Supabase auth user.
- [ ] After delete, memories, reflections, reviews, calendar items, learning data, and AI interaction rows disappear from the app.

## 8. Manual Test Script

1. Sign in as the owner.
2. Open `/admin` and add a friend email to the allowlist.
3. Sign out.
4. Sign in as the allowlisted friend.
5. Open Reflect.
6. Write a short reflection and submit it.
7. Confirm the AI reflection appears.
8. Confirm draft memories are shown.
9. Go to Memory Inbox.
10. Confirm one draft memory.
11. Go to Memories and confirm the memory is active.
12. Ask AI a question related to that memory.
13. Confirm Ask AI answers and shows the memory used.
14. Generate Today.
15. Confirm Today shows focus, next action, watchout, and evening review question.
16. Go to Calendar and create an event.
17. Confirm the event appears under Today or Upcoming.
18. Go to Reviews.
19. Create a daily review.
20. Optionally run AI summary and confirm any memory candidates remain draft.
21. Go to Settings.
22. Export data and confirm a JSON file downloads.
23. Type `DELETE MY DATA`.
24. Delete personal data.
25. Confirm user-owned app data no longer appears.
26. Confirm the user can still sign in after deletion.

## 9. Known Non-Goals

- No public launch.
- No clinical use.
- No emergency support.
- No Google Calendar integration.
- No production legal readiness.
- No automated invite emails.
- No multi-owner admin model.
- No external observability service.
- No production incident response process.

## 10. Go / No-Go Table

| Area | Go Criteria | No-Go If |
| --- | --- | --- |
| Setup | App installs, builds, and runs locally with documented env vars. | Build requires undocumented secrets or manual code edits. |
| Database | MVP migration applies and required tables/RLS/function exist. | RLS is missing on user-owned data or `match_memories` is unavailable. |
| Auth | Owner and allowlisted users can sign in; non-allowlisted users are blocked. | Any non-owner can manage allowlist or bypass invite-only access. |
| Memory | Draft, confirm, edit, reject/archive/delete flows work. | Draft/rejected/deleted/archived memories appear in AI context. |
| AI | Ask, Reflect, Today, and Review summary work with safety boundaries. | AI makes clinical claims, high-impact decisions, or uses inactive memories. |
| Data controls | Export and delete work for current user only. | One user can export/delete another user's data. |
| Scope | Team agrees this is private alpha only. | Anyone treats this as public, clinical, emergency, or legally production-ready software. |

MVP is acceptable only when all Go criteria pass for a personal-alpha test account and known non-goals are acknowledged.
