# Retrieval And Embedding Rules

Current status: conceptual pre-MVP/private-beta rules. This document does not approve implementation, vector storage, AI provider use, public MVP build, or production readiness.

Product source of truth: `docs/02_product/becomingos_product_specification.docx`.

## Core Rules

Embeddings may be generated only from confirmed eligible memory.

AI provider approval is required before live user data processing. Approval must cover provider retention, training, logging, deletion, subprocessors, and any relevant data transfer terms.

Rejected, deleted, unconfirmed, expired, archived, or consent-withdrawn data must be excluded from retrieval, recommendations, Today plan, Ask AI, embeddings, analytics, and future outputs.

## Embedding Eligibility

An item may be embedded only if it is:

- Confirmed by the user.
- Eligible under the current consent scope.
- Needed for an approved beta purpose.
- Not rejected.
- Not deleted.
- Not unconfirmed.
- Not expired.
- Not archived.
- Not consent-withdrawn.
- Not crisis/safety content.
- Not a safety log or analytics event.

## Invalidation Rules

Embeddings must be invalidated or deleted when the source memory is:

- Deleted.
- Edited.
- Rejected.
- Expired.
- Archived.
- Consent-withdrawn.
- No longer eligible under consent or retention rules.

If an edited memory remains eligible, any old embedding must be invalidated and a new embedding may be generated only after the edited source is confirmed.

## Retrieval Exclusions

Retrieval must exclude:

- Draft-only content.
- Unconfirmed content.
- Rejected content.
- Deleted content.
- Archived content unless explicitly restored and reconfirmed.
- Expired content.
- Consent-withdrawn content.
- Crisis/safety disclosures.
- Safety logs.
- Operational logs.
- Analytics events.
- Provider logs.
- Any source outside approved beta consent scope.

## Product Surface Exclusions

Excluded data must not influence:

- Recommendations.
- Today plan.
- Ask AI.
- Future Self Builder.
- Decision Engine.
- Memory Engine retrieval.
- Daily Plan System.
- Future AI outputs.
- Analytics.
- Embeddings.

## Recommendation Transparency

When AI uses confirmed eligible memory to produce recommendations, it must cite or explain which user-confirmed context influenced the recommendation.

If the system cannot explain the context source, the recommendation should not be treated as memory-grounded.

## Provider And Storage Preconditions

Before live beta data is processed:

- AI provider retention/training/logging/deletion terms must be approved.
- Vector/embedding storage assumptions must be approved.
- Deletion and invalidation workflow must include source and derived data.
- Access controls for source and derived data must be defined.
- Beta consent must disclose AI provider processing and embedding use if embeddings are used.

## Traceability

These rules are derived from:

- `docs/02_product/becomingos_product_specification.docx`.
- `00_repository_control/owner_decision_register.md` DEC-015 to DEC-018.
- `05_ai_memory_data/ai_memory_governance.md`.
- `05_ai_memory_data/memory_model.md`.
- `04_ai_memory_and_data/Converting an OS Memory Store into Daily Utility.docx`.
- `04_ai_memory_and_data/Canonical data model.docx`.
- `04_ai_memory_and_data/AI Interpretation Guide.docx`.

