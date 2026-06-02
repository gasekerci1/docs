# Exact Archive Approval List

## 1. Purpose

This document identifies exact file/folder archive candidates for owner review.

- This document does not approve archive, move, delete, or rename operations.
- Archive/delete/move remains NO-GO until the owner explicitly approves the exact list.
- This document is for review and decision-making only.

## 2. Current Cleanup Status

- Documentation/control updates are allowed.
- Destructive cleanup is not authorised.
- Exact duplicates are the first proposed archive category.
- Near duplicates, superseded drafts, and old MVP/build/production files require separate later review.
- BecomingOS is the external product name; lifeOS is an internal/historical repository alias.
- The product remains pre-MVP with limited trusted private beta only.
- Public MVP, public launch, production readiness, and legal/privacy/security/accessibility compliance are not approved by this document.

## 3. Archive Categories

### 3.1 Exact checksum duplicates

Exact duplicate evidence comes from `00_repository_control/duplicate_file_map.md`, which states that exact duplicates are files with identical SHA-256 content hashes. Owner approval remains pending for every item below.

| ID | Original path | Proposed archive destination | Duplicate of / canonical path | Evidence type | Checksum status | Risk level | Owner approval status | Recommended action |
|---|---|---|---|---|---|---|---|---|
| EAL-ED-001 | `00_inbox/Wording guide creation.docx` | `99_archive/duplicates/00_inbox/Wording guide creation.docx` | `01-source-documents/originals/Wording guide creation.docx` | ED-001 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-002 | `00_inbox/Wording and Tone Guide.docx` | `99_archive/duplicates/00_inbox/Wording and Tone Guide.docx` | `01-source-documents/originals/Wording and Tone Guide.docx` | ED-002 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-003 | `00_inbox/Today Directive Model.docx` | `99_archive/duplicates/00_inbox/Today Directive Model.docx` | `01-source-documents/originals/Today Directive Model.docx` | ED-003 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-004 | `00_inbox/Research plan development.docx` | `99_archive/duplicates/00_inbox/Research plan development.docx` | `01-source-documents/originals/Research plan development.docx` | ED-004 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-005 | `00_inbox/Research educational onboarding.docx` | `99_archive/duplicates/00_inbox/Research educational onboarding.docx` | `01-source-documents/originals/Research educational onboarding.docx` | ED-005 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-006 | `00_inbox/Research Agent Output Summary.docx` | `99_archive/duplicates/00_inbox/Research Agent Output Summary.docx` | `01-source-documents/originals/Research Agent Output Summary.docx` | ED-006 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-007 | `00_inbox/Recommendation Decision Table.docx` | `99_archive/duplicates/00_inbox/Recommendation Decision Table.docx` | `01-source-documents/originals/Recommendation Decision Table.docx` | ED-007 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-008 | `00_inbox/Question system design.docx` | `99_archive/duplicates/00_inbox/Question system design.docx` | `01-source-documents/originals/Question system design.docx` | ED-008 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-009 | `00_inbox/My OS Memory Model.docx` | `99_archive/duplicates/00_inbox/My OS Memory Model.docx` | `01-source-documents/originals/My OS Memory Model.docx` | ED-009 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only; verify filename whitespace before any command. |
| EAL-ED-010 | `00_inbox/Motivation Model Research.docx` | `99_archive/duplicates/00_inbox/Motivation Model Research.docx` | `01-source-documents/originals/Motivation Model Research.docx` | ED-010 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-011 | `00_inbox/MVP Question Bank.docx` | `99_archive/duplicates/00_inbox/MVP Question Bank.docx` | `01-source-documents/originals/MVP Question Bank.docx` | ED-011 exact duplicate | Confirmed in duplicate map | High | Pending | Candidate only; MVP wording requires historical-evidence label review before archive. |
| EAL-ED-012 | `00_inbox/Gap Analysis.docx` | `99_archive/duplicates/00_inbox/Gap Analysis.docx` | `01-source-documents/originals/Gap Analysis.docx` | ED-012 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-013 | `00_inbox/Final Pre-Build Decision Memo.docx` | `99_archive/duplicates/00_inbox/Final Pre-Build Decision Memo.docx` | `01-source-documents/originals/Final Pre-Build Decision Memo.docx` | ED-013 exact duplicate | Confirmed in duplicate map | High | Pending | Candidate only; final/build wording requires historical-evidence label review before archive. |
| EAL-ED-014 | `00_inbox/Curriculum design task.docx` | `99_archive/duplicates/00_inbox/Curriculum design task.docx` | `01-source-documents/originals/Curriculum design task.docx` | ED-014 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-015 | `00_inbox/Curriculum Bible (Provisional).docx` | `99_archive/duplicates/00_inbox/Curriculum Bible (Provisional).docx` | `01-source-documents/originals/Curriculum Bible (Provisional).docx` | ED-015 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only. |
| EAL-ED-016 | `01_product/prototype_ux_specification.docx` | `99_archive/duplicates/01_product/prototype_ux_specification.docx` | `01_product/Prototype UX Specification.docx` | ED-031 exact duplicate | Confirmed in duplicate map | Medium | Pending | Candidate for exact duplicate archive review only after prototype evidence routing is confirmed. |
| EAL-ED-017 | `01_product/prd_v0.1_for_becomingos.docx` | `99_archive/duplicates/01_product/prd_v0.1_for_becomingos.docx` | `01_product/PRD v0.1 for BecomingOS.docx` | ED-034 exact duplicate | Confirmed in duplicate map | High | Pending | Candidate only; PRD/product-scope evidence requires traceability check before archive. |
| EAL-ED-018 | `05_privacy_legal_safety/security_threat_model.docx` | `99_archive/duplicates/05_privacy_legal_safety/security_threat_model.docx` | `05_privacy_legal_safety/Security threat model.docx` | ED-029 exact duplicate | Confirmed in duplicate map | High | Pending | Candidate only; privacy/security evidence requires owner review before archive. |
| EAL-ED-019 | `10_operations_testing_accessibility/testing_strategy.docx` | `99_archive/duplicates/10_operations_testing_accessibility/testing_strategy.docx` | `10_operations_testing_accessibility/Testing Strategy for MVP.docx` | ED-027 exact duplicate | Confirmed in duplicate map | High | Pending | Candidate only; MVP/stage wording requires historical-evidence label review before archive. |

