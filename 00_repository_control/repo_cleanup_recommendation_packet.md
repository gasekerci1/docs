# Repo Cleanup Recommendation Packet

Current status: recommendation packet only. This document does not approve archive, deletion, move, rename, source DOCX modification, public MVP/build, public launch, production readiness, security readiness, legal compliance, privacy compliance, WCAG compliance, or broad AI/data processing.

Product naming and stage assumptions used in this packet:

- External product name: BecomingOS.
- Internal/historical repository alias: lifeOS.
- Current stage: pre-MVP with limited trusted private beta only.
- Root documentation folders are canonical.
- Nested `docs/` folders are evidence/control outputs unless later promoted.
- Old MVP/build/production/final/hardening wording is historical evidence only unless separately approved.
- OpenAI/private AI use is approved only for narrow private beta text use. This packet does not imply broad approval for file, image, audio, video, vector, wearable, or passive monitoring data.
- Analytics must not collect sensitive free text or crisis text.
- Crisis/safety logs must remain minimal, segregated, access-controlled, retention-limited, and excluded from memory, embeddings, analytics, and future AI outputs.

Sources reviewed:

- `00_repository_control/current_status_dashboard.md`
- `00_repository_control/archive_approval_packet.md`
- `00_repository_control/archive_candidate_plan.md`
- `00_repository_control/duplicate_file_map.md`
- `00_repository_control/contradiction_register.md`
- `00_repository_control/source_of_truth_register.md`
- `00_repository_control/source_traceability_map.md`
- `README.md`

## 1. Current Decision Status

- Archive/delete/move status is **NO-GO** according to `00_repository_control/current_status_dashboard.md`.
- Limited private beta approval does not equal archive approval.
- No destructive cleanup is authorised by this document.
- The private beta approval is limited to trusted participants and does not approve public MVP/build, public launch, production readiness, legal compliance, privacy compliance, security readiness, WCAG compliance, or broad AI/data processing.
- `02_product/becomingos_product_specification.docx` remains the highest-priority product source of truth. Do not move, rename, delete, archive, or modify source DOCX files through this cleanup packet.

## 2. Recommended Cleanup Principles

- Preserve source evidence, especially `01-source-documents/originals/`.
- Prefer archive over delete.
- Confirm exact duplicates by checksum before archive.
- Keep the canonical root documentation structure.
- Treat nested `docs/` files as historical/control evidence unless owner-approved for promotion.
- Label old MVP/build/production/final/hardening language as historical evidence.
- Do not imply production, public MVP, legal, privacy, security, or accessibility approval.
- Preserve traceability from each future archived item to its canonical replacement or evidence role.
- Archive raw duplicates before higher-risk categorized or source-original files.
- Do not archive unresolved, high-risk, or compliance-relevant evidence until canonical replacements and owner approvals exist.
- Treat readiness reports, P0 reviews, hardening reports, and final-output style files as evidence only, not approval.
- Keep crisis/safety data out of memory, embeddings, analytics, and future AI outputs.
- Keep analytics limited to approved, privacy-safe classifications and counts; do not collect sensitive free text or crisis text.

## 3. Archive Candidate Review Table

