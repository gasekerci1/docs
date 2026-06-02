# Owner Approval Decision Record

## 1. Purpose

This file records owner decisions for repo governance, cleanup boundaries, product stage, AI/data boundaries, beta boundaries, and documentation-control rules.

This file does not approve destructive file operations, production readiness, public launch, legal compliance, privacy compliance, security readiness, accessibility compliance, public MVP/build, broad live AI/provider use, multimodal uploads with live user data, wearables/passive monitoring, or support-circle alerts.

## 2. Approved Decisions

| ID | Decision Area | Owner Decision | Status | Notes |
|---|---|---|---|---|
| OADR-001 | Product name | External product name is BecomingOS. Internal/historical repository alias is lifeOS. | Approved | lifeOS is not the marketed product name. |
| OADR-002 | Product stage | BecomingOS is pre-MVP with limited trusted private beta only. No public MVP, public launch, or production approval is granted. | Approved | Approval is stage-limited and does not authorize public build or production readiness. |
| OADR-003 | Cleanup safety | No files may be archived, deleted, moved, or renamed until the owner approves the exact file list and destinations. | Approved | This includes source files, duplicate candidates, nested docs, and historical evidence files. |
| OADR-004 | Canonical structure | Root documentation folders are canonical. Nested `docs/` folders are historical/control evidence unless specifically promoted. | Approved | Do not treat nested `docs/` proposals as current source-of-truth structure. |
| OADR-005 | Source preservation | Preserve `01-source-documents/originals/` as the evidence baseline. Do not delete, rename, or modify source documents. | Approved | Source DOCX files remain preserved evidence and must not be altered by cleanup work. |
| OADR-006 | Conditional exact duplicate archive | Exact duplicates may be archived only after checksum confirmation and listed destination approval. | Approved | This approves a rule for later review, not an archive action. |
| OADR-007 | Near duplicate handling | Near duplicates and same-name duplicates must not be archived until canonical replacement and traceability are confirmed. | Approved | Near duplicates may contain unique context, assumptions, or decision evidence. |
| OADR-008 | Historical MVP/build/production evidence | Old MVP/build/production/final/hardening files are historical evidence only and do not approve current build, release, launch, or production readiness. | Approved | These files must be labelled or routed as evidence, not authority. |
| OADR-009 | AI scope | AI use is approved only for narrow limited private beta text use. No broad approval exists for file upload, image, audio, video, wearable data, passive monitoring, vector memory, or automated tool actions with live user data. | Approved | Any expanded AI/provider use requires separate approval. |
| OADR-010 | Memory and embeddings | Only confirmed user-approved memories may be used for AI retrieval or embeddings. Rejected, deleted, expired, withdrawn, or unconfirmed data must not be used in memory, retrieval, analytics, embeddings, or future AI outputs. | Approved | Deletion, withdrawal, rejection, expiry, and lack of confirmation override retrieval and embedding eligibility. |
| OADR-011 | Analytics | Analytics may collect only privacy-safe event classifications. No sensitive free text, crisis text, medical/therapy content, relationship details, addiction details, uploaded document text, or personal secrets may be collected in analytics. | Approved | Analytics must avoid sensitive content and must not become product memory. |
| OADR-012 | Crisis/safety logging | Crisis/safety logs must be minimal, segregated, access-controlled, retention-limited, and excluded from memory, embeddings, analytics, training, and future AI outputs. | Approved | Safety logging is operational evidence only and must remain separate from product/AI data flows. |
| OADR-013 | Support circle/accountability | Support circle/accountability features remain planning-only until consent, permissions, escalation boundaries, and messaging rules are approved. No automatic alerts to friends, family, counsellors, or emergency contacts without explicit prior user consent. | Approved | This does not approve support-circle alerts or emergency escalation automation. |
| OADR-014 | Wearables/passive data | Wearables, health data, phone signals, screen-time data, passive monitoring, and routine detection remain planning-only until separate consent, privacy, security, retention, and deletion approval. | Approved | No passive monitoring or health/wearable processing is approved by this record. |
| OADR-015 | Multimodal uploads | Photo, document, audio, and video uploads remain planning-only until legal, privacy, security, retention, deletion, and third-party consent handling are approved. | Approved | No live-user multimodal upload processing is approved by this record. |
| OADR-016 | Accessibility | Use WCAG 2.2 AA as the design target. Do not claim WCAG compliance until testing evidence and review exist. | Approved | Design target only; no accessibility/WCAG compliance claim. |
| OADR-017 | Market validation | Market demand, pricing, willingness-to-pay, conversion, and growth claims remain assumptions until validated with evidence. | Approved | Research and market materials are evidence inputs, not validated claims. |
| OADR-018 | Private beta tester rules | Private beta is limited to trusted testers only. Each tester must receive a consent notice covering data collected, purpose, retention, deletion, export/access rights, AI use, and non-clinical boundaries. | Approved | This does not approve public beta, public MVP, public launch, or production use. |