### 3.2 Near duplicates / same-name duplicates

| ID | Candidate path | Possible canonical path | Difference risk | Required review | Owner approval status | Recommended action |
|---|---|---|---|---|---|---|
| EAL-ND-001 | `02-research/` | Future `03_research_validation/*` | High | Research claims, assumptions, and validation gaps must be mapped. | Pending | Do not archive yet. |
| EAL-ND-002 | `03-synthesis/` | Future `03_research_validation/evidence_and_assumption_register.md`; `00_repository_control/canonical_gap_check.md` | Medium | Accepted recommendations must be separated from validated evidence. | Pending | Do not archive yet. |
| EAL-ND-003 | `04-decisions/` | `00_repository_control/owner_decision_register.md`; future decision records | High | Decision provenance must be preserved and cross-referenced. | Pending | Do not archive yet. |
| EAL-ND-004 | `05-product-spec/` | Topic-specific root canonical docs | Critical | Mixed product, curriculum, AI, wording, and safety content must be mapped. | Pending | Do not archive yet. |
| EAL-ND-005 | `09_agent_prompts/` | Future root `10_agent_prompts/*` if needed | Medium | Prompt history and audit constraints must be reviewed. | Pending | Do not archive yet. |
| EAL-ND-006 | `docs/00_repository_control/` | Root `00_repository_control/*` | High | Nested control outputs must remain historical/control evidence unless promoted. | Pending | Do not archive yet. |
| EAL-ND-007 | `docs/10_agent_prompts/` | Future root `10_agent_prompts/*` if needed | Medium | Consolidation prompt workflow must remain traceable. | Pending | Do not archive yet. |