| Candidate | Current risk | Proposed destination | Candidate type: exact duplicate / near duplicate / superseded / old review / evidence | Canonical replacement required? | Owner approval required? | Recommended action |
|---|---|---|---|---|---|---|
| `00_inbox/*.docx` duplicated in `01-source-documents/originals/` and categorized folders | High | `99_archive/duplicates/00_inbox/` | Exact duplicate | Yes, checksum evidence and source traceability required | Yes | Retain for now. First cleanup wave only after checksum confirmation and exact owner-signed list. |
| `01_product/prototype_ux_specification.docx` | Medium | `99_archive/duplicates/01_product/` | Exact duplicate | Yes | Yes | Retain until prototype/private-beta boundaries are fully mapped. |
| `01_product/prd_v0.1_for_becomingos.docx` | High | `99_archive/duplicates/01_product/` | Exact duplicate | Yes | Yes | Retain until PRD conflicts and product-scope evidence are traceable. |
| `05_privacy_legal_safety/security_threat_model.docx` | High | `99_archive/duplicates/05_privacy_legal_safety/` | Exact duplicate | Yes | Yes | Retain until security evidence is mapped and owner-approved. |
| `10_operations_testing_accessibility/testing_strategy.docx` | High | `99_archive/duplicates/10_operations_testing_accessibility/` | Exact duplicate | Yes | Yes | Retain until future-stage testing assumptions are reconciled. |
| `02-research/` | High | `99_archive/duplicates/02-research/` | Near duplicate | Yes | Yes | Retain until research claims, validation gaps, and assumptions are captured in canonical root docs. |
| `03-synthesis/` | Medium | `99_archive/duplicates/03-synthesis/` | Near duplicate | Yes | Yes | Retain until accepted recommendations are separated from validated evidence. |
| `04-decisions/` | High | `99_archive/duplicates/04-decisions/` | Near duplicate | Yes | Yes | Retain until decision provenance is captured in owner decision records. |
| `05-product-spec/` | Critical | `99_archive/duplicates/05-product-spec/` | Near duplicate | Yes | Yes | Retain. Mixed product/curriculum/AI/safety content requires careful mapping before any archive. |
| `09_agent_prompts/` | Medium | `99_archive/superseded/09_agent_prompts/` | Near duplicate / superseded | Yes, if prompt history remains needed | Yes | Retain until root prompt/control docs decide prompt evidence handling. |
| `01_product/PRD v0.1 for BecomingOS.docx` | High | `99_archive/superseded/01_product/` | Superseded | Yes | Yes | Retain as product-scope evidence until canonical product docs fully replace it. |
| `01_product/Prototype UX Specification.docx` | High | `99_archive/superseded/01_product/` | Superseded | Yes | Yes | Retain as prototype evidence until canonical prototype/private-beta docs fully replace it. |
| `01_product/lifeos_brand_kit.md` | High | `99_archive/superseded/01_product/brand/` | Superseded | Yes | Yes | Retain as draft brand evidence; label lifeOS as internal/historical alias. |
| `01_product/brand_kit/` | High | `99_archive/superseded/01_product/brand_kit/` | Superseded | Yes | Yes | Retain until brand hierarchy and visual identity evidence are mapped. |
| `04_ai_memory_and_data/*.docx` | Critical | `99_archive/superseded/04_ai_memory_and_data/` | Superseded | Yes | Yes | Retain until AI memory, deletion, retrieval, embedding, and provider-scope rules are fully canonical. |
| `05_privacy_legal_safety/*.docx` | Critical | `99_archive/superseded/05_privacy_legal_safety/` | Superseded | Yes | Yes | Retain. Privacy/legal/safety source evidence is high risk and must not be hidden before canonical mapping. |
| `06_architecture_and_api/*.docx` | High | `99_archive/superseded/06_architecture_and_api/` | Superseded | Yes | Yes | Retain and label conceptual only; do not imply build or implementation approval. |
| `10_operations_testing_accessibility/*.docx` | High | `99_archive/superseded/10_operations_testing_accessibility/` | Superseded | Yes | Yes | Retain until beta/public/production stage assumptions are separated. |
| `07_analysis/p0_reviews/*.md` | High | `99_archive/old_reviews/07_analysis/p0_reviews/` | Old review / evidence | Yes | Yes | Retain until blocker rationale is mapped to canonical registers. |
| `07_analysis/*decision_request*.md` | High | `99_archive/old_reviews/07_analysis/decision_requests/` | Old review / evidence | Yes | Yes | Retain until decision requests are captured in approved owner decision records. |
| `07_analysis/*decision_record*.md` | High | `99_archive/old_reviews/07_analysis/decision_records/` | Old review / evidence | Yes | Yes | Retain until decision provenance is traceable in root control docs. |
| `07_analysis/remaining_readiness_blockers.md` | Critical | `99_archive/old_reviews/07_analysis/` | Old review / evidence | Yes | Yes | Retain. Current no-public-build/no-production posture depends on blocker evidence. |
| `08_final_outputs/*.docx` | Critical | `99_archive/old_reviews/08_final_outputs/` | Old review / evidence | Yes | Yes | Retain and label final/readiness wording as historical evidence only. |
| `docs/00_repository_control/file_inventory.md` | Medium | `99_archive/old_reviews/docs/00_repository_control/` | Evidence | Yes | Yes | Retain as inventory evidence until cleanup plan is owner-approved. |
| `docs/00_repository_control/duplicate_file_map.md` | High | `99_archive/old_reviews/docs/00_repository_control/` | Evidence | Yes | Yes | Retain as duplicate evidence until exact archive list is approved. |
| `docs/00_repository_control/contradiction_register.md` | High | `99_archive/old_reviews/docs/00_repository_control/` | Evidence | Yes | Yes | Retain until conflict resolutions are captured in root control docs. |
| `docs/00_repository_control/gap_register.md` | High | `99_archive/old_reviews/docs/00_repository_control/` | Evidence | Yes | Yes | Retain to prevent silent removal of gaps. |
| `docs/00_repository_control/canonical_document_map.md` | Medium | `99_archive/old_reviews/docs/00_repository_control/` | Evidence | Yes | Yes | Retain as prior nested-structure proposal evidence. |
| `docs/00_repository_control/archive_plan.md` | High | `99_archive/old_reviews/docs/00_repository_control/` | Evidence | Yes | Yes | Retain as archive rationale evidence. |
| `docs/00_repository_control/approval_packet.md` | High | `99_archive/old_reviews/docs/00_repository_control/` | Evidence | Yes | Yes | Retain as prior review framing evidence. |
| `docs/00_repository_control/proposed_final_document_set.md` | Medium | `99_archive/old_reviews/docs/00_repository_control/` | Evidence | Yes | Yes | Retain to explain root-vs-nested structure conflict. |
| `docs/10_agent_prompts/` | Medium | `99_archive/superseded/docs/10_agent_prompts/` | Superseded / evidence | Yes | Yes | Retain until prompt workflow evidence is mapped. |
| `PROJECT_STRUCTURE.md` | Critical | `99_archive/old_reviews/top_level/` | Old review / evidence | Yes | Yes | Retain and label app/code references historical or external unless owner later includes them. |
| `MVP_ACCEPTANCE_CHECKLIST.md` | Critical | `99_archive/old_reviews/top_level/` | Old review / evidence | Yes | Yes | Retain and label as not public MVP/build approval. |
| `database_mvp_schema_notes.md` | Critical | `99_archive/old_reviews/top_level/` | Old review / evidence | Yes | Yes | Retain and label implementation-adjacent evidence only. |
| `mvp_build_audit.md` | Critical | `99_archive/old_reviews/top_level/` | Old review / evidence | Yes | Yes | Retain and label as not build approval. |
| `final_mvp_hardening_report.md` | Critical | `99_archive/old_reviews/top_level/` | Old review / evidence | Yes | Yes | Retain and label as not production readiness. |
| `PRODUCT_EXPERIENCE_RECOMMENDATIONS.md` | High | `99_archive/superseded/top_level/` | Superseded / evidence | Yes | Yes | Retain until product/app assumptions are classified. |
| `CODEX_PRODUCT_EXPERIENCE_PROMPT_PLAN.md` | Medium | `99_archive/superseded/top_level/` | Superseded / evidence | Yes | Yes | Retain until prompt constraints and source context are mapped. |

