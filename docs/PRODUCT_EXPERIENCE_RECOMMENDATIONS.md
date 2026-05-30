# lifeOS Product Experience Recommendations

## Current Working Baseline

The personal-alpha MVP is working and should not be destabilized.

Known working areas:

- Owner login works.
- Invite-only auth works.
- Today generates.
- Reflection creates draft memories.
- Memory confirmation works.
- Embeddings are 1536 dimensions.
- Ask AI retrieves confirmed/edited memories.
- Supabase connection and smoke test pass.
- Production deployment exists at lifeos-personal-alpha.vercel.app.

## Product Direction

lifeOS should feel like a private personal operating system, not a developer MVP.

The user should feel:

- “This system is learning me.”
- “This is helping me become the person I want to be.”
- “The more I use it, the more valuable it gets.”
- “I am building something that could eventually represent my thinking, values, and life lessons.”
- “This could become a legacy version of me.”

The intended user experience:

1. User lands on login / sign up.
2. User can request beta access or join the waitlist.
3. Approved users sign in.
4. First-time users complete onboarding.
5. Onboarding explains privacy, consent, memory, AI, and boundaries.
6. User chooses a growth focus.
7. User gets quick value immediately.
8. User starts the first Learn & Grow module.
9. User can use Today, Ask, Reflect, Calendar, Review, Memories, and Settings.
10. AI memory references are hidden by default and expandable only when wanted.
11. Notifications guide the user toward unfinished actions.
12. The system continuously adapts based on what the user tells it.

## Visual Direction

Desired feel:

- calm
- private
- premium
- personal
- warm
- clean
- not clinical
- not corporate
- not a generic chatbot app

Brand:

- lifeOS
- simple logo mark
- text-first logo acceptable
- no heavy imagery yet
- soft, grounded colours
- avoid loud gradients and clutter

Possible brand language:

- Private personal OS
- Build the system that helps you become yourself, deliberately
- Reflect, remember, plan, and grow
- Your memory, values, decisions, and future self in one private system

## Navigation

Preferred primary navigation:

- Today
- Ask
- Reflect
- Learn & Grow
- Calendar
- Review
- Memories
- Settings

Admin should appear only for owner.

Memory Inbox should not be a dominant top-level tab. It can appear:

- inside Memories
- as a notification action
- from Reflect after draft memories are created

## Login / Sign Up / Access Request

Login should show:

- lifeOS brand
- “Private personal OS”
- “Log in / Sign up”
- email magic link
- “Request beta access”
- “Join waitlist”
- private alpha explanation

Access request should support:

- email
- name optional
- reason optional
- request type: waitlist / beta
- status: pending / approved / denied

Owner should be able to approve access requests.

Approved request should add email to allowed_users.

Suggested copy:

“lifeOS is currently in private beta. Request access to try the personal alpha.”

“If approved, you’ll be able to sign in with this email.”

“Beta users help shape the product. You may be asked to test reflection, memory, Today planning, and Learn & Grow modules.”

## Onboarding

Onboarding should run before the full app for first-time users.

Onboarding must give quick value. It should not feel like boring setup.

Steps:

1. Welcome to lifeOS
2. How lifeOS works
3. Privacy, consent, and boundaries
4. Choose starting focus
5. First reflection
6. Confirm first draft memory
7. Start first Learn & Grow module
8. See how lifeOS gets better as the user builds it

Required consents:

- I understand this is a private alpha.
- I understand this is not medical, therapy, legal, financial, or emergency support.
- I consent to AI processing my reflections to create draft memories.
- I understand only confirmed/edited memories influence AI.
- I understand I can export/delete my data.
- I understand I am responsible for my own decisions and should seek qualified professional help for high-stakes decisions.

Starting focus options:

- Focus & consistency
- Motivation & avoidance
- Values & identity
- Habits & routines
- Caregiving / family load
- Work / business direction
- Emotional patterns
- Big life decision
- Stopping a habit
- Building business direction
- Family and kids
- Custom

## Quick Value Loop

The app must constantly make this loop visible:

Tell lifeOS something → confirm what matters → system adapts → better guidance

Onboarding and early tasks should immediately show benefits:

