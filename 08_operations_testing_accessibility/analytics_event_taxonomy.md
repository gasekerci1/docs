# Analytics Event Taxonomy

Current status: approved privacy-safe analytics taxonomy for limited private beta as of 2026-06-01. This document does not approve public MVP build, production readiness, broad analytics use, sensitive free-text analytics, crisis monitoring, surveillance, or compliance claims.

Primary research source: `03_research_validation/evidence_based_growth_systems_report.md`.

## Analytics Principles

- Do not include sensitive free-text content in analytics events.
- Do not include crisis text, document text, photo/audio/video content, or private reflections unless separately approved by privacy/legal/safety owners.
- Analytics must exclude deleted, rejected, unconfirmed, expired, archived, and consent-withdrawn data.
- Safety-triggered analytics must use minimal classifications only and must not become product memory.
- Analytics events are planning evidence only until privacy/legal/safety review and beta consent are approved.

## Event Table

| Event | Purpose | Allowed properties | Prohibited properties |
|---|---|---|---|
| `goal_created` | Track goal creation and planning activation. | goal domain, self-rated importance band, confidence band, autonomy reason present true/false | Goal free text, sensitive reason text, clinical labels |
| `directive_generated` | Track Today Directive generation. | directive type, difficulty band, time window band, source signal categories used | Directive free text, calendar event text, private context text |
| `if_then_saved` | Track implementation intention use. | cue type, time anchor type, fallback present true/false | Full if-then text, location details, sensitive context |
| `contract_signed` | Track behaviour contract completion. | private/shared, supporter count band, review date band | Commitment text, supporter names/contact details |
| `habit_logged` | Track self-monitoring. | completed true/false, reduced version true/false, duration band, cue match true/false | Reflection text, health details, precise location |
| `failure_diagnosis_submitted` | Track non-shaming barrier review. | primary COM-B category, friction band, confidence next attempt band | Free-text reason, clinical labels, crisis content |
| `bad_day_mode_used` | Track adaptive reset usage. | original difficulty band, reduced difficulty band, completion true/false | User explanation text, sensitive circumstance |
| `support_permission_changed` | Track support-circle permission changes. | supporter role category, access scope category, expiry band | Supporter name, contact details, message content |
| `safety_triggered` | Track safety signposting without storing sensitive content. | trigger category, self-initiated/help-seeking flag, resource shown category | Crisis text, self-harm details, diagnosis, conversation transcript |

## Use Limits

The event taxonomy may help evaluate mechanism activation: goal setting, if-then planning, self-monitoring, Bad Day Mode, support permission use, and safety signposting. It must not be used for surveillance, diagnosis, crisis monitoring, automated emergency response, or sensitive profiling.

Any analytics use in private beta requires consent, minimisation, retention limits, deletion handling, and review against `06_privacy_legal_safety/privacy_consent_data_governance.md`.

## Approval Status

- [x] Approved
- [ ] Rejected
- [ ] Modify

Owner notes:

Approved on 2026-06-01 by product, privacy/legal, and safety owners for limited private beta analytics only. Sensitive free text, crisis text, private reflections, documents, photos, audio, video, support contact details, and deleted/rejected/unconfirmed/expired/archived/consent-withdrawn data remain excluded.
