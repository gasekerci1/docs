# Private Beta Blocker Register

Current status: blocker register only. This document does not approve private beta start, public MVP build, production readiness, implementation work, or compliance claims.

Source inputs include `00_repository_control/canonical_gap_check.md`, `02_product/private_beta_scope.md`, `06_privacy_legal_safety/*`, `05_ai_memory_data/*`, and `08_operations_testing_accessibility/analytics_event_taxonomy.md`.

## Current Blockers

| Blocker | Owner | Risk | Priority | Required evidence | Status |
|---|---|---|---|---|---|
| Source DOCX filename/path mismatch remains unresolved. | Project owner | Wrong source file could be cited or moved later. | High | Owner confirmation or correction plan. | Closed: canonical path approved as `02_product/becomingos_product_specification.docx`. |
| Final beta consent notice approval. | Privacy/legal owner | Real data could be collected without clear consent. | Critical | Reviewed and approved participant-facing notice. | Closed: approved in `06_privacy_legal_safety/private_beta_final_consent_notice.md`. |
| Privacy/data governance review incomplete. | Privacy/legal owner | Data categories, optionality, deletion, export, withdrawal, and no reuse may be unclear. | Critical | Approved privacy/data governance policy. | Closed: approved in `06_privacy_legal_safety/privacy_consent_data_governance.md`. |
| Retention/deletion workflow approval. | Privacy/legal/security owner | Beta data or derived data may be retained too long or reused. | Critical | Approved retention/deletion/anonymisation workflow. | Closed: approved workflows and policy exist in `06_privacy_legal_safety/`. |
| Separate beta environment approval. | Security owner | Beta data could mix with dev/demo/future production data. | Critical | Approved beta environment requirements and owners. | Closed: approved in `07_architecture_api/private_beta_environment_approval_record.md`. |
| AI provider due diligence approval. | AI/data/privacy/legal/security owners | Live user data could be sent under unapproved provider terms. | Critical | Completed due-diligence checklist and owner approval. | Closed: OpenAI approved for limited private beta scope in `06_privacy_legal_safety/ai_provider_approval_record.md`. |
| Memory and embedding lifecycle not verified for beta. | AI/data owner | Rejected/deleted/unconfirmed data could influence AI. | Critical | Approved memory/retrieval/embedding test or process evidence. | Closed: approved private beta retrieval and embedding lifecycle rules in `05_ai_memory_data/`. |
| Safety logging policy approval. | Safety/privacy/legal owner | Crisis/safety content could become memory or analytics. | Critical | Approved minimal segregated safety logging decision. | Closed: minimal safety event classification logging approved in `06_privacy_legal_safety/private_beta_safety_log_approval_record.md`. |
| Security review approval. | Security owner | Sensitive data, documents, photos, audio, video, and contacts may be exposed. | Critical | Security review of beta environment and data handling. | Closed: private-beta security threat model approved in `06_privacy_legal_safety/security_threat_model.md`. |
| Support Circle beta inclusion approval. | Product/safety/privacy owner | Contacts could be collected or alerted without clear consent and rules. | High | Inclusion/exclusion decision and permission rules. | Closed: optional limited Support Circle use approved in `06_privacy_legal_safety/private_beta_support_circle_rules.md`. |
| Analytics use approval. | Product/privacy/safety owner | Sensitive or crisis content could enter analytics. | High | Approved privacy-safe event taxonomy and retention/deletion handling. | Closed: limited private beta analytics taxonomy approved in `08_operations_testing_accessibility/analytics_event_taxonomy.md`. |
| Beta testing plan approval. | Research/testing owner | Beta may not measure usability, comprehension, trust, safety, or consent clarity. | High | Approved testing plan and stop criteria. | Closed: private beta testing plan, test script, and stop criteria approved. |
| Accessibility baseline evidence for beta flows. | Accessibility/product owner | Beta participants may face avoidable access barriers. | High | WCAG 2.2 AA review plan or documented beta accessibility approach. | Closed: prototype-flow accessibility QA evidence approved in `10_operations_testing_accessibility/accessibility_qa_evidence.md`. |
| Operations/support owner not assigned. | Operations/product owner | Participant issues, withdrawal, deletion, and safety concerns may lack response owner. | High | Named support/contact owner and process. | Closed: Beta Operations Manager assigned in `08_operations_testing_accessibility/support_operations_stage_plan.md`. |
| Release go/no-go signature. | Project owner | Beta could start without owner approval. | Critical | Completed `private_beta_release_go_no_go.md`. | Closed: final private beta GO signed in `00_repository_control/private_beta_final_owner_go_no_go.md`. |

## Standing Block

Private beta blockers in this register are closed as of 2026-06-01 for limited private beta only. Public MVP/build, production readiness, commercial launch, archive/delete/move actions, and compliance claims remain not approved.
