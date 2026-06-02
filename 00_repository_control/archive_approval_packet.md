# Archive Approval Packet

## Executive summary

This packet prepares an owner review for future repository cleanup. It does not approve any archive, move, delete, rename, or source-file removal.

Current archive status: **ARCHIVE NO-GO except the completed owner-approved first exact duplicate batch**.

Completed approved archive action:

- EAL-ED-001 `00_inbox/Wording guide creation.docx`
- EAL-ED-002 `00_inbox/Wording and Tone Guide.docx`
- EAL-ED-004 `00_inbox/Research plan development.docx`
- EAL-ED-005 `00_inbox/Research educational onboarding.docx`
- EAL-ED-006 `00_inbox/Research Agent Output Summary.docx`

These five checksum-confirmed raw inbox duplicates were moved to `99_archive/duplicates/00_inbox/` with owner approval. Their canonical source-original copies remain in `01-source-documents/originals/`.

Archive/delete/move remains NO-GO for all other files, including EAL-ED-003, near duplicates, superseded drafts, old MVP/build/production/final/hardening/readiness files, source documents, files missing checksum/canonical evidence, public MVP/build evidence, production evidence, public launch materials, commercial release materials, and compliance-claim materials.

Old MVP/build/production/final/hardening/readiness files are historical evidence only as tracked in `00_repository_control/historical_readiness_evidence_register.md`. They do not approve public MVP/build, public launch, production readiness, commercial release, legal compliance, privacy compliance, security readiness, accessibility compliance, or WCAG compliance.

The repository root is the canonical documentation structure. Nested `docs/` files remain evidence/control outputs unless an owner later promotes or archives them through a traceability-backed decision.

The current product source of truth remains `docs/02_product/becomingos_product_specification.docx`. Older documents are supporting evidence unless they conflict with that source-of-truth file.

## Why archive cleanup is proposed

Archive cleanup is proposed because existing repository evidence identifies:

- Exact duplicate files across raw inbox, original source, and categorized folders.
- Near duplicate research, synthesis, and decision documents.
- Superseded product, AI/memory, privacy/legal/safety, architecture/API, operations, and review drafts.
- Nested `docs/` control outputs that conflict with the current owner-approved root-level canonical structure.
- App/MVP/readiness audit files that are evidence only and must not be confused with build, launch, or production approval.

Cleanup may eventually reduce confusion, make canonical documents easier to find, and prevent future agents from treating old drafts or audit files as approved scope.

## Why archive cleanup is not approved

Archive cleanup is currently **not approved** because:

- The source traceability map has not been owner-approved.
- Canonical replacements are still incomplete in several areas.
- Exact archive destinations and file lists have not been owner-signed.
- Source evidence baseline approval is still pending.
- High-risk conflicts remain, including the documented source-of-truth path/name mismatch.
- No rollback plan has been approved.
- No branch/PR cleanup workflow has been approved.

No additional file should be moved, deleted, renamed, or archived until the owner signs an exact cleanup list.

## Evidence reviewed

Evidence sources:

- `README.md`
- `00_repository_control/source_of_truth_register.md`
- `00_repository_control/master_governance_index.md`
- `00_repository_control/current_status_dashboard.md`
- `00_repository_control/next_actions_register.md`
- `00_repository_control/source_traceability_map.md`
- `00_repository_control/historical_readiness_evidence_register.md`
- `00_repository_control/archive_candidate_plan.md`
- `00_repository_control/root_vs_nested_docs_reconciliation.md`
- `docs/00_repository_control/file_inventory.md`
- `docs/00_repository_control/duplicate_file_map.md`
- `docs/00_repository_control/archive_plan.md`
- `docs/00_repository_control/canonical_document_map.md`

## Duplicate and archive evidence summary

| Category | Evidence summary | Current handling |
| --- | --- | --- |
| Exact duplicates | Inventory and duplicate map identify repeated `.docx` files across `00_inbox/`, `01-source-documents/originals/`, and categorized folders. | Retain for now. Archive only after owner signs exact list. |
| Near duplicates | Research, synthesis, decisions, prompts, product, and review folders contain overlapping versions and topic duplicates. | Retain as evidence until canonical traceability is approved. |
| Superseded drafts | Older product, AI/memory, privacy/legal/safety, architecture/API, operations, testing, and brand drafts are superseded by root canonical planning docs where conflicts exist. | Retain as source evidence. Do not silently remove information. |
| Nested docs candidates | `docs/00_repository_control/` and `docs/10_agent_prompts/` contain earlier audit/control outputs and prompts. | Evidence only. Do not use as final source-of-truth structure. |
| App/MVP audit candidates | Top-level MVP, audit, database, product experience, and hardening reports are historical evidence only as tracked in `00_repository_control/historical_readiness_evidence_register.md`; they do not approve public MVP/build, public launch, production readiness, commercial release, legal compliance, privacy compliance, security readiness, accessibility compliance, or WCAG compliance. | Retain until owner decides archive or retention. |
| Old review/evidence candidates | P0 reviews, readiness blockers, final outputs, and decision documents support historical traceability. | Retain until owner-approved canonical replacements and traceability exist. |

