# Next Actions Register

Current status: action register only. This document does not approve private beta, public MVP/build, production readiness, public launch, archive/delete/move actions, implementation work, or compliance claims.

## Priority Actions

| Action ID | Action | Why needed | Owner | Input docs | Output doc | Priority | Blocks private beta? | Blocks public MVP/build? | Blocks production? |
|---|---|---|---|---|---|---|---|---|---|
| NA-001 | Resolve source DOCX filename/path mismatch. | Prevents future agents from citing, moving, or archiving the wrong source file. | Project owner | `README.md`; `source_of_truth_register.md`; `source_traceability_map.md` | Owner decision record or source-of-truth register update | Critical | Yes | Yes | Yes |
| NA-002 | Review and approve final beta consent notice. | Real beta data requires clear consent before collection. | Privacy/legal owner; safety owner | `private_beta_final_consent_notice.md`; `private_beta_consent_requirements.md`; `privacy_consent_data_governance.md` | Signed consent approval record | Critical | Yes | Yes | Yes |
| NA-003 | Complete AI provider due diligence. | No live user data may be sent to providers without approved retention, logging, training-use, deletion, subprocessors, transfer, security, and contract terms. | AI/data owner; privacy/legal owner; security owner | `ai_provider_due_diligence_checklist.md`; `ai_provider_approval_record.md`; `retrieval_and_embedding_rules.md` | Completed AI provider approval record | Critical | Yes | Yes | Yes |
| NA-004 | Approve retention, deletion, export/access, and withdrawal workflows. | Needed to handle source data, derived data, embeddings, provider-held data, and participant withdrawal. | Privacy/legal/security owner | `private_beta_data_deletion_workflow.md`; `private_beta_withdrawal_export_access_workflow.md`; `private_beta_data_retention_and_deletion_policy.md` | Signed workflow approval record | Critical | Yes | Yes | Yes |
| NA-005 | Approve separate beta environment definition. | Prevents beta data mixing with dev/demo/future production data. | Security owner; product owner | `private_beta_environment_requirements.md`; `private_beta_environment_approval_record.md`; `security_threat_model.md` | Signed beta environment approval record | Critical | Yes | Yes | Yes |
| NA-006 | Approve safety logging policy or decide safety logging is disabled/deferred. | Safety/crisis content must not become memory or analytics. | Safety owner; privacy/legal owner; security owner | `private_beta_safety_logging_policy.md`; `private_beta_safety_log_approval_record.md`; `safety_boundaries.md` | Signed safety log approval/decision record | Critical | Yes | Yes | Yes |
| NA-007 | Complete security review. | Sensitive beta data, documents, media, support contacts, AI exposure, logging, deletion, and access controls need review. | Security owner | `security_threat_model.md`; `private_beta_environment_requirements.md`; `production_architecture_gate.md` | Security review record | Critical | Yes | Yes | Yes |
| NA-008 | Complete evidence/assumption register updates after each new evidence source. | Prevents assumptions from being treated as public claims or approvals. | Research owner; project owner | `evidence_and_assumption_register.md`; `growth_systems_research_summary.md`; gate registers | Updated evidence and assumption register | High | Yes | Yes | Yes |
| NA-009 | Execute research plan and synthesize findings. | User comprehension, trust, value, safety boundaries, and consent clarity remain unvalidated. | Research owner | `mvp_testing_strategy.md`; `private_beta_testing_plan.md`; `evidence_and_assumption_register.md` | Research synthesis document | High | No | Yes | Yes |
| NA-010 | Complete market validation. | Target segment, demand, pricing, and willingness-to-pay are assumptions. | Research/market owner | `evidence_and_assumption_register.md`; `public_mvp_required_evidence_checklist.md` | Market validation report | High | No | Yes | Yes |
| NA-011 | Produce accessibility QA evidence. | WCAG 2.2 AA is a baseline decision, but QA evidence is missing. | Accessibility/testing owner | `non_functional_requirements.md`; `release_readiness_checklist.md`; `mvp_testing_strategy.md` | Accessibility QA evidence record | High | Yes | Yes | Yes |
| NA-012 | Review release readiness checklist by stage. | Keeps documentation planning, private beta, public MVP/build, and production gates separate. | Project owner; stage owners | `release_readiness_checklist.md`; beta/MVP/production gate registers | Updated release readiness checklist | High | Yes | Yes | Yes |
| NA-013 | Prepare archive approval packet only after traceability is complete. | Archive/delete/move remains NO-GO until owner approval. | Project owner | `source_traceability_map.md`; `archive_candidate_plan.md`; `root_vs_nested_docs_reconciliation.md` | Archive approval packet | Medium | No | No | No |
| NA-014 | Approve source evidence baseline. | Confirms which originals and nested docs remain evidence before future cleanup. | Project owner | `source_traceability_map.md`; `archive_candidate_plan.md`; `01-source-documents/originals/` evidence | Source evidence baseline approval | Medium | No | Yes | Yes |
| NA-015 | Assign operations/support owner and support boundaries for beta. | Participant support, deletion/export requests, and safety concerns need an owner. | Operations/support owner; product owner | `support_operations_stage_plan.md`; `private_beta_blocker_register.md`; `incident_response_plan.md` | Support owner decision record | High | Yes | Yes | Yes |
| NA-016 | Approve analytics taxonomy before any live analytics use. | Prevents sensitive free text, crisis text, and excluded data from entering analytics. | Product owner; privacy/legal owner; safety owner | `analytics_event_taxonomy.md`; `privacy_consent_data_governance.md`; `private_beta_safety_logging_policy.md` | Analytics approval record | High | Yes, if analytics used | Yes | Yes |
| NA-017 | Produce AI memory/retrieval/embedding test evidence. | Conceptual rules must be verified before live AI memory use. | AI/data owner; security owner | `memory_model.md`; `retrieval_and_embedding_rules.md`; `ai_memory_governance.md` | Memory lifecycle test evidence | Critical | Yes, if AI memory used | Yes | Yes |
| NA-018 | Complete final go/no-go packet for the relevant stage only after all evidence exists. | Prevents planning docs from being treated as approvals. | Final project owner | Private beta, public MVP, or production owner approval packets | Signed GO/NO-GO decision | Critical | Yes | Yes | Yes |

## Current Priority Order

1. Resolve the source DOCX filename/path mismatch.
2. Complete final beta consent review.
3. Complete AI provider due diligence.
4. Approve retention/deletion/export/access/withdrawal workflows.
5. Approve separate beta environment definition.
6. Approve safety logging decision.
7. Complete security review.
8. Assign support/operations owner.
9. Update evidence/assumption register as evidence changes.
10. Execute research and market validation before any public MVP/build consideration.
