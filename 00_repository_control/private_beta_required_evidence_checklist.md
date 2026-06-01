# Private Beta Required Evidence Checklist

Current status: evidence checklist only. This document does not approve private beta, public MVP build, production readiness, implementation work, or compliance claims.

Evidence status rule: mark an item as Present only when the repository contains completed evidence or signed approval. Draft policies, planning documents, checklists, and templates are not completed evidence.

## Required Evidence

| Evidence item | Required before beta | Repo evidence found | Evidence status |
|---|---|---|---|
| Final consent notice | Privacy/legal reviewed participant-facing notice approved for beta use. | `06_privacy_legal_safety/private_beta_final_consent_notice.md` approved on 2026-06-01. | Present |
| Retention/deletion workflow | Approved retention, deletion, anonymisation, and derived-data workflow. | `06_privacy_legal_safety/private_beta_data_retention_and_deletion_policy.md` and `private_beta_data_deletion_workflow.md` approved. | Present |
| Withdrawal/export/access workflow | Approved process for withdrawal, deletion, access/export, and consent withdrawal. | `06_privacy_legal_safety/private_beta_withdrawal_export_access_workflow.md` approved. | Present |
| AI provider due diligence | Completed provider review covering retention, logging, training-use, deletion, subprocessors, cross-border transfer, minimisation, opt-out, incident response, security, and contracts. | `06_privacy_legal_safety/openai_evidence/openai_due_diligence_evidence_pack.md` and `06_privacy_legal_safety/ai_provider_approval_record.md` approve OpenAI for limited private beta scope. | Present |
| Separate beta environment definition | Approved conceptual and operational definition for isolated beta environment. | `07_architecture_api/private_beta_environment_approval_record.md` approved. | Present |
| Safety logging approval | Approved decision on whether safety logging is enabled, disabled, or deferred, with retention/access rules. | `06_privacy_legal_safety/private_beta_safety_log_approval_record.md` approves minimal event classification logging. | Present |
| Security review | Security owner review of beta environment, access, logging, deletion, sensitive data, AI provider exposure, and shutdown plan. | `06_privacy_legal_safety/security_threat_model.md` approved for limited private beta. | Present |
| Analytics approval | Privacy/safety/product approval of analytics use, event properties, exclusions, retention, and deletion handling. | `08_operations_testing_accessibility/analytics_event_taxonomy.md` approved for limited private beta. | Present |
| Support Circle rules | Approved inclusion/exclusion decision and permissions/alerting rules. | `06_privacy_legal_safety/private_beta_support_circle_rules.md` approved for optional limited private beta use. | Present |
| Testing plan approval | Research/testing owner approval of private beta plan. | `08_operations_testing_accessibility/private_beta_testing_plan.md` approved. | Present |
| Stop criteria approval | Approved stop criteria and responsible owner. | `08_operations_testing_accessibility/private_beta_stop_criteria.md` approved. | Present |
| Operations/support owner | Named contact/process owner for participant support, deletion/export, withdrawal, and safety concerns. | `08_operations_testing_accessibility/support_operations_stage_plan.md` assigns Beta Operations Manager as named private beta operations/support owner and defines support boundaries, channels, logging, and escalation. | Present |
| Accessibility beta evidence | WCAG 2.2 AA review plan or documented beta accessibility approach for beta-facing flows. | `10_operations_testing_accessibility/accessibility_qa_evidence.md` approved for prototype-flow private beta planning. | Present |
| Owner final go/no-go | Completed final decision signed GO by final project owner after all required approvals. | `00_repository_control/private_beta_final_owner_go_no_go.md` signed GO for limited private beta on 2026-06-01. | Present |

## Evidence Summary

Current evidence state: required evidence and signed approvals for limited private beta are present as of 2026-06-01.

Current go/no-go status: GO for limited private beta only.

Public MVP/build, production readiness, commercial launch, archive/delete/move actions, and compliance claims remain not approved.
