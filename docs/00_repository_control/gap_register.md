# Gap Register

Phase 2 gap audit for `gasekerci1/docs`.

This register lists missing decisions, missing evidence, missing or incomplete documents, owner approvals required, and documents that should not be treated as final. It does not authorize build, production readiness, deletion, archiving, or canonical rewriting.

## Summary

- Current safe status: documentation-only planning repository; low-fidelity prototype/readiness-planning posture unless owner decides otherwise.
- Main blockers: naming, stage scope, user/market validation, privacy/legal/safety approval, AI memory governance, data storage model, architecture gates, curriculum scope, and operations readiness.
- Many documents exist, but existence is not approval. Several review records explicitly say P0 evidence remains conditional or blocked.

## Missing Decisions

| ID | Decision needed | Why it matters | Current evidence | Blocking level | Owner approval required |
|---|---|---|---|---|---|
| GAP-001 | Approved product name and capitalization | Documents alternate between BecomingOS, lifeOS, LifeOS, Life OS, personal alpha, MVP, and prototype. | `README.md`, `01_product/lifeos_brand_kit.md`, `01_product/PRD v0.1 for BecomingOS.docx` | Critical | Yes |
| GAP-002 | Current product stage | Docs mix research, low-fidelity prototype, personal-alpha MVP, MVP, closed beta, production, build-ready, and not ready. | `README.md`, `07_analysis/project_owner_recommended_decisions_record.md`, `08_final_outputs/BecomingOS Production Readiness Review.docx`, `PRODUCT_EXPERIENCE_RECOMMENDATIONS.md` | Critical | Yes |
| GAP-003 | Repository scope for app/code references | Top-level audits reference Next.js, Supabase, OpenAI, migrations, and app routes; the user request defines this as docs-only. | `PROJECT_STRUCTURE.md`, `mvp_build_audit.md`, `database_mvp_schema_notes.md`, `README.md` | Critical | Yes |
| GAP-004 | Product category and positioning | Product is described as educational, wellness, personal OS, reflection system, and decision advisor. | PRD, legal claims pack, safety boundaries, market validation report | High | Yes |
| GAP-005 | Prototype vs MVP feature boundary | Prototype spec says no real AI/data processing; PRD and architecture docs include AI memory, Ask AI, calendar, auth, export/delete, and APIs. | Prototype UX spec, PRD, architecture blueprint, API spec | Critical | Yes |
| GAP-006 | Curriculum module scope by stage | Documents conflict between Modules 0-2 prototype, seven-module MVP, and activation after Modules 0-5. | Curriculum Bible, curriculum design task, curriculum creation task, PRD | High | Yes |
| GAP-007 | Calendar/planning MVP status | Some docs treat scheduler/calendar as completing MVP; others treat calendar as enhancement or manual/read-only. | PRD, Curriculum Bible, Today Directive Model, Calendar and Review Model | High | Yes |
| GAP-008 | AI role naming | Docs use AI interpretation, Ask AI, decision advisor, reflective guide, and coaching concepts. | Ask AI Model, wording guides, AI Interpretation Guide | High | Yes |
| GAP-009 | Supporter/donor scope | Supporter/donor privacy document exists, but PRD says supporter/donor sharing is out of MVP. | PRD, supporter/donor privacy document | Medium | Yes |
| GAP-010 | Launch/research geography and jurisdiction | Documents reference Australia-first, no specific jurisdiction, EU/US/Australia, and general privacy guidance. | PRD, safety boundaries, privacy documents, user research plan | High | Yes |
| GAP-011 | Accessibility baseline | Accessibility docs reference WCAG 2.2 AA; testing strategy references WCAG 2.1/Section 508. | Accessibility QA plan, Accessibility Requirements, Testing Strategy | Medium | Yes |
| GAP-012 | Source-of-truth folder structure | Root-level category folders and nested `docs/` final structure coexist. | file inventory, duplicate map | High | Yes |

## Missing Evidence

