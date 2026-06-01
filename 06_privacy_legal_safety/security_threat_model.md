# Security Threat Model

Current status: approved private-beta security threat model as of 2026-06-01. This document does not approve public MVP build, production readiness, production architecture, broad implementation, or compliance claims.

Product source of truth: `docs/02_product/becomingos_product_specification.docx`.

## Scope

This model identifies private beta risks for BecomingOS as a pre-MVP, educational, non-clinical reflection and action-planning system.

Private beta requires a separate beta environment, explicit consent, minimal logging, defined retention, and post-beta deletion or anonymisation.

## Assets At Risk

- Manual reflection entries.
- Calendar data.
- Health/wearable signals.
- Tasks.
- Documents.
- Photos.
- Audio.
- Video.
- Support circle contacts.
- Draft and confirmed memories.
- Embeddings derived from confirmed eligible memories.
- AI prompts, responses, summaries, and recommendations.
- Consent records and withdrawal/deletion requests.
- Minimal operational or safety logs, if approved.

## Threat Areas

| Threat area | Risk | Required planning control |
|---|---|---|
| Sensitive personal data | Reflections, documents, photos, audio, video, and wearable signals may reveal highly sensitive information. | Data minimisation, explicit category consent, separate beta environment, retention limit, deletion/anonymisation. |
| Support circle contacts | Contact details could expose third parties or create implied duty of rescue. | Optional collection only, clear consent, no automatic alerts without prior user rules. |
| AI provider exposure | User data may be sent to external AI providers. | Provider retention/training/logging/deletion approval before live data. |
| Embeddings | Embeddings may preserve semantic traces after source changes. | Generate only from confirmed eligible memory; invalidate/delete when source eligibility changes. |
| Deletion/anonymisation | Deleted data could remain in logs, embeddings, backups, exports, or provider systems. | Define deletion workflow and retention limits before beta. |
| Access control | Beta data could be viewed by unauthorised team members or mixed with development data. | Separate beta environment, least access, named owners, access review. |
| Minimal logging | Logs could capture sensitive content or crisis disclosures. | Minimise logs, segregate safety logs, exclude from memory and analytics. |
| Crisis/safety content | Crisis text could be retained as memory or analytics. | Do not make crisis/safety content product memory; retain only minimal approved safety logs if required. |
| Public/prod mixing | Beta data could be reused in production or public demos. | No production reuse without renewed consent; post-beta deletion/anonymisation. |
| Source traceability | Old docs could imply production or build readiness. | Preserve docs as evidence; root canonical docs govern current posture. |

## Private Beta Security Requirements

- Separate beta environment must be defined before real data use.
- Access must be limited to authorised people with a beta need.
- Logging must be minimal and must not retain sensitive text unless explicitly approved.
- Safety logs, if required, must be segregated, retention-limited, access-controlled, and excluded from memory and analytics.
- AI provider terms must be approved before live user data processing.
- Embeddings must not be generated from unconfirmed, rejected, deleted, expired, archived, or consent-withdrawn data.
- Deletion and anonymisation procedures must include source data and derived data such as embeddings.

## Not Approved

This document does not approve:

- Production architecture.
- Public MVP build.
- Cloud deployment.
- Database design.
- Authentication implementation.
- AI provider use.
- Vector storage.
- Monitoring/logging tooling.
- Production readiness.

## Open Security Decisions

- Production security review.
- Public MVP/build security review.
- Production architecture.
- Broad handling of documents, photos, audio, and video outside separately approved private beta scope.
- Any future expansion beyond the approved limited private beta environment, provider, logging, consent, and deletion boundaries.

## Approval Status

- [x] Approved
- [ ] Rejected
- [ ] Modify

Owner notes:

Approved on 2026-06-01 by the security owner for limited private beta only. Public MVP/build, production readiness, production architecture, and compliance claims remain not approved.
