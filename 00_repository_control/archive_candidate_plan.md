# Archive Candidate Plan

Current status: candidate plan only. Do not archive, move, delete, rename, or clean up any file until owner approval is granted after traceability is complete.

This plan identifies eventual archive candidates and why they must be preserved for now.

## Archive Preconditions

Before any archive action:

- Owner must approve the source traceability map.
- Owner must approve canonical replacement documents.
- Owner must approve conflict resolutions.
- Owner must approve the exact archive list.
- Source evidence must remain accessible.
- No source file may be moved until the owner confirms the evidence baseline.

## Exact Duplicate Candidates

| Candidate group | Examples | Why eventually archive | Why not archive yet | Owner approval |
|---|---|---|---|---|
| Raw inbox copies duplicated in originals and categorized folders | `00_inbox/Wording and Tone Guide.docx`; `00_inbox/Today Directive Model.docx`; `00_inbox/Question system design.docx`; `00_inbox/AI Interpretation Guide.docx`; `00_inbox/BecomingOS Safety and Boundary Policies.docx` | Reduces duplicate evidence and prevents duplicate files from making the same claim appear stronger than it is. | `00_inbox/` preserves import provenance and must be mapped before cleanup. | Required before moving. |
| Capitalized and snake_case duplicate files | `01_product/Prototype UX Specification.docx` and `01_product/prototype_ux_specification.docx`; `05_privacy_legal_safety/Security threat model.docx` and `05_privacy_legal_safety/security_threat_model.docx`; `10_operations_testing_accessibility/Testing Strategy for MVP.docx` and `10_operations_testing_accessibility/testing_strategy.docx` | Reduces confusion over authoritative filename. | Need source hash/provenance confirmation and canonical replacement first. | Required before moving. |
| Duplicate decision and synthesis files | `04-decisions/Recommendation Decision Table.docx`; `07_analysis/Recommendation Decision Table.docx`; `03-synthesis/Accepted Recommendations.docx`; `07_analysis/Accepted Recommendations.docx` | Avoids split decision history. | Decision records must be captured in owner decision register and evidence register first. | Required before moving. |
| Duplicate source-original/categorized documents | Copies repeated across `01-source-documents/originals/`, `01_product/`, `03_curriculum_and_questions/`, `04_ai_memory_and_data/`, `05_privacy_legal_safety/`, and `05-product-spec/` | Keeps one evidence baseline and one canonical destination per topic. | `01-source-documents/originals/` must remain preserved; categorized folders still provide topic context. | Required before moving. |

## Near Duplicate Candidates

| Candidate group | Examples | Why eventually archive | Why not archive yet | Owner approval |
|---|---|---|---|---|
| Hyphenated vs underscored research folders | `02-research/` and `02_research_and_validation/` | Consolidates duplicate research structures. | Research evidence and pending/unvalidated claims must be preserved. | Required before moving. |
| Synthesis and analysis overlap | `03-synthesis/` and `07_analysis/` | Consolidates accepted recommendations, gaps, and decision evidence. | Accepted recommendations are not the same as validated evidence; preserve distinction. | Required before moving. |
| Decision folder overlap | `04-decisions/` and `07_analysis/*decision*` | Consolidates owner decisions into root control records. | Decision requests, owner notes, and review records may contain unique context. | Required before moving. |
| Mixed product spec overlap | `05-product-spec/` overlapping product, curriculum, AI memory, and safety folders | Removes a broad mixed folder after topic-specific canonical docs exist. | High risk of losing cross-topic source context before full traceability. | Required before moving. |
| Agent prompt overlap | `09_agent_prompts/` and `docs/10_agent_prompts/` | Reduces split prompt systems. | Prompts document prior consolidation workflow and constraints. | Required before moving. |

## Superseded Candidates