| ID | Missing evidence | Needed before | Current status | Source documents indicating gap |
|---|---|---|---|---|
| GAP-013 | Completed user research findings | PRD finalization, MVP scope, problem/solution fit, desirability, trust, privacy comfort | Missing | `07_analysis/remaining_readiness_blockers.md`, `07_analysis/project_owner_recommended_decisions_record.md`, `02_research_and_validation/User research plan.docx` |
| GAP-014 | Target segment validation | Product positioning, onboarding, pricing, recruitment, safety exclusions | Missing | User research plan, market validation report |
| GAP-015 | Market validation data | Monetization, MVP demand, waitlist/conversion claims, competitor positioning | Missing | `02_research_and_validation/market_validation_report.md` |
| GAP-016 | Willingness-to-pay or pricing evidence | Monetization and MVP business assumptions | Missing | Market validation report |
| GAP-017 | Prototype comprehension and emotional-safety findings | Moving from low-fidelity prototype to build | Missing | Prototype UX spec, user testing plan, comprehensive validation plan |
| GAP-018 | AI trust and calibrated reliance findings | Ask AI, Today Directive, AI interpretation confidence UX | Missing | Comprehensive validation plan, AI evaluation harness reviews |
| GAP-019 | Legal review of final copy | Public claims, onboarding, app store, marketing, support scripts | Missing | Legal Claims Review Pack, project owner recommended decisions |
| GAP-020 | Privacy/legal approval of data model | Memory persistence, embeddings, provider calls, export/delete, consent revocation | Missing | Canonical data model, privacy design pack, P0 owner review packet |
| GAP-021 | AI provider retention/storage evidence | Any real user data sent to model providers | Missing | AI memory architecture, privacy design pack, project owner recommended decisions |
| GAP-022 | Crisis localization resource list by jurisdiction | Crisis handling copy and safety routing | Missing or incomplete | Crisis Localisation Policy Design, safety boundaries |
| GAP-023 | Incident response tooling and staffing evidence | Closed beta, production, support commitments | Missing | Support playbook, remaining readiness blockers |
| GAP-024 | Accessibility test results on built flows | Any release or closed beta claim | Missing | Accessibility QA plan, Accessibility Requirements |
| GAP-025 | Security review or threat-model sign-off | MVP build, cloud storage, auth, vector database, AI provider integration | Missing | Security threat model, P0 owner review packet |
| GAP-026 | Integration Agent go/no-go decision | MVP build planning or readiness claim | Missing | `07_analysis/remaining_readiness_blockers.md` |

## Missing Documents

| ID | Missing document | Purpose | Notes |
|---|---|---|---|
| GAP-027 | Approved naming and terminology register | Resolve BecomingOS/lifeOS/LifeOS/Life OS/personal-alpha terminology | Can be created in later phase after owner decision. |
| GAP-028 | Owner-approved stage and scope boundaries | Define current stage, prototype scope, MVP candidate scope, non-goals | Must precede final canonical product docs. |
| GAP-029 | Evidence and assumption register | Separate evidence, assumptions, accepted recommendations, and owner decisions | Needed to prevent accepted design ideas from becoming validation claims. |
| GAP-030 | AI memory lifecycle policy | Define draft, confirmed, edited, rejected, deleted, archived, expired, and consent-withdrawn states | Must include retrieval and embedding rules. |
| GAP-031 | AI provider and model data handling policy | Define provider storage, logging, retention, training use, store false/equivalent, cross-border processing | Needed before any real AI processing. |
| GAP-032 | Embedding and retrieval rules | Define eligibility, metadata, deletion, invalidation, export, re-embedding, and audit trail | Needed because several docs mention embeddings/vector retrieval. |
| GAP-033 | Crisis and safety data retention policy | Define never-save data, session-only logs, support tickets, incident logs, and legal exceptions | Must reconcile safety, privacy, support, and security documents. |
| GAP-034 | Jurisdiction and launch assumptions document | Define Australia-first or other geography, privacy law assumptions, crisis resources | Needed before legal/privacy/safety copy is final. |
| GAP-035 | Prototype research consent and data handling pack | Consent form, recruitment screeners, recording opt-out, distress protocol, support wording | User research plan exists but execution pack is not confirmed final. |
| GAP-036 | Canonical curriculum/module map | Resolve Modules 0-2 vs 0-5 vs 0-6 vs seven-module MVP | Needed before curriculum rewrite. |
| GAP-037 | Canonical question safety review matrix | Per question: emotional intensity, skip/pause, AI may infer, AI must not infer, memory eligibility | Needed before final question bank. |
| GAP-038 | Operations stage gate matrix | Define prototype, MVP, closed beta, production support, analytics, testing, accessibility, incident response | Needed to stop future-state docs sounding current. |
| GAP-039 | Archive approval packet | Decide what can be archived later and where | Required before any archiving. |

