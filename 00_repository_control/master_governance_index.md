# Master Governance Index

Current status: master index only. This document does not approve private beta, public MVP/build, production readiness, public launch, implementation work, archive/delete/move actions, or compliance claims.

Product source of truth: `docs/02_product/becomingos_product_specification.docx`.

Root-level folders are canonical. Nested `docs/` folders and older app/MVP/readiness files are evidence only unless later promoted by owner approval.

## Source Of Truth

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `README.md` | Repository landing page and stage warning. | Canonical landing page. | No. | Keep aligned with dashboard and source-of-truth register. |
| `00_repository_control/source_of_truth_register.md` | Records current product source of truth and conflict rule. | Approved source-of-truth record. | Approves source hierarchy only. | Resolve source DOCX filename/path mismatch. |
| `00_repository_control/canonical_rewrite_instructions.md` | Instructions for future canonical documentation work. | Canonical control instructions. | No. | Keep future agents pointed to root-level canonical docs. |

## Owner Decisions

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `00_repository_control/owner_decision_register.md` | Records DEC-001 to DEC-030 outcomes. | Canonical decision register. | Approves listed source-of-truth decisions only. | Add dates/approver metadata in a future owner decision process. |

## Traceability And Archive Planning

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `00_repository_control/source_traceability_map.md` | Maps old/source folders to canonical root destinations. | Traceability/control evidence. | No. | Keep updated before any cleanup. |
| `00_repository_control/archive_candidate_plan.md` | Lists future archive candidates and risks. | Planning only. | No archive/delete/move approval. | Owner approval required before any archive action. |
| `00_repository_control/canonical_gap_check.md` | Tracks missing/incomplete canonical docs and gaps. | Gap check only. | No. | Update after new canonical docs are created. |
| `00_repository_control/root_vs_nested_docs_reconciliation.md` | Reconciles root canonical structure vs nested docs evidence. | Control evidence. | No. | Preserve nested docs as evidence unless owner approves cleanup. |

## Private Beta Gates

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `00_repository_control/private_beta_blocker_register.md` | Lists blockers before private beta. | Blockers closed for limited private beta as of 2026-06-01. | No. | Keep later-stage blockers separate. |
| `00_repository_control/private_beta_owner_approval_packet.md` | Owner-facing private beta packet. | Superseded by final signed GO. | No. | Historical reference only. |
| `00_repository_control/private_beta_approval_decision_log.md` | Decision log for beta approvals. | Approved for limited private beta as of 2026-06-01. | Yes, limited private beta only. | Keep current as approvals change. |
| `00_repository_control/private_beta_signoff_index.md` | Index of beta signoff docs. | Index only. | No. | Keep current as approval docs evolve. |
| `00_repository_control/private_beta_go_no_go_review_packet.md` | Prior beta go/no-go packet. | Superseded by final signed GO. | No. | Historical reference only. |
| `00_repository_control/private_beta_owner_approval_template.md` | Area owner approval template. | Unsigned template. | No. | Complete only after evidence exists. |
| `00_repository_control/private_beta_required_evidence_checklist.md` | Required evidence before beta. | Evidence present for limited private beta as of 2026-06-01. | No. | Keep later-stage evidence separate. |
| `00_repository_control/private_beta_final_owner_go_no_go.md` | Final beta go/no-go. | GO signed for limited private beta as of 2026-06-01. | Yes, limited private beta only. | Operate only within signed conditions. |

## Public MVP/Build Gates

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `00_repository_control/public_mvp_build_gate_register.md` | Gates before public MVP/build can be considered. | PUBLIC MVP / BUILD NO-GO. | No. | Complete evidence gates. |
| `00_repository_control/public_mvp_owner_approval_packet.md` | Owner packet for public MVP/build consideration. | Default reject / NO-GO. | No. | Complete only after evidence gates. |
| `00_repository_control/public_mvp_required_evidence_checklist.md` | Evidence required before public MVP/build. | Evidence missing or incomplete. | No. | Complete validation, reviews, testing, and signoff. |

## Production Gates

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `00_repository_control/production_readiness_gate_register.md` | Gates before production can be considered. | PRODUCTION NO-GO. | No. | Complete production evidence gates. |
| `00_repository_control/production_owner_approval_packet.md` | Owner packet for production readiness/public launch. | Default reject / NO-GO. | No. | Complete only after production evidence gates. |
| `00_repository_control/production_required_evidence_checklist.md` | Evidence required before production. | Evidence missing. | No. | Complete production evidence and final signoff. |

