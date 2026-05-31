# BecomingOS Documentation Source Of Truth

This is the BecomingOS documentation source-of-truth repository.

The current product source of truth is [docs/02_product/becomingos_product_specification.docx](docs/02_product/becomingos_product_specification.docx). See [00_repository_control/source_of_truth_register.md](00_repository_control/source_of_truth_register.md) for the source hierarchy, conflict rule, and current product decisions.

Note: the repository currently contains `docs/02_product/becomings_product_specification.docx`, which appears to conflict with the expected filename above. Do not rename, move, delete, or archive source files without owner approval.

## Current Stage

BecomingOS is pre-MVP with limited private beta planning only.

A limited private beta may be planned only with documented safeguards: trusted participants, explicit consent, a separate beta environment, minimal logging, defined retention, deletion or anonymisation after beta, and no production reuse without renewed consent.

No public build, public MVP, commercial launch, or production readiness is approved.

## Canonical Root Folder Structure

Use the repository root as the canonical documentation tree.

- `00_repository_control/` contains source-of-truth, owner decision, rewrite, traceability, and control documents.
- `01-source-documents/` preserves source originals and evidence baselines.
- `01_product/` contains older product evidence and draft materials unless superseded by root canonical documents.
- `02_product/` contains canonical product documents.
- `02_research_and_validation/` contains research and validation evidence.
- `03_curriculum_and_questions/` contains curriculum, lesson, and question-bank evidence.
- `04_ai_memory_and_data/` contains older AI memory and data evidence.
- `05_ai_memory_data/` contains canonical AI and memory governance documents.
- `05_privacy_legal_safety/` contains older privacy, legal, and safety evidence.
- `06_privacy_legal_safety/` contains canonical privacy, legal, and safety documents.
- `06_architecture_and_api/` contains conceptual architecture and API evidence only.
- `07_analysis/` contains analysis, contradiction, gap, and readiness evidence.
- `08_final_outputs/` contains readiness evidence, not approvals.
- `09_agent_prompts/` contains agent prompt evidence and support material.
- `10_operations_testing_accessibility/` contains support, analytics, testing, and accessibility evidence.

## Nested Docs Warning

Do not use nested `docs/docs` duplication as the source of truth.

Nested `docs/` content may be supporting evidence, but the repository root is the canonical documentation structure unless the owner explicitly changes that decision.

## Repository Boundary

This is a documentation-only repository. Do not write app code, create implementation code, approve public MVP build, approve production readiness, delete source files, archive files, move files, or silently remove information.
