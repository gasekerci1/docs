# Archive Readiness Checklist

Current archive status: **ARCHIVE NO-GO**.

This checklist defines what must be true before any archive, move, delete, or rename action. It does not approve cleanup activity.

## Readiness checklist

| Requirement | Current evidence | Status | Blocks archive? | Notes |
| --- | --- | --- | --- | --- |
| Source traceability map approved | `00_repository_control/source_traceability_map.md` exists | Pending owner approval | Yes | Map exists but has not been signed as an approved cleanup basis. |
| Canonical replacements complete | Root canonical documents exist for many areas | Incomplete | Yes | Several canonical areas remain incomplete or approval-gated. |
| Owner decisions captured | `00_repository_control/owner_decision_register.md` exists | Partial / pending | Yes | Archive-specific owner decisions are not signed. |
| Exact archive list approved | `00_repository_control/archive_candidate_plan.md` and this packet exist | Missing | Yes | Candidate categories exist, but no exact signed path list exists. |
| Source evidence baseline approved | Source folders and inventory evidence exist | Pending owner approval | Yes | Originals must remain preserved until baseline is signed. |
| README/dashboard updated | `README.md` and `00_repository_control/current_status_dashboard.md` show archive NO-GO | Present | Yes | Status is visible, but this does not approve cleanup. |
| No unresolved high-risk conflicts | Registers identify conflicts and path/name concerns | Missing | Yes | Source-of-truth path/name mismatch and legacy conflicts remain unresolved. |
| Rollback plan created | No rollback plan found in reviewed docs | Missing | Yes | Cleanup must include a reversible plan before action. |
| Branch/PR workflow approved if used | No approved cleanup branch/PR workflow found | Missing | Yes | Owner must approve workflow before any cleanup branch or PR is used. |
| Archive destination approved | Older nested archive plan proposed destinations only | Missing | Yes | Proposed destinations are not owner-approved and may conflict with root-canonical direction. |
| Nested docs handling approved | `root_vs_nested_docs_reconciliation.md` exists | Pending owner approval | Yes | Nested docs remain evidence only until owner approves exact treatment. |
| Evidence retention rules approved | Source-of-truth and traceability docs exist | Pending owner approval | Yes | Retention requirements must be signed before any source evidence movement. |

## Minimum approval requirements before cleanup

Before any cleanup can begin, the owner must approve:

- The source traceability map as the basis for cleanup.
- The source evidence baseline and preserved originals policy.
- The exact archive/move/delete/retain list by current path.
- The proposed destination for every archived item.
- Canonical replacement completeness for each superseded item.
- Handling of nested `docs/` control outputs.
- Handling of prompt files.
- Handling of app/MVP audit evidence files.
- A rollback plan.
- A branch/PR workflow, if cleanup is performed through version control.

## Explicit non-approvals

This checklist does not approve:

- Archive.
- Delete.
- Move.
- Rename.
- Private beta.
- Public MVP/build.
- Production readiness.
- Public launch.