1. User answers a few meaningful prompts.
2. lifeOS reflects a pattern back.
3. lifeOS creates draft memories.
4. User confirms or edits memories.
5. lifeOS shows how those memories improve Today, Ask, and Learn & Grow.
6. User sees that completing more tasks makes the system smarter and more personal.

Use progress copy like:

- Your OS is getting stronger.
- You have added confirmed memories.
- Your system now understands recurring patterns.
- Complete this module to improve your Today guidance.
- Answer this prompt to help your Future Self become clearer.
- You are building a private model of your values, patterns, and decisions.

Avoid cheap gamification. Use meaningful progress.

## User Can Tell the System Anything

The user should be able to tell lifeOS anything they want to work through, such as:

- I want to buy a car.
- I want a mortgage.
- I need to spend more time with my kids.
- I want to stop a certain habit.
- I want to build a business.
- I want to become more disciplined.
- I am avoiding something.
- I keep repeating a pattern.
- I want to be a better parent, partner, founder, carer, or friend.

The system should accept these as user goals or reflections.

However, the system must handle high-stakes topics safely:

- Buying a car: help clarify values, tradeoffs, budget questions, and next steps; do not give regulated financial advice.
- Mortgage: help prepare questions and decision criteria; do not provide financial/legal advice.
- Health/mental health/habit change: support reflection and planning; do not diagnose or provide treatment.
- Legal/financial/emergency topics: provide boundaries and suggest qualified professional support where needed.

## All Confirmed Memories Eligible By Default

By default, all confirmed or edited memories should be eligible to help the system.

Meaning:

- confirmed memories are part of the user’s active OS
- edited memories are part of the user’s active OS
- draft memories are not active
- rejected memories are not active
- deleted memories are not active
- archived memories are not active unless explicitly restored

Important distinction:

The system should not dump every memory into every prompt.

Instead:

- all active memories are eligible by default
- retrieval selects the most relevant memories
- the user can review and delete memories in Settings
- the user can archive memories they no longer want actively influencing the system
- the user can eventually choose memory categories/scopes

## Settings Memory Tab

Settings should include a Memory tab where the user can:

- view active memories
- search memories
- edit memories
- archive memories
- delete memories
- see which memories are eligible for AI use
- understand that only confirmed/edited memories influence AI
- optionally restore archived memories later
- export all memory data
- delete all personal memory data

The Memory tab should explain:

“Confirmed and edited memories are eligible to help lifeOS guide you. Draft, rejected, deleted, and archived memories do not influence AI.”

## Privacy and Disclaimer Requirements

Onboarding must clearly explain:

1. This is a private alpha.
2. This is not medical, therapy, legal, financial, or emergency support.
3. The AI may be wrong.
4. The user remains responsible for decisions.
5. Memories are created as drafts first.
6. Only confirmed or edited memories influence AI.
7. The user can reject draft memories.
8. The user can delete/export data.
9. Sensitive reflections may be processed by AI providers.
10. Audio, if enabled, is AI-generated.
11. Text is always shown even when audio is enabled.

Consent should not feel like a legal wall, but it must be explicit.

Recommended consent copy:

- I understand lifeOS is a private alpha and not medical, therapy, legal, financial, or emergency support.
- I consent to my reflections being processed by AI to suggest draft memories.
- I understand only memories I confirm or edit should influence AI guidance.
- I understand I can delete or export my data from Settings.
- I understand I am responsible for my own decisions and should seek qualified professional help for high-stakes decisions.

## Notifications

Add a top-right notification inbox.

Notifications should include:

- draft memories waiting
- review prompt
- calendar setup prompt
- onboarding incomplete
- pending access requests for owner
- module/growth next step
- memory needing confirmation
- first module incomplete

Menu tabs should show small badges:

- Memories / Reflect when drafts exist
- Review when daily review missing
- Calendar when empty/setup needed
- Admin when access requests pending
- Learn & Grow when next module step exists

Notifications should not expose sensitive memory content.

## Learn & Grow

Rename Modules to Learn & Grow.

Create module placeholders:

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
- Decision Reflection: Buying a car
- Decision Reflection: Mortgage preparation
- Decision Reflection: Family and kids
- Decision Reflection: Breaking a habit
- Decision Reflection: Business direction

