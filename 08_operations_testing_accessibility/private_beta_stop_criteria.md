# Private Beta Stop Criteria

Current status: approval-ready draft. This document does not approve private beta, public MVP build, production readiness, implementation, or compliance claims.

## Severity Levels

| Severity | Meaning | Required response |
|---|---|---|
| Critical | Immediate safety, privacy, security, consent, AI, or crisis-boundary risk. | Pause affected beta activity immediately. Notify responsible owners. Do not resume until owner-approved resolution. |
| High | Material issue that could harm trust, consent clarity, data handling, or product boundaries. | Pause affected feature or flow. Review within approved owner group. Resume only with documented conditions. |
| Medium | Usability or comprehension issue that creates confusion but no immediate material risk. | Log issue, mitigate before expanding beta, and review in post-test synthesis. |
| Low | Minor wording or flow issue. | Track and resolve in normal beta documentation cycle. |

## Stop Or Pause Conditions

| Condition | Severity | Required response |
|---|---|---|
| Consent confusion | Critical if participant does not understand data use, optionality, AI provider disclosure, retention, deletion, or withdrawal. | Stop session or affected flow. Clarify. Do not collect real data until resolved. |
| Privacy incident | Critical | Pause beta. Notify privacy/legal and security owners. Preserve minimal facts. Avoid sensitive free text in logs. |
| Deletion/export/access failure | High or Critical depending on scope | Pause related data processing. Escalate to privacy/legal owner. Resolve before continuing affected processing. |
| AI unsafe output | Critical if output implies therapy, diagnosis, treatment, crisis advice, emergency response, professional advice, or uses excluded data. | Stop AI feature. Escalate to AI/data, safety, and privacy owners. |
| Crisis boundary failure | Critical | Stop growth coaching flow. Show appropriate signposting. Escalate to safety owner. |
| Support Circle inappropriate alert/share | Critical | Stop Support Circle feature. Revoke affected sharing. Notify product/safety/privacy owner. |
| Security issue | Critical | Pause beta or affected environment. Escalate to security owner. Consider manual shutdown. |
| Participant distress | High or Critical depending on severity | Stop session. Offer pause/withdrawal. Provide non-emergency signposting where relevant. |
| Analytics/logging captures prohibited content | Critical | Stop affected analytics/logging. Remove or quarantine data under owner-approved process. Escalate to privacy/safety/security owners. |
| Owner decision to pause | Critical by authority | Pause scope specified by owner. Resume only after owner approval. |
| Environment separation failure | Critical | Pause beta processing. Escalate to security owner. |
| AI provider approval missing or violated | Critical | Stop provider processing. Escalate to AI/data/privacy/legal/security owners. |
| Deleted/rejected/unconfirmed data influences AI | Critical | Stop AI/retrieval feature. Escalate to AI/data and privacy owners. |

## Response Record

For any stop/pause event, record only:

- Event ID.
- Date.
- Severity.
- Trigger category.
- Owner notified.
- Action taken.
- Current status.
- Reopen conditions.

Do not record crisis text, sensitive free text, private reflections, diagnosis labels, documents, photos, audio, video, or transcripts in the stop record unless separately approved by privacy/legal/safety owners.