## 4. Contradiction Cleanup Table

| Area | Conflict | Recommended wording | Files likely affected | Risk if unresolved |
|---|---|---|---|---|
| Product name | BecomingOS, lifeOS, and LifeOS appear as competing names, including brand-source claims for LifeOS. | "BecomingOS is the external product name. lifeOS is an internal/historical repository alias only. Older references to LifeOS/lifeOS are retained as traceability evidence unless separately approved." | `README.md`; `01_product/lifeos_brand_kit.md`; `01_product/brand_kit/`; `01_product/PRD v0.1 for BecomingOS.docx`; `08_final_outputs/*.docx`; `PRODUCT_EXPERIENCE_RECOMMENDATIONS.md` | Users, owners, or agents may treat a legacy/internal alias as the marketed product name. |
| Stage/readiness | Older docs mix low-fidelity prototype, MVP, closed beta, production, final build, and hardening language. | "Current stage is pre-MVP with limited trusted private beta only. Public MVP/build, public launch, and production remain NO-GO unless separately approved." | `README.md`; `00_repository_control/current_status_dashboard.md`; `07_analysis/remaining_readiness_blockers.md`; `08_final_outputs/*.docx`; `10_operations_testing_accessibility/*.docx`; top-level MVP/build/hardening files | Old readiness wording may be mistaken for build, launch, or production approval. |
| Root vs nested docs | Earlier control files proposed nested `docs/` canonical structure, while current control docs say root folders are canonical. | "Root documentation folders are canonical. Nested `docs/` files are historical/control evidence unless later promoted by owner approval." | `README.md`; `00_repository_control/root_vs_nested_docs_reconciliation.md`; `00_repository_control/source_traceability_map.md`; nested `docs/00_repository_control/*`; nested `docs/10_agent_prompts/*` | Future updates may land in the wrong folder or treat nested plans as current authority. |
| App/MVP audit files | Top-level app, database, MVP, project-structure, and hardening files imply implementation context. | "Top-level app/MVP/build/database/hardening files are historical or external evidence only and do not approve app code, public MVP/build, deployment, or production readiness." | `PROJECT_STRUCTURE.md`; `MVP_ACCEPTANCE_CHECKLIST.md`; `database_mvp_schema_notes.md`; `mvp_build_audit.md`; `final_mvp_hardening_report.md`; `PRODUCT_EXPERIENCE_RECOMMENDATIONS.md` | Agents may infer a build exists or is approved. |
| AI/provider scope | AI docs discuss provider storage, vector DBs, external LLMs, embeddings, and future data types at different levels of certainty. | "OpenAI/private AI use is approved only for narrow private beta text use. File, image, audio, video, vector, wearable, passive monitoring, provider-side storage, and broad tool/data processing require separate approval." | `06_privacy_legal_safety/ai_provider_approval_record.md`; `04_ai_memory_and_data/*.docx`; `05_ai_memory_data/*.md`; `06_architecture_and_api/*.docx`; `06_privacy_legal_safety/openai_evidence/*` | Narrow beta approval may be misread as broad AI provider or data-type approval. |
| AI memory/deletion | Rejected/deleted/unconfirmed/withdrawn artifacts are discussed differently across AI and data docs. | "Only confirmed or user-edited eligible memories may influence future outputs. Rejected, deleted, unconfirmed, expired, archived, or consent-withdrawn data must be excluded from AI memory, retrieval, embeddings, analytics, and future outputs." | `05_ai_memory_data/ai_memory_governance.md`; `05_ai_memory_data/retrieval_and_embedding_rules.md`; `04_ai_memory_and_data/*.docx`; `06_privacy_legal_safety/privacy_consent_data_governance.md` | Deleted or unapproved content could appear to remain eligible for AI use. |
| Safety/support | Safety docs say no emergency response; support docs include escalation and incident language. | "Support may handle product, account, data-rights, and operational incidents and may signpost resources, but BecomingOS does not provide therapy, crisis intervention, live monitoring, rescue, diagnosis, treatment, or professional advice." | `06_privacy_legal_safety/safety_boundaries.md`; `06_privacy_legal_safety/private_beta_support_circle_rules.md`; `08_operations_testing_accessibility/private_beta_support_operations_plan.md`; older `10_operations_testing_accessibility/*.docx` | Participants may expect emergency support or professional help. |
| Crisis/safety logs | Some source docs discuss local/session handling, audit logs, tickets, or immutable records inconsistently. | "Crisis/safety logs, if required for private beta operations, must be minimal, segregated, access-controlled, retention-limited, and excluded from memory, embeddings, analytics, and future AI outputs." | `06_privacy_legal_safety/private_beta_safety_log_approval_record.md`; `06_privacy_legal_safety/safety_boundaries.md`; `06_privacy_legal_safety/security_threat_model.md`; `10_operations_testing_accessibility/BecomingOS Support Playbook.docx` | Sensitive safety disclosures could be over-retained or reused in product memory/AI. |
| Analytics | Older analytics language may imply sentiment/crisis-word events or sensitive content tracking. | "Analytics may use approved privacy-safe classifications and counts only. Do not collect sensitive free text, crisis text, clinical content, or content used for memory or future AI outputs." | `08_operations_testing_accessibility/analytics_event_taxonomy.md`; `10_operations_testing_accessibility/Define analytics taxonomy.docx`; `06_privacy_legal_safety/privacy_consent_data_governance.md` | Sensitive text may be accidentally collected or treated as analytics data. |
| Research/market claims | Accepted recommendations, market opportunity, willingness-to-pay, and demand evidence may be treated as validated product proof. | "Research, market, pricing, and willingness-to-pay materials are evidence/assumption inputs until validated with BecomingOS users and accepted by owners. They do not approve public MVP/build, launch, or production readiness." | `03_research_validation/evidence_and_assumption_register.md`; `02_research_and_validation/*`; `03-synthesis/*`; `07_analysis/p0_reviews/*` | Planning inputs may be mistaken for validated demand or public claims. |
| Accessibility | Prototype-flow QA evidence and older WCAG references may imply conformance. | "Accessibility evidence is prototype-flow QA evidence only unless separately approved. Do not claim WCAG, Section 508, public MVP, or production accessibility compliance from current evidence." | `08_operations_testing_accessibility/accessibility_qa_evidence.md`; `08_operations_testing_accessibility/release_readiness_checklist.md`; `10_operations_testing_accessibility/*.docx` | Accessibility testing may be overstated as compliance or production readiness. |
| Architecture/API | Conceptual API, NFR, and architecture drafts can read like implementation approval. | "Architecture, API, and NFR documents are conceptual planning artifacts only. They do not approve implementation, deployment, public MVP/build, security readiness, or production readiness." | `06_architecture_and_api/*.docx`; `07_architecture_api/private_beta_environment_approval_record.md`; `00_repository_control/current_status_dashboard.md`; `PROJECT_STRUCTURE.md` | Future agents may create implementation work or infer deployment/security approval. |

## 5. Safe Cleanup Sequence

1. Preserve `01-source-documents/originals/`.
2. Confirm checksum duplicates.
3. Update source traceability map.
4. Owner approves exact archive list.
5. Archive exact duplicates only.
6. Review superseded drafts after canonical replacements exist.
7. Mark old MVP/build/production docs as historical evidence.
8. Re-run dashboard and blocker register.

## 6. Owner Approval Checklist

- [ ] I approve the exact files listed for archive.
- [ ] I approve the proposed archive destinations.
- [ ] I confirm canonical replacements exist where required.
- [ ] I confirm no source evidence is being deleted.
- [ ] I confirm no production/public MVP/security/legal/privacy/accessibility approval is implied.

Owner notes:

Date:

## 7. Recommended Commit Message

```text
docs: add repo cleanup recommendation packet
```