## Product Docs

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `02_product/product_brief.md` | Summarises vision, stage, needs, pillars, and boundaries. | Canonical planning doc. | No build approval. | Keep aligned with source-of-truth DOCX. |
| `02_product/product_requirements.md` | Conceptual requirements and growth loop. | Planning only. | No implementation approval. | Add stage labels/acceptance detail when owner requests. |
| `02_product/terminology_and_naming.md` | Naming rules for BecomingOS and lifeOS. | Canonical naming doc. | Naming only. | Keep future brand docs aligned. |
| `02_product/private_beta_scope.md` | Defines private beta scope and safeguards. | Planning only. | No beta approval. | Owner approve or change participant cap and safeguards. |
| `02_product/private_beta_readiness_checklist.md` | Beta readiness gates. | Superseded by signed limited private beta GO. | No. | Historical checklist only; keep later-stage gates separate. |
| `02_product/mvp_scope.md` | Candidate MVP scope. | Candidate planning only. | No public MVP/build approval. | Complete public MVP gates. |
| `02_product/non_goals.md` | Central prohibited claims and non-goals. | Canonical boundary doc. | No. | Use in all future copy/review. |
| `02_product/landing_page_requirements_v0.1.md` | Draft landing-page requirements. | Draft evidence. | No. | Review against no-build/no-public-claims constraints before use. |
| `02_product/marketing_branding_scope_v0.1.md` | Draft marketing/branding scope. | Draft evidence. | No. | Legal/safety review before public use. |
| `02_product/social_content_launch_pack_v0.1.md` | Draft social/launch content. | Draft evidence. | No. | Do not use until public claims and launch gates are approved. |

## Research Docs

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `03_research_validation/evidence_and_assumption_register.md` | Separates evidence, assumptions, unsupported claims, and gaps. | Canonical planning register. | No public claims approval. | Complete user research, market validation, and beta findings when available. |
| `03_research_validation/evidence_based_growth_systems_report.md` | Research source on growth systems. | Research evidence. | No product/build approval. | Preserve as evidence and validate with BecomingOS users. |
| `03_research_validation/growth_systems_research_summary.md` | Summary of growth systems report. | Research summary. | No build approval. | Update if new research is added. |
| `04_curriculum_question_system/behaviour_change_model.md` | Non-clinical behaviour-change planning model. | Planning model. | No clinical/product approval. | Validate comprehension and safety in research/beta. |
| `04_curriculum_question_system/motivation_needs_desire_avoidance_model.md` | Motivation and needs model. | Planning model. | No clinical/product approval. | Validate with users before public claims. |

## AI/Memory Docs

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `05_ai_memory_data/ai_memory_governance.md` | AI draft, memory, exclusion, embedding, and provider rules. | Conceptual governance. | No provider/live processing approval. | Complete AI provider review and test evidence. |
| `05_ai_memory_data/memory_model.md` | Memory states and AI influence rules. | Conceptual model. | No implementation approval. | Verify lifecycle in beta/MVP tests before live use. |
| `05_ai_memory_data/retrieval_and_embedding_rules.md` | Retrieval exclusions and embedding invalidation rules. | Conceptual rules. | No vector/provider approval. | Produce deletion/invalidation evidence. |
| `05_ai_memory_data/production_ai_safety_gate.md` | Production AI safety gates. | Default not approved. | No. | Complete provider contracts, AI evaluations, red-team tests, and memory deletion evidence. |

