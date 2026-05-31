# Archive Candidate Plan

Current status: cleanup-preparation plan only.

No archive action is approved. Do not archive, move, delete, rename, or clean up files until canonical documents and traceability are approved by the owner.

Product source of truth: `docs/02_product/becomingos_product_specification.docx`.

## Archive Blockers

Archive action is blocked until:

- Canonical root documents are complete enough to replace older source groups.
- Source traceability is approved.
- Conflict resolutions are approved.
- The owner approves the exact archive list and destination.
- The evidence baseline is approved and preserved.

## Candidate List

| Category | Current path | Proposed future archive destination | Reason | Risk level | Owner approval required | Why it must not be archived yet |
|---|---|---|---|---|---|---|
| Exact duplicate | `00_inbox/*.docx` duplicated in `01-source-documents/originals/` and categorized folders | `99_archive/duplicates/00_inbox/` | Raw imports often duplicate preserved originals and categorized copies. | High | Yes | `00_inbox/` preserves import provenance; traceability and exact duplicate approval are not complete. |
| Exact duplicate | `01_product/prototype_ux_specification.docx` | `99_archive/duplicates/01_product/` | Duplicate/normalized copy of prototype UX source. | Medium | Yes | Prototype evidence must remain available until prototype/private-beta boundaries are fully mapped. |
| Exact duplicate | `01_product/prd_v0.1_for_becomingos.docx` | `99_archive/duplicates/01_product/` | Duplicate/normalized copy of PRD source. | High | Yes | PRD contains product-scope evidence and conflicts that must remain traceable. |
| Exact duplicate | `05_privacy_legal_safety/security_threat_model.docx` | `99_archive/duplicates/05_privacy_legal_safety/` | Duplicate/normalized copy of security threat model. | High | Yes | Security evidence is needed before beta governance and legal/safety review are complete. |
| Exact duplicate | `10_operations_testing_accessibility/testing_strategy.docx` | `99_archive/duplicates/10_operations_testing_accessibility/` | Duplicate/normalized copy of testing strategy. | High | Yes | Testing strategy includes future-stage assumptions that must be reconciled first. |
| Near duplicate | `02-research/` | `99_archive/duplicates/02-research/` | Overlaps `02_research_and_validation/` and source originals. | High | Yes | Research evidence and pending status must be mapped into canonical research docs first. |
| Near duplicate | `03-synthesis/` | `99_archive/duplicates/03-synthesis/` | Overlaps accepted recommendation and gap/review evidence elsewhere. | Medium | Yes | Accepted recommendations must be separated from validated evidence first. |
| Near duplicate | `04-decisions/` | `99_archive/duplicates/04-decisions/` | Overlaps `07_analysis/*decision*` and source originals. | High | Yes | Decision provenance must be captured in owner decision records first. |
| Near duplicate | `05-product-spec/` | `99_archive/duplicates/05-product-spec/` | Mixed duplicate folder spanning product, AI, curriculum, wording, and safety. | Critical | Yes | Broad folder may contain cross-topic traceability; canonical topic docs are incomplete. |
| Near duplicate | `09_agent_prompts/` | `99_archive/superseded/09_agent_prompts/` | Overlaps nested prompt/consolidation structure. | Medium | Yes | Prompt history may preserve constraints and audit context. |
| Superseded later | `01_product/PRD v0.1 for BecomingOS.docx` | `99_archive/superseded/01_product/` | Older product requirements evidence after canonical product docs are complete. | High | Yes | Still needed to trace product requirements and conflicts. |
| Superseded later | `01_product/Prototype UX Specification.docx` | `99_archive/superseded/01_product/` | Older prototype evidence after canonical prototype scope exists. | High | Yes | Prototype/private-beta distinction is not fully documented. |
| Superseded later | `01_product/lifeos_brand_kit.md` | `99_archive/superseded/01_product/brand/` | Draft brand doc conflicts with BecomingOS external name. | High | Yes | Brand hierarchy and tone docs are incomplete. |
| Superseded later | `01_product/brand_kit/` | `99_archive/superseded/01_product/brand_kit/` | Draft brand folder after canonical brand/experience docs exist. | High | Yes | Contains brand evidence and naming conflicts. |
| Superseded later | `04_ai_memory_and_data/*.docx` | `99_archive/superseded/04_ai_memory_and_data/` | AI/memory/data evidence after canonical AI memory/data docs exist. | Critical | Yes | Provider retention, embeddings, deletion, storage, and retrieval details are incomplete. |
| Superseded later | `05_privacy_legal_safety/*.docx` | `99_archive/superseded/05_privacy_legal_safety/` | Privacy/legal/safety evidence after canonical policy docs exist. | Critical | Yes | Legal review, beta consent details, security, crisis, and safety logging are incomplete. |
| Superseded later | `06_architecture_and_api/*.docx` | `99_archive/superseded/06_architecture_and_api/` | Conceptual architecture/API/NFR evidence after canonical planning-only docs exist. | High | Yes | Could be mistaken for implementation approval; root architecture docs do not exist yet. |
| Superseded later | `10_operations_testing_accessibility/*.docx` | `99_archive/superseded/10_operations_testing_accessibility/` | Operations/testing/accessibility evidence after canonical ops/testing docs exist. | High | Yes | Beta/public/production readiness gates are not complete. |
| Old review/evidence | `07_analysis/p0_reviews/*.md` | `99_archive/old_reviews/07_analysis/p0_reviews/` | Historical specialist review evidence after gaps and decisions are captured. | High | Yes | Reviews contain blocker rationale and cannot be hidden before gate docs exist. |
| Old review/evidence | `07_analysis/*decision_request*.md` | `99_archive/old_reviews/07_analysis/decision_requests/` | Superseded by approved owner decision records later. | High | Yes | Decision requests may explain unresolved choices. |
| Old review/evidence | `07_analysis/*decision_record*.md` | `99_archive/old_reviews/07_analysis/decision_records/` | Superseded only after decisions are captured in canonical root records. | High | Yes | Decision provenance must remain traceable. |
| Old review/evidence | `07_analysis/remaining_readiness_blockers.md` | `99_archive/old_reviews/07_analysis/` | Historical blocker list after release readiness docs exist. | Critical | Yes | Current no-build/no-production posture depends on blocker evidence. |
| Old review/evidence | `08_final_outputs/*.docx` | `99_archive/old_reviews/08_final_outputs/` | Final-named readiness evidence after root readiness docs exist. | Critical | Yes | Names can mislead, but content may prove readiness is not approved. |
| Nested docs candidate | `docs/00_repository_control/file_inventory.md` | `99_archive/old_reviews/docs/00_repository_control/` | Earlier inventory evidence after root control docs are complete. | Medium | Yes | Used as evidence for traceability and cleanup planning. |
| Nested docs candidate | `docs/00_repository_control/duplicate_file_map.md` | `99_archive/old_reviews/docs/00_repository_control/` | Earlier duplicate evidence after archive list is approved. | High | Yes | Needed to justify exact and near duplicate candidates. |
| Nested docs candidate | `docs/00_repository_control/contradiction_register.md` | `99_archive/old_reviews/docs/00_repository_control/` | Earlier contradiction evidence after conflict resolutions are captured. | High | Yes | Needed to trace conflicts to source DOCX decisions. |
| Nested docs candidate | `docs/00_repository_control/gap_register.md` | `99_archive/old_reviews/docs/00_repository_control/` | Earlier gap evidence after root gap check is complete. | High | Yes | Needed to confirm gaps were not silently removed. |
| Nested docs candidate | `docs/00_repository_control/canonical_document_map.md` | `99_archive/old_reviews/docs/00_repository_control/` | Earlier nested-structure map after root reconciliation is approved. | Medium | Yes | Shows prior nested-docs proposal and source mapping. |
| Nested docs candidate | `docs/00_repository_control/archive_plan.md` | `99_archive/old_reviews/docs/00_repository_control/` | Earlier archive plan after root archive plan is approved. | High | Yes | Contains archive rationale and risks. |
| Nested docs candidate | `docs/00_repository_control/approval_packet.md` | `99_archive/old_reviews/docs/00_repository_control/` | Earlier approval packet after owner decisions are captured. | High | Yes | Contains DEC context and prior owner review framing. |
| Nested docs candidate | `docs/00_repository_control/proposed_final_document_set.md` | `99_archive/old_reviews/docs/00_repository_control/` | Earlier proposed nested structure after root-vs-nested decision is captured. | Medium | Yes | Needed to explain structure conflict. |
| Nested docs candidate | `docs/10_agent_prompts/` | `99_archive/superseded/docs/10_agent_prompts/` | Earlier consolidation prompts after root prompt/control docs exist. | Medium | Yes | Prompt workflow remains evidence of how audit files were produced. |
| App/MVP audit candidate | `PROJECT_STRUCTURE.md` | `99_archive/old_reviews/top_level/` | Conflicts with docs-only repository if read as active app structure. | Critical | Yes | Must remain evidence until app/MVP references are classified. |
| App/MVP audit candidate | `MVP_ACCEPTANCE_CHECKLIST.md` | `99_archive/old_reviews/top_level/` | Could be misread as MVP readiness approval. | Critical | Yes | Missing MVP evidence gates remain unresolved. |
| App/MVP audit candidate | `database_mvp_schema_notes.md` | `99_archive/old_reviews/top_level/` | Database notes are implementation-adjacent evidence only. | Critical | Yes | Do not remove until database/app references are traced and disclaimed. |
| App/MVP audit candidate | `mvp_build_audit.md` | `99_archive/old_reviews/top_level/` | Build audit evidence could imply a build exists or is approved. | Critical | Yes | Must be preserved as evidence, not approval. |
| App/MVP audit candidate | `final_mvp_hardening_report.md` | `99_archive/old_reviews/top_level/` | Hardening report could be misread as production readiness. | Critical | Yes | Production readiness is not approved; report must remain traceable. |
| App/MVP audit candidate | `PRODUCT_EXPERIENCE_RECOMMENDATIONS.md` | `99_archive/superseded/top_level/` | Product experience guidance may contain app/MVP assumptions. | High | Yes | Product scope and brand docs are incomplete. |
| App/MVP audit candidate | `CODEX_PRODUCT_EXPERIENCE_PROMPT_PLAN.md` | `99_archive/superseded/top_level/` | Prompt plan may include implementation-adjacent guidance. | Medium | Yes | Prompt constraints and source context must remain visible. |

