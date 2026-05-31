# Memory Model

Current status: conceptual pre-MVP/private-beta memory model. This document does not approve implementation, provider use, public MVP build, or production readiness.

Product source of truth: `docs/02_product/becomingos_product_specification.docx`.

## Core Rule

Durable memory requires explicit user confirmation.

AI outputs are drafts. Drafts, rejected items, deleted items, unconfirmed items, expired items, archived items, and consent-withdrawn items must not influence future AI retrieval, recommendations, Today plans, Ask AI, embeddings, analytics, or future outputs.

Crisis/safety content must not become product memory.

## Memory States

| State | Definition | May influence AI? | Notes |
|---|---|---|---|
| Draft | AI-generated or system-suggested content awaiting user review. | No | User may edit, confirm, or reject. |
| Confirmed | User explicitly approves item as durable memory within consent scope. | Yes, if eligible and consent remains active | Only confirmed eligible memory can be retrieved or embedded. |
| Edited | User changes a draft or confirmed memory. | Yes, only after the edited version is confirmed | Prior embeddings must be invalidated when source changes. |
| Rejected | User rejects a draft or memory candidate. | No | Must not be used for future retrieval, recommendations, or embeddings. |
| Deleted | User deletes an item. | No | Source and derived data, including embeddings where applicable, must be invalidated/deleted. |
| Archived | User or policy removes item from active use while preserving it only if approved by consent/retention rules. | No by default | Archived content must not influence AI unless explicitly restored and confirmed under consent rules. |
| Expired | Retention period or policy period ends. | No | Must be excluded from AI and handled under deletion/anonymisation policy. |
| Consent-withdrawn | User withdraws consent for processing or memory use. | No | Must be excluded from retrieval, recommendations, embeddings, analytics, and future outputs. |

## Eligible Memory

Eligible memory must meet all conditions:

- User-confirmed.
- Within current consent scope.
- Not rejected, deleted, archived, expired, or consent-withdrawn.
- Not crisis/safety content.
- Not prohibited professional-advice content.
- Not a safety log, operational log, or analytics event.

## AI Influence Rules

AI may use confirmed eligible memory to draft reflections, options, plans, summaries, or recommendations for user review.

AI must explain or cite which confirmed user context influenced recommendations where recommendations are generated.

AI must not use:

- Draft-only content.
- Rejected content.
- Deleted content.
- Unconfirmed content.
- Archived content unless restored and reconfirmed.
- Expired content.
- Consent-withdrawn content.
- Crisis/safety disclosures.
- Safety logs.
- Analytics logs.
- Provider logs.

## Crisis And Safety Content

Crisis/safety content must not become product memory. If any minimal safety log is approved, it must be segregated, access-controlled, retention-limited, excluded from memory and analytics, and reviewed by privacy/legal/safety owners.

## Traceability

Memory governance is derived from:

- `docs/02_product/becomingos_product_specification.docx`.
- `00_repository_control/owner_decision_register.md`.
- `05_ai_memory_data/ai_memory_governance.md`.
- `04_ai_memory_and_data/AI Interpretation Guide.docx`.
- `04_ai_memory_and_data/Ask AI Model.docx`.
- `04_ai_memory_and_data/My OS Memory Model.docx` or equivalent source evidence.
- `04_ai_memory_and_data/Canonical data model.docx`.

