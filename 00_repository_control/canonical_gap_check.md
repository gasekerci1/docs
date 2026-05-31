# Canonical Gap Check

Current status: gap check only. This document does not approve public MVP build, production readiness, archive actions, product-scope changes, or implementation work.

Comparison source: `docs/02_product/becomingos_product_specification.docx`.

Root canonical docs checked:

- `README.md`
- `00_repository_control/source_of_truth_register.md`
- `00_repository_control/owner_decision_register.md`
- `00_repository_control/canonical_rewrite_instructions.md`
- `00_repository_control/source_traceability_map.md`
- `00_repository_control/archive_candidate_plan.md`
- `00_repository_control/canonical_gap_check.md`
- `00_repository_control/root_vs_nested_docs_reconciliation.md`
- `02_product/product_brief.md`
- `02_product/product_requirements.md`
- `02_product/terminology_and_naming.md`
- `02_product/private_beta_scope.md`
- `05_ai_memory_data/ai_memory_governance.md`
- `06_privacy_legal_safety/safety_boundaries.md`
- `06_privacy_legal_safety/private_beta_consent_requirements.md`

## Gap Register

| Area | Missing or incomplete document | Why needed | Source evidence | Priority | Needed before private beta? | Needed before public MVP/build approval? |
|---|---|---|---|---|---|---|
| Owner decisions | Owner decision register metadata update | Current register captures DEC-001 to DEC-030, but lacks decision dates, approver identity, and owner sign-off format. | `00_repository_control/owner_decision_register.md`; nested approval packet | Medium | Yes | Yes |
| Owner decisions | Unresolved decisions register | Needed to separate approved decisions from still-open items such as filename mismatch, provider terms, beta operations, and app/MVP evidence scope. | Nested gap register; contradiction register; current source traceability map | High | Yes | Yes |
| Product | `02_product/prototype_scope.md` | Needed to separate prototype/internal validation from private beta and MVP planning. | Prototype UX spec; user testing plans | High | Yes | Yes |
| Product | `02_product/mvp_scope.md` | Needed to state candidate MVP remains planning only and define evidence gates before any build approval. | PRD; MVP question bank; readiness blockers; source DOCX | Critical | No | Yes |
| Product | `02_product/non_goals.md` | Needed to centralise exclusions: therapy, diagnosis, treatment, crisis, professional advice, public build, production readiness. | Safety docs; legal claims pack; PRD; source DOCX | High | Yes | Yes |
| Product | Product requirements detail | Existing `product_requirements.md` summarises pillars but lacks detailed acceptance criteria, dependencies, and stage labels. | Source DOCX; PRD; accepted recommendations | High | Yes | Yes |
| Research validation | `03_research_validation/evidence_and_assumption_register.md` | Required by DEC-019 and needed to prevent assumptions from being treated as evidence. | Nested gap register; market validation; accepted recommendations; P0 reviews | Critical | Yes | Yes |
| Research validation | `03_research_validation/research_summary.md` | Needed to separate completed research, planned research, and unsupported claims. | Research Agent Output Summary; research plans | High | Yes | Yes |
| Research validation | `03_research_validation/user_research_plan.md` | Needed for recruitment, consent, research safety, and beta research protocol. | User Research Plan; User Testing Plan; validation plan | High | Yes | Yes |
| Research validation | `03_research_validation/market_validation.md` | Needed to keep market and pricing claims as assumptions until evidence exists. | Market validation report; product experience recommendations | Medium | No | Yes |
| Curriculum/question system | `04_curriculum_question_system/curriculum_model.md` | Needed to reconcile module-scope conflicts and keep curriculum non-clinical. | Curriculum Bible; curriculum design/creation docs; PRD | Medium | No | Yes |
| Curriculum/question system | `04_curriculum_question_system/question_bank.md` | Needed to preserve question sources, safety review status, skip/pause rules, and AI inference limits. | MVP Question Bank; Question system design | High | Yes, if beta uses questions | Yes |
| Curriculum/question system | `04_curriculum_question_system/onboarding_modules.md` | Needed for beta onboarding, consent comprehension, and product-boundary education. | Research educational onboarding; prototype spec | High | Yes | Yes |
| AI/memory/data | `05_ai_memory_data/memory_model.md` | Needed to define draft, confirmed, edited, rejected, deleted, expired, and withdrawn memory states. | My OS Memory Model; Ask AI Model; Canonical Data Model | Critical | Yes | Yes |
| AI/memory/data | `05_ai_memory_data/retrieval_and_embedding_rules.md` | Needed for confirmed-only embeddings, invalidation on source change/delete, retrieval exclusion rules. | Source DOCX; memory utility docs; canonical data model | Critical | Yes | Yes |
| AI/memory/data | `05_ai_memory_data/canonical_data_model.md` | Needed to document conceptual data categories, consent scopes, deletion/export, and beta storage assumptions. | Canonical Data Model; privacy design pack | Critical | Yes | Yes |
| AI/memory/data | `05_ai_memory_data/ai_evaluation_harness.md` | Needed to test AI boundaries, refusals, evidence citation, and non-clinical language before live data. | AI evaluation harness; testing strategy | High | Yes, if AI used in beta | Yes |
| AI/memory/data | AI provider approval record | Needed before live user data processing to approve retention, training, logging, deletion, and subprocessors. | Source DOCX; AI memory architecture; DEC-017 | Critical | Yes | Yes |
| Privacy/legal/safety | `06_privacy_legal_safety/privacy_consent_data_governance.md` | Needed for privacy governance beyond beta consent requirements. | Privacy design pack; Canonical Data Model; source DOCX | Critical | Yes | Yes |
| Privacy/legal/safety | `06_privacy_legal_safety/legal_claims_policy.md` | Needed before public-facing claims, beta wording, broad release, or compliance claims. | Legal Claims Review Pack; safety docs | High | Yes | Yes |
| Privacy/legal/safety | `06_privacy_legal_safety/crisis_localisation_policy.md` | Needed for signposting governance while preserving non-emergency-service boundary. | Crisis Localisation Policy Design; safety docs | High | Yes | Yes |
| Privacy/legal/safety | `06_privacy_legal_safety/security_threat_model.md` | Needed before any separate beta environment processes real data. | Security threat model docs | Critical | Yes | Yes |
| Privacy/legal/safety | Safety logging policy | Needed to define minimal segregated safety logs excluded from memory and analytics. | DEC-009; safety docs; support playbook | Critical | Yes | Yes |
| Privacy/legal/safety | Support Circle rules | Needed to prevent automatic alerting without prior user consent and defined rules. | Source DOCX; safety boundaries | High | Yes, if included in beta | Yes |
| Privacy/legal/safety | Beta consent notice final text | Current consent requirements are not a final participant-facing notice. | `private_beta_consent_requirements.md`; source DOCX | Critical | Yes | Yes |
| Architecture/API | `07_architecture_api/conceptual_architecture.md` | Needed to preserve architecture evidence while marking it conceptual only. | MVP architecture blueprint; readiness reviews | Medium | Yes, if beta environment is planned | Yes |
| Architecture/API | `07_architecture_api/api_contracts.md` | Needed to mark API drafts as conceptual and prevent implementation assumptions. | API Specification Draft; PRD | Low | No | Yes |
| Architecture/API | `07_architecture_api/non_functional_requirements.md` | Needed to classify NFRs by stage and avoid production-readiness claims. | NFR docs; accessibility/testing docs | High | Yes | Yes |
| Architecture/API | Beta environment definition | Needed because private beta requires a separate environment. | Source DOCX; private beta scope | Critical | Yes | Yes |
| Operations/testing/accessibility | `08_operations_testing_accessibility/testing_strategy.md` | Needed to define beta and future MVP testing without implying MVP exists. | Testing Strategy for MVP; validation plan | High | Yes | Yes |
| Operations/testing/accessibility | `08_operations_testing_accessibility/accessibility_qa_plan.md` | Needed to apply WCAG 2.2 AA and cognitive/emotional safety checks. | Accessibility QA docs; DEC-023 | High | Yes | Yes |
| Operations/testing/accessibility | `08_operations_testing_accessibility/operations_support_playbook.md` | Needed to bound support as account/product support, not crisis rescue. | Support playbook; safety docs | High | Yes | Yes |
| Operations/testing/accessibility | `08_operations_testing_accessibility/analytics_event_taxonomy.md` | Needed to prevent safety/crisis text from entering analytics or memory. | Analytics taxonomy; safety docs; DEC-009 | High | Yes, if analytics used | Yes |
| Brand/experience | `09_brand_experience/brand_kit.md` | Needed to replace draft LifeOS brand evidence with BecomingOS naming. | lifeOS brand kit; brand docs; source DOCX | Medium | No | Yes |
| Brand/experience | `09_brand_experience/tone_and_language_guide.md` | Needed to enforce calm, clear, respectful, non-shaming, non-clinical tone. | Wording/tone docs; DEC-027; safety docs | High | Yes | Yes |
| Brand/experience | Product experience recommendations root doc | Needed to retain useful experience guidance while stripping build/MVP approval implications. | `PRODUCT_EXPERIENCE_RECOMMENDATIONS.md`; prototype docs | Medium | No | Yes |
| Agent prompts | `10_agent_prompts/README.md` | Needed only if prompts remain part of canonical root structure. | `09_agent_prompts/`; `docs/10_agent_prompts/` | Low | No | No |
| Agent prompts | Root prompt execution/checklist docs | Needed to prevent future agents from following nested-docs or build-oriented prompts by mistake. | Nested phase prompts; specialist prompts | Medium | No | No |
| Release readiness | `08_operations_testing_accessibility/release_readiness_checklist.md` | Needed to list evidence gates and keep no-public-build/no-production status explicit. | Readiness reports; MVP acceptance checklist; blockers | Critical | Yes | Yes |
| Release readiness | MVP evidence gate register | Needed before any public MVP/build approval can be considered. | Source DOCX; P0 reviews; readiness blockers | Critical | No | Yes |
| Release readiness | Production readiness gate register | Needed before any production-readiness claim can be considered. | Production readiness review; security/privacy/testing docs | Critical | No | Yes |

## Highest-Risk Unresolved Gaps

- Source DOCX filename/path mismatch: expected `docs/02_product/becomingos_product_specification.docx`; observed repository evidence includes `docs/02_product/becomings_product_specification.docx`.
- Missing evidence and assumption register.
- Missing beta-ready privacy/legal/safety governance, including final consent notice and safety logging policy.
- Missing AI provider approval and detailed memory/retrieval/embedding lifecycle.
- Missing separate beta environment definition.
- Missing release readiness checklist and explicit MVP/production gate registers.
- Implementation-adjacent app/MVP audit files remain unresolved evidence and could be misread as approvals.

