# PHASE 2 — Contradiction and Gap Audit

You are working in repository:

gasekerci1/docs

Local working directory:

~/Documents/github/docs

This is a documentation-only planning repository for BecomingOS / lifeOS.

Before starting:
Read:
- docs/00_repository_control/file_inventory.md
- docs/00_repository_control/duplicate_file_map.md

Important rules:
- Do NOT write app code.
- Do NOT approve MVP build.
- Do NOT claim production readiness.
- Do NOT delete files.
- Do NOT move files.
- Do NOT archive files yet.
- Do NOT rewrite final canonical documents yet.
- Do NOT silently resolve contradictions.
- Do NOT invent evidence.
- Mark unknowns as unresolved or assumption.

Task:
Inspect all relevant documents and create:

docs/00_repository_control/contradiction_register.md
docs/00_repository_control/gap_register.md

contradiction_register.md must identify contradictions across:
1. Product name:
   - BecomingOS
   - lifeOS
   - Life OS
   - personal alpha
   - MVP
   - prototype
2. Product stage:
   - research
   - prototype
   - MVP
   - production-ready
   - build-ready
3. Product scope:
   - educational product
   - wellness product
   - personal OS
   - AI coach
   - therapy-adjacent wording
   - non-clinical support
4. AI memory:
   - what AI may infer
   - what AI may store
   - what requires user confirmation
   - memory lifecycle
   - embedding/retrieval rules
5. Safety:
   - crisis handling
   - self-harm
   - harm to others
   - emergency support
   - abuse
   - addiction
   - bad-day mode boundaries
6. Privacy:
   - consent
   - retention
   - deletion
   - export
   - supporter/donor data
   - sensitive personal data
7. Legal claims:
   - what the product can say
   - what it cannot say
   - disclaimers
   - jurisdiction assumptions
8. Research:
   - validated claims
   - assumptions
   - unvalidated market claims
   - missing user evidence
9. Architecture:
   - conceptual only
   - production architecture
   - API contracts
   - NFRs
   - auth
   - database
   - AI provider usage
10. Curriculum:
   - modules
   - onboarding
   - lessons
   - question bank
   - user journeys
11. Brand:
   - tone
   - values
   - visual identity
   - naming system
12. Operations:
   - support
   - analytics
   - testing
   - accessibility
   - incident response

For every contradiction include:
- ID
- file A
- file B
- conflicting statements
- severity: critical, high, medium, low
- recommended resolution
- owner approval required: yes/no
- final canonical wording proposal

gap_register.md must include:
- missing decisions
- missing evidence
- missing documents
- incomplete documents
- documents that need owner approval
- documents that should not be considered final yet

At the end:
- Summarise files created.
- Summarise critical contradictions.
- Summarise gaps blocking finalisation.
- List owner decisions needed.
- Stop.