## Privacy/Legal/Safety Docs

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `06_privacy_legal_safety/privacy_consent_data_governance.md` | Pre-MVP/private-beta privacy posture. | Planning policy. | No compliance or beta approval. | Privacy/legal review before beta or broad release. |
| `06_privacy_legal_safety/legal_claims_policy.md` | Allowed/prohibited claims. | Planning policy. | No legal approval. | Review all public/beta copy against this. |
| `06_privacy_legal_safety/security_threat_model.md` | Conceptual private beta threat model. | Conceptual only. | No security/build approval. | Security owner review and closure. |
| `06_privacy_legal_safety/safety_boundaries.md` | Non-clinical and safety boundary rules. | Canonical boundary doc. | Boundary guidance only. | Keep all user-facing copy aligned. |
| `06_privacy_legal_safety/private_beta_consent_requirements.md` | Beta consent requirements. | Requirements only. | No beta approval. | Use for final consent review. |
| `06_privacy_legal_safety/private_beta_consent_notice.md` | Draft beta consent notice. | Draft. | No. | Supersede or review against final notice. |
| `06_privacy_legal_safety/private_beta_final_consent_notice.md` | Approval-ready final beta consent draft. | Draft / unsigned. | No. | Privacy/legal/safety owner review. |
| `06_privacy_legal_safety/private_beta_data_retention_and_deletion_policy.md` | Draft beta retention/deletion policy. | Draft / unsigned. | No. | Owner/privacy/legal/security review. |
| `06_privacy_legal_safety/private_beta_data_deletion_workflow.md` | Draft deletion workflow. | Draft / unsigned. | No. | Approve and test before beta. |
| `06_privacy_legal_safety/private_beta_withdrawal_export_access_workflow.md` | Draft withdrawal/access/export workflow. | Draft / unsigned. | No. | Approve and test before beta. |
| `06_privacy_legal_safety/private_beta_safety_logging_policy.md` | Draft safety logging policy. | Draft / unsigned. | No. | Safety/privacy/legal/security review. |
| `06_privacy_legal_safety/private_beta_safety_log_approval_record.md` | Safety log approval template. | Default not approved. | No. | Complete if safety logs are used. |
| `06_privacy_legal_safety/private_beta_support_circle_rules.md` | Support Circle beta rules. | Draft / unsigned. | No. | Product/safety/privacy/legal review. |
| `06_privacy_legal_safety/ai_provider_due_diligence_checklist.md` | AI provider due diligence checklist. | Not started. | No. | Complete before any live user data provider use. |
| `06_privacy_legal_safety/ai_provider_approval_record.md` | AI provider approval record. | Default not approved. | No. | Complete with provider terms. |
| `06_privacy_legal_safety/production_privacy_legal_safety_gate.md` | Production privacy/legal/safety gates. | Default not approved. | No. | Complete production privacy/legal/safety evidence. |

## Architecture/API Docs

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `07_architecture_api/conceptual_architecture.md` | Conceptual component map. | Conceptual only. | No architecture/build approval. | Create ADR only after build gates. |
| `07_architecture_api/non_functional_requirements.md` | Stage-classified NFR planning. | Candidate targets only. | No commitments or SLOs. | Approve stage NFRs before build/production. |
| `07_architecture_api/private_beta_environment_requirements.md` | Conceptual beta environment requirements. | Planning only. | No implementation approval. | Security owner approval before beta. |
| `07_architecture_api/private_beta_environment_approval_record.md` | Beta environment approval record. | Default not approved. | No. | Complete before beta. |
| `07_architecture_api/production_architecture_gate.md` | Production architecture gate. | Default not approved. | No. | Complete production architecture evidence. |

## Operations/Testing/Accessibility Docs

| Path | Purpose | Status | Approves anything? | Next required action |
|---|---|---|---|---|
| `08_operations_testing_accessibility/release_readiness_checklist.md` | Stage readiness checklist. | Planning only. | No stage approval. | Review after each evidence update. |
| `08_operations_testing_accessibility/private_beta_testing_plan.md` | Beta testing plan. | Approved for limited private beta. | Yes, limited private beta testing only. | Use within signed conditions. |
| `08_operations_testing_accessibility/private_beta_test_script.md` | Beta test script. | Approved for limited private beta. | Yes, limited private beta testing only. | Use within signed conditions. |
| `08_operations_testing_accessibility/private_beta_stop_criteria.md` | Beta stop criteria. | Approved for limited private beta. | Yes, limited private beta stop/pause decisions only. | Use within signed conditions. |
| `08_operations_testing_accessibility/private_beta_release_go_no_go.md` | Beta release decision record. | GO signed for limited private beta. | Yes, limited private beta only. | Keep public MVP/build and production gates separate. |
| `08_operations_testing_accessibility/mvp_testing_strategy.md` | MVP testing strategy. | Planning only; tests not run. | No public MVP/build approval. | Execute and document testing only after gates allow. |
| `08_operations_testing_accessibility/analytics_event_taxonomy.md` | Privacy-safe analytics taxonomy. | Approved for limited private beta analytics only. | Yes, limited private beta analytics only. | Keep public MVP/build and production gates separate. |
| `08_operations_testing_accessibility/production_readiness_checklist.md` | Production readiness checklist. | PRODUCTION NO-GO. | No. | Complete production gates. |
| `08_operations_testing_accessibility/incident_response_plan.md` | Planning-only incident response plan. | Not operationally approved. | No. | Assign owners and approve before live use. |
| `08_operations_testing_accessibility/support_operations_stage_plan.md` | Support model by stage. | Planning only. | No support readiness. | Assign support owners and approve stage support. |
