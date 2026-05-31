# Unresolved Decisions

Current status: canonical unresolved-decision register for pre-MVP/private-beta planning.

This document does not approve public MVP build, production readiness, archive actions, implementation work, legal compliance claims, or any live processing of user data. Product-level conflicts are resolved in favour of `docs/02_product/becomingos_product_specification.docx`.

## Blocking Private Beta

| Decision needed | Affected docs | Risk | Priority |
|---|---|---|---|
| Confirm or correct the source DOCX filename/path mismatch: owner-named `docs/02_product/becomingos_product_specification.docx` vs observed `docs/02_product/becomings_product_specification.docx`. | `00_repository_control/source_of_truth_register.md`; `00_repository_control/source_traceability_map.md`; nested `docs/02_product/` | Agents may cite or preserve the wrong file; cleanup could rename/move evidence incorrectly. | Critical |
| Approve final private beta participant criteria and cap, with 5-10 trusted testers only unless owner changes it. | `02_product/private_beta_scope.md`; `06_privacy_legal_safety/private_beta_consent_requirements.md` | Private beta could expand beyond trusted, consented testing. | Critical |
| Approve final participant-facing beta consent notice. | `06_privacy_legal_safety/private_beta_consent_requirements.md`; `06_privacy_legal_safety/privacy_consent_data_governance.md` | Real data could be collected without sufficiently clear consent, optionality, retention, withdrawal, and AI disclosure. | Critical |
| Approve private beta data categories and optionality by category. | `privacy_consent_data_governance.md`; `private_beta_consent_requirements.md`; `05_ai_memory_data/memory_model.md` | Users may provide more data than needed or misunderstand what is optional. | Critical |
| Approve beta retention period and deletion/anonymisation procedure; 90 days remains suggested only. | `privacy_consent_data_governance.md`; `02_product/private_beta_scope.md` | Beta data could be retained too long or reused without renewed consent. | Critical |
| Approve separate beta environment definition. | `06_privacy_legal_safety/security_threat_model.md`; future architecture docs | Beta data could mix with development, public, or future production systems. | Critical |
| Approve AI provider retention, training, logging, deletion, and subprocessors before any live user data processing. | `05_ai_memory_data/ai_memory_governance.md`; `05_ai_memory_data/retrieval_and_embedding_rules.md`; `privacy_consent_data_governance.md` | User data could be exposed to providers without approved terms. | Critical |
| Approve memory eligibility and state handling for beta. | `05_ai_memory_data/memory_model.md`; `05_ai_memory_data/retrieval_and_embedding_rules.md` | Draft, rejected, deleted, or unconfirmed data could influence AI. | Critical |
| Approve crisis/safety logging policy. | `06_privacy_legal_safety/safety_boundaries.md`; `privacy_consent_data_governance.md`; `security_threat_model.md` | Crisis/safety content could become product memory or analytics, or logs could be over-retained. | Critical |
| Approve security posture for sensitive beta data, support circle contacts, documents, photos, audio, and video. | `security_threat_model.md`; `privacy_consent_data_governance.md` | Sensitive data could be collected before risk controls are specified. | Critical |
| Approve beta access/export/deletion/withdrawal operating process. | `privacy_consent_data_governance.md`; `private_beta_consent_requirements.md` | Users may not have a usable way to exercise promised rights during beta. | High |
| Approve beta wording/legal claims review. | `legal_claims_policy.md`; `safety_boundaries.md`; beta consent docs | Beta materials could imply therapy, diagnosis, crisis support, professional advice, public availability, or compliance. | High |
| Decide whether Support Circle is included in private beta. | `privacy_consent_data_governance.md`; `safety_boundaries.md`; `memory_model.md` | Contacts could be collected or alerted without clear consent and rules. | High |
| Decide whether analytics are used in private beta and what events are allowed. | Future analytics docs; `privacy_consent_data_governance.md`; `security_threat_model.md` | Safety or sensitive content could be retained in analytics. | High |

## Blocking Public MVP/Build

| Decision needed | Affected docs | Risk | Priority |
|---|---|---|---|
| Approve MVP scope separately from private beta and prototype planning. | `02_product/product_requirements.md`; future `02_product/mvp_scope.md` | Candidate MVP planning could be mistaken for build approval. | Critical |
| Approve completed user research findings. | `03_research_validation/evidence_and_assumption_register.md`; research source docs | Product claims could rely on planned research rather than completed evidence. | Critical |
| Approve market, target segment, demand, pricing, and willingness-to-pay evidence. | `evidence_and_assumption_register.md`; market validation evidence | Public positioning or business claims could be unsupported. | High |
| Approve full privacy/legal/safety review for MVP. | `06_privacy_legal_safety/*`; legal/privacy/safety source docs | Public MVP could ship with unresolved legal, safety, or consent gaps. | Critical |
| Approve architecture/API/NFR docs as conceptual or build-ready. | `06_architecture_and_api/*`; future `07_architecture_api/*` | Conceptual documents could be treated as implementation plans. | High |
| Approve AI evaluation results and safety thresholds. | `04_ai_memory_and_data/AI evaluation harness.docx`; future AI evaluation docs | AI features could be released without safety and quality evidence. | Critical |
| Approve curriculum/question safety matrix. | `03_curriculum_and_questions/*`; future curriculum docs | Questions could solicit clinical, crisis, or sensitive disclosures inappropriately. | High |
| Classify app/MVP audit files as historical evidence, external context, or in-scope. | `PROJECT_STRUCTURE.md`; `MVP_ACCEPTANCE_CHECKLIST.md`; `mvp_build_audit.md`; `database_mvp_schema_notes.md`; `final_mvp_hardening_report.md` | Older implementation-adjacent files could be misread as approval to build. | Critical |
| Approve accessibility baseline evidence for built flows. | Accessibility source docs; future operations/accessibility docs | MVP could claim accessibility without verification. | High |
| Approve public copy and claims. | `legal_claims_policy.md`; brand/tone source docs | Public copy could overstate capabilities or availability. | High |

## Blocking Production Readiness

| Decision needed | Affected docs | Risk | Priority |
|---|---|---|---|
| Approve production readiness gate register. | Readiness reports; future release readiness docs | "Final" or hardening reports could be mistaken for production approval. | Critical |
| Approve production privacy/legal/compliance posture after legal review. | `privacy_consent_data_governance.md`; `legal_claims_policy.md`; privacy/legal sources | Compliance could be claimed without legal basis. | Critical |
| Approve production security review and threat-model closure. | `security_threat_model.md`; security source docs | Sensitive data could be processed without production security evidence. | Critical |
| Approve production incident response, support, logging, and monitoring. | Support playbook; security/safety docs | Support or safety operations could imply emergency monitoring or live rescue. | Critical |
| Approve production AI provider contracts and data-processing terms. | AI governance docs; provider decision records | User data could be processed under unapproved provider terms. | Critical |
| Approve production deletion, export/access, retention, anonymisation, and audit procedures. | Privacy/data governance docs | Users may not be able to exercise data controls at production scale. | Critical |
| Approve production accessibility verification. | Accessibility source docs; future accessibility QA docs | Accessibility claims could be unsupported. | High |
| Approve production reliability, backup, recovery, and operational runbooks. | Architecture/NFR/operations source docs | Production readiness could be claimed without operational evidence. | High |

