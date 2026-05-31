# Private Beta Signoff Index

Current status: signoff index only. No signoff index entry approves beta unless a signed approval file exists.

This index does not approve private beta, public MVP build, production readiness, implementation work, commercial launch, or legal/privacy/security/regulatory compliance claims.

## Signoff Index

| Document path | Purpose | Owner required | Current status | Blocks private beta | Blocks public MVP/build |
|---|---|---|---|---|---|
| `00_repository_control/private_beta_blocker_register.md` | Tracks open blockers before private beta. | Project owner; relevant area owners | All blockers open. | Yes | Yes |
| `00_repository_control/private_beta_go_no_go_review_packet.md` | Prior private beta readiness review packet. | Project owner | Recommendation is NO-GO; not a signed approval. | Yes | Yes |
| `00_repository_control/private_beta_owner_approval_template.md` | Template for owner sign-off by area. | Product, privacy/legal, safety, AI/data, security, research/testing, final project owner | Template only; unsigned. | Yes | Yes |
| `00_repository_control/private_beta_required_evidence_checklist.md` | Evidence checklist for beta readiness. | Project owner; evidence owners | Required evidence marked missing. | Yes | Yes |
| `00_repository_control/private_beta_final_owner_go_no_go.md` | Final owner sign-off template. | Final project owner after all area owners | Default decision NO-GO; unsigned. | Yes | Yes |
| `00_repository_control/private_beta_owner_approval_packet.md` | Single owner-facing approval packet. | Product, privacy/legal, safety, AI/data, security, research/testing, final project owner | Owner packet; default NO-GO. | Yes | Yes |
| `00_repository_control/private_beta_approval_decision_log.md` | Decision log for required private beta approvals. | Project owner; approval owners | All entries pending / not approved. | Yes | Yes |
| `00_repository_control/private_beta_signoff_index.md` | Index of private beta signoff documents. | Project owner | Index only; no approvals granted. | Yes | Yes |
| `02_product/private_beta_scope.md` | Defines private beta scope, safeguards, and boundaries. | Product owner | Planning/scope document; not beta approval. | Yes | Yes |
| `02_product/private_beta_readiness_checklist.md` | Checklist for private beta gates. | Product owner; privacy/legal; safety; AI/data; security; research/testing; final project owner | Checklist only; unsigned; default NO-GO. | Yes | Yes |
| `06_privacy_legal_safety/private_beta_consent_requirements.md` | Requirements for beta consent coverage. | Privacy/legal owner | Requirements document; not signed approval. | Yes | Yes |
| `06_privacy_legal_safety/private_beta_consent_notice.md` | Earlier draft participant-facing consent notice. | Privacy/legal owner; safety owner | Draft requiring review. | Yes | Yes |
| `06_privacy_legal_safety/private_beta_final_consent_notice.md` | Approval-ready final consent notice draft. | Privacy/legal owner; safety owner | Draft; approval checkbox unsigned. | Yes | Yes |
| `06_privacy_legal_safety/private_beta_data_retention_and_deletion_policy.md` | Draft retention/deletion policy. | Privacy/legal/security owner | Draft requiring review. | Yes | Yes |
| `06_privacy_legal_safety/private_beta_data_deletion_workflow.md` | Approval-ready deletion workflow draft. | Owner; privacy/legal; security | Draft; approval checkbox unsigned. | Yes | Yes |
| `06_privacy_legal_safety/private_beta_withdrawal_export_access_workflow.md` | Approval-ready withdrawal, export, access, correction, and deletion workflow draft. | Owner; privacy/legal; security | Draft; approval checkbox unsigned. | Yes | Yes |
| `06_privacy_legal_safety/private_beta_support_circle_rules.md` | Approval-ready Support Circle beta rules draft. | Product; safety; privacy/legal owner | Draft; approval checkbox unsigned. | Yes | Yes |
| `06_privacy_legal_safety/private_beta_safety_logging_policy.md` | Draft minimal safety logging policy. | Safety; privacy/legal; security owner | Draft requiring review. | Yes | Yes |
| `06_privacy_legal_safety/private_beta_safety_log_approval_record.md` | Safety logging approval record. | Safety; privacy/legal; security owner | Default not approved; unsigned. | Yes | Yes |
| `06_privacy_legal_safety/ai_provider_due_diligence_checklist.md` | AI provider due diligence checklist. | AI/data; privacy/legal; security owner | Checklist only; provider approval missing. | Yes | Yes |
| `06_privacy_legal_safety/ai_provider_approval_record.md` | AI provider approval record. | AI/data; privacy/legal; security; product owner | Default not approved; unsigned. | Yes | Yes |
| `06_privacy_legal_safety/security_threat_model.md` | Conceptual private beta threat model. | Security owner | Conceptual; open security decisions remain. | Yes | Yes |
| `07_architecture_api/private_beta_environment_requirements.md` | Conceptual separate beta environment requirements. | Security owner | Planning only; no implementation or approval. | Yes | Yes |
| `07_architecture_api/private_beta_environment_approval_record.md` | Beta environment approval record. | Security owner; product owner | Default not approved; unsigned. | Yes | Yes |
| `08_operations_testing_accessibility/private_beta_testing_plan.md` | Beta testing plan. | Research/testing owner | Planning document; not approved. | Yes | Yes |
| `08_operations_testing_accessibility/private_beta_test_script.md` | Approval-ready beta test script draft. | Research/testing owner; product owner; safety owner | Draft; not signed. | Yes | Yes |
| `08_operations_testing_accessibility/private_beta_stop_criteria.md` | Approval-ready stop criteria draft. | Research/testing; safety; privacy/legal; security owner | Draft; not signed. | Yes | Yes |
| `08_operations_testing_accessibility/private_beta_release_go_no_go.md` | Release go/no-go template. | Final project owner and required area owners | Default NO-GO; unsigned. | Yes | Yes |
| `08_operations_testing_accessibility/analytics_event_taxonomy.md` | Privacy-safe analytics event taxonomy planning. | Product; privacy/legal; safety owner | Conceptual; not approved for live analytics. | Yes | Yes |

## Index Rule

This index records where signoff-relevant private beta documents are located. It does not convert drafts, planning documents, checklists, or templates into approval evidence.

Private beta remains blocked until required evidence is complete and signed approval exists. Public MVP/build and production readiness remain blocked regardless of any future private beta approval unless separately approved through later owner decisions.