## Incomplete Documents

| ID | Document | Incomplete or unresolved aspect | Action needed |
|---|---|---|---|
| GAP-040 | `01_product/PRD v0.1 for BecomingOS.docx` | Mixes prototype, MVP, and seven-module language; research assumptions remain unvalidated. | Product owner revision and approval after evidence review. |
| GAP-041 | `01_product/Prototype UX Specification.docx` | Low-fidelity prototype spec exists, but no completed findings or owner approval of tested flows. | Run/record research and prototype validation. |
| GAP-042 | `02_research_and_validation/User research plan.docx` | Plan exists; completed findings missing. | Conduct research and create synthesis. |
| GAP-043 | `02_research_and_validation/market_validation_report.md` | Explicitly says decision not decided and market opportunity not validated. | Run validation experiments and record results. |
| GAP-044 | `03_curriculum_and_questions/Curriculum Bible (Provisional).docx` | Provisional and dependent on blocker closure. | Reconcile module order and safety review. |
| GAP-045 | `03_curriculum_and_questions/MVP Question Bank.docx` | Provisional; requires safety/legal/privacy review for final use. | Build question safety matrix and owner approval. |
| GAP-046 | `04_ai_memory_and_data/Canonical data model.docx` | Conceptual pre-MVP model; unresolved stage scope and lifecycle details. | Data/privacy owner review. |
| GAP-047 | `04_ai_memory_and_data/AI evaluation harness.docx` | Draft harness; thresholds and datasets not validated. | AI safety owner review and dataset governance. |
| GAP-048 | `05_privacy_legal_safety/Privacy design pack.docx` | Draft privacy design; age, controller/vendor, provider retention, cross-border, deletion/export unresolved. | Privacy/legal owner review. |
| GAP-049 | `05_privacy_legal_safety/Crisis Localisation Policy Design.docx` | Needs approved jurisdiction resources and retention/logging policy. | Safety/privacy/legal review. |
| GAP-050 | `05_privacy_legal_safety/Security threat model.docx` | Pre-MVP model assumes cloud/vector/AI providers; implementation scope not approved. | Security owner sign-off after architecture scope decision. |
| GAP-051 | `06_architecture_and_api/MVP architecture blueprint.docx` | Provisional; says prerequisites are missing. | Keep conceptual only until evidence gates close. |
| GAP-052 | `06_architecture_and_api/API Specification Draft.docx` | Conceptual API; no approved implementation contract. | Reclassify as draft planning input. |
| GAP-053 | `06_architecture_and_api/NFR document creation.docx` | Stage assumptions and targets require classification. | Engineering/product owner review. |
| GAP-054 | `10_operations_testing_accessibility/BecomingOS Support Playbook.docx` | Includes closed beta/production operations without stage approval. | Convert to stage-gated future operating model. |
| GAP-055 | `10_operations_testing_accessibility/Define analytics taxonomy.docx` | Analytics/event collection may conflict with crisis/privacy minimization. | Privacy/safety review of event taxonomy. |
| GAP-056 | `10_operations_testing_accessibility/Testing Strategy for MVP.docx` | Assumes MVP/closed beta and some implementation features. | Mark future-state strategy until MVP scope approved. |
| GAP-057 | `01_product/lifeos_brand_kit.md` | Claims single source of truth but naming and visual identity not owner-approved in this phase. | Brand/naming owner decision required. |

## Documents Needing Owner Approval

