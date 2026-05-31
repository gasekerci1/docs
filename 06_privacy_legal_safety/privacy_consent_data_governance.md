# Privacy, Consent, And Data Governance

Current status: pre-MVP/private-beta planning policy. This document does not claim legal compliance, approve implementation, approve public MVP build, or approve production readiness.

Product source of truth: `docs/02_product/becomingos_product_specification.docx`.

## Privacy Posture

BecomingOS is pre-MVP with limited private beta planning only. Real data may be collected or processed only in a private beta with trusted participants, explicit consent, a separate beta environment, minimal logging, defined retention, and post-beta deletion or anonymisation.

Legal review is required before broad release, public beta, compliance claims, commercial launch, or production reuse of beta data.

## Data Minimisation

Collect the minimum data needed for the stated beta purpose. Users decide what to provide. Optional data categories must be presented clearly and separately where practical.

Do not collect data merely because a future product concept could use it. Rejected, deleted, unconfirmed, expired, or consent-withdrawn data must not be used for AI memory, retrieval, recommendations, analytics, or future outputs.

## Beta Data Categories

| Data category | Beta posture | Notes |
|---|---|---|
| Manual entries | Optional unless required for a specific beta task | Explain purpose and memory eligibility before collection. |
| Calendar | Optional | Explain whether imported, viewed, stored, or summarised. |
| Health/wearable signals | Optional and sensitive | Use only if specifically approved for beta; avoid clinical interpretation. |
| Tasks | Optional | Use for planning context only, not productivity scoring or surveillance. |
| Documents | Optional and sensitive | Explain AI/provider exposure before processing. |
| Photos | Optional and sensitive | Explain storage, deletion, and AI/provider handling before collection. |
| Audio | Optional and sensitive | Explain transcription, retention, and AI/provider handling before collection. |
| Video | Optional and sensitive | Explain storage, extraction, retention, and AI/provider handling before collection. |
| Support circle contacts | Optional and sensitive | Do not alert contacts automatically without prior user consent and defined rules. |

## Consent Requirements

Consent must explain:

- BecomingOS is pre-MVP and experimental.
- Participation is optional.
- The product is educational and non-clinical.
- The product is not therapy, diagnosis, treatment, crisis intervention, emergency monitoring, legal advice, medical advice, financial advice, addiction treatment advice, or professional advice.
- Which data categories may be collected.
- Purpose and optionality for each data category.
- How long beta data is retained.
- How deletion, access/export, and withdrawal work.
- Whether AI providers process data.
- AI provider retention, training, logging, deletion, and subprocessors once approved.
- That beta data will be deleted or anonymised after beta unless renewed consent is obtained.
- That beta data will not be reused in production without renewed consent.

## Retention

Retention must be defined before beta data collection begins. A 90-day beta retention period is suggested in the source-of-truth register but still requires owner/legal approval before use in an actual beta notice.

## Deletion, Access, Export, And Withdrawal

Beta participants must have a clear process to request:

- Edit or deletion of provided data.
- Access/export where applicable.
- Withdrawal from beta.
- Withdrawal of consent for future processing.

Deleted, rejected, expired, archived, unconfirmed, or consent-withdrawn data must be excluded from AI memory, retrieval, recommendations, embeddings, analytics, Today plans, Ask AI, and future outputs.

## AI Provider Disclosure

Before live user data is processed by AI providers, the owner must approve provider retention, training, logging, deletion, and subprocessor terms.

Beta consent must disclose provider involvement at a level participants can understand. Provider calls must use the minimum data required for the approved purpose.

## No Production Reuse

Beta data must not be reused in production without renewed consent. After beta, data must be deleted or anonymised unless the participant gives renewed consent under an approved future policy.

## Open Decisions

- Final beta participant-facing notice.
- Final retention period and deletion/anonymisation workflow.
- AI provider terms and disclosure text.
- Separate beta environment definition.
- Access/export and withdrawal operating process.
- Legal review before broad release or compliance claims.

