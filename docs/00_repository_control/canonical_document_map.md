# Canonical Document Map

Phase 3 proposed canonical map for `gasekerci1/docs`.

This map proposes future canonical destinations and source relationships only. It does not supersede, move, archive, delete, or rewrite any existing document.

## Mapping Principles

- Use `01-source-documents/originals/` as the proposed evidence baseline where it contains an exact source copy, pending owner approval.
- Use categorized root folders as merge guides and subject groupings, not independent evidence when they duplicate originals.
- Use `07_analysis/` and `08_final_outputs/` as review/readiness evidence until owner approvals are captured.
- Do not treat top-level app/MVP audit files as current product truth until owner decides their scope.

## Canonical Map

| Final canonical document path | Source files used | Source files superseded later | Approval required | Unresolved issues |
|---|---|---|---|---|
| `docs/00_repository_control/file_inventory.md` | Existing Phase 1 inventory | None | Project owner for recommended actions | Inventory may need refresh after future changes. |
| `docs/00_repository_control/duplicate_file_map.md` | Existing Phase 1 duplicate map | None | Project owner for canonical source baseline | Archive candidates not approved. |
| `docs/00_repository_control/contradiction_register.md` | Existing Phase 2 contradiction register | None | Project owner for resolutions | All proposed wording is unapproved. |
| `docs/00_repository_control/gap_register.md` | Existing Phase 2 gap register | None | Project owner for blocker status | Missing evidence remains missing. |
| `docs/00_repository_control/approval_packet.md` | All control docs and owner decision inputs | Older review packets only after decisions captured | Project owner | Not created until Phase 4. |
| `docs/00_repository_control/canonical_document_map.md` | This file, file inventory, duplicate map | None | Project owner | Future owner decisions may change mapping. |
| `docs/00_repository_control/archive_plan.md` | This phase, duplicate map, file inventory | None | Project owner | No archive action approved. |
| `docs/01_owner_decisions/owner_decision_register.md` | `07_analysis/project_owner_recommended_decisions_record.md`; `07_analysis/agent_owner_review_decision_register.md`; `07_analysis/product_lead_master_orchestrator_decision_record.md`; `07_analysis/research_owner_user_research_decision_record.md`; future `approval_packet.md` | Duplicate decision request files after owner approval | Project owner and listed review owners | Decision scope, dates, and final approval format unresolved. |
| `docs/01_owner_decisions/approved_scope_boundaries.md` | PRD; Prototype UX spec; Legal Claims Review Pack; Safety Boundaries; `07_analysis/project_owner_recommended_decisions_record.md` | Draft scope statements across PRD/final memos | Project owner, product owner, legal/safety owner | Current stage, app scope, MVP boundary unresolved. |
| `docs/01_owner_decisions/unresolved_decisions.md` | `gap_register.md`; `contradiction_register.md`; `07_analysis/remaining_readiness_blockers.md` | None | Project owner | Must be updated after every decision. |
| `docs/02_product/product_brief.md` | `README.md`; `01_product/PRD v0.1 for BecomingOS.docx`; `01_product/lifeos_brand_kit.md`; `02_research_and_validation/market_validation_report.md`; `08_final_outputs/Final Pre‑Build Decision Memo.docx` | `00_inbox/PRD v0.1 for BecomingOS.docx`; duplicate PRD copies; final pre-build duplicate copies | Product owner | Name, category, stage, target segment unresolved. |
| `docs/02_product/product_requirements.md` | PRD; Recommendation Decision Table; Accepted Recommendations; P0 PRD review; readiness blockers | Duplicate PRD and recommendation copies | Product owner | MVP scope and research-dependent claims unresolved. |
| `docs/02_product/prototype_scope.md` | Prototype UX spec; User Research Plan; User Testing Plan; Comprehensive Validation Plan | Duplicate prototype/user testing copies | Product owner, research owner, safety owner | Prototype validation not completed. |
| `docs/02_product/mvp_scope.md` | PRD; MVP Question Bank; MVP architecture blueprint; NFR document; Testing Strategy; readiness blockers | Duplicate MVP/readiness copies after final rewrite | Project owner, product owner | MVP build blocked; feature boundary unresolved. |
| `docs/02_product/non_goals.md` | Legal Claims Review Pack; Safety Policies; Safety Boundaries; Ask AI Model; PRD | Scattered prohibited-claims sections | Legal/safety owner, product owner | Jurisdiction and public-copy review unresolved. |
| `docs/02_product/terminology_and_naming.md` | README; LifeOS brand kit; PRD; Final Build Readiness Assessment; wording guides | Conflicting naming sections after owner decision | Project owner, brand owner | Product name unresolved. |
| `docs/03_research_validation/research_summary.md` | Research Agent Output Summary; BecomingOS Research Plan; Behaviour Change Evidence Map; Accepted Recommendations | Duplicate research summary/source copies | Research owner | Evidence vs accepted recommendation distinction unresolved. |
| `docs/03_research_validation/market_validation.md` | Market Validation Report; product recommendations; PRD market assumptions | Top-level product recommendation claims if superseded | Research/product owner | No live market evidence. |
| `docs/03_research_validation/user_research_plan.md` | User Research Plan; User Testing Plan; Comprehensive Validation Plan; User Research Review | Duplicate user research plan copies | Research owner, safety/privacy owner | Research not conducted; participant safety pack not final. |
| `docs/03_research_validation/validation_round_1_pack.md` | Comprehensive Validation Plan; Prototype UX spec; User Testing Plan | Duplicate validation plan copies | Research owner | Round 1 not approved or run. |
| `docs/03_research_validation/evidence_and_assumption_register.md` | Gap Register; Accepted Recommendations; Recommendation Decision Table; Market Validation Report; P0 reviews | None | Project owner, research owner | Evidence grading not approved. |
| `docs/04_curriculum_question_system/curriculum_model.md` | Curriculum Bible; Curriculum design task; Curriculum creation task; PRD | Duplicate curriculum docs | Product/curriculum owner | Module scope unresolved. |
| `docs/04_curriculum_question_system/onboarding_modules.md` | Research educational onboarding; Curriculum creation task; Prototype UX spec | Duplicate onboarding/research copies | Curriculum owner, research owner | Prototype scope unresolved. |
| `docs/04_curriculum_question_system/question_bank.md` | MVP Question Bank; Question system design; Curriculum creation task; Survey Questionnaire framework | Duplicate question bank copies | Curriculum owner, safety owner | Question safety matrix missing. |
| `docs/04_curriculum_question_system/behaviour_change_model.md` | Behaviour Change Evidence Map; COM-B report; Goal Setting/Habit report; Identity/Future-Self report | Duplicate behaviour evidence copies | Research/curriculum owner | Non-clinical framing required. |
| `docs/04_curriculum_question_system/motivation_needs_desire_avoidance_model.md` | Motivation Model Research; BecomingOS motivation/desire/avoidance module; Values Clarification report | Duplicate motivation/values copies | Product/curriculum owner | Needs model hierarchy unresolved. |
| `docs/05_ai_memory_data/ai_interpretation_policy.md` | AI Interpretation Guide; AI Interpretation and Memory Architecture; Ask AI Model; wording guides | Duplicate AI interpretation copies | AI safety owner, product owner | AI role and provider handling unresolved. |
| `docs/05_ai_memory_data/memory_model.md` | My OS Memory Model; Today Directive Model; Calendar and Review Model; Ask AI Model; Canonical Data Model | Duplicate memory/model copies | AI/data/privacy owner | Memory states and decision history unresolved. |
| `docs/05_ai_memory_data/canonical_data_model.md` | Canonical Data Model; Privacy Design Pack; Security Threat Model; architecture blueprint | Duplicate canonical data model copies | Data/privacy/security owner | Storage model unresolved. |
| `docs/05_ai_memory_data/ai_evaluation_harness.md` | AI evaluation harness; AI evaluation harness review; testing strategy | Duplicate AI harness copies | AI safety owner | Thresholds and datasets unvalidated. |
| `docs/05_ai_memory_data/retrieval_and_embedding_rules.md` | Converting OS Memory Store into Daily Utility; Canonical Data Model; Security Threat Model | Duplicate utility/memory source copies | AI/data/privacy owner | Embedding lifecycle unresolved. |
| `docs/06_privacy_legal_safety/safety_boundaries.md` | BecomingOS Safety and Boundary Policies; Safety Boundaries for a Wellness App; Legal Claims Review Pack | Duplicate safety copies | Safety/legal owner | Crisis logging and bad-day boundaries unresolved. |
| `docs/06_privacy_legal_safety/crisis_localisation_policy.md` | Crisis Localisation Policy Design; Safety Boundaries; Support Playbook | Duplicate crisis policy copies | Safety/legal/privacy owner | Jurisdiction resources unresolved. |
| `docs/06_privacy_legal_safety/privacy_consent_data_governance.md` | Privacy Design Pack; Privacy, Consent, and Data Governance for Supporter and Donor Management; PRD; Canonical Data Model | Duplicate privacy copies | Privacy/legal owner | Supporter/donor scope and jurisdiction unresolved. |
| `docs/06_privacy_legal_safety/legal_claims_policy.md` | Legal Claims Review Pack; PRD; Safety docs; brand docs | Duplicate legal claims copies | Legal owner | Final copy review missing. |
| `docs/06_privacy_legal_safety/security_threat_model.md` | Security Threat Model; architecture blueprint; privacy docs; NFRs | Duplicate security copies | Security/privacy owner | Cloud/vector/provider assumptions unresolved. |
| `docs/07_architecture_api/non_functional_requirements.md` | NFR document creation; accessibility requirements; testing strategy; NFR review | Duplicate NFR copies | Engineering/product owner | Stage classification unresolved. |
| `docs/07_architecture_api/conceptual_architecture.md` | MVP architecture blueprint; final build readiness assessment; production readiness review; security threat model | Duplicate architecture/readiness copies | Engineering/product owner | Build not approved. |
| `docs/07_architecture_api/api_contracts.md` | API Specification Draft; PRD; Canonical Data Model | Duplicate API copies | Engineering/product owner | Conceptual only. |
| `docs/07_architecture_api/technical_architecture_decision_record.md` | Architecture blueprint; NFRs; P0 reviews; remaining blockers | Architecture decision request/records after consolidation | Project/engineering owner | Integration go/no-go missing. |
| `docs/08_operations_testing_accessibility/operations_support_playbook.md` | BecomingOS Support Playbook; remaining blockers; safety docs | Duplicate support playbook copies | Operations/safety owner | Support stages and staffing unresolved. |
| `docs/08_operations_testing_accessibility/analytics_event_taxonomy.md` | Define analytics taxonomy; privacy docs; safety policies | Duplicate analytics copies | Product/privacy/safety owner | Crisis analytics limits unresolved. |
| `docs/08_operations_testing_accessibility/testing_strategy.md` | Testing Strategy for MVP; comprehensive validation plan; AI evaluation harness; security threat model | Duplicate testing strategy copies | QA/product owner | MVP/closed-beta assumptions unresolved. |
| `docs/08_operations_testing_accessibility/accessibility_qa_plan.md` | Accessibility QA plan; Accessibility Requirements; Testing Strategy | Duplicate accessibility copies | Accessibility/product owner | WCAG baseline unresolved. |
| `docs/08_operations_testing_accessibility/release_readiness_checklist.md` | Production Readiness Review; Final Build Readiness Assessment; remaining blockers; MVP Acceptance Checklist | Duplicate final/readiness copies | Project owner | MVP build blocked; app context unresolved. |
| `docs/09_brand_experience/brand_kit.md` | LifeOS Brand Kit; brand-values; brand README; product experience recommendations | Brand kit folder after approval | Brand/product owner | Product name unresolved. |
| `docs/09_brand_experience/tone_and_language_guide.md` | Wording and Tone Guide; Wording guide creation; Defining the language system | Duplicate wording copies | Brand/legal/safety owner | Coaching/clinical wording unresolved. |
| `docs/09_brand_experience/product_experience_recommendations.md` | PRODUCT_EXPERIENCE_RECOMMENDATIONS.md; CODEX_PRODUCT_EXPERIENCE_PROMPT_PLAN.md; prototype UX spec | Top-level product experience docs after scope decision | Product owner | Personal-alpha app scope unresolved. |
| `docs/10_agent_prompts/README.md` | `09_agent_prompts/README.md`; `docs/10_agent_prompts/20_document_consolidation_agent.md`; phase prompts | Duplicate prompt README files | Project owner | Prompt hierarchy unresolved. |
| `docs/10_agent_prompts/agent_execution_order.md` | `09_agent_prompts/AGENT_EXECUTION_ORDER.md`; phase prompts; scripts | Old execution order after approval | Project owner | Must preserve non-build constraints. |
| `docs/10_agent_prompts/agent_readiness_checklist.md` | `09_agent_prompts/AGENT_READINESS_CHECKLIST.md`; gap register | Old checklist after approval | Project owner | Gate criteria unresolved. |
| `docs/10_agent_prompts/specialist_agent_prompts.md` | `09_agent_prompts/*.md`; document consolidation phase prompts | Split prompt files after approval, if desired | Project owner | Prompt consolidation format unresolved. |
| `docs/99_archive/README.md` | Archive plan; duplicate map | None | Project owner | Archive not approved. |

## Supersession Rule

A source file is not superseded merely because it appears in this map. Supersession happens only after:

1. Owner approves the final document structure.
2. Owner approves contradiction resolutions.
3. Final canonical documents are created.
4. Traceability is preserved in this map.
5. Archive plan is approved.
