# Root Vs Nested Docs Reconciliation

Current status: structure reconciliation record only. This document does not approve file moves, archive actions, deletion, public MVP build, production readiness, or implementation work.

## Conflict

Earlier audit/control files under `docs/00_repository_control/` proposed a nested `docs/` canonical documentation structure.

Current owner direction supersedes that structural proposal:

- The repository root is the canonical documentation structure.
- Nested `docs/` files are evidence/control outputs unless later promoted.
- Do not create `docs/docs` duplication.
- Do not move files until the owner approves a traceability-backed cleanup.

## Current Owner-Approved Approach

Use root-level canonical folders going forward.

Treat nested `docs/` content as evidence of prior audits, duplicate analysis, contradiction analysis, proposed maps, proposed archive plans, and consolidation prompts. Nested files can inform root canonical documents, but they are not the final source-of-truth structure.

Product-level conflicts are resolved in favour of `docs/02_product/becomingos_product_specification.docx` unless a later explicit owner approval says otherwise.

## Nested Docs Evidence To Retain For Now

| Nested path | Current evidence role | Why retain |
|---|---|---|
| `docs/00_repository_control/file_inventory.md` | File inventory evidence | Supports traceability and cleanup planning. |
| `docs/00_repository_control/duplicate_file_map.md` | Exact/near duplicate evidence | Supports archive candidate identification. |
| `docs/00_repository_control/contradiction_register.md` | Conflict evidence | Documents earlier conflicts and proposed resolutions. |
| `docs/00_repository_control/gap_register.md` | Gap evidence | Helps ensure gaps are not silently removed. |
| `docs/00_repository_control/canonical_document_map.md` | Earlier canonical map evidence | Shows prior nested-destination proposal and source routing. |
| `docs/00_repository_control/archive_plan.md` | Earlier archive plan evidence | Contains archive risks and candidate rationale. |
| `docs/00_repository_control/approval_packet.md` | Earlier owner-review packet | Contains DEC context and review framing. |
| `docs/00_repository_control/proposed_final_document_set.md` | Earlier proposed final structure | Explains the nested-structure proposal that now conflicts with root-canonical direction. |
| `docs/02_product/becomingos_product_specification.docx` | Owner-named product source of truth | Highest-priority product source if present or owner-confirmed. |
| `docs/02_product/becomings_product_specification.docx` | Observed source-file evidence | Filename mismatch must be preserved and owner-resolved. |
| `docs/10_agent_prompts/20_document_consolidation_agent.md` | Consolidation prompt evidence | Explains earlier consolidation workflow. |
| `docs/10_agent_prompts/document_consolidation/PHASE_*.md` | Phase prompt evidence | Explains earlier phase outputs and assumptions. |

## Root Canonical Folders Going Forward

| Root folder | Canonical purpose |
|---|---|
| `00_repository_control/` | Source-of-truth register, owner decisions, traceability, archive candidates, gap checks, reconciliation, and cleanup governance. |
| `01-source-documents/` | Preserved evidence baseline. |
| `02_product/` | Canonical product brief, requirements, naming, private beta scope, and future prototype/MVP/non-goal documents. |
| `03_research_validation/` | Future canonical research summary, user research plan, market validation, and evidence/assumption register. |
| `04_curriculum_question_system/` | Future canonical curriculum, onboarding, question bank, and behaviour/motivation models. |
| `05_ai_memory_data/` | Canonical AI, memory, data, retrieval, embedding, and evaluation governance. |
| `06_privacy_legal_safety/` | Canonical safety, beta consent, privacy, legal claims, crisis, and security governance. |
| `07_architecture_api/` | Future conceptual architecture, API, and NFR documentation; no implementation approval. |
| `08_operations_testing_accessibility/` | Future operations, support, analytics, testing, accessibility, and release-readiness documentation. |
| `09_brand_experience/` | Future brand, tone, language, and product-experience documentation. |
| `10_agent_prompts/` | Future root prompt documentation if prompts remain canonical. |
| `99_archive/` | Future archive destination only after owner approval. Do not create or use for cleanup until approved. |

## No-Move Rule

No files should be moved, deleted, renamed, or archived until the owner approves a cleanup plan backed by:

- Source traceability map.
- Canonical gap check.
- Archive candidate plan.
- Root-vs-nested reconciliation.
- Exact owner-approved archive list.

