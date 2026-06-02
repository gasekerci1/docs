# Codex Product Experience Prompt Plan

> **Historical evidence only.** This document may contain old MVP, build, production, launch, final, release, hardening, or readiness wording. It does not approve current public MVP, public build, production readiness, public launch, commercial release, legal compliance, privacy compliance, security readiness, accessibility compliance, or WCAG compliance. Current controlling status is limited trusted private beta only unless a later owner-approved decision record says otherwise.

This document converts `docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md` into a safe, phased Codex implementation plan. It is a planning-only document. Do not modify runtime app code, do not create migrations yet, do not edit `.env.local`, and do not commit while creating or updating this document.

## Current Working Baseline

The personal-alpha MVP is working and must not be destabilized:

- Owner login works.
- Invite-only auth works.
- Today generates.
- Reflection creates draft memories.
- Memory confirmation creates 1536-dimension embeddings.
- Ask AI retrieves confirmed/edited memories.
- Supabase smoke test passes.
- Production deployment exists.
- Root-level `app/` routes are used, not `src/app/`.

## Global Hard Constraints

- Do not weaken auth.
- Do not expose secrets.
- Do not touch `.env.local`.
- Do not expose `SUPABASE_SERVICE_ROLE_KEY`.
- Do not expose `OPENAI_API_KEY`.
- Do not auto-confirm memories.
- Draft, rejected, deleted, and archived memories must never influence AI.
- Confirmed/edited memories are eligible by default, but retrieval must select relevant memories rather than dumping every memory into every prompt.
- Do not make medical, therapy, legal, financial, mortgage, investment, or emergency claims.
- Decision Reflection helps the user think; it does not make high-stakes decisions.
- Talk to Myself must clearly disclose AI-generated reflection based on confirmed memories.
- Legacy Mode is future/later unless explicitly opt-in and access-controlled.
- Text must always be visible when audio exists.
- Audio must be optional and muted by default unless the user chooses otherwise.
- Use root-level `app/` routes, not `src/app/`.
- Keep this private-alpha scoped.
- Planning steps must not create migrations before the specific implementation phase explicitly asks for one.
- Do not commit unless the user explicitly asks.

## Recommended Execution Rule

Run one phase at a time, in the exact order below. Use one branch and one commit per phase after local verification passes. Do not combine unrelated phases. Each phase prompt is intended to be copied into Codex as a standalone build prompt.

## Standard Verification Commands

Run these after every implementation phase unless a phase explicitly explains why one cannot run:

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

## Standard Manual Browser Baseline Checks

After every implementation phase, manually verify:

- Owner login works.
- Invite-only auth still blocks unapproved users.
- Today generates.
- Reflection creates draft memories.
- Confirm memory creates a 1536-dimension embedding.
- Ask retrieves confirmed/edited memories only.
- Archived/deleted/rejected/draft memories do not influence AI.
- Production-sensitive env values are not exposed client-side.

## Phase 1. Product shell and visual identity

### Phase goal

Make lifeOS feel like a calm, private, premium personal operating system while preserving the existing app routes and working flows.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 1 only: Product shell and visual identity.

Goal:
Make the existing private-alpha app feel like a calm, private, premium personal operating system instead of a developer MVP. Keep the app working and do not change database behavior.

Scope:
- Use root-level app/ routes only, not src/app/.
- Update the app shell, navigation presentation, brand mark, dashboard framing, typography, spacing, and empty states.
- Keep primary navigation as Today, Ask, Reflect, Learn & Grow, Calendar, Review, Memories, Settings.
- Keep Admin visible only for owner.
- Keep Memory Inbox out of the dominant top-level nav; it can remain reachable from Reflect, Memories, and later notification actions.
- Preserve all existing interactions and API calls.
- Do not change auth logic.
- Do not change memory status behavior.
- Do not add migrations.
- Do not touch .env.local.

Likely files:
- components/PersonalAlphaApp.tsx
- app/globals.css
- tailwind.config.ts only if needed for existing theme tokens
- app/layout.tsx only if needed for metadata or app-level polish

Design constraints:
- Calm, private, premium, personal, warm, clean.
- Not clinical, not corporate, not a generic chatbot app.
- Avoid loud gradients and clutter.
- Use existing lucide-react icons where useful.
- Do not create a marketing landing page; the app should remain the first-screen working product after login.
- Do not put cards inside cards.
- Keep text readable on mobile and desktop.

Hard constraints:
- Do not weaken auth.
- Do not expose secrets.
- Do not auto-confirm memories.
- Draft/rejected/deleted/archived memories must never influence AI.
- Do not make medical, therapy, legal, financial, mortgage, investment, or emergency claims.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Manually verify owner login, invite-only auth, Today, Reflect, memory confirm, Ask, and Settings still work.
- Confirm no runtime route moved into src/app/.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `app/globals.css`
- `tailwind.config.ts` if theme tokens need minor adjustment
- `app/layout.tsx` if metadata or shell-level polish is needed

### Database changes if any

No database changes.

### Supabase SQL patch if needed

None.

### Constraints

- Keep this phase visual and structural only.
- Do not alter auth, AI prompts, memory status transitions, embeddings, or Supabase schema.
- Preserve existing routes and API contracts.

### Done criteria

- The app has a stronger lifeOS identity and product shell.
- Navigation matches the recommended primary sections.
- Admin remains owner-only.
- Memory Inbox is not promoted as a primary nav tab.
- Existing product flows still function.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Log in as owner and confirm Admin link appears.
- Log in as non-owner allowed user and confirm Admin link does not appear.
- Generate Today.
- Create a reflection and confirm a draft memory.
- Ask a memory-aware question.
- Resize to mobile width and confirm nav and text remain usable.

### Supabase SQL checks if needed

None.

### Suggested commit message

`Polish private-alpha product shell`

## Phase 2. Login / sign-up / waitlist / beta access

### Phase goal

Improve the login experience and add beta/waitlist access requests without weakening invite-only auth.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 2 only: Login / sign-up / waitlist / beta access.

Goal:
Upgrade the login page so it clearly presents lifeOS as a private personal OS and supports beta/waitlist access requests. Preserve invite-only auth: requesting access must not grant access.

Scope:
- Use root-level app/ routes only, not src/app/.
- Update components/LoginPage.tsx with lifeOS brand, "Private personal OS", magic link login, private alpha explanation, Request beta access, and Join waitlist.
- Add access request API and owner admin review if needed.
- Access request fields: email, optional name, optional reason, request type waitlist/beta, status pending/approved/denied.
- Owner can approve an access request; approval adds the normalized email to allowed_users.
- Denied or pending requests must not allow login.
- Keep existing magic link flow and /api/me allowlist enforcement.
- Do not expose service role key client-side; any privileged approval must happen server-side behind owner auth.
- Do not touch .env.local.

Likely files:
- components/LoginPage.tsx
- components/AdminPage.tsx
- app/api/admin/allowed-users/route.ts
- app/api/me/route.ts only if strictly needed
- lib/auth.ts only if strictly needed, but do not weaken it
- lib/types.ts if adding request types
- supabase/migrations/new migration only during this implementation phase, if needed

