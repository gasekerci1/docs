# Private Beta Blocker Register

Current status: blocker register only. This document does not approve private beta start, public MVP build, production readiness, implementation work, or compliance claims.

Source inputs include `00_repository_control/canonical_gap_check.md`, `02_product/private_beta_scope.md`, `06_privacy_legal_safety/*`, `05_ai_memory_data/*`, and `08_operations_testing_accessibility/analytics_event_taxonomy.md`.

## Current Blockers

| Blocker | Owner | Risk | Priority | Required evidence | Status |
|---|---|---|---|---|---|
| Source DOCX filename/path mismatch remains unresolved. | Project owner | Wrong source file could be cited or moved later. | High | Owner confirmation or correction plan. | Open |
| Final beta consent notice not approved. | Privacy/legal owner | Real data could be collected without clear consent. | Critical | Reviewed and approved participant-facing notice. | Open |
| Privacy/data governance review incomplete. | Privacy/legal owner | Data categories, optionality, deletion, export, withdrawal, and no reuse may be unclear. | Critical | Approved privacy/data governance policy. | Open |
| Retention/deletion workflow not approved. | Privacy/legal/security owner | Beta data or derived data may be retained too long or reused. | Critical | Approved retention/deletion/anonymisation workflow. | Open |
| Separate beta environment not approved. | Security owner | Beta data could mix with dev/demo/future production data. | Critical | Approved beta environment requirements and owners. | Open |
| AI provider due diligence not completed. | AI/data/privacy/legal/security owners | Live user data could be sent under unapproved provider terms. | Critical | Completed due-diligence checklist and owner approval. | Open |
| Memory and embedding lifecycle not verified for beta. | AI/data owner | Rejected/deleted/unconfirmed data could influence AI. | Critical | Approved memory/retrieval/embedding test or process evidence. | Open |
| Safety logging policy not approved. | Safety/privacy/legal owner | Crisis/safety content could become memory or analytics. | Critical | Approved minimal segregated safety logging decision. | Open |
| Security review incomplete. | Security owner | Sensitive data, documents, photos, audio, video, and contacts may be exposed. | Critical | Security review of beta environment and data handling. | Open |
| Support Circle beta inclusion unresolved. | Product/safety/privacy owner | Contacts could be collected or alerted without clear consent and rules. | High | Inclusion/exclusion decision and permission rules. | Open |
| Analytics use not approved. | Product/privacy/safety owner | Sensitive or crisis content could enter analytics. | High | Approved privacy-safe event taxonomy and retention/deletion handling. | Open |
| Beta testing plan not approved. | Research/testing owner | Beta may not measure usability, comprehension, trust, safety, or consent clarity. | High | Approved testing plan and stop criteria. | Open |
| Accessibility baseline not evidenced for beta flows. | Accessibility/product owner | Beta participants may face avoidable access barriers. | High | WCAG 2.2 AA review plan or documented beta accessibility approach. | Open |
| Operations/support owner not assigned. | Operations/product owner | Participant issues, withdrawal, deletion, and safety concerns may lack response owner. | High | Named support/contact owner and process. | Closed: Beta Operations Manager assigned in `08_operations_testing_accessibility/support_operations_stage_plan.md`. |
| Release go/no-go not signed. | Project owner | Beta could start without owner approval. | Critical | Completed `private_beta_release_go_no_go.md`. | Open |

## Standing Block

Private beta remains blocked until required evidence is complete and the final go/no-go decision is signed as GO.