### 3.3 Superseded drafts

| ID | Candidate path | Proposed archive destination | Required canonical replacement | Traceability status | Owner approval status | Recommended action |
|---|---|---|---|---|---|---|
| EAL-SD-001 | `01_product/PRD v0.1 for BecomingOS.docx` | `99_archive/superseded/01_product/` | Root product requirements, product brief, private beta scope, and non-goals docs | Partial; product source of truth controls conflicts | Pending | Do not archive until canonical replacement and traceability are confirmed. |
| EAL-SD-002 | `01_product/Prototype UX Specification.docx` | `99_archive/superseded/01_product/` | Canonical prototype/private-beta scope docs | Partial | Pending | Do not archive until canonical replacement and traceability are confirmed. |
| EAL-SD-003 | `01_product/lifeos_brand_kit.md` | `99_archive/superseded/01_product/brand/` | Canonical naming and future brand/tone docs | Partial; lifeOS alias rule approved | Pending | Do not archive until canonical replacement and traceability are confirmed. |
| EAL-SD-004 | `01_product/brand_kit/` | `99_archive/superseded/01_product/brand_kit/` | Future `09_brand_experience/*` | Incomplete | Pending | Do not archive until canonical replacement and traceability are confirmed. |
| EAL-SD-005 | `04_ai_memory_and_data/*.docx` | `99_archive/superseded/04_ai_memory_and_data/` | `05_ai_memory_data/*` canonical AI/memory/data docs | Partial | Pending | Do not archive until canonical replacement and traceability are confirmed. |
| EAL-SD-006 | `05_privacy_legal_safety/*.docx` | `99_archive/superseded/05_privacy_legal_safety/` | `06_privacy_legal_safety/*` canonical privacy/legal/safety docs | Partial | Pending | Do not archive until canonical replacement and traceability are confirmed. |
| EAL-SD-007 | `06_architecture_and_api/*.docx` | `99_archive/superseded/06_architecture_and_api/` | Future `07_architecture_api/*` | Incomplete; conceptual only | Pending | Do not archive until canonical replacement and traceability are confirmed. |
| EAL-SD-008 | `10_operations_testing_accessibility/*.docx` | `99_archive/superseded/10_operations_testing_accessibility/` | Future/current `08_operations_testing_accessibility/*` | Partial | Pending | Do not archive until canonical replacement and traceability are confirmed. |

### 3.4 Old MVP/build/production/final/hardening files

| ID | Candidate path | Risk wording | Required label | Proposed archive destination | Owner approval status | Recommended action |
|---|---|---|---|---|---|---|
| EAL-OLD-001 | `PROJECT_STRUCTURE.md` | May imply active app/code repository scope. | Historical/external evidence only; not current build approval. | `99_archive/old_reviews/top_level/` | Pending | Mark as historical evidence first. Do not archive until separately approved. |
| EAL-OLD-002 | `MVP_ACCEPTANCE_CHECKLIST.md` | May imply MVP acceptance or readiness. | Historical evidence only; public MVP/build remains NO-GO. | `99_archive/old_reviews/top_level/` | Pending | Mark as historical evidence first. Do not archive until separately approved. |
| EAL-OLD-003 | `database_mvp_schema_notes.md` | May imply implementation/database approval. | Implementation-adjacent evidence only; no build or production approval. | `99_archive/old_reviews/top_level/` | Pending | Mark as historical evidence first. Do not archive until separately approved. |
| EAL-OLD-004 | `mvp_build_audit.md` | May imply MVP build readiness. | Historical evidence only; public MVP/build remains NO-GO. | `99_archive/old_reviews/top_level/` | Pending | Mark as historical evidence first. Do not archive until separately approved. |
| EAL-OLD-005 | `final_mvp_hardening_report.md` | May imply final hardening or production readiness. | Historical evidence only; production remains NO-GO. | `99_archive/old_reviews/top_level/` | Pending | Mark as historical evidence first. Do not archive until separately approved. |
| EAL-OLD-006 | `08_final_outputs/*.docx` | Final/readiness wording may imply approval. | Historical review evidence only; no public MVP/build or production approval. | `99_archive/old_reviews/08_final_outputs/` | Pending | Mark as historical evidence first. Do not archive until separately approved. |
| EAL-OLD-007 | `07_analysis/remaining_readiness_blockers.md` | Blocker evidence is required to support NO-GO status. | Historical blocker evidence; preserve until mapped. | `99_archive/old_reviews/07_analysis/` | Pending | Mark as historical evidence first. Do not archive until separately approved. |