| Candidate group | Examples | Why eventually archive | Why not archive yet | Owner approval |
|---|---|---|---|---|
| Product PRD/prototype drafts | `01_product/PRD v0.1 for BecomingOS.docx`; `01_product/Prototype UX Specification.docx` | Superseded after canonical product requirements, product brief, prototype scope, and traceability are complete. | They contain stage and feature evidence that must remain traceable. | Required before moving. |
| Brand and wording drafts | `01_product/lifeos_brand_kit.md`; `01_product/brand_kit/`; wording/tone `.docx` files | Superseded after approved BecomingOS brand/tone docs exist. | Current brand conflict is high risk; do not archive before owner-approved brand hierarchy. | Required before moving. |
| AI memory/data drafts | `04_ai_memory_and_data/*.docx` | Superseded after canonical AI governance, memory model, retrieval/embedding rules, and data model exist. | Provider retention, storage, deletion, and embedding details remain incomplete. | Required before moving. |
| Privacy/legal/safety drafts | `05_privacy_legal_safety/*.docx` | Superseded after canonical safety, privacy, legal claims, security, and crisis docs exist. | Legal review and consent details are incomplete. | Required before moving. |
| Architecture/API/NFR drafts | `06_architecture_and_api/*.docx` | Superseded after conceptual architecture/API/NFR docs are clearly marked planning-only. | Could be mistaken for implementation approval; keep as evidence until rewritten. | Required before moving. |
| Operations/testing/accessibility drafts | `10_operations_testing_accessibility/*.docx` | Superseded after canonical testing, support, analytics, accessibility, and release-readiness docs exist. | Beta and production operating assumptions are not approved. | Required before moving. |
| Top-level implementation-adjacent evidence | `MVP_ACCEPTANCE_CHECKLIST.md`; `database_mvp_schema_notes.md`; `mvp_build_audit.md`; `final_mvp_hardening_report.md`; `PROJECT_STRUCTURE.md` | Superseded or reclassified after app/MVP context is resolved. | Critical: may be historical evidence but must not imply current build approval. | Required before moving. |

## Old Review/Evidence Candidates

| Candidate group | Examples | Why eventually archive | Why not archive yet | Owner approval |
|---|---|---|---|---|
| P0 reviews | `07_analysis/p0_reviews/*.md` | Historical review evidence after canonical gaps and readiness gates are captured. | Reviews contain rationale and blockers. | Required before moving. |
| Readiness reports | `08_final_outputs/*.docx`; `final_mvp_hardening_report.md`; `mvp_build_audit.md` | Historical readiness evidence after canonical readiness documents exist. | File names may mislead, but their evidence is important. | Required before moving. |
| Repository audits | `REPOSITORY_AUDIT_2026-05-24.md`; nested control docs | Historical repository-control evidence after root control docs are approved. | Audit context supports traceability and cleanup decisions. | Required before moving. |
| Agent orchestration plans | `CODEX_PRODUCT_EXPERIENCE_PROMPT_PLAN.md`; `09_agent_prompts/*.md`; `docs/10_agent_prompts/**/*.md` | Historical or superseded prompt evidence after prompt/control docs are final. | Prior prompts include constraints that should remain visible until cleanup is approved. | Required before moving. |

## Nested Docs Candidates

| Candidate group | Examples | Why eventually archive | Why not archive yet | Owner approval |
|---|---|---|---|---|
| Nested control plane | `docs/00_repository_control/file_inventory.md`; `docs/00_repository_control/duplicate_file_map.md`; `docs/00_repository_control/contradiction_register.md`; `docs/00_repository_control/archive_plan.md` | Root-level folders are now canonical; nested control docs can become historical evidence after root equivalents are complete. | They contain useful duplicate, contradiction, gap, and archive evidence. | Required before moving. |
| Nested product source area | `docs/02_product/becomings_product_specification.docx`; expected `docs/02_product/becomingos_product_specification.docx` | The nested folder is not the canonical structure except for the source-of-truth DOCX path named by the owner. | The source-of-truth file/path conflict is unresolved. Do not move or rename. | Required before moving. |
| Nested consolidation prompts | `docs/10_agent_prompts/20_document_consolidation_agent.md`; `docs/10_agent_prompts/document_consolidation/PHASE_*.md` | Superseded after root control docs and final process instructions are approved. | They document the consolidation workflow and prior assumptions. | Required before moving. |

## Standing Rule

Every candidate in this plan must remain in place until owner approval is explicit and traceability from source to canonical replacement is complete.

