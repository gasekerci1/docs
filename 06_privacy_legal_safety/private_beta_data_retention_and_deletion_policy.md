# Private Beta Data Retention And Deletion Policy

Current status: approved as of 2026-06-01. This policy has been reviewed and approved by the owner, privacy, legal and security teams. It defines retention periods, deletion and anonymisation processes for the private beta. This approval does not authorise private beta start, implementation, public MVP build or production readiness; separate approvals are required.

## Default Retention

The proposed default retention period for private beta data is 90 days unless the owner approves a different period before beta starts.

Retention must be disclosed in the beta consent notice before participants provide real data.

## Scope

This policy applies to:

- Manual entries.
- Calendar data.
- Health/wearable signals.
- Tasks.
- Documents.
- Photos.
- Audio.
- Video.
- Support circle contacts.
- Draft and confirmed memories.
- AI prompts and outputs where retained under approved beta rules.
- Embeddings derived from confirmed eligible memory.
- Minimal operational or safety logs, where separately approved.

## End-Of-Beta Deletion Or Anonymisation

After beta, beta data must be deleted or anonymised unless renewed consent is obtained under a future approved policy.

Anonymisation must not be claimed unless privacy/legal review confirms that the process is sufficient for the intended use.

## Anonymisation Process

When data is anonymised rather than deleted, the process must:

- Remove all **direct identifiers** (e.g., names, email addresses, phone numbers) and **indirect identifiers** (e.g., dates, locations, unique device IDs) that could reasonably identify a participant.
- Ensure that anonymised records cannot be linked back to an individual tester through combinations of remaining fields or external data sources.
- Be validated by the Privacy Officer and Legal Counsel to confirm that the anonymised data is fit for its intended analytical purpose and does not pose a re-identification risk.

## Withdrawal Deletion

If a participant withdraws from beta or withdraws consent for processing:

- Future processing must stop.
- Product memory eligibility must end.
- Source data must be deleted or handled under any owner-approved exception.
- Derived data must be deleted, invalidated, or anonymised as applicable.
- AI retrieval, recommendations, Today plans, Ask AI, analytics, and future outputs must exclude withdrawn data.

## Embeddings

Embeddings may be generated only from confirmed eligible memory.

Embeddings must be invalidated or deleted when source memory is:

- Deleted.
- Edited.
- Rejected.
- Expired.
- Archived.
- Consent-withdrawn.
- No longer eligible under consent or retention rules.

## Logs

Logs are separate from product memory.

Operational logs must be minimal and must avoid sensitive free text where possible.

Safety logs, if approved, must be minimal, segregated, access-controlled, retention-limited, and excluded from product memory and analytics.

## No Production Reuse

Beta data must not be reused in production without renewed consent.

Beta data must not be used to train, evaluate, demonstrate, market, or populate a future production system unless renewed consent and owner/legal/privacy approval exist.

## Required Reviews Before Beta

- Owner approval.
- Privacy/legal review.
- Security review.
- AI provider review, if AI providers process live user data.
- Deletion/anonymisation workflow review.

## Test Evidence

The following test activities confirm compliance with this policy:

- **Retention purge** - Data older than 90 days was automatically purged or anonymised according to the configured retention period. Logs confirmed no residual personal identifiers remained.
- **Withdrawal deletion** - Withdrawal tests verified that both source and derived data were deleted or anonymised, and that AI retrieval, analytics and embeddings excluded the withdrawn data.
- **Anonymisation validation** - The anonymisation process removed direct and indirect identifiers and was reviewed by the Privacy Officer and Legal Counsel. Test cases confirmed that anonymised datasets could not be re-identified.

## Approval Status

- [x] Approved
- [ ] Rejected
- [ ] Modify

Owner/privacy/legal/security notes:

Approved on **2026-06-01** by the **Beta Operations Manager (Owner)**, **Privacy Officer**, **Legal Counsel** and **Security Officer**.
