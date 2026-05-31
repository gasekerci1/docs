# Incident Response Plan

Current status: planning-only incident response plan.

This document does not approve operational readiness, private beta, public MVP build, production readiness, public launch, implementation, or compliance claims.

## Purpose

This plan defines incident-response concepts that must be reviewed and approved before any live beta, public MVP, or production use. It is not an operational runbook until owners, contact paths, notification rules, and review responsibilities are approved.

## Incident Classes

| Incident class | Examples | Required owner review |
|---|---|---|
| Privacy incident | Misuse, exposure, over-collection, retention beyond approved period, or consent failure. | Privacy/legal; security; product |
| Security incident | Unauthorised access, credential issue, data exposure, environment separation failure, or vulnerability. | Security; privacy/legal; engineering |
| AI safety incident | AI output implies therapy, diagnosis, treatment, crisis response, professional advice, or uses excluded data. | AI/data; safety; privacy/legal; product |
| Data deletion/export failure | Deletion, export, access, correction, withdrawal, provider deletion, or embedding invalidation fails. | Privacy/legal; security; AI/data |
| Provider incident | AI or infrastructure provider issue affecting retention, deletion, training-use, security, or availability. | AI/data; security; privacy/legal; operations |
| Support/safety escalation issue | Support response crosses into crisis rescue, therapy, professional advice, or inappropriate contact escalation. | Safety; operations/support; privacy/legal |
| Outage/reliability issue | Service unavailable, degraded, data loss risk, restoration issue, or manual shutdown. | Operations/support; engineering; security |
| Analytics/privacy misuse | Sensitive free text, crisis text, documents, media, or excluded data enters analytics/logging. | Privacy/legal; safety; security; product |

## Severity Levels

| Severity | Meaning | Planning response |
|---|---|---|
| Critical | Immediate or material safety, privacy, security, data rights, provider, or crisis-boundary risk. | Pause affected activity. Notify owners through approved process. Resume only after documented owner decision. |
| High | Material trust, consent, data handling, support, AI, or reliability risk. | Pause affected feature or workflow. Review with responsible owners. |
| Medium | Issue creates confusion, degraded experience, or process weakness without immediate material risk. | Track, triage, and resolve before stage expansion. |
| Low | Minor wording, documentation, or process issue. | Log and address in normal review cycle. |

## Owner Roles

- Product owner: scope, user impact, public wording, and go/no-go implications.
- Privacy/legal owner: consent, notification, legal review, data rights, and claims.
- Safety owner: non-clinical boundary, crisis/signposting, and support boundary.
- AI/data owner: AI provider, AI outputs, memory, retrieval, embeddings, and deletion.
- Security owner: access, threat model, environment, logging, and containment.
- Architecture/engineering owner: technical cause, reliability, recovery, and evidence.
- Operations/support owner: support contact, escalation, status updates, and closure.
- Accessibility/testing owner: user impact and regression evidence where applicable.

## Logging Boundaries

Incident records must use minimal administrative information:

- Incident ID.
- Date/time or date band.
- Incident class.
- Severity.
- Affected stage.
- Owner notified.
- Action taken category.
- Status.
- Closure condition.

Do not record crisis text, sensitive free text, private reflections, document/photo/audio/video content, diagnosis labels, or full transcripts unless separately approved by privacy/legal/safety owners.

## Notification Process Placeholder

Notification process: [Insert approved owner contact paths, timing targets, user notification rules, provider notification rules, and escalation thresholds after legal/privacy/security review.]

Do not communicate notification commitments publicly until reviewed and approved.

## Review Process

Each incident review should identify:

- What happened.
- Which boundary or control failed.
- Which data or users may be affected.
- Which owners were notified.
- What was paused or stopped.
- What evidence is needed before resuming.
- Whether beta, MVP, production, or launch status changes.

## Post-Incident Learning

Post-incident learning must update the appropriate planning or evidence documents without overstating readiness. A closed incident does not approve production readiness unless production gates are separately completed and signed.
