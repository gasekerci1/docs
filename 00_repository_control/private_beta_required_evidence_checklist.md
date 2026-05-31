# Private Beta Required Evidence Checklist

Current status: evidence checklist only. This document does not approve private beta, public MVP build, production readiness, implementation work, or compliance claims.

Evidence status rule: mark an item as Present only when the repository contains completed evidence or signed approval. Draft policies, planning documents, checklists, and templates are not completed evidence.

## Required Evidence

| Evidence item | Required before beta | Repo evidence found | Evidence status |
|---|---|---|---|
| Final consent notice | Privacy/legal reviewed participant-facing notice approved for beta use. | Draft exists at `06_privacy_legal_safety/private_beta_consent_notice.md`; it explicitly requires legal/privacy review. | Missing |
| Retention/deletion workflow | Approved retention, deletion, anonymisation, and derived-data workflow. | Draft exists at `06_privacy_legal_safety/private_beta_data_retention_and_deletion_policy.md`; review required. | Missing |
| Withdrawal/export/access workflow | Approved process for withdrawal, deletion, access/export, and consent withdrawal. | Requirements exist in consent/privacy docs; no approved operating workflow found. | Missing |
| AI provider due diligence | Completed provider review covering retention, logging, training-use, deletion, subprocessors, cross-border transfer, minimisation, opt-out, incident response, security, and contracts. | Checklist exists at `06_privacy_legal_safety/ai_provider_due_diligence_checklist.md`; all items are Not started. | Missing |
| Separate beta environment definition | Approved conceptual and operational definition for isolated beta environment. | Requirements exist at `07_architecture_api/private_beta_environment_requirements.md`; no approval found. | Missing |
| Safety logging approval | Approved decision on whether safety logging is enabled, disabled, or deferred, with retention/access rules. | Draft policy exists at `06_privacy_legal_safety/private_beta_safety_logging_policy.md`; review required. | Missing |
| Security review | Security owner review of beta environment, access, logging, deletion, sensitive data, AI provider exposure, and shutdown plan. | Conceptual threat model and environment requirements exist; no signed security review found. | Missing |
| Analytics approval | Privacy/safety/product approval of analytics use, event properties, exclusions, retention, and deletion handling. | Event taxonomy exists at `08_operations_testing_accessibility/analytics_event_taxonomy.md`; approval not found. | Missing |
| Support Circle rules | Approved inclusion/exclusion decision and permissions/alerting rules. | Boundaries exist in safety/privacy docs; no final Support Circle beta decision found. | Missing |
| Testing plan approval | Research/testing owner approval of private beta plan. | Draft plan exists at `08_operations_testing_accessibility/private_beta_testing_plan.md`; approval not found. | Missing |
| Stop criteria approval | Approved stop criteria and responsible owner. | Stop criteria exist in testing plan; approval and owner assignment not found. | Missing |
| Operations/support owner | Named contact/process owner for participant support, deletion/export, withdrawal, and safety concerns. | Blocker register says operations/support owner not assigned. | Missing |
| Accessibility beta evidence | WCAG 2.2 AA review plan or documented beta accessibility approach for beta-facing flows. | Blocker register says accessibility baseline not evidenced. | Missing |
| Owner final go/no-go | Completed final decision signed GO by final project owner after all required approvals. | Template exists at `08_operations_testing_accessibility/private_beta_release_go_no_go.md`; default is NO-GO and unsigned. | Missing |

## Evidence Summary

Current evidence state: planning documents exist, but required completed evidence and signed approvals are missing.

Current go/no-go status: NO-GO.

Private beta must not start until all required evidence is complete or explicitly waived by the appropriate owner in a signed decision, and the final project owner signs GO.