Hard constraints:
- Do not weaken auth.
- Do not let requested access bypass allowed_users.
- Do not expose SUPABASE_SERVICE_ROLE_KEY or OPENAI_API_KEY.
- Do not touch .env.local.
- Owner-only admin must remain owner-only.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Manually submit waitlist and beta requests.
- Verify pending request cannot sign in unless email is added to allowed_users.
- Verify owner can approve a request and the email appears in allowed_users.
- Verify non-owner cannot view or approve requests.
```

### Likely files touched

- `components/LoginPage.tsx`
- `components/AdminPage.tsx`
- `app/api/admin/allowed-users/route.ts`
- A new `app/api/access-requests/route.ts` or admin route if implemented
- `lib/auth.ts` only if needed without weakening allowlist checks
- `lib/types.ts`
- Future migration file for `access_requests`

### Database changes if any

Likely yes: add `access_requests`.

### Supabase SQL patch if needed

Review and place in a future migration during this phase, not during planning:

```sql
create type access_request_type as enum ('waitlist', 'beta');
create type access_request_status as enum ('pending', 'approved', 'denied');

create table access_requests (
  id uuid primary key default gen_random_uuid(),
  email text not null,
  name text,
  reason text,
  request_type access_request_type not null,
  status access_request_status not null default 'pending',
  reviewed_at timestamptz,
  reviewed_by uuid references auth.users(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint access_requests_email_lower check (email = lower(email))
);

create unique index access_requests_email_type_idx
  on access_requests(email, request_type);

create trigger access_requests_touch
  before update on access_requests
  for each row execute function touch_updated_at();

alter table access_requests enable row level security;
```

Use service-role server routes for owner review. Do not add permissive public select policies.

### Constraints

- Requests are only requests; they do not authenticate users.
- Approval must add to `allowed_users` server-side only after owner verification.
- Avoid leaking the list of pending requests to non-owners.

### Done criteria

- Login page explains private alpha access.
- User can submit beta/waitlist request.
- Owner can approve/deny requests.
- Approved request adds normalized email to `allowed_users`.
- Pending/denied requests remain blocked by invite-only auth.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Submit request with a new email.
- Try sign-in before approval and confirm invite-only block remains.
- Approve request as owner.
- Confirm approved email can pass `/api/me` after magic-link auth.
- Confirm non-owner cannot access admin request controls.

### Supabase SQL checks if needed

```sql
select email, request_type, status, created_at
from access_requests
order by created_at desc
limit 20;

select email
from allowed_users
where email = lower('<approved-email>');
```

### Suggested commit message

`Add private beta access requests`

## Phase 3. Onboarding, consent, privacy, disclaimers

### Phase goal

Add first-run onboarding with explicit consent and safety boundaries before the full app experience.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 3 only: Onboarding, consent, privacy, disclaimers.

Goal:
Add first-time onboarding before the full app. It must explain privacy, consent, AI memory behavior, and boundaries while giving quick value.

Scope:
- Use root-level app/ routes only, not src/app/.
- Gate the authenticated app shell behind onboarding completion for first-time users.
- Onboarding steps:
  1. Welcome to lifeOS
  2. How lifeOS works
  3. Privacy, consent, and boundaries
  4. Choose starting focus
  5. First reflection
  6. Confirm first draft memory
  7. Start first Learn & Grow module
  8. See how lifeOS gets better as the user builds it
- Required consents:
  - I understand lifeOS is a private alpha and not medical, therapy, legal, financial, or emergency support.
  - I consent to my reflections being processed by AI to suggest draft memories.
  - I understand only memories I confirm or edit should influence AI guidance.
  - I understand I can delete or export my data from Settings.
  - I understand I am responsible for my own decisions and should seek qualified professional help for high-stakes decisions.
- Starting focus options must match the recommendations, including Custom.
- Keep text visible and do not add audio in this phase.
- Do not auto-confirm the first memory; user must explicitly confirm or edit.
- Do not change auth rules.

Likely files:
- components/PersonalAlphaApp.tsx
- lib/types.ts
- app/api/me/route.ts if onboarding state is returned there
- app/api/ai/reflect/route.ts only if the onboarding reflection reuses it
- app/api/memories/confirm/route.ts only if existing confirm flow needs a minor reusable UI adaptation
- supabase/migrations/new migration only during this implementation phase, if needed

Hard constraints:
- Do not weaken auth.
- Do not auto-confirm memories.
- Only confirmed/edited memories influence AI.
- Do not make medical, therapy, legal, financial, mortgage, investment, or emergency claims.
- Do not touch .env.local.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Test a first-time allowed user sees onboarding before the app.
- Test required consents block completion until checked.
- Test first reflection creates draft memories only.
- Test app shell appears after onboarding completion.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `app/api/me/route.ts`
- `lib/types.ts`
- Future migration for onboarding/consent state

### Database changes if any

Likely yes: track onboarding completion, consents, and starting focus.

### Supabase SQL patch if needed

Prefer extending `user_settings` during this phase:

```sql
alter table user_settings
  add column if not exists onboarding_completed_at timestamptz,
  add column if not exists starting_focus text,
  add column if not exists consent_private_alpha boolean not null default false,
  add column if not exists consent_ai_processing boolean not null default false,
  add column if not exists consent_memory_rules boolean not null default false,
  add column if not exists consent_export_delete boolean not null default false,
  add column if not exists consent_user_responsibility boolean not null default false;
```

If consent history is required instead of simple state, create a dedicated consent table in this phase and keep RLS user-owned.

### Constraints

- Consent must be explicit, but not a legal wall.
- Onboarding must not block existing owner access permanently if state is missing; it should guide completion.
- First reflection must create draft memories only.

### Done criteria

- First-time user completes onboarding before full app.
- Consent state is saved per user.
- Starting focus is saved.
- Reflection and memory confirmation still use existing draft-first flow.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Use a fresh allowed account and confirm onboarding appears.
- Try to continue without required consents and confirm it is blocked.
- Choose each focus path enough to confirm state saves.
- Create first reflection and confirm generated memories are drafts.
- Confirm one memory and verify embedding behavior remains intact.

### Supabase SQL checks if needed

```sql
select user_id,
       onboarding_completed_at,
       starting_focus,
       consent_private_alpha,
       consent_ai_processing,
       consent_memory_rules,
       consent_export_delete,
       consent_user_responsibility
from user_settings
order by updated_at desc
limit 20;
```

### Suggested commit message

`Add first-run onboarding and consent`

## Phase 4. Quick value loop: reflection -> draft memory -> confirm -> better guidance

### Phase goal

Make the core loop visible and satisfying: tell lifeOS something, confirm what matters, then see how the system adapts.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 4 only: Quick value loop: reflection -> draft memory -> confirm -> better guidance.

Goal:
Make the loop visible in onboarding and the main app: Tell lifeOS something -> confirm what matters -> system adapts -> better guidance.

Scope:
- Use root-level app/ routes only, not src/app/.
- Improve Reflect and draft-memory confirmation UX.
- After reflection creates drafts, guide the user directly to review/confirm/edit/reject drafts.
- After confirmation, show copy explaining that confirmed/edited memories can improve Today, Ask, and Learn & Grow.
- Add meaningful progress language such as "Your OS is getting stronger" and confirmed memory count.
- Do not use cheap gamification.
- Do not auto-confirm memories.
- Do not change embedding dimensions or memory status rules.
- Do not add migrations unless absolutely required.

Likely files:
- components/PersonalAlphaApp.tsx
- app/api/ai/reflect/route.ts only for response metadata if needed
- app/api/memories/confirm/route.ts only if returning existing fields is insufficient
- lib/memory.ts only if a helper is needed, without changing active/inactive status rules

Hard constraints:
- Do not auto-confirm memories.
- Draft/rejected/deleted/archived memories must never influence AI.
- Confirmed/edited memories are eligible by default.
- Retrieval must select relevant memories rather than dumping all memories into prompts.
- Do not make therapy, medical, legal, financial, mortgage, investment, or emergency claims.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Create a reflection, see draft memories, confirm one, and verify the UI explains how it improves future guidance.
- Verify rejected and deleted drafts do not appear as active memories.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `app/api/ai/reflect/route.ts` only if needed
- `app/api/memories/confirm/route.ts` only if needed
- `lib/memory.ts` only for non-breaking helpers

### Database changes if any

No migration in this phase unless required.

### Supabase SQL patch if needed

None expected.

### Constraints

- Keep existing draft creation and confirmation endpoints.
- Never imply a draft memory is active.
- Do not alter `match_memories` behavior.

### Done criteria

- The value loop is visible after reflection and confirmation.
- User can edit or reject drafts before confirmation.
- Confirmed memory count or equivalent meaningful progress is visible.
- Today/Ask/Learn copy explains active memory use accurately.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Submit a reflection.
- Confirm drafts appear as drafts.
- Confirm one memory and verify success/progress copy.
- Reject one memory and verify it is inactive.
- Ask a related question and verify only confirmed/edited memories are referenced.

### Supabase SQL checks if needed

```sql
select status, count(*)
from memories
group by status
order by status;

select id, status, embedding is not null as has_embedding
from memories
order by updated_at desc
limit 20;
```

### Suggested commit message

`Clarify the memory value loop`

## Phase 5. Settings Memory tab for active memory review, edit, archive, delete

### Phase goal

Move robust active memory management into Settings while preserving the existing Memories surface.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 5 only: Settings Memory tab for active memory review, edit, archive, delete.

Goal:
Add a Memory tab inside Settings where users can review and control active memories.

Scope:
- Use root-level app/ routes only, not src/app/.
- Add Settings sections/tabs if needed: Account, Memory, Preferences, Data.
- In Settings > Memory, allow users to:
  - view active memories
  - search memories
  - edit memories
  - archive memories
  - delete memories
  - see which memories are eligible for AI use
  - understand only confirmed/edited memories influence AI
  - optionally view/restore archived memories if restore can be done safely
  - export memory data
  - delete all personal memory data through existing guarded deletion flow
- Keep existing Memories page available as the Memory Vault product surface.
- Use existing memory endpoints where possible.
- If adding restore archived memory, ensure restore creates/refreshes a 1536-dimension embedding before status becomes confirmed/edited.
- Do not expose inactive memories to AI.

Likely files:
- components/PersonalAlphaApp.tsx
- app/api/memories/archive/route.ts
- app/api/memories/delete/route.ts
- app/api/memories/confirm/route.ts
- app/api/export/route.ts
- lib/memory.ts
- lib/types.ts

Hard constraints:
- Do not auto-confirm memories.
- Draft/rejected/deleted/archived memories must never influence AI.
- Archived memories must have null embeddings unless safely restored.
- Deleted memories must not influence AI.
- Do not weaken auth or RLS.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Verify edit regenerates embedding through the existing confirm/edit path.
- Verify archive sets memory inactive.
- Verify delete sets memory inactive or removes it according to existing behavior.
- Verify Ask does not retrieve archived/deleted memories.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `app/api/memories/confirm/route.ts`
- `app/api/memories/archive/route.ts`
- `app/api/memories/delete/route.ts`
- `app/api/export/route.ts`
- `lib/memory.ts`
- `lib/types.ts`

### Database changes if any

No migration in this phase unless restore/archive metadata requires it. Existing `archived_at`, `deleted_at`, status, and embedding fields should be enough.

### Supabase SQL patch if needed

None expected.

### Constraints

- Search in Settings Memory can be client-side over loaded user memories unless scale requires API support.
- Editing active memories must preserve embedding regeneration.
- Restore archived memories only if it can be implemented without making archived memories active before embedding is regenerated.

### Done criteria

- Settings has a Memory tab.
- User can find, edit, archive, and delete active memories.
- Eligibility rules are visible and accurate.
- Export/delete data controls remain available.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Open Settings > Memory.
- Search for an active memory.
- Edit and save a memory.
- Archive a memory and verify it leaves active list.
- Delete a memory and verify it leaves active list.
- Ask a question related to archived/deleted content and verify it is not cited or used.

### Supabase SQL checks if needed

```sql
select id, title, status, embedding is not null as has_embedding, archived_at, deleted_at
from memories
order by updated_at desc
limit 20;
```

### Suggested commit message

`Add Settings memory controls`

## Phase 6. Default memory eligibility rules

### Phase goal

Make active memory eligibility explicit and enforce it consistently across retrieval, prompts, UI copy, and tests.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 6 only: Default memory eligibility rules.

Goal:
Ensure all confirmed/edited memories are eligible by default while retrieval selects only relevant memories. Draft, rejected, deleted, and archived memories must never influence AI.

Scope:
- Use root-level app/ routes only, not src/app/.
- Audit all AI routes and memory helpers.
- Keep ACTIVE_MEMORY_STATUSES as confirmed/edited.
- Keep INACTIVE_MEMORY_STATUSES as draft/rejected/deleted/archived.
- Ask AI must use vector retrieval through match_memories or an equivalent relevant-memory selector.
- Today must not blindly dump every active memory; if it currently uses latest memories, change it to a bounded relevant/contextual selection or clearly bounded recent active set with no inactive statuses.
- UI copy should say confirmed/edited memories are eligible, not automatically always used.
- Add focused tests or script-level checks if the repo has a testing pattern; otherwise add safe assertions in existing helpers where appropriate.
- Do not change embedding dimension.
- Do not create broad schema changes.

Likely files:
- lib/memory.ts
- app/api/ai/ask/route.ts
- app/api/ai/today/route.ts
- app/api/ai/reflect/route.ts only to confirm draft behavior
- components/PersonalAlphaApp.tsx
- lib/types.ts
- supabase/migrations/001_personal_alpha.sql only as a reference, not to edit historical migration unless this repo pattern expects it

Hard constraints:
- Draft/rejected/deleted/archived memories must never influence AI.
- Confirmed/edited are eligible by default.
- Retrieval selects relevant memories; do not dump every memory into every prompt.
- Do not auto-confirm memories.
- Do not weaken RLS.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Create memories in each status and verify Ask only retrieves confirmed/edited.
- Verify Today uses only active eligible memories and remains bounded.
```

### Likely files touched

- `lib/memory.ts`
- `app/api/ai/ask/route.ts`
- `app/api/ai/today/route.ts`
- `components/PersonalAlphaApp.tsx`
- `lib/types.ts`

### Database changes if any

No migration in this phase unless a query function needs refinement.

### Supabase SQL patch if needed

If `match_memories` needs to be refreshed in a future migration, keep the active-status filter:

```sql
create or replace function match_memories(query_embedding vector(1536), match_count int default 8)
returns table (
  id uuid,
  title text,
  content text,
  status memory_status,
  similarity float
)
language sql
stable
security invoker
as $$
  select
    memories.id,
    memories.title,
    memories.content,
    memories.status,
    1 - (memories.embedding <=> query_embedding) as similarity
  from memories
  where memories.user_id = auth.uid()
    and memories.status in ('confirmed', 'edited')
    and memories.embedding is not null
  order by memories.embedding <=> query_embedding
  limit match_count;
$$;
```

### Constraints

- Do not edit old migrations unless the project convention requires baseline migration edits.
- Prefer adding a new migration for function changes during implementation.
- Keep prompts explicit that inactive memory statuses are forbidden context.

### Done criteria

- Central memory helpers define active and inactive statuses.
- AI routes use those rules consistently.
- UI copy accurately distinguishes eligible from used.
- Tests/checks demonstrate inactive statuses are excluded.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Confirm an active memory.
- Archive it.
- Ask a related question and verify it is not used.
- Create a new confirmed memory and verify Ask can use it when relevant.
- Generate Today and verify memory references are bounded and active-only.

### Supabase SQL checks if needed

```sql
select status, count(*)
from memories
group by status;

select id, status, embedding is not null as has_embedding
from memories
where status not in ('confirmed', 'edited')
  and embedding is not null;
```

Expected result for the second query: zero rows.

### Suggested commit message

`Enforce active memory eligibility rules`

## Phase 7. Notification inbox and action prompts

### Phase goal

Add a top-right notification inbox and lightweight badges that guide users to unfinished actions without exposing sensitive memory content.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 7 only: Notification inbox and action prompts.

Goal:
Add a top-right notification inbox and small nav badges for actionable, non-sensitive tasks.

Scope:
- Use root-level app/ routes only, not src/app/.
- Add notifications for:
  - draft memories waiting
  - review prompt
  - calendar setup prompt
  - onboarding incomplete
  - pending access requests for owner
  - Learn & Grow next step
  - first module incomplete
- Add badges to relevant tabs:
  - Memories/Reflect when drafts exist
  - Review when daily review missing
  - Calendar when setup is empty or needed
  - Admin when access requests are pending for owner
  - Learn & Grow when next module step exists
- Notifications must not expose sensitive memory content.
- Prefer deriving notifications client-side from already loaded data unless persistence/dismissal is required.
- If persistent dismissal is needed, add a minimal user-owned notification table.
- Do not change auth or memory eligibility behavior.

Likely files:
- components/PersonalAlphaApp.tsx
- components/AdminPage.tsx if owner pending badge needs admin data
- app/api/me/route.ts if returning owner counts is safest
- app/api/admin/allowed-users/route.ts or access request route from Phase 2 if pending counts exist
- lib/types.ts
- future migration only if persistent notification state is required

Hard constraints:
- Do not expose sensitive memory content in notifications.
- Do not expose owner-only pending request data to non-owners.
- Do not weaken auth.
- Draft memories remain inactive.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Create draft memories and verify notification count appears without draft content in the closed menu.
- Complete/reject drafts and verify badge clears.
- Verify owner-only pending access request notification.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `components/AdminPage.tsx`
- `app/api/me/route.ts`
- Access request API from Phase 2, if present
- `lib/types.ts`

### Database changes if any

No migration in this phase unless persistent notification dismissal is required.

### Supabase SQL patch if needed

Only if persistent notifications are needed:

```sql
create table notification_dismissals (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  notification_key text not null,
  dismissed_at timestamptz not null default now(),
  unique(user_id, notification_key)
);

alter table notification_dismissals enable row level security;
create policy "notification dismissals own rows"
  on notification_dismissals
  for all using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
```

### Constraints

- Badges should be subtle, not noisy gamification.
- Do not show memory text in notification summaries.
- Owner-only counts must be fetched through owner-protected paths.

### Done criteria

- Top-right notification inbox exists.
- Badges appear and clear based on actionable state.
- Notifications route to the relevant app section.
- Sensitive content is not shown in notification list previews.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Create draft memory and verify Memories/Reflect badge.
- Complete daily review and verify Review badge clears.
- Add first calendar event and verify Calendar setup prompt clears.
- As owner, create pending access request and verify admin notification.
- As non-owner, verify admin notification is absent.

### Supabase SQL checks if needed

```sql
select status, count(*)
from memories
group by status;

select count(*)
from access_requests
where status = 'pending';
```

### Suggested commit message

`Add action notification inbox`

## Phase 8. Adaptive Learn & Grow modules

### Phase goal

Turn Learn & Grow into an adaptive growth area with recommended modules and meaningful outputs.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 8 only: Adaptive Learn & Grow modules.

Goal:
Rename and expand modules into Learn & Grow, with adaptive recommendations based on user goals, reflections, answers, and confirmed memories.

Scope:
- Use root-level app/ routes only, not src/app/.
- Keep the navigation label Learn & Grow.
- Add module placeholders:
  - Module 0: Orientation to lifeOS
  - Module 1: Values & Identity
  - Module 2: Motivation & Avoidance
  - Module 3: Focus & Consistency
  - Module 4: Habits & Routines
  - Module 5: Emotional Patterns
  - Module 6: Relationships & Boundaries
  - Module 7: Caregiving & Family Load
  - Module 8: Work, Business & Direction
  - Module 9: Review & Integration
  - Module 10: Future Self & Long-Term Growth
- Module cards must show title, purpose, status Available/Coming soon/Recommended, estimated time, and Start/Continue/Preview.
- Module 0 must be usable immediately.
- Recommendations may be deterministic at first using starting focus, recent reflections, module answers, and active memory tags.
- Every completed module should produce at least one draft candidate or saved output type: value statement, decision rule, habit rule, boundary, calendar anchor, review question, future-self instruction, preference, or "when I am stuck, remind me..." statement.
- Draft memories must remain draft until user confirms.
- Do not create medical/therapy claims.

Likely files:
- components/PersonalAlphaApp.tsx
- lib/seed.ts
- lib/types.ts
- app/api/ai/reflect/route.ts if using existing draft generation
- app/api/ai/ask/route.ts only if adding recommendation endpoint is unavoidable
- future migration if current modules schema cannot represent status/progress/estimated time

Hard constraints:
- Do not auto-confirm memories from modules.
- Module guidance is reflective and educational, not medical/therapy/legal/financial advice.
- Confirmed/edited memories may inform recommendations, but inactive memories must not.
- Keep private-alpha scope.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Seed or load modules and verify Module 0 is available.
- Complete module answers and generate draft memories only.
- Verify recommended status changes based on starting focus or user context.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `lib/seed.ts`
- `lib/types.ts`
- `app/api/ai/reflect/route.ts`

### Database changes if any

No migration in this phase unless status/progress/estimated time cannot be represented in existing tables.

### Supabase SQL patch if needed

If needed during this phase:

```sql
alter table modules
  add column if not exists status text not null default 'available',
  add column if not exists estimated_minutes integer,
  add column if not exists purpose text not null default '',
  add column if not exists metadata jsonb not null default '{}';
```

Keep module rows user-owned under existing RLS.

### Constraints

- Do not make modules feel like a rigid clinical course.
- Recommendations must be understandable and safely bounded.
- Module outputs that become memories must use the existing draft/confirm flow.

### Done criteria

- Learn & Grow displays the recommended module set.
- Module 0 is immediately usable.
- Cards include status, purpose, estimated time, and actions.
- Module completion can create draft memory candidates or structured outputs.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Open Learn & Grow with no modules and seed/load starters.
- Start Module 0 and answer prompts.
- Generate draft memories and verify they are drafts.
- Confirm a draft and verify it becomes active with embedding.
- Verify high-stakes module content includes boundaries where relevant.

### Supabase SQL checks if needed

```sql
select title, status, estimated_minutes, sort_order
from modules
order by sort_order;

select m.title, count(q.id) as questions
from modules m
left join lessons l on l.module_id = m.id
left join questions q on q.lesson_id = l.id
group by m.title, m.sort_order
order by m.sort_order;
```

### Suggested commit message

`Expand adaptive Learn and Grow modules`

## Phase 9. Decision Reflection mode

### Phase goal

Add Decision Reflection as a safe thinking mode for choices like buying a car, mortgage preparation, family time, habit change, or business direction.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 9 only: Decision Reflection mode.

Goal:
Add Decision Reflection mode that helps users think through decisions without making high-stakes decisions for them.

Scope:
- Use root-level app/ routes only, not src/app/.
- Add Decision Reflection entry point in Learn & Grow or Ask, not necessarily a primary nav tab.
- Support examples:
  - buying a car
  - mortgage preparation
  - changing jobs
  - spending more time with kids
  - stopping a habit
  - starting a business
  - caregiving pressure
- The mode should:
  - reflect known values
  - surface relevant confirmed/edited memories
  - ask clarifying questions
  - identify tradeoffs
  - suggest next reflective actions
  - recommend relevant Learn & Grow modules
  - show what the user previously said matters
- For high-stakes domains, include boundaries and suggest qualified professional advice where appropriate.
- It must not decide for the user.
- It must not provide financial, mortgage, investment, legal, medical, therapy, or emergency advice.
- Use relevant memory retrieval only.

Likely files:
- components/PersonalAlphaApp.tsx
- app/api/ai/ask/route.ts or a new app/api/ai/decision-reflection/route.ts
- lib/aiSafety.ts
- lib/memory.ts
- lib/types.ts
- lib/seed.ts if adding Decision Reflection module cards

Hard constraints:
- Decision Reflection helps the user think; it does not make high-stakes decisions.
- Do not make financial, mortgage, investment, legal, medical, therapy, or emergency claims.
- Use confirmed/edited memories only when relevant.
- Do not dump all memories into the prompt.
- Do not auto-confirm any decision output as memory.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Test car, mortgage, kids/family, habit, and business examples.
- Verify the app refuses to make the decision and keeps advice reflective.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- New `app/api/ai/decision-reflection/route.ts` or `app/api/ai/ask/route.ts`
- `lib/aiSafety.ts`
- `lib/memory.ts`
- `lib/types.ts`
- `lib/seed.ts`

### Database changes if any

No migration in this phase unless saving decision reflections is required. Prefer no persistence for v1 unless needed.

### Supabase SQL patch if needed

If saving reflections is required during this phase:

```sql
create table decision_reflections (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  topic text not null,
  input text not null,
  output text not null,
  memory_ids uuid[] not null default '{}',
  created_at timestamptz not null default now()
);

alter table decision_reflections enable row level security;
create policy "decision reflections own rows"
  on decision_reflections
  for all using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
```

### Constraints

- Keep Decision Reflection private and user-only.
- High-stakes topics must include boundaries.
- Do not write outputs into memory unless routed through draft memory review.

### Done criteria

- User can start Decision Reflection.
- Output includes tradeoffs, clarifying questions, relevant memories where appropriate, and next reflective steps.
- Output includes high-stakes boundaries for regulated topics.
- The mode does not make the decision.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Ask for car buying reflection.
- Ask for mortgage preparation reflection.
- Ask for family/kids priority reflection.
- Ask for stopping a habit reflection.
- Verify each response stays reflective and non-regulated.

### Supabase SQL checks if needed

```sql
select route, memory_ids, created_at
from ai_interactions
where route like '%decision%'
order by created_at desc
limit 20;
```

### Suggested commit message

`Add safe Decision Reflection mode`

## Phase 10. Future Self design flow

### Phase goal

Add a Future Self design flow that helps the user define values, identity, habits, decision rules, boundaries, and reminders.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 10 only: Future Self design flow.

Goal:
Add Future Self as a design flow that helps the user define who they want to become and how lifeOS should remind them.

Scope:
- Use root-level app/ routes only, not src/app/.
- Add Future Self entry point inside Learn & Grow, Settings, or a dedicated section if the shell already supports it cleanly.
- The flow should help define:
  - values
  - identity
  - habits
  - decision rules
  - boundaries
  - communication style
  - priorities
  - legacy lessons as private notes only
  - responses under pressure
  - "when I am struggling, remind me..." prompts
- Outputs may include future-self statement, operating principles, identity commitments, decision filters, habit commitments, legacy notes, and reminder prompts.
- Outputs should be saved as draft memories or structured user-owned data, depending on the simplest safe implementation.
- Do not make therapeutic claims.
- Do not expose Legacy Mode sharing; Legacy stays future concept until Phase 17.

Likely files:
- components/PersonalAlphaApp.tsx
- lib/seed.ts
- lib/types.ts
- app/api/ai/reflect/route.ts if converting answers into draft memories
- future migration only if structured Future Self data is required

Hard constraints:
- Do not auto-confirm generated Future Self outputs as memories.
- Do not imply the app can guarantee behavior change.
- Do not make medical, therapy, legal, financial, or emergency claims.
- Keep Legacy Mode separate and future-only.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Complete Future Self prompts and verify outputs are drafts or user-owned structured state.
- Confirm text accurately frames "creating the version of me I want to become" without overclaiming.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `lib/seed.ts`
- `lib/types.ts`
- `app/api/ai/reflect/route.ts`

### Database changes if any

No migration in this phase unless structured Future Self data is required. Prefer draft memories or module answers first.

### Supabase SQL patch if needed

If structured data is needed:

```sql
create table future_self_items (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  item_type text not null,
  title text not null,
  content text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create trigger future_self_items_touch
  before update on future_self_items
  for each row execute function touch_updated_at();

alter table future_self_items enable row level security;
create policy "future self own rows"
  on future_self_items
  for all using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
```

### Constraints

- Keep the flow private and self-reflective.
- Do not turn Future Self into a shareable persona.
- Generated outputs should go through draft confirmation if they become memories.

### Done criteria

- Future Self flow exists and is discoverable.
- User can create or draft future-self outputs.
- Outputs can feed the memory system only after confirmation.
- Copy is aspirational without regulated or therapeutic claims.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Start Future Self flow.
- Complete prompts and save output.
- Generate draft memories if supported.
- Confirm only explicit confirmed/edited memories become active.

### Supabase SQL checks if needed

```sql
select item_type, title, created_at
from future_self_items
order by created_at desc
limit 20;
```

### Suggested commit message

`Add Future Self design flow`

## Phase 11. Talk to Myself mode

### Phase goal

Add Talk to Myself as a clearly disclosed AI-generated reflection mode based only on confirmed/edited memories.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 11 only: Talk to Myself mode.

Goal:
Add Talk to Myself mode where the user can ask lifeOS to reflect their own stated values and patterns back to them based on confirmed memories.

Scope:
- Use root-level app/ routes only, not src/app/.
- Add Talk to Myself entry point in Ask or Learn & Grow.
- Clearly label the feature:
  "Talk to Myself Mode uses your confirmed memories to reflect your own stated values and patterns back to you."
- Every response must disclose that it is AI-generated and based on confirmed/edited memories.
- It must not claim to literally be the user.
- It must not speak as an exact identity clone.
- It must not be shared with others in MVP.
- It must not make high-stakes decisions for the user.
- It must preserve safety boundaries.
- Use relevant memory retrieval only.

Likely files:
- components/PersonalAlphaApp.tsx
- new app/api/ai/talk-to-myself/route.ts or app/api/ai/ask/route.ts with mode separation
- lib/aiSafety.ts
- lib/memory.ts
- lib/types.ts

Hard constraints:
- Talk to Myself must clearly disclose AI-generated reflection based on confirmed memories.
- Do not pretend to literally be the user.
- Do not use draft/rejected/deleted/archived memories.
- Do not make high-stakes decisions.
- Do not make medical, therapy, legal, financial, mortgage, investment, or emergency claims.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Ask "What would I remind myself about this decision?"
- Verify the answer includes disclosure and uses only active relevant memories.
- Verify no inactive memories are cited or used.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- New `app/api/ai/talk-to-myself/route.ts` or `app/api/ai/ask/route.ts`
- `lib/aiSafety.ts`
- `lib/memory.ts`
- `lib/types.ts`

### Database changes if any

No migration in this phase. Existing `ai_interactions` can log the route if needed.

### Supabase SQL patch if needed

None expected.

### Constraints

- Must be private to the signed-in user.
- Must not present as a literal copy, clone, or replacement of the user.
- Must not be available to other people.

### Done criteria

- Talk to Myself mode is visible and labeled.
- Responses include AI-generated disclosure.
- Responses are grounded in relevant confirmed/edited memories or say when memory support is weak.
- Existing Ask mode still works.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Ask a Talk to Myself prompt with confirmed memories available.
- Ask with no relevant memories and verify it says support is limited.
- Try a high-stakes decision prompt and verify it stays reflective.

### Supabase SQL checks if needed

```sql
select route, memory_ids, created_at
from ai_interactions
where route like '%talk%'
order by created_at desc
limit 20;
```

### Suggested commit message

`Add disclosed Talk to Myself mode`

## Phase 12. Collapsed memory references / Why this answer?

### Phase goal

Collapse memory references behind a "Why this answer?" panel so AI answers stay readable while memory use remains inspectable.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 12 only: Collapsed memory references / Why this answer?

Goal:
Make AI memory references quieter by default and expandable only when wanted.

Scope:
- Use root-level app/ routes only, not src/app/.
- Replace loud "Memories Used" sections in Today, Ask, Decision Reflection, and Talk to Myself with collapsed "Why this answer?" or "Memories used (N)" panels.
- Default panels to collapsed.
- Show a light preview: title, match strength if available, and short content preview only after expand.
- Never show draft, rejected, deleted, or archived memories.
- Avoid dumping full memory contents unless the user intentionally expands details.
- Keep backend active-memory safeguards unchanged.

Likely files:
- components/PersonalAlphaApp.tsx
- app/api/ai/ask/route.ts only if response shape needs lightweight source metadata
- app/api/ai/today/route.ts only if response shape needs lightweight source metadata
- lib/types.ts

Hard constraints:
- Never show inactive memories.
- Do not expose sensitive memory content in collapsed state.
- Do not change memory retrieval to include more memories.
- Do not weaken auth.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Ask a question and verify memory references are collapsed by default.
- Expand Why this answer and verify only confirmed/edited memories appear.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `app/api/ai/ask/route.ts`
- `app/api/ai/today/route.ts`
- `lib/types.ts`

### Database changes if any

No database changes.

### Supabase SQL patch if needed

None.

### Constraints

- The panel is a UI disclosure, not a change in memory eligibility.
- Keep answer readability primary.
- Memory previews should be restrained.

### Done criteria

- Ask and Today use collapsed memory references by default.
- Expanded details show only active memory references.
- UI labels explain why memories were used.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Generate Today and verify memory references are collapsed.
- Ask with a relevant memory and expand Why this answer.
- Archive the memory and verify it no longer appears in references.

### Supabase SQL checks if needed

```sql
select id, status
from memories
where id = any(
  select unnest(memory_ids)
  from ai_interactions
  order by created_at desc
  limit 1
);
```

Expected statuses: only `confirmed` or `edited`.

### Suggested commit message

`Collapse AI memory references`

## Phase 13. Calendar onboarding and better planning context

### Phase goal

Improve Calendar onboarding and planning context so Today can use commitments, focus blocks, and recovery time more clearly.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 13 only: Calendar onboarding and better planning context.

Goal:
Improve the Calendar empty state, templates, event categories, and Today planning context.

Scope:
- Use root-level app/ routes only, not src/app/.
- Add Calendar empty state copy:
  "Calendar gives Today more context. Add key commitments, recurring focus blocks, or recovery time."
- Add templates:
  - Focus block
  - Caregiving task
  - Recovery / reset time
  - Business work block
  - Review time
  - Kids / family time
  - Habit replacement block
  - Decision research block
- Event fields:
  - title
  - date
  - start time
  - end time optional
  - notes
  - category: focus / caregiving / recovery / work / personal / review / family / decision
- Show Today, Upcoming, and Recent/past collapsed.
- No Google Calendar integration yet.
- Feed categories and today's events into Today context without overloading the AI prompt.

Likely files:
- components/PersonalAlphaApp.tsx
- app/api/ai/today/route.ts
- lib/types.ts
- future migration if adding category column to calendar_events

Hard constraints:
- No external calendar integration in this phase.
- Do not expose user calendar data outside authenticated user context.
- Today remains bounded and safe.
- Do not create financial, medical, legal, or emergency claims from calendar context.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Add events using templates and categories.
- Verify Today receives relevant planning context.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `app/api/ai/today/route.ts`
- `lib/types.ts`
- Future migration for `calendar_events.category`

### Database changes if any

Likely yes: add `category` to `calendar_events`.

### Supabase SQL patch if needed

```sql
alter table calendar_events
  add column if not exists category text not null default 'personal';

create index if not exists calendar_events_user_category_starts_idx
  on calendar_events(user_id, category, starts_at);
```

### Constraints

- Do not add Google Calendar or external integrations.
- Keep category values simple strings unless a stricter enum is worth the migration complexity.
- Existing events should default to `personal`.

### Done criteria

- Calendar has onboarding empty state and templates.
- Events include category.
- Calendar shows Today, Upcoming, and collapsed Recent/past.
- Today uses calendar context safely.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Open empty Calendar and verify onboarding copy.
- Add each template type enough to confirm category selection works.
- Edit and delete categorized events.
- Generate Today with a focus block and family event.

### Supabase SQL checks if needed

```sql
select title, category, starts_at, ends_at
from calendar_events
order by starts_at desc
limit 20;
```

### Suggested commit message

`Improve calendar onboarding and context`

## Phase 14. Tone, voice, audio, and subtitles settings

### Phase goal

Add communication preferences for tone, voice, audio, and subtitles while keeping audio optional and muted by default.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 14 only: Tone, voice, audio, and subtitles settings.

Goal:
Expand Settings preferences for communication tone, voice/audio, and subtitles. This phase stores preferences only; do not implement voice generation yet.

Scope:
- Use root-level app/ routes only, not src/app/.
- Add communication tone presets:
  - Warm + direct
  - Calm reflective guide
  - Practical operator
  - Socratic coach
  - Encouraging coach
  - Concise + blunt
  - Deep growth
- Add voice/audio settings:
  - audio enabled
  - muted by default
  - subtitles enabled
  - always show text
  - onboarding audio enabled
  - modules audio enabled
  - voice provider
  - voice model
  - voice preset
  - voice instructions
- Voice presets:
  - Coral
  - Alloy
  - Sage
  - Fable
  - Onyx
  - Nova
  - Marin
  - Cedar
- Display disclosure:
  "Audio is AI-generated. Text is always shown on screen."
- Do not generate audio in this phase.
- Keep audio disabled/muted by default unless user chooses otherwise.

Likely files:
- components/PersonalAlphaApp.tsx
- lib/types.ts
- app/api/me/route.ts if settings are returned there
- future migration for user_settings fields

Hard constraints:
- Text must always be visible when audio exists.
- Audio must be optional and muted by default unless the user chooses otherwise.
- Do not expose OpenAI key.
- Do not call Voice API in this phase.
- Do not touch .env.local.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Change tone and audio settings and verify they persist.
- Verify defaults are safe: audio disabled or muted, subtitles enabled, text always shown.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `lib/types.ts`
- `app/api/me/route.ts`
- Future migration for `user_settings`

### Database changes if any

Likely yes: add tone/audio/subtitle preference fields to `user_settings`.

### Supabase SQL patch if needed

```sql
alter table user_settings
  add column if not exists tone_preset text not null default 'Warm + direct',
  add column if not exists audio_enabled boolean not null default false,
  add column if not exists audio_muted boolean not null default true,
  add column if not exists subtitles_enabled boolean not null default true,
  add column if not exists always_show_text boolean not null default true,
  add column if not exists onboarding_audio_enabled boolean not null default false,
  add column if not exists modules_audio_enabled boolean not null default false,
  add column if not exists voice_provider text not null default 'openai',
  add column if not exists voice_model text,
  add column if not exists voice_preset text not null default 'Coral',
  add column if not exists voice_instructions text not null default '';
```

### Constraints

- Keep existing `tone` field compatible if present.
- Always preserve visible text preference as true in UI if audio exists.
- Do not implement the audio API yet.

### Done criteria

- Settings includes tone, voice, audio, and subtitle preferences.
- Preferences persist per user.
- Safe defaults are applied.
- UI disclosure is visible.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Open Settings preferences.
- Change tone preset and save.
- Enable audio but verify muted/subtitles/text controls remain clear.
- Refresh and verify preferences persist.

### Supabase SQL checks if needed

```sql
select user_id,
       tone_preset,
       audio_enabled,
       audio_muted,
       subtitles_enabled,
       always_show_text,
       voice_preset
from user_settings
order by updated_at desc
limit 20;
```

### Suggested commit message

`Add communication preference settings`

## Phase 15. Voice API and "Hear example"

### Phase goal

Add a safe server-side voice example flow without exposing API keys or making audio required.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 15 only: Voice API and "Hear example".

Goal:
Add a "Hear example" button in Settings so users can preview the selected voice. Audio must remain optional, muted by default, and paired with visible text.

Scope:
- Use root-level app/ routes only, not src/app/.
- Add a server-side route for generating a short audio preview.
- Do not expose OPENAI_API_KEY or any provider secret to the client.
- Use the user's selected voice preset/model/instructions where safe.
- The preview text must be visible on screen before and during playback.
- If audio fails, show:
  "Audio could not play. You can keep reading below."
- Do not audio-generate every label or page.
- Do not enable audio globally just because preview works.
- Keep the request small and private-alpha scoped.

Likely files:
- components/PersonalAlphaApp.tsx
- lib/openai.ts
- new app/api/ai/voice-preview/route.ts
- lib/types.ts
- lib/aiSafety.ts only if adding audio disclosure constants

Hard constraints:
- Do not expose OpenAI key.
- Do not touch .env.local.
- Text must always be visible when audio exists.
- Audio must be optional and muted by default unless the user chooses otherwise.
- Audio is AI-generated and must be disclosed.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Click Hear example and verify audio can play.
- Verify preview text is visible.
- Disable/mute audio and verify settings are respected.
- Temporarily simulate API failure and verify fallback copy.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `lib/openai.ts`
- New `app/api/ai/voice-preview/route.ts`
- `lib/types.ts`
- `lib/aiSafety.ts` if disclosure constants are useful

### Database changes if any

No additional database changes beyond Phase 14 settings.

### Supabase SQL patch if needed

None expected.

### Constraints

- Voice generation must run server-side.
- Do not persist generated audio unless explicitly needed; prefer transient response.
- Do not send secrets to the browser.

### Done criteria

- "Hear example" works from Settings.
- Audio preview has visible text.
- Failure fallback is clear.
- Audio remains optional and user-controlled.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Select each available voice preset enough to verify request shape.
- Click Hear example.
- Verify audio disclosure and visible text.
- Verify the page remains usable if preview fails.

### Supabase SQL checks if needed

None.

### Suggested commit message

`Add voice preview endpoint`

## Phase 16. Audio/subtitles in onboarding and modules

### Phase goal

Add optional audio playback and subtitles to onboarding and Learn & Grow lesson introductions.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 16 only: Audio/subtitles in onboarding and modules.

Goal:
Use optional AI-generated audio in onboarding and selected Learn & Grow module introductions while always showing text.

Scope:
- Use root-level app/ routes only, not src/app/.
- Add audio only to:
  - onboarding introductions
  - module/lesson introductions
  - selected guidance moments
- Do not audio-generate every small label or button.
- Respect user settings:
  - audio enabled
  - audio muted
  - subtitles enabled
  - always show text
  - onboarding audio enabled
  - modules audio enabled
- Text must always remain visible even when audio plays.
- Audio must never block progress.
- If audio fails, show:
  "Audio could not play. You can keep reading below."
- Keep audio controls accessible and understandable.

Likely files:
- components/PersonalAlphaApp.tsx
- app/api/ai/voice-preview/route.ts or a new app/api/ai/speech/route.ts
- lib/openai.ts
- lib/types.ts

Hard constraints:
- Text must always be visible when audio exists.
- Audio must be optional and muted by default unless the user chooses otherwise.
- Do not expose OpenAI key.
- Do not make audio required for onboarding or modules.
- Do not add audio to sensitive memory content by default.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Complete onboarding with audio disabled.
- Enable onboarding audio and verify text remains visible.
- Enable module audio and verify lesson text remains visible.
- Simulate audio failure and verify fallback copy.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `app/api/ai/voice-preview/route.ts` or new `app/api/ai/speech/route.ts`
- `lib/openai.ts`
- `lib/types.ts`

### Database changes if any

No additional database changes beyond Phase 14 settings.

### Supabase SQL patch if needed

None expected.

### Constraints

- Do not auto-play unmuted audio by default.
- Do not block onboarding completion on audio load.
- Avoid generating audio for user-provided sensitive reflections unless explicitly designed and consented later.

### Done criteria

- Onboarding and module introductions can play optional audio.
- Subtitles/text are always visible.
- Audio failure does not block progress.
- Settings are respected.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Run onboarding with audio disabled.
- Enable audio and muted mode, then verify playback controls.
- Enable module audio and open Module 0.
- Confirm text remains visible throughout.

### Supabase SQL checks if needed

```sql
select audio_enabled,
       audio_muted,
       subtitles_enabled,
       always_show_text,
       onboarding_audio_enabled,
       modules_audio_enabled
from user_settings
order by updated_at desc
limit 20;
```

### Suggested commit message

`Add optional audio to guided flows`

## Phase 17. Legacy Mode as future opt-in concept only

### Phase goal

Introduce Legacy Mode only as a future, access-controlled, opt-in concept without enabling sharing or external access.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 17 only: Legacy Mode as future opt-in concept only.

Goal:
Add Legacy Mode as future-facing product positioning only. Do not implement shareable access, public personas, external conversations, or permissions.

Scope:
- Use root-level app/ routes only, not src/app/.
- Add a restrained Future Concept section, likely under Settings, Future Self, or Learn & Grow.
- Suggested framing:
  "Legacy Mode lets you choose what parts of your lifeOS can be shared later as an AI-guided reflection of your values, stories, and lessons."
- Clearly state:
  - Not part of MVP.
  - Future/later only.
  - Explicit opt-in required.
  - Separate consent required.
  - User chooses what is shareable.
  - Private memories are not shared by default.
  - Responses would be AI-generated.
  - It must not pretend to literally be the person.
  - Revocation/deletion and access controls would be required.
- Do not create public routes.
- Do not create sharing tokens.
- Do not expose memories to other users.
- Do not add database sharing permissions yet unless only recording "interested in future concept" locally.

Likely files:
- components/PersonalAlphaApp.tsx
- lib/types.ts only if saving future interest
- future migration only if adding a local opt-in interest flag

Hard constraints:
- Legacy Mode is future/later unless explicitly opt-in and access-controlled.
- Do not share memories.
- Do not let other people talk to the user's AI.
- Do not pretend to literally be the person.
- Do not weaken auth.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Verify there is no public Legacy route.
- Verify no memory sharing or external access exists.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `lib/types.ts` only if saving a future-interest flag
- Future migration only if storing interest

### Database changes if any

No migration recommended. If the owner asks to store interest, add only a private per-user flag.

### Supabase SQL patch if needed

If storing interest:

```sql
alter table user_settings
  add column if not exists legacy_mode_interest boolean not null default false;
```

### Constraints

- No public sharing.
- No access controls beyond existing private auth because the feature is not active.
- No memory export to other people.

### Done criteria

- Legacy Mode appears only as future concept.
- Copy includes privacy and AI-generated boundaries.
- No functional sharing exists.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- View the Legacy concept section.
- Confirm there are no share buttons, public links, or external access flows.
- Confirm existing app flows still work.

### Supabase SQL checks if needed

```sql
select legacy_mode_interest
from user_settings
order by updated_at desc
limit 20;
```

### Suggested commit message

`Add Legacy Mode future concept`

## Phase 18. Final privacy/safety/UX QA pass

### Phase goal

Perform a final end-to-end privacy, safety, auth, memory, audio, and UX quality pass after all prior phases.

### Exact Codex prompt to run

```text
You are working in /Users/sN/Documents/GitHub/lifeOS.

Read docs/PRODUCT_EXPERIENCE_RECOMMENDATIONS.md first.

Implement Phase 18 only: Final privacy/safety/UX QA pass.

Goal:
Audit and harden the full product experience after Phases 1-17. Fix only issues found during this QA pass. Do not add new product scope.

Scope:
- Use root-level app/ routes only, not src/app/.
- Verify auth is still invite-only and owner admin remains owner-only.
- Verify no secrets are exposed client-side.
- Verify .env.local is untouched.
- Verify all AI routes include safety boundaries.
- Verify medical, therapy, legal, financial, mortgage, investment, and emergency claims are absent.
- Verify Decision Reflection is reflective only.
- Verify Talk to Myself discloses AI-generated reflection based on confirmed memories.
- Verify Legacy Mode remains future opt-in concept only.
- Verify text is always visible anywhere audio exists.
- Verify audio is optional and muted by default unless the user chooses otherwise.
- Verify draft/rejected/deleted/archived memories never influence AI.
- Verify confirmed/edited memories are eligible but retrieval remains bounded and relevant.
- Verify mobile and desktop layouts do not overlap or hide text.
- Verify export/delete data still works.
- Do not introduce new features during this pass.

Likely files:
- components/PersonalAlphaApp.tsx
- components/LoginPage.tsx
- components/AdminPage.tsx
- app/api/ai/ask/route.ts
- app/api/ai/today/route.ts
- app/api/ai/reflect/route.ts
- any new AI routes added in prior phases
- lib/aiSafety.ts
- lib/memory.ts
- lib/openai.ts
- lib/auth.ts
- app/api/export/route.ts

Hard constraints:
- Do not weaken auth.
- Do not expose secrets.
- Do not touch .env.local.
- Do not auto-confirm memories.
- Do not broaden memory retrieval to inactive statuses.
- Do not add new product scope.

Verification:
- Run npm run lint, npm run typecheck, npm run build, npm run smoke.
- Perform the full manual browser baseline checks.
- Test memory status isolation with draft, confirmed, edited, rejected, archived, and deleted memories.
- Test high-stakes prompts in Ask, Decision Reflection, and Talk to Myself.
- Test audio settings and visible text behavior.
```

### Likely files touched

- `components/PersonalAlphaApp.tsx`
- `components/LoginPage.tsx`
- `components/AdminPage.tsx`
- `app/api/ai/ask/route.ts`
- `app/api/ai/today/route.ts`
- `app/api/ai/reflect/route.ts`
- Any new AI routes from prior phases
- `lib/aiSafety.ts`
- `lib/memory.ts`
- `lib/openai.ts`
- `lib/auth.ts`
- `app/api/export/route.ts`

### Database changes if any

No planned database changes. Only add a corrective migration if QA discovers a schema-level privacy or safety issue.

### Supabase SQL patch if needed

None expected. If corrective SQL is required, write the smallest possible migration and include a rollback note.

### Constraints

- This is a QA and hardening pass, not a feature pass.
- Fix regressions narrowly.
- Preserve all prior working baseline checks.

### Done criteria

- All standard verification commands pass.
- Manual browser baseline checks pass.
- No known auth, secret exposure, memory eligibility, safety, audio, or layout regressions remain.
- Final QA notes list any residual risks or deferred work.

### Local terminal tests

```bash
npm run lint
npm run typecheck
npm run build
npm run smoke
```

### Manual browser tests

- Owner login and owner-only Admin.
- Allowed non-owner login without Admin.
- Unapproved user blocked.
- Onboarding completion.
- Today generation.
- Reflection to draft memory.
- Confirm/edit memory and verify 1536-dimension embedding.
- Reject/archive/delete memory and verify inactive status.
- Ask, Decision Reflection, Talk to Myself, and Today use active memories only.
- Learn & Grow Module 0.
- Future Self flow.
- Calendar event creation and Today context.
- Settings Memory tab.
- Export data and guarded delete data flow.
- Audio disabled, enabled muted, and failure states.
- Mobile and desktop layouts.

### Supabase SQL checks if needed

```sql
select status, count(*)
from memories
group by status
order by status;

select id, status, embedding is not null as has_embedding
from memories
where status not in ('confirmed', 'edited')
  and embedding is not null;

select route, memory_ids, created_at
from ai_interactions
order by created_at desc
limit 50;
```

Expected: no inactive memory has an embedding, and AI interaction memory IDs resolve only to confirmed/edited memories.

### Suggested commit message

`Run final product experience QA hardening`

## Documentation Task Verification

After creating this file, verify the documentation task itself:

```bash
test -f docs/CODEX_PRODUCT_EXPERIENCE_PROMPT_PLAN.md
rg -n "^## Phase" docs/CODEX_PRODUCT_EXPERIENCE_PROMPT_PLAN.md
rg -n "Do not weaken auth|Do not expose secrets|Do not auto-confirm memories|root-level app/" docs/CODEX_PRODUCT_EXPERIENCE_PROMPT_PLAN.md
git diff -- docs/CODEX_PRODUCT_EXPERIENCE_PROMPT_PLAN.md
git diff --stat
```

Expected documentation-task result:

- `docs/CODEX_PRODUCT_EXPERIENCE_PROMPT_PLAN.md` exists.
- All 18 phases are present in the exact requested order.
- Every phase includes all required fields.
- Every phase has a standalone Codex prompt.
- Hard constraints appear globally and are repeated where phase-specific risk is high.
- The document says not to create migrations until the relevant implementation phase.
- No runtime app files are changed by this documentation task.
- No commit is made.
