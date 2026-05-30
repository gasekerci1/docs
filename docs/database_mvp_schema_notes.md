# Database MVP Schema Notes

This repo's current app uses Supabase tables directly from both API routes and the browser client. The reproducible MVP schema is in:

`supabase/migrations/001_personal_alpha_mvp.sql`

## Tables

- `allowed_users`: invite allowlist by email. `lib/auth.ts` checks this table with the service role client when `OWNER_EMAIL` does not match.
- `profiles`: one row per authenticated user. `requireUser` upserts `user_id` and `email`.
- `user_settings`: one row per authenticated user. Stores `tone` and `timezone`; `requireUser` upserts a default row.
- `memories`: core memory store. Includes `title`, `content`, lifecycle `status`, `source`, `tags`, `metadata`, lifecycle timestamps, and `embedding vector(1536)`.
- `journal_entries`: raw reflection entries and AI reflection text from `/api/ai/reflect`.
- `ai_interactions`: AI route logging for reflection, Ask AI, and Today.
- `modules`: user-owned learning modules.
- `lessons`: lessons under modules.
- `questions`: lesson questions.
- `answers`: user answers to questions.
- `calendar_events`: lightweight calendar events used by Today.
- `reviews`: daily and weekly review records used by Today.

## Memory Lifecycle

`memories.status` uses the `memory_status` enum:

- `draft`
- `confirmed`
- `edited`
- `rejected`
- `deleted`
- `archived`

The current app stores embeddings on `memories.embedding`. The migration preserves that model with `vector(1536)`, matching `text-embedding-3-small` in `lib/openai.ts`.

Embeddings are constrained to active memories only:

- `confirmed`
- `edited`

## RLS

RLS is enabled on user-owned tables:

- `profiles`
- `user_settings`
- `memories`
- `journal_entries`
- `modules`
- `lessons`
- `questions`
- `answers`
- `calendar_events`
- `reviews`
- `ai_interactions`

Each user-owned table has a policy enforcing:

```sql
auth.uid() = user_id
```

for both read/update/delete visibility and insert/update checks.

`allowed_users` is not user-owned. The migration enables RLS on it and does not grant authenticated users a read policy. The current app reads it through `SUPABASE_SERVICE_ROLE_KEY` in `lib/auth.ts`.

## `match_memories`

The migration creates:

```sql
match_memories(query_embedding vector(1536), match_count int default 8)
```

It returns:

- `id`
- `title`
- `content`
- `status`
- `similarity`

The function is compatible with `app/api/ai/ask/route.ts` through `lib/memory.ts`. It filters to:

- the current authenticated user via `auth.uid()`
- `status in ('confirmed', 'edited')`
- non-null embeddings

Results are ordered by pgvector cosine distance and limited by `match_count`.

## Indexes

The migration includes:

- `memories(user_id, status)`
- `calendar_events(user_id, starts_at)`
- `reviews(user_id, review_date)`
- `ai_interactions(user_id, created_at)`
- `memories_embedding_idx` using pgvector `ivfflat` with `vector_cosine_ops`

## How To Apply In Supabase SQL Editor

1. Open the Supabase project dashboard.
2. Go to SQL Editor.
3. Open `supabase/migrations/001_personal_alpha_mvp.sql` from this repo.
4. Paste the full SQL into a new query.
5. Run it.
6. Confirm the `vector` extension is available and the query completes successfully.

The migration uses `create ... if not exists`, `create or replace function`, and drops/recreates named triggers/policies where needed, so it is intended to be safe to rerun during MVP setup.

If applying to an existing database that already has data, review the SQL first and take a backup before running it.