Module cards should show:

- title
- purpose
- status: Available / Coming soon / Recommended
- estimated time
- Start / Continue / Preview button

Module 0 should be usable immediately.

Modules should not feel like a fixed course. They should adapt to what the user says they need.

## Adaptive Learn & Grow System

Learn & Grow should recommend content based on the user’s goals, reflections, and confirmed memories.

Examples:

User says:
“I want to buy a car.”

lifeOS should suggest learning/actions around:

- values and priorities
- decision criteria
- budget reflection
- tradeoff mapping
- questions to ask before purchase
- memory prompts about what matters in ownership

User says:
“I want a mortgage.”

lifeOS should suggest:

- financial readiness reflection
- stress and responsibility planning
- questions for a broker/adviser
- household/family priorities
- long-term decision review
- clear boundary that this is not financial advice

User says:
“I need to spend more time with the kids.”

lifeOS should suggest:

- values and identity prompts
- calendar anchors
- habit design
- weekly review prompts
- boundaries and priority reset

User says:
“I want to stop a certain habit.”

lifeOS should suggest:

- trigger mapping
- replacement behaviour
- motivation and avoidance module
- compassion/recovery plan
- progress review
- no medical/clinical claims

Each module should help the user build part of their personal OS.

Each module should produce at least one of:

- confirmed memory
- value statement
- decision rule
- habit rule
- boundary
- calendar anchor
- review question
- future-self instruction
- preference
- “when I am stuck, remind me…” statement

The product should tell the user:

“Every completed module makes your lifeOS more useful.”

“You are not just learning. You are building the system that will guide you.”

## Calendar

Calendar should have onboarding.

Calendar empty state:

“Calendar gives Today more context. Add key commitments, recurring focus blocks, or recovery time.”

Suggested templates:

- Focus block
- Caregiving task
- Recovery / reset time
- Business work block
- Review time
- Kids / family time
- Habit replacement block
- Decision research block

Event fields:

- title
- date
- start time
- end time optional
- notes
- category: focus / caregiving / recovery / work / personal / review / family / decision

Calendar should show:

- Today
- Upcoming
- Recent / past collapsed

No Google Calendar integration yet.

## Memories and AI References

Do not show all referenced memories loudly.

Use:

- “Why this answer?”
- “Memories used (N)”
- expandable small panel

Default collapsed.

Memory content should be previewed lightly, not dumped.

Never show:

- draft memories
- rejected memories
- deleted memories
- archived memories

## Talk to Myself Mode

Add a future-facing feature concept:

Talk to Myself

Purpose:

The user can ask lifeOS to respond as a reflective version of themselves, based only on confirmed memories, values, preferences, and past statements.

Example prompts:

- What would I remind myself about this decision?
- What would my future self say about this pattern?
- Based on what I’ve told you, what do I usually forget when I’m stressed?
- What would I say to myself if I was thinking clearly?

Rules:

- Must clearly label this as AI-generated.
- Must not claim to literally be the user.
- Must say it is based on confirmed memories.
- Must not make high-stakes decisions for the user.
- Must not override safety boundaries.
- Must not be shared with others in MVP.

Suggested label:

“Talk to Myself Mode uses your confirmed memories to reflect your own stated values and patterns back to you.”

## Future Self Mode

Add a future-facing feature concept:

Future Self

Purpose:

The user designs the best version of themselves.

The system helps define:

- values
- identity
- habits
- decision rules
- boundaries
- communication style
- priorities
- legacy lessons
- how the user wants to respond under pressure
- what the user wants to be reminded of

The user should feel:

“I am creating the version of me I want to become.”

Outputs may include:

- future-self statement
- personal operating principles
- identity commitments
- decision filters
- habit commitments
- legacy notes
- “when I’m struggling, remind me…” prompts

## Legacy Mode Concept

Add a future-facing feature concept:

Legacy Mode

Purpose:

After enough use, the user may choose to create a shareable version of their values, stories, lessons, preferences, and reflections.

This could eventually allow others to ask questions and receive responses grounded in the user’s confirmed memories.

Important safety and privacy boundaries:

- Not part of MVP.
- Must be explicitly opt-in.
- Must have separate consent.
- Must allow the user to choose what is shareable.
- Must not expose private memories by default.
- Must clearly disclose that responses are AI-generated.
- Must not pretend to literally be the person.
- Must allow revocation/deletion.
- Must have access controls.

Suggested framing:

“Legacy Mode lets you choose what parts of your lifeOS can be shared later as an AI-guided reflection of your values, stories, and lessons.”

## Decision Reflection Mode

Add a future-facing feature concept:

Decision Reflection

The user can bring any decision to lifeOS.

Examples:

- buying a car
- considering a mortgage
- changing jobs
- spending more time with kids
- stopping a habit
- starting a business
- navigating caregiving pressure

lifeOS should help by:

- reflecting known values
- surfacing relevant memories
- asking clarifying questions
- identifying tradeoffs
- suggesting next actions
- recommending relevant modules
- showing what the user previously said matters

Boundary:

lifeOS helps the user think.

It does not make the decision.

For high-stakes domains, it should recommend qualified advice.

## Settings

Settings should include:

Communication tone presets:

- Warm + direct
- Calm reflective guide
- Practical operator
- Socratic coach
- Encouraging coach
- Concise + blunt
- Deep growth

Voice/audio settings:

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

Voice presets:

- Coral
- Alloy
- Sage
- Fable
- Onyx
- Nova
- Marin
- Cedar

Users should be able to click “Hear example”.

Always display audio as text on screen.

Audio should be optional.

Disclose:

“Audio is AI-generated. Text is always shown on screen.”

## Audio

Use audio in:

- onboarding
- modules
- lesson introductions
- selected guidance moments

Do not audio-generate every tiny label.

Audio should never block progress.

If audio fails:

“Audio could not play. You can keep reading below.”

## Motivation for Completing the Long Process

The app should make the user excited to complete the longer system-building process.

Use progress framing:

- Your OS is getting stronger.
- You have added 12 confirmed memories.
- Your system now understands 3 recurring patterns.
- Complete this module to improve your Today guidance.
- Answer this prompt to help your Future Self become clearer.
- You are building a private model of your values, patterns, and decisions.

Add progress indicators:

- Memory strength
- Future Self clarity
- Learn & Grow progress
- Calendar anchoring
- Review streak
- Decision rules created
- Values defined
- Habits mapped
- Boundaries defined

Avoid gamification that feels cheap. Use meaningful progress.

## Recommended New Product Terms

Use these terms in the app where appropriate:

- My OS
- Memory Vault
- Talk to Myself
- Future Self
- Decision Reflection
- Learn & Grow
- Today Directive
- Growth Path
- OS Strength
- Confirmed Memories
- Draft Memories
- Personal Principles
- Legacy Notes

## MVP vs Later Boundary

MVP should include:

- stronger onboarding
- consent and disclaimers
- memory tab in Settings
- active memory controls
- adaptive Learn & Grow recommendations
- decision reflection prompts
- Future Self positioning
- Talk to Myself as a preview or private mode only
- collapsed memory references
- clear progress indicators
- waitlist and beta access request
- notification inbox and tab badges
- tone and audio preference settings
- optional audio in onboarding/modules with text always visible

Later versions should include:

- shareable Legacy Mode
- other people talking to the user’s AI
- richer identity model
- advanced decision simulation
- deeper audio/voice system
- granular memory sharing permissions
- external integrations
- professional review workflows

## Hard Constraints

- Do not weaken auth.
- Do not expose service role key.
- Do not expose OpenAI key.
- Do not auto-confirm memories.
- Draft/rejected/deleted/archived memories must never influence AI.
- Confirmed/edited memories are eligible by default, but retrieval should select relevant memories rather than dumping all memories into every prompt.
- Do not make medical/therapy/legal/financial claims.
- Do not claim emergency support.
- Decision Reflection helps the user think; it does not make high-stakes decisions.
- Talk to Myself must clearly disclose AI-generated reflection based on confirmed memories.
- Legacy Mode is future/later unless explicitly opt-in and access-controlled.
- Text must always be visible even when audio plays.
- Use root-level app/ routes, not src/app/.
- Keep this private-alpha scoped.