| ID | Document group | Approval owner needed | Approval scope |
|---|---|---|---|
| GAP-058 | Product naming, PRD, prototype scope, non-goals | Product owner/project owner | Name, stage, scope, MVP boundary, non-goals |
| GAP-059 | User research and market validation | Research owner/project owner | Research plan execution, findings acceptance, market assumptions |
| GAP-060 | Curriculum and question bank | Product/curriculum/safety owner | Module order, safety of prompts, AI inference limits |
| GAP-061 | AI memory/data model/evaluation | AI safety/data/privacy owner | Memory lifecycle, confirmation, retrieval, embeddings, provider handling |
| GAP-062 | Privacy/legal/safety documents | Privacy/legal/safety owner | Consent, retention, deletion/export, crisis routing, legal claims |
| GAP-063 | Architecture/API/NFR/security | Engineering/product/security owner | Conceptual vs build architecture, stage gates, threat model, NFRs |
| GAP-064 | Operations/testing/accessibility/analytics | Operations/accessibility/privacy/safety owner | Support model, incident response, event taxonomy, accessibility baseline |
| GAP-065 | Brand kit and wording guides | Brand/product/legal owner | Naming, tone, visual identity, prohibited claims |
| GAP-066 | Duplicate/archive plan | Project owner | Source baseline, archive candidates, final folder structure |

## Documents That Should Not Be Considered Final Yet

| ID | Document or group | Reason not final |
|---|---|---|
| GAP-067 | `01_product/PRD v0.1 for BecomingOS.docx` and duplicate PRD copies | Draft v0.1; research and owner approvals remain unresolved. |
| GAP-068 | `01_product/Prototype UX Specification.docx` | Prototype specification only; no completed validation evidence. |
| GAP-069 | `01_product/lifeos_brand_kit.md` and `01_product/brand_kit/*` | Branding/naming contradictions remain unresolved. |
| GAP-070 | `02_research_and_validation/*` | Plans and reports exist, but completed user and market evidence is missing or not decided. |
| GAP-071 | `03_curriculum_and_questions/*` and `05-product-spec/*` | Module scope and safety review remain unresolved. |
| GAP-072 | `04_ai_memory_and_data/*` | AI lifecycle, provider retention, and embedding/retrieval rules require approval. |
| GAP-073 | `05_privacy_legal_safety/*` | Draft legal/privacy/safety documents require final jurisdiction and owner review. |
| GAP-074 | `06_architecture_and_api/*` | Conceptual/provisional only; no build authorization. |
| GAP-075 | `07_analysis/*` | Review and decision documents are conditional planning evidence unless owner signs off specific gates. |
| GAP-076 | `08_final_outputs/*` | "Final" folder name does not equal canonical final approval; readiness status still conservative. |
| GAP-077 | `10_operations_testing_accessibility/*` | Future-state operations/testing/accessibility planning; not current readiness proof. |
| GAP-078 | Top-level app/MVP audit files | May be stale, external, or out-of-scope for docs-only planning unless owner confirms. |
| GAP-079 | `docs/10_agent_prompts/*` and `09_agent_prompts/*` | Agent prompts are execution aids, not source-of-truth product documents. |

## Gaps Blocking Finalisation

- Product naming and alias policy unresolved.
- Current stage and scope unresolved.
- Personal-alpha app/code references conflict with docs-only repository instructions.
- Completed user research and market validation evidence missing.
- MVP build remains blocked in review documents.
- Privacy/legal/safety owner approvals missing.
- AI memory lifecycle, provider retention, embedding/retrieval, and deleted/rejected memory rules not fully approved.
- Crisis/safety logging and analytics retention unresolved.
- Architecture/API/NFR/security documents are conceptual or provisional.
- Curriculum module scope and question safety matrix unresolved.
- Brand kit, tone guide, and visual identity hierarchy unresolved.
- Operations, support, analytics, accessibility, testing, and incident response are not stage-gated or approved.

## Owner Decisions Needed

- Decide approved product name and capitalization.
- Decide whether the repository remains docs-only or includes personal-alpha app context.
- Decide current stage: research, low-fidelity prototype, pre-MVP planning, personal alpha, MVP, closed beta, or production.
- Approve prototype scope and candidate MVP scope separately.
- Approve whether `01-source-documents/originals/` is the evidence baseline.
- Approve final nested `docs/` document system before canonical rewrite.
- Approve AI memory lifecycle and provider data handling.
- Approve safety/crisis logging and analytics limits.
- Approve privacy jurisdiction assumptions and data storage model.
- Approve curriculum module map and question safety requirements.
- Approve brand/tone/visual identity source of truth.
- Approve operations/accessibility/testing/support stage gates.
