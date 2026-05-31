# Repository Control Status Matrix

Current status: control matrix only. This document does not approve private beta, public MVP/build, production readiness, public launch, archive/delete/move, implementation work, or compliance claims.

All approval packets, decision logs, and checklists remain pending / owner review required unless a signed approval exists in the repository.

## Status Matrix

| Document path | Purpose | Current status | Approves anything? | Stage affected | Next action |
|---|---|---|---|---|---|
| `00_repository_control/archive_approval_packet.md` | Owner packet for future archive cleanup. | Pending / owner review required; ARCHIVE NO-GO. | No | Archive/delete/move | Owner must sign exact cleanup list before any action. |
| `00_repository_control/archive_candidate_plan.md` | Lists future archive candidates and risks. | Planning only. | No | Archive/delete/move | Keep aligned with traceability and owner decisions. |
| `00_repository_control/archive_decision_log.md` | Decision log for archive categories. | Pending / not approved. | No | Archive/delete/move | Record owner decisions only when signed. |
| `00_repository_control/archive_readiness_checklist.md` | Checklist before archive/move/delete. | ARCHIVE NO-GO. | No | Archive/delete/move | Complete source baseline, exact list, rollback, and workflow approvals. |
| `00_repository_control/canonical_gap_check.md` | Identifies missing/incomplete canonical docs and gates. | Gap check only; open gaps remain. | No | All stages | Update as gaps are closed with evidence. |
| `00_repository_control/canonical_rewrite_instructions.md` | Instructions for future canonical documentation work. | Canonical control instructions. | No | Documentation governance | Keep future agents aligned with root-canonical structure. |
| `00_repository_control/current_status_dashboard.md` | Summarises current stage status and blockers. | Dashboard only; all gated stages NO-GO. | No | All stages | Keep updated after signed decisions or evidence changes. |
| `00_repository_control/final_owner_review_packet.md` | Final owner-facing review packet for governance status. | Pending / owner review required. | No | Documentation governance; all gates | Owner to review decisions and requested next phase. |
| `00_repository_control/final_repository_audit_checkpoint.md` | Final checkpoint confirming governance layers exist. | Checkpoint only; no approvals. | No | All stages | Use as reference for owner review. |
| `00_repository_control/master_governance_index.md` | Top-level index of governance and canonical planning docs. | Master index only. | No | Documentation governance | Keep aligned with newly added control files. |
| `00_repository_control/next_actions_register.md` | Prioritised next actions and blockers. | Action register only. | No | All stages | Owner should confirm priority order and assign owners. |
| `00_repository_control/owner_decision_register.md` | Records DEC-001 to DEC-030 outcomes. | Canonical decision register. | Yes, listed source-of-truth decisions only | Documentation governance | Add dates/approver metadata if owner requests. |
| `00_repository_control/private_beta_approval_decision_log.md` | Decision log for beta approval areas. | Pending / not approved. | No | Private beta | Fill only after signed evidence exists. |
| `00_repository_control/private_beta_blocker_register.md` | Lists blockers before private beta. | All blockers open; private beta NO-GO. | No | Private beta | Resolve blockers and provide evidence. |
| `00_repository_control/private_beta_final_owner_go_no_go.md` | Final private beta signoff template. | Default NO-GO; unsigned. | No | Private beta | Final owner signs only after all area approvals. |
| `00_repository_control/private_beta_go_no_go_review_packet.md` | Prior private beta review packet. | NO-GO evidence. | No | Private beta | Supersede only with signed approval packet. |
| `00_repository_control/private_beta_owner_approval_packet.md` | Owner-facing private beta approval packet. | Default NO-GO; pending owner review. | No | Private beta | Complete required approvals and evidence. |
| `00_repository_control/private_beta_owner_approval_template.md` | Template for area owner signoff. | Unsigned template. | No | Private beta | Use only after evidence exists. |
| `00_repository_control/private_beta_required_evidence_checklist.md` | Checklist of evidence required before beta. | Evidence missing/pending. | No | Private beta | Mark present only when completed evidence exists. |
| `00_repository_control/private_beta_signoff_index.md` | Index of private beta signoff documents. | Index only; private beta NO-GO. | No | Private beta | Keep updated as signoff docs change. |
| `00_repository_control/production_owner_approval_packet.md` | Owner packet for production readiness/public launch. | Default reject / NO-GO; pending owner review. | No | Production | Complete production evidence gates before signoff. |
| `00_repository_control/production_readiness_gate_register.md` | Production readiness gate register. | PRODUCTION NO-GO. | No | Production | Complete every production gate or signed waiver. |
| `00_repository_control/production_required_evidence_checklist.md` | Production evidence checklist. | Evidence missing. | No | Production | Add evidence only when completed and signed. |
| `00_repository_control/public_mvp_build_gate_register.md` | Public MVP/build gate register. | PUBLIC MVP / BUILD NO-GO. | No | Public MVP/build | Complete evidence gates before build consideration. |
| `00_repository_control/public_mvp_owner_approval_packet.md` | Owner packet for public MVP/build consideration. | Default reject / NO-GO; pending owner review. | No | Public MVP/build | Complete public MVP/build evidence gates. |
| `00_repository_control/public_mvp_required_evidence_checklist.md` | Evidence checklist before public MVP/build. | Evidence missing/incomplete. | No | Public MVP/build | Add evidence only when completed and signed. |
| `00_repository_control/repository_control_status_matrix.md` | Matrix of repository-control files and statuses. | Matrix only. | No | Documentation governance | Keep updated when control files are added or signed. |
| `00_repository_control/root_vs_nested_docs_reconciliation.md` | Reconciles root canonical structure with nested docs evidence. | Control evidence only. | No | Documentation governance; archive | Preserve nested docs until owner cleanup approval. |
| `00_repository_control/source_of_truth_register.md` | Records product source of truth and conflict rule. | Approved source hierarchy record. | Yes, source hierarchy only | Documentation governance | Resolve source DOCX filename/path mismatch. |
| `00_repository_control/source_traceability_map.md` | Maps old/source folders to canonical destinations. | Traceability/control evidence; no cleanup approval. | No | Documentation governance; archive | Owner approval required before cleanup. |

## Stage Status Rule

| Stage/action | Current status |
|---|---|
| Documentation planning | Active |
| Private beta | NO-GO |
| Public MVP/build | NO-GO |
| Production | NO-GO |
| Public launch | NO-GO |
| Archive/delete/move | NO-GO |

No approval packet in this matrix may be treated as approved unless it contains signed owner approval and supporting evidence.