## Proposed cleanup principles

- Preserve source originals unless the owner explicitly approves otherwise.
- Archive raw duplicates before higher-risk categorized or original source files.
- Keep root-level canonical documents as the active documentation structure.
- Treat nested `docs/` files as evidence/control outputs unless owner-approved for promotion.
- Preserve traceability from every archived item to its canonical replacement or evidence role.
- Do not archive unresolved or high-risk evidence.

## Owner decision sections

### Preserve originals

Scope: `01-source-documents/originals/` and source evidence baseline documents.

Recommendation: Preserve. Do not archive unless owner explicitly approves a source-evidence baseline and destination.

Decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Risk: Critical. Moving or hiding originals could break source traceability.

Notes:

Date:

### Archive raw inbox duplicates

Scope: exact duplicate files in `00_inbox/` that also exist in source originals or categorized folders.

Recommendation: Candidate for first cleanup wave after exact duplicate list is signed.

Decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Risk: Medium. Lower risk if checksums and canonical evidence paths are verified first.

Notes:

Date:

### Archive near duplicate research/synthesis/decision folders

Scope: `02-research/`, `03-synthesis/`, `04-decisions/`, `02_research_and_validation/`, and related duplicate research/decision groups.

Recommendation: Do not archive until research claims and owner decisions are fully captured in canonical root files.

Decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Risk: High. Near duplicates may contain unique evidence or assumptions.

Notes:

Date:

### Archive superseded product docs

Scope: older product PRDs, UX specs, brand drafts, wording docs, and product-spec folders.

Recommendation: Do not archive until product scope, naming, MVP gates, and non-goals are owner-approved.

Decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Risk: High. Product drafts may contain scope history and conflict evidence.

Notes:

Date:

### Archive superseded AI/memory docs

Scope: `04_ai_memory_and_data/` and duplicate AI/memory drafts.

Recommendation: Do not archive until AI memory governance, memory model, retrieval rules, and provider approvals are owner-reviewed.

Decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Risk: High. AI/memory docs affect consent, deletion, embedding, and safety traceability.

Notes:

Date:

### Archive superseded privacy/legal/safety docs

Scope: `05_privacy_legal_safety/` and duplicate safety/privacy/legal drafts.

Recommendation: Do not archive until privacy/legal/safety gates and consent documents are owner-reviewed.

Decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Risk: Critical. These documents contain sensitive boundary, consent, retention, and legal-claims evidence.

Notes:

Date:

### Archive superseded architecture/API docs

Scope: `06_architecture_and_api/` and duplicate architecture/API drafts.

Recommendation: Do not archive until conceptual architecture, NFRs, and build gate documents are owner-reviewed.

Decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Risk: Medium. Architecture documents are conceptual only but may contain dependency and risk evidence.

Notes:

Date:

### Archive old reviews/readiness reports

Scope: `07_analysis/`, `08_final_outputs/`, P0 reviews, readiness blockers, final reports, and hardening reports.

Recommendation: Do not archive until all findings are mapped to canonical blockers, gates, or evidence registers.

Decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Risk: High. Review files may document unresolved blockers and non-approval status.

Notes:

Date:

### Archive or retain nested docs/ control files

Scope: `docs/00_repository_control/` and related nested audit/control outputs.

Recommendation: Retain for now as evidence. Do not treat nested `docs/` as canonical.

Decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Risk: High. Earlier nested canonical proposals conflict with current root-canonical owner direction.

Notes:

Date:

### Archive or retain prompt files

Scope: `09_agent_prompts/` and `docs/10_agent_prompts/`.

Recommendation: Retain until prompt provenance, scope, and duplication are reviewed.

Decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Risk: Medium. Prompt files may preserve agent instruction history and source rationale.

Notes:

Date:

### Archive or retain app/MVP audit files

Scope: top-level app/MVP/build/readiness audit files, including MVP checklists, database notes, hardening reports, and product experience recommendations.

Recommendation: Retain as evidence only until owner decides whether they are historical audit records or archive candidates.

Decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Risk: High. These files must not be confused with public MVP/build, production, or launch approval.

Notes:

Date:

## Final owner decision

Default recommendation: **NO-GO until owner signs an exact archive list**.

Final archive decision:

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Conditions:

Owner notes:

Date:

Owner:
