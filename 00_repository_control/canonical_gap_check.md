# Canonical Gap Check

Current status: gap check against `docs/02_product/becomingos_product_specification.docx`. This document does not rewrite product scope, approve public MVP build, approve production readiness, approve archive actions, or authorise implementation work.

## Existing Canonical Root Files Checked

| Canonical root file | Status against source of truth | Gap summary |
|---|---|---|
| `README.md` | Present | Records source-of-truth repository, stage, root canonical structure, no public build, and no production readiness. Needs update after filename conflict is resolved. |
| `00_repository_control/source_of_truth_register.md` | Present | Captures source hierarchy and key decisions. Filename mismatch remains unresolved. |
| `00_repository_control/owner_decision_register.md` | Present | Captures DEC-001 to DEC-030 outcomes. Needs future dates/owner sign-off metadata if required. |
| `00_repository_control/canonical_rewrite_instructions.md` | Present | Captures future-agent rewrite rules. Needs update if owner approves any archive or structure change. |
| `00_repository_control/source_traceability_map.md` | Present | Created as current traceability map. Needs maintenance as new canonical docs are created. |
| `00_repository_control/archive_candidate_plan.md` | Present | Created as candidate plan only. No archive approval. |
| `00_repository_control/canonical_gap_check.md` | Present | Current file. |
| `02_product/product_brief.md` | Present but incomplete | Summarises vision/stage/pillars/boundaries. Needs fuller audience, value proposition, and evidence links after research validation. |
| `02_product/product_requirements.md` | Present but incomplete | Captures core pillars and private beta requirements. Needs detailed acceptance criteria only after owner approves scope and evidence gates. |
| `02_product/terminology_and_naming.md` | Present | Captures BecomingOS/lifeOS naming. Needs brand/tone follow-up after brand finalisation. |
| `02_product/private_beta_scope.md` | Present but incomplete | Defines beta boundaries and safeguards. Needs actual consent notice, operational procedure, owner-approved retention, and tester governance. |
| `05_ai_memory_data/ai_memory_governance.md` | Present but incomplete | Captures draft AI, confirmation, exclusion, embedding, and provider approval rules. Needs detailed memory model, retrieval rules, provider review, and data model. |
| `06_privacy_legal_safety/safety_boundaries.md` | Present | Captures non-emergency, non-clinical, non-professional-advice boundaries. Needs crisis localization and support-resource governance in a separate doc. |
| `06_privacy_legal_safety/private_beta_consent_requirements.md` | Present but incomplete | Captures consent categories and principles. Needs final participant-facing notice, jurisdiction review, AI provider details, and operational request procedures. |

## Missing Canonical Documents

| Missing document | Why needed | Current source evidence |
|---|---|---|
| `02_product/prototype_scope.md` | Separate prototype/internal validation from private beta and candidate MVP planning. | `01_product/Prototype UX Specification.docx`; research/testing plans. |
| `02_product/mvp_scope.md` | Mark MVP as candidate planning only with no public build approval. | PRD, MVP question bank, architecture/testing/readiness docs. |
| `02_product/non_goals.md` | Centralise exclusions: clinical, emergency, professional advice, production/build claims. | Safety, legal, PRD, AI docs. |
| `03_research_validation/research_summary.md` | Separate evidence from assumptions and accepted recommendations. | Research summary, research plans, market validation report. |
| `03_research_validation/user_research_plan.md` | Preserve planned user research and safety/consent approach. | User research plan, user testing plan, validation plan. |
| `03_research_validation/market_validation.md` | Capture market/pricing assumptions without overstating evidence. | Market validation report, product recommendations. |
| `03_research_validation/evidence_and_assumption_register.md` | Required by DEC-019; prevents invented evidence. | Gap registers, accepted recommendations, P0 reviews. |
| `04_curriculum_question_system/curriculum_model.md` | Needed to reconcile curriculum/module conflicts. | Curriculum Bible, curriculum design/creation docs, PRD. |
| `04_curriculum_question_system/question_bank.md` | Needed to preserve question evidence and safety review status. | MVP Question Bank, Question system design. |
| `05_ai_memory_data/memory_model.md` | Needed for durable memory states and user confirmation lifecycle. | My OS Memory Model, Today Directive, Calendar/Review, Ask AI Model. |
| `05_ai_memory_data/retrieval_and_embedding_rules.md` | Needed for embedding eligibility, invalidation, deletion, and retrieval rules. | Canonical Data Model, memory utility docs. |
| `05_ai_memory_data/canonical_data_model.md` | Needed for conceptual data classes, consent scope, deletion/export, and storage assumptions. | Canonical Data Model, privacy/security/architecture docs. |
| `05_ai_memory_data/ai_evaluation_harness.md` | Needed for AI safety/quality tests before live data use. | AI evaluation harness, testing strategy. |
| `06_privacy_legal_safety/privacy_consent_data_governance.md` | Needed for broader privacy governance beyond beta consent. | Privacy design pack, canonical data model, legal docs. |
| `06_privacy_legal_safety/legal_claims_policy.md` | Needed before public copy, launch copy, or broad release. | Legal Claims Review Pack, safety docs, PRD. |
| `06_privacy_legal_safety/crisis_localisation_policy.md` | Needed to govern signposting without emergency-service claims. | Crisis Localisation Policy Design, safety docs. |
| `06_privacy_legal_safety/security_threat_model.md` | Needed before any real data environment beyond planning. | Security threat model docs. |
| `07_architecture_api/conceptual_architecture.md` | Needed to preserve architecture evidence while marking it conceptual only. | MVP architecture blueprint, API and NFR docs. |
| `07_architecture_api/api_contracts.md` | Needed to keep API drafts conceptual and non-implementation. | API Specification Draft. |
| `07_architecture_api/non_functional_requirements.md` | Needed for stage-classified quality bars, not production readiness. | NFR docs, accessibility, testing strategy. |
| `08_operations_testing_accessibility/testing_strategy.md` | Needed for stage-gated testing without implying MVP exists. | Testing Strategy for MVP, validation plan. |
| `08_operations_testing_accessibility/accessibility_qa_plan.md` | Needed for WCAG 2.2 AA baseline and emotional/cognitive safety checks. | Accessibility QA plan, accessibility requirements. |
| `08_operations_testing_accessibility/release_readiness_checklist.md` | Needed to document missing MVP and production gates. | Readiness reports, blockers, acceptance checklist. |
| `09_brand_experience/brand_kit.md` | Needed because prior brand docs conflict with BecomingOS/lifeOS naming. | lifeOS brand kit, brand values. |
| `09_brand_experience/tone_and_language_guide.md` | Needed for calm, clear, respectful, non-shaming, non-clinical tone. | Wording and tone docs, legal/safety docs. |

## Incomplete Canonical Documents

| Existing document | Incomplete areas |
|---|---|
| `02_product/product_brief.md` | Target audience evidence, validated needs, market claims, pricing assumptions, and public copy all remain incomplete or unvalidated. |
| `02_product/product_requirements.md` | Core pillars are summarised, but detailed requirements, acceptance criteria, evidence gates, and scope priorities remain incomplete. |
| `02_product/private_beta_scope.md` | Needs final participant cap approval, beta owner, environment definition, operational workflow, withdrawal process, and post-beta deletion/anonymisation procedure. |
| `05_ai_memory_data/ai_memory_governance.md` | Needs provider-specific retention/training/deletion review, retrieval rules, embedding invalidation process, audit rules, and memory state model. |
| `06_privacy_legal_safety/private_beta_consent_requirements.md` | Needs final consent notice text, jurisdiction-specific legal review, data processor disclosures, request response timelines, and support contact/process. |
| `06_privacy_legal_safety/safety_boundaries.md` | Needs crisis resource governance, bad-day mode details, safety log retention rules, and support-circle consent/rules details. |

## Unresolved Decisions

- Confirm or correct the source DOCX filename/path conflict: expected `docs/02_product/becomingos_product_specification.docx`; observed repository file `docs/02_product/becomings_product_specification.docx`.
- Confirm whether `01-source-documents/originals/` remains permanently in place or may later move only after owner approval.
- Confirm exact owner sign-off format for DEC-001 to DEC-030.
- Confirm participant limit for private beta; 5-10 is suggested but not operationally approved.
- Confirm private beta retention period; 90 days is suggested but not legally approved.
- Confirm AI provider retention, training, logging, and deletion terms before any live user data.
- Confirm whether any top-level implementation-adjacent files are historical evidence only or have a separate external app context.
- Confirm final brand status and whether any LifeOS-styled brand material remains valid beyond internal alias use.

## Missing Privacy/Legal/Safety Documents

- Broader privacy, consent, and data governance policy.
- Legal claims policy and public-copy review standard.
- Crisis localization and signposting governance.
- Security threat model for private beta environment.
- Safety logging policy covering minimal segregated logs, retention, access, and exclusion from memory/analytics.
- Support Circle consent and automatic-alert prohibition/rules document.
- Data deletion, anonymisation, export/access, and withdrawal operating procedure.

## Missing Research/Validation Documents

- Evidence and assumption register.
- Research summary separating completed evidence from planned research.
- User research plan in canonical root structure.
- Market validation document that marks pricing/demand claims as assumptions.
- Private beta research protocol and participant-risk screen.
- Validation round materials and success/failure criteria.

## Missing Beta Consent Details

- Final participant-facing beta consent notice.
- Data category-by-category consent screens or wording.
- Beta environment owner and isolation description.
- AI provider and subprocessors disclosure.
- Data retention schedule and deletion/anonymisation workflow.
- Export/access request workflow.
- Withdrawal workflow.
- Support contact or request intake channel.
- No production reuse language requiring renewed consent.
- Legal review sign-off before broad release.

## Missing MVP Evidence Gates

No public MVP build is approved. Missing gates include:

- Completed user research findings and owner acceptance.
- Market and pricing validation evidence.
- Approved non-clinical product and claims review.
- Approved privacy/legal/safety review.
- Approved AI memory governance and provider retention review.
- Approved conceptual architecture and NFR stage classification.
- Approved testing strategy and acceptance criteria.
- Approved accessibility baseline and QA evidence.
- Approved integration go/no-go decision.

## Missing Production Readiness Gates

Production readiness is not approved. Missing gates include:

- Legal review and compliance posture approval.
- Security threat model closure and security testing evidence.
- Privacy/data governance implementation evidence.
- Incident response and support process approval.
- Monitoring/logging policy that excludes disallowed memory/analytics use.
- Data deletion/export/access operational evidence.
- AI provider data-processing approvals.
- Accessibility verification evidence.
- Reliability, backup, recovery, and operational runbooks.
- Public claims, app-store, marketing, and support-copy review.

## Highest-Risk Gaps

- Source DOCX filename/path mismatch.
- Missing evidence and assumption register.
- Missing full privacy/legal/safety governance beyond beta consent requirements.
- Missing AI provider retention/training/deletion approval before live data.
- Missing detailed memory, retrieval, embedding, and deletion lifecycle documents.
- Missing MVP and production readiness gates, with existing older files that could be misread as approvals.