## 4. First Recommended Archive Batch

This first-batch proposal contains only lower-risk raw `00_inbox/` exact checksum duplicates where a source-original canonical copy remains. This is a proposal only. No archive command should be run without owner-approved IDs.

| Source path | Destination path | Why safe | What canonical copy remains | What evidence confirms duplication | Owner approval checkbox |
|---|---|---|---|---|---|
| `00_inbox/Wording guide creation.docx` | `99_archive/duplicates/00_inbox/Wording guide creation.docx` | Raw inbox duplicate; source-original copy remains. | `01-source-documents/originals/Wording guide creation.docx` | ED-001 exact SHA-256 duplicate group in duplicate map. | [ ] Approve EAL-ED-001 |
| `00_inbox/Wording and Tone Guide.docx` | `99_archive/duplicates/00_inbox/Wording and Tone Guide.docx` | Raw inbox duplicate; source-original copy remains. | `01-source-documents/originals/Wording and Tone Guide.docx` | ED-002 exact SHA-256 duplicate group in duplicate map. | [ ] Approve EAL-ED-002 |
| `00_inbox/Research plan development.docx` | `99_archive/duplicates/00_inbox/Research plan development.docx` | Raw inbox duplicate; source-original copy remains. | `01-source-documents/originals/Research plan development.docx` | ED-004 exact SHA-256 duplicate group in duplicate map. | [ ] Approve EAL-ED-004 |
| `00_inbox/Research educational onboarding.docx` | `99_archive/duplicates/00_inbox/Research educational onboarding.docx` | Raw inbox duplicate; source-original copy remains. | `01-source-documents/originals/Research educational onboarding.docx` | ED-005 exact SHA-256 duplicate group in duplicate map. | [ ] Approve EAL-ED-005 |
| `00_inbox/Research Agent Output Summary.docx` | `99_archive/duplicates/00_inbox/Research Agent Output Summary.docx` | Raw inbox duplicate; source-original copy remains. | `01-source-documents/originals/Research Agent Output Summary.docx` | ED-006 exact SHA-256 duplicate group in duplicate map. | [ ] Approve EAL-ED-006 |

## 5. Files Not To Touch

- `01-source-documents/originals/`
- Active canonical root documentation.
- `00_repository_control/source_of_truth_register.md`
- `00_repository_control/current_status_dashboard.md`
- `00_repository_control/owner_approval_decision_record.md`
- Privacy/legal/safety docs without traceability.
- AI/provider docs without approval.
- Near duplicates.
- Source DOCX files unless explicitly approved later.

## 6. Owner Approval Block

```text
APPROVED FOR ARCHIVE:
- [ ] None yet
- [ ] First exact duplicate batch only
- [ ] Specific IDs:

REJECTED:
- [ ] Specific IDs:

NEEDS MORE REVIEW:
- [ ] Specific IDs:

OWNER NOTES:
```

## 7. Required Next Step

The next step is owner review of this exact archive approval list. No archive command should be run until the owner replies with approved IDs.

## 8. Recommended Commit Message

```text
docs: prepare exact archive approval list
```
