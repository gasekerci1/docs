# Owner Decision Register

Current status: source-of-truth decision register derived from `docs/02_product/becomingos_product_specification.docx`.

This register records owner outcomes for DEC-001 to DEC-030. It does not approve a public MVP, production readiness, file archival, deletion, file moves, or implementation work.

| ID | Outcome | Decision |
|---|---|---|
| DEC-001 | Modify | BecomingOS is the external product name; lifeOS is the internal repository alias and is not the marketed name. |
| DEC-002 | Modify | Current stage is pre-MVP with limited private beta planning; no public build is authorised. |
| DEC-003 | Modify | Implementation-adjacent files are evidence only and do not authorise app, frontend, backend, database, API, auth, Vercel, Supabase, OpenAI, or production implementation work. |
| DEC-004 | Approve | BecomingOS is an educational, non-clinical reflection and action-planning system. |
| DEC-005 | Approve | Prototype/internal validation remains allowed; real data is allowed only in a safeguarded private beta with explicit consent. |
| DEC-006 | Approve | Candidate MVP scope remains planning only and is not build approval. |
| DEC-007 | Approve | The non-clinical boundary is approved. BecomingOS is not therapy, diagnosis, treatment, or clinical care. |
| DEC-008 | Approve | BecomingOS is not an emergency service; it may provide signposting only. |
| DEC-009 | Modify | Safety logs, if required, must be minimal and segregated, and excluded from memory and analytics. |
| DEC-010 | Approve | Bad-day mode is low-intensity support only and must not become therapy, crisis intervention, or clinical support. |
| DEC-011 | Approve | Durable personal data is allowed only under beta consent and storage rules. |
| DEC-012 | Approve | Consent, retention, deletion, and export rules are required before live processing. |
| DEC-013 | Modify | Australia-first baseline with GDPR-compatible design principles; no compliance claim may be made without legal review. |
| DEC-014 | Reject | Supporter and donor data is out of scope. |
| DEC-015 | Approve | AI outputs are drafts only; users must confirm anything that becomes durable memory. |
| DEC-016 | Approve | Rejected, deleted, and unconfirmed data must be excluded from future retrieval, recommendations, and AI memory. |
| DEC-017 | Approve | AI provider retention approval is required before live user data is processed. |
| DEC-018 | Approve | Embeddings may be generated only from confirmed data and must be invalidated when the source changes or is deleted. |
| DEC-019 | Approve | An evidence and assumption register is required. |
| DEC-020 | Approve | User research evidence remains pending. |
| DEC-021 | Approve | Market and pricing claims remain assumptions. |
| DEC-022 | Approve | Architecture, API, and non-functional requirement documents are conceptual only. |
| DEC-023 | Modify | WCAG 2.2 AA is the default accessibility baseline. |
| DEC-024 | Approve | No public MVP or build approval exists until gates are satisfied. |
| DEC-025 | Approve | Readiness reports are evidence, not approvals. |
| DEC-026 | Modify | Brand documents remain draft until finalised. |
| DEC-027 | Approve | Tone must be calm, clear, respectful, non-shaming, and non-clinical. |
| DEC-028 | Modify | The repository root is the canonical documentation tree; avoid nested `docs/docs` duplication. |
| DEC-029 | Approve | Preserve `01-source-documents/originals` as an evidence baseline. |
| DEC-030 | Approve | Do not archive or delete files until canonical replacements and traceability exist. |

## Standing Restrictions

- This is a documentation-only repository.
- Do not write app or implementation code.
- Do not approve public MVP build.
- Do not approve production readiness.
- Do not delete, archive, or move source files until owner approval and traceability are complete.

