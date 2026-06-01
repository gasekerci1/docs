# Source DOCX Filename/Path Decision Request

Current status: owner decision request only. This document does not approve private beta, public MVP/build, production readiness, public launch, archive cleanup, file moves, file renames, file deletion, implementation work, or compliance claims.

## NA-001 Issue

Expected source-of-truth path recorded in repository control:

- `docs/02_product/becomingos_product_specification.docx`

Conflicting path recorded in existing control evidence:

- `docs/02_product/becomings_product_specification.docx`

Current worktree observation during this review:

- `02_product/becomingos_product_specification.docx` exists.
- `docs/02_product/becomingos_product_specification.docx` is shown by git as deleted in the current worktree.
- `docs/02_product/becomings_product_specification.docx` was not found in the current worktree.

## Risk

Changing, renaming, moving, deleting, or archiving any source DOCX before owner approval could cause future agents to cite the wrong source, break traceability, or treat a copied path as the approved product source of truth.

The current dirty worktree also means path correction should not be performed silently. The owner should decide whether the source-of-truth DOCX remains at the recorded nested path or whether repository control should be updated to a root-level source path.

## Recommended Owner Decision

Recommended decision for owner review:

- Preserve all existing source evidence.
- Do not modify any `.docx` file.
- Do not archive, delete, move, or rename any source file as part of this decision request.
- Confirm one canonical source-of-truth path in writing before any cleanup:
  - preferred conservative option: keep `docs/02_product/becomingos_product_specification.docx` as the recorded source-of-truth path and restore/resolve the current worktree path mismatch through an explicit owner-approved file operation later; or
  - alternative option: approve `02_product/becomingos_product_specification.docx` as the new recorded source-of-truth path and update control references in a separate documentation-only pass.

## Proposed Owner Decision Template

```text
Owner:
Decision date:
Approved source-of-truth DOCX path:
Treatment of docs/02_product/becomingos_product_specification.docx:
Treatment of 02_product/becomingos_product_specification.docx:
Treatment of docs/02_product/becomings_product_specification.docx if found later:
File moves/renames approved? Yes/No:
Control-doc updates approved? Yes/No:
Notes:
```
