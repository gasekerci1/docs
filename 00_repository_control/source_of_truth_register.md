# Source Of Truth Register

Current status: approved source-of-truth record for product documentation.

## Current Product Source Of Truth

`docs/02_product/becomingos_product_specification.docx` is the current highest-priority product source of truth for BecomingOS.

## Source Hierarchy

Older files in this repository are supporting evidence unless they conflict with `docs/02_product/becomingos_product_specification.docx`.

If a conflict exists, resolve it in favour of `docs/02_product/becomingos_product_specification.docx` unless a later explicit owner approval says otherwise. Do not silently remove conflicting information; preserve it as traceability evidence and document the resolution.

## Key Source-Of-Truth Decisions

- External product name: BecomingOS.
- Internal repository alias: lifeOS.
- lifeOS is not the marketed name.
- Current stage: pre-MVP with limited private beta planning.
- The core specification remains conceptual.
- No public build is authorised.
- A small private beta using real data may be planned only for trusted participants with explicit consent and documented safeguards.
- Product category: educational, non-clinical reflection and action-planning system.
- The product is not therapy, diagnosis, treatment, crisis intervention, legal advice, medical advice, financial advice, or other professional advice.
- Users decide what to provide.
- Data collection must use clear explanations.
- Data storage must be minimal.
- Users can edit or delete data.
- Rejected or deleted items must not be used by AI.
- Nothing becomes durable memory without user confirmation.
- AI outputs are drafts requiring user review.
- AI must cite or explain which user context influenced recommendations.
- Embeddings are generated only for confirmed items.
- Embeddings must be invalidated if the source item is deleted or changed.
- Private beta is limited to trusted testers only.
- Private beta requires an explicit beta consent notice.
- Private beta requires a separate beta environment.
- Private beta logging must be minimal.
- Private beta retention must be defined, with 90 days suggested.
- Beta data must be deleted or anonymised after beta.
- Beta data must not be reused in production without renewed consent.

## Conflict Rule

Conflicts must be resolved in favour of `docs/02_product/becomingos_product_specification.docx` unless the owner explicitly approves a different decision in a later dated decision record.