## 3. Not Approved

| Item | Current Status | Reason |
|---|---|---|
| Actual archive/move/delete operations | Not approved | Destructive cleanup requires exact file list, exact destinations, and required checksum/canonical replacement evidence. |
| Public MVP | Not approved | Public MVP evidence gates remain incomplete. |
| Public launch | Not approved | Launch evidence, legal/privacy/security/accessibility review, and owner go/no-go are not approved. |
| Production readiness | Not approved | Production readiness gates and evidence remain incomplete. |
| Broad AI/live user data use | Not approved | AI approval is limited to narrow trusted private beta text use only. |
| Multimodal uploads with live user data | Not approved | Photo, document, audio, and video handling require separate legal, privacy, security, retention, deletion, and consent approval. |
| Wearables/passive monitoring | Not approved | Wearables, health data, phone signals, screen-time data, passive monitoring, and routine detection require separate approval. |
| Support-circle alerts | Not approved | Alerts to friends, family, counsellors, or emergency contacts require explicit prior consent and approved messaging/escalation rules. |
| Legal compliance claim | Not approved | This record does not create or evidence legal compliance. |
| Privacy compliance claim | Not approved | This record does not create or evidence privacy compliance. |
| Security readiness claim | Not approved | This record does not approve security readiness. |
| Accessibility/WCAG compliance claim | Not approved | WCAG 2.2 AA is a design target only until testing evidence and review exist. |

## 4. Cleanup Boundary

Archive/delete/move remains NO-GO unless a later exact owner approval identifies the exact files, exact destinations, and evidence of checksum/canonical replacement where required.

The current approval allows documentation-control updates only.

Exact duplicates may be proposed for archive but not moved until separately approved.

## 5. Product and Stage Boundary

BecomingOS is the external product name.

lifeOS is an internal/historical repo alias.

The product is pre-MVP with limited trusted private beta only.

No public MVP, public launch, production, or clinical use is approved.

## 6. AI, Memory, Analytics, and Safety Boundary

AI use is narrow limited private beta text use only.

No broad live user data, multimodal, vector memory, wearable, passive monitoring, or automated tool action approval exists.

Only confirmed user-approved memory may be used for AI retrieval/embeddings.

Rejected, deleted, expired, withdrawn, or unconfirmed data must be excluded from memory, retrieval, embeddings, analytics, and future outputs.

Analytics must avoid sensitive free text and crisis text.

Crisis/safety logs must be minimal, segregated, access-controlled, retention-limited, and excluded from AI memory, analytics, embeddings, and training.

## 7. Beta Boundary

Private beta is limited to trusted testers.

Testers require explicit consent.

Consent notice must cover data collected, purpose, retention, deletion, export/access rights, AI use, and non-clinical boundaries.

Support-circle, multimodal, wearable, passive-data, and automated-alert features remain planning-only until separately approved.

## 8. Required Follow-Up Actions

- [ ] Update current_status_dashboard.md to reference this decision record.
- [ ] Update archive_approval_packet.md to state that destructive cleanup remains NO-GO.
- [ ] Update source_of_truth_register.md with BecomingOS/lifeOS naming rule.
- [ ] Update contradiction_register.md to mark these owner decisions as controlling decisions.
- [ ] Update archive_candidate_plan.md to separate exact duplicate proposals from unapproved archive operations.
- [ ] Prepare an exact archive approval list later, but do not archive yet.

## 9. Recommended Commit Message

```text
docs: record owner approval decisions
```
