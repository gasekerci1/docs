# Archive Plan

Phase 3 proposed archive plan for `gasekerci1/docs`.

This is a proposed plan only. Do not move, delete, or archive files until the owner approves an archive packet. All archive actions require traceability through `docs/00_repository_control/canonical_document_map.md`.

## Proposed Archive Destinations

```text
docs/99_archive/
  README.md
  originals/
  duplicates/
  superseded/
  old_reviews/
```

## Archive Map

| File/folder to archive later | Destination under `docs/99_archive/` | Reason | Risk | Owner approval required |
|---|---|---|---|---|
| `00_inbox/*.docx` exact duplicates | `docs/99_archive/duplicates/00_inbox/` | Raw import duplicates exist in source originals or categorized folders. | Could lose import provenance if archived before source baseline is approved. | Yes |
| `00_inbox/Becoming_categorized_git_docs/README.md` | `docs/99_archive/old_reviews/00_inbox/` | Import note only; no project docs copied from source folder. | Low, but may be useful provenance. | Yes |
| `01-source-documents/originals/` | `docs/99_archive/originals/01-source-documents/originals/` | Optional future move if owner wants all originals under nested `docs/99_archive/`. | High: this is proposed evidence baseline; moving too early could break traceability. | Yes |
| `02-research/` | `docs/99_archive/duplicates/02-research/` | Hyphenated folder duplicates `02_research_and_validation/` and source originals. | May contain source placement context; archive only after research canonical docs exist. | Yes |
| `03-synthesis/` | `docs/99_archive/duplicates/03-synthesis/` | Duplicates accepted recommendations, gap analysis, and research summary elsewhere. | May contain synthesis provenance; archive only after evidence register exists. | Yes |
| `04-decisions/` | `docs/99_archive/duplicates/04-decisions/` | Decision docs duplicate source originals and `07_analysis/`. | Could obscure historical decision flow. | Yes |
| `05-product-spec/` | `docs/99_archive/duplicates/05-product-spec/` | Mixed duplicate folder overlapping product, curriculum, AI memory, and safety folders. | High: broad folder may contain topic context; archive after all relevant canonical docs are created. | Yes |
| `01_product/PRD v0.1 for BecomingOS.docx` and `01_product/prd_v0.1_for_becomingos.docx` | `docs/99_archive/superseded/01_product/` | Duplicate PRD copies after `docs/02_product/product_requirements.md` exists. | Do not archive before owner-approved product requirements. | Yes |
| `01_product/Prototype UX Specification.docx` and `01_product/prototype_ux_specification.docx` | `docs/99_archive/superseded/01_product/` | Duplicate prototype docs after `prototype_scope.md` exists. | Prototype validation traceability needed. | Yes |
| `01_product/lifeos_brand_kit.md` and `01_product/brand_kit/` | `docs/99_archive/superseded/01_product/brand/` | Superseded after approved `docs/09_brand_experience/brand_kit.md`. | High: current brand kit claims single source of truth; do not archive before naming decision. | Yes |
| `01_product/Wording and Tone Guide.docx`, `01_product/Wording guide creation.docx`, `01_product/Defining the language system for BecomingOS.docx` | `docs/99_archive/superseded/01_product/wording/` | Superseded after tone/language guide exists. | Could lose copy guidance before legal/safety review. | Yes |
| `02_research_and_validation/*.docx` | `docs/99_archive/superseded/02_research_and_validation/` | Superseded after research summary, user research plan, and evidence register exist. | High: research plans and evidence status must remain traceable. | Yes |
| `02_research_and_validation/market_validation_report.md` | `docs/99_archive/superseded/02_research_and_validation/` | Superseded after `market_validation.md`. | Must preserve "not validated" status. | Yes |
| `03_curriculum_and_questions/*.docx` | `docs/99_archive/superseded/03_curriculum_and_questions/` | Superseded after curriculum model, onboarding modules, question bank, and behaviour models exist. | High: question safety and module scope unresolved. | Yes |
| `04_ai_memory_and_data/*.docx` | `docs/99_archive/superseded/04_ai_memory_and_data/` | Superseded after AI policy, memory model, data model, harness, retrieval/embedding rules exist. | Critical: memory lifecycle, provider retention, embeddings unresolved. | Yes |
| `05_privacy_legal_safety/*.docx` | `docs/99_archive/superseded/05_privacy_legal_safety/` | Superseded after safety, crisis, privacy, legal, and security docs exist. | Critical: legal/safety/privacy traceability. | Yes |
| `06_architecture_and_api/*.docx` | `docs/99_archive/superseded/06_architecture_and_api/` | Superseded after NFR, conceptual architecture, API contracts, and architecture decision record exist. | High: must not imply build approval. | Yes |
| `07_analysis/p0_reviews/*.md` | `docs/99_archive/old_reviews/07_analysis/p0_reviews/` | Historical reviews after decisions are captured in owner decision register. | Could lose review evidence if archived before decision register is complete. | Yes |
| `07_analysis/*decision_request*.md` | `docs/99_archive/old_reviews/07_analysis/decision_requests/` | Superseded by final owner decision register after approvals. | Requests may explain unresolved choices. | Yes |
| `07_analysis/*decision_record*.md` | `docs/99_archive/old_reviews/07_analysis/decision_records/` | Superseded only after decisions are copied into owner decision register. | High: these are evidence of decisions. | Yes |
| `07_analysis/remaining_readiness_blockers.md` | `docs/99_archive/old_reviews/07_analysis/` | Superseded after release readiness checklist and unresolved decisions are created. | Must preserve blocked status. | Yes |
| `07_analysis/p0_owner_review_packet.md` and `07_analysis/p0_review_rollup_and_action_plan.md` | `docs/99_archive/old_reviews/07_analysis/` | Superseded after `approval_packet.md`. | High: owner-review evidence. | Yes |
| `07_analysis/*.docx` | `docs/99_archive/old_reviews/07_analysis/docx/` | Historical work plans and review inputs after owner decisions are captured. | Could lose orchestration context. | Yes |
| `08_final_outputs/*.docx` | `docs/99_archive/old_reviews/08_final_outputs/` | "Final" outputs are not final canonical docs; archive after readiness docs are rewritten. | High: names may mislead but contain important readiness evidence. | Yes |
| `09_agent_prompts/*.md` | `docs/99_archive/superseded/09_agent_prompts/` | Superseded after final prompts in `docs/10_agent_prompts/`. | Prompt history may be needed for audit. | Yes |
| `10_operations_testing_accessibility/*.docx` | `docs/99_archive/superseded/10_operations_testing_accessibility/` | Superseded after operations/testing/accessibility canonical docs exist. | High: future-stage claims must remain traceable. | Yes |
| `PRODUCT_EXPERIENCE_RECOMMENDATIONS.md` | `docs/99_archive/superseded/top_level/` | Superseded after brand/product experience doc and app-scope decision. | Critical if personal-alpha app scope remains unresolved. | Yes |
| `CODEX_PRODUCT_EXPERIENCE_PROMPT_PLAN.md` | `docs/99_archive/superseded/top_level/` | Superseded by agent prompts/product experience docs if owner approves. | Contains planning instructions that may mention app work. | Yes |
| `MVP_ACCEPTANCE_CHECKLIST.md` | `docs/99_archive/superseded/top_level/` | Superseded after release readiness checklist if app scope is out of scope. | Critical if it documents a real personal-alpha app. | Yes |
| `PROJECT_STRUCTURE.md` | `docs/99_archive/superseded/top_level/` | Superseded after repository structure and app-scope decision. | Critical: conflicts with docs-only status. | Yes |
| `REPOSITORY_AUDIT_2026-05-24.md` | `docs/99_archive/old_reviews/top_level/` | Historical audit after repository-control docs supersede it. | May contain app/repo context. | Yes |
| `database_mvp_schema_notes.md` | `docs/99_archive/superseded/top_level/` | Superseded or excluded after app/code scope decision. | Critical: database references may be out of docs-only scope. | Yes |
| `mvp_build_audit.md` | `docs/99_archive/old_reviews/top_level/` | Historical audit after app-scope decision. | Critical: may be evidence of app, not planning docs. | Yes |
| `final_mvp_hardening_report.md` | `docs/99_archive/old_reviews/top_level/` | Historical hardening report after app-scope decision. | Critical: could be misread as readiness approval. | Yes |
| `scripts/run_document_consolidation_phases.sh` and `scripts/run_phase_5_after_approval.sh` | `docs/99_archive/superseded/scripts/` or retain in `scripts/` | Archive only if no longer needed after consolidation process. | Medium: automation may still be useful. | Yes |
| `docs/10_agent_prompts/document_consolidation/PHASE_*.md` | Retain or `docs/99_archive/superseded/docs_10_agent_prompts/` | Keep while phases are active; archive only after final process completes. | Medium: these define current consolidation process. | Yes |

## Archive Sequence

1. Approve `approval_packet.md`.
2. Approve the canonical document map.
3. Create final canonical documents after approval.
4. Verify every source used is listed in the canonical map.
5. Archive exact duplicates first.
6. Archive superseded categorized folders second.
7. Archive old reviews only after decisions are captured.
8. Leave source originals in place unless owner explicitly approves moving them.

## Risks

- Archiving before final rewrite could hide unresolved contradictions.
- Moving originals before approving the evidence baseline could break traceability.
- Archiving "final output" documents too early could lose readiness evidence.
- Archiving app/MVP audit files before deciding app scope could remove important context.
- Agent prompts should remain available until the consolidation workflow is complete.

## Owner Decisions Needed

- Approve whether originals stay in `01-source-documents/originals/` or move to `docs/99_archive/originals/`.
- Approve exact duplicate archive list.
- Approve superseded folder archive list after canonical rewrite.
- Approve whether top-level app/MVP audit files are out of scope, historical evidence, or active context.
- Approve whether prompt files should be consolidated or preserved as separate historical prompts.
