# Support Operations Stage Plan

Current status: approved for private beta support planning only.

This document approves the private beta support boundary, named operations/support owner, support channels, and escalation process at a planning level. It does not approve private beta start, public MVP build, production readiness, public launch, implementation work, 24/7 coverage, crisis monitoring, emergency response, therapy, professional advice, operational readiness beyond private beta, or legal/privacy/security/accessibility/regulatory compliance claims.

## Named Operations/Support Owner

Named private beta operations/support owner: **Beta Operations Manager**.

Backup owner: **Privacy Officer** for data-rights and consent/withdrawal issues.

Escalation owners:

- **Safety Owner** for safety-boundary, crisis-boundary, and inappropriate support-response concerns.
- **Security Officer** for suspected security incidents, access-control issues, and data exposure.
- **Privacy/Legal Owner** for deletion, access/export, withdrawal, consent, privacy, legal, or participant-notification questions.
- **AI/Data Owner** for AI output, memory, retrieval, embedding, or provider-processing issues.
- **Product Owner** for feature-scope, Support Circle, and participant-experience decisions.

## Support Boundary

Private beta support is limited to:

- Product-use questions.
- Account/access questions.
- Consent, withdrawal, deletion, access/export, and correction questions.
- Bug and usability reports.
- Beta participation logistics.
- Safety-boundary questions and routing to approved non-emergency signposting.
- Incident intake and routing to the appropriate owner.

Private beta support must not provide:

- Therapy.
- Crisis intervention.
- Emergency monitoring.
- Diagnosis.
- Treatment.
- Legal advice.
- Medical advice.
- Financial advice.
- Addiction treatment advice.
- Professional advice.
- Guaranteed outcomes.
- Live rescue or welfare monitoring.

If immediate danger or crisis appears, support materials may signpost appropriate emergency services or human crisis support, but BecomingOS must not imply live rescue, monitoring, diagnosis, treatment, or professional support.

## Support Channels And Hours

Approved private beta support channels:

- Beta support email: `beta-support@lifeos.com`.
- Secure contact form on the Beta Portal, if available before beta start.

Support availability:

- Private beta support is asynchronous.
- No 24/7 support is approved.
- No emergency response or real-time monitoring is approved.
- Any response-time target must remain consistent with the approved deletion, withdrawal, access/export, and incident workflows.

## Owner Responsibilities

The Beta Operations Manager is responsible for:

- Triaging private beta support requests.
- Confirming whether requests are product, account, data-rights, safety-boundary, security, privacy/legal, AI/data, or product-scope issues.
- Maintaining minimal administrative support logs.
- Avoiding sensitive free text in support logs where possible.
- Coordinating deletion, access/export, correction, and withdrawal requests with privacy/legal owners.
- Coordinating suspected security incidents with the Security Officer.
- Coordinating safety-boundary or crisis-boundary concerns with the Safety Owner.
- Coordinating AI output, memory, embedding, retrieval, or provider issues with the AI/Data Owner.
- Coordinating Support Circle scope questions with product, safety, and privacy/legal owners.
- Ensuring support responses do not make public MVP, production, legal, privacy, security, accessibility, clinical, medical, or professional-advice claims.

## Escalation Matrix

| Issue class | Examples | Primary owner | Required action |
|---|---|---|---|
| Product/account support | Login/access issue, feature question, beta participation logistics | Beta Operations Manager | Triage, respond within approved support process, and record minimal administrative metadata. |
| Data-rights request | Deletion, access/export, correction, withdrawal, consent withdrawal | Privacy/Legal Owner with Beta Operations Manager | Follow approved deletion and withdrawal/export/access workflows. |
| Safety-boundary concern | User treats BecomingOS as therapy, crisis support, diagnosis, treatment, or emergency monitoring | Safety Owner with Beta Operations Manager | Reaffirm boundaries, signpost appropriate support where applicable, and avoid clinical/professional advice. |
| Crisis or immediate danger disclosure | Participant indicates immediate danger to self or someone else | Safety Owner; Privacy/Legal Owner as needed | Provide approved emergency/crisis signposting only. Do not imply monitoring or rescue. Escalate internally under approved safety rules. |
| Security issue | Suspected data exposure, account compromise, unauthorised access, secret exposure | Security Officer | Follow incident response process and coordinate any participant notification review with privacy/legal owner. |
| Privacy issue | Incorrect data handling, consent ambiguity, retention/deletion concern, participant notification question | Privacy/Legal Owner | Review handling, approve response wording, and update evidence/registers if needed. |
| AI-safety or AI/data issue | Harmful AI output, memory/retrieval error, embedding issue, provider-processing concern | AI/Data Owner; Safety Owner if safety-related | Pause affected processing if needed, exclude affected data where required, and document remediation. |
| Support Circle issue | Contact sharing, consent, revocation, alerting, support-contact privacy | Product Owner with Safety and Privacy/Legal Owners | Do not enable sharing/alerting unless prior explicit consent and approved rules exist. |
| Outage or availability issue | Beta Portal unavailable, support form unavailable, system incident | Beta Operations Manager; Security Officer if technical/security-related | Route to technical owner if assigned, notify participants only under approved communications rules. |

## Minimal Support Log

Support logs should contain only minimal administrative fields:

- Request ID.
- Request date.
- Channel.
- Request class.
- Status.
- Assigned owner.
- Escalation flag.
- Closure date.

Support logs must not include product memory, crisis narratives, unnecessary sensitive free text, unnecessary identity documents, or participant data beyond what is required to administer the request.

## Training Requirements

Before private beta support begins, the Beta Operations Manager must review:

- Product and beta boundaries.
- Consent notice and data categories.
- Deletion, access/export, correction, and withdrawal workflows.
- Safety boundaries and crisis/emergency signposting limits.
- Support Circle rules, if Support Circle is included.
- Minimal logging rules.
- Incident response escalation paths.
- Prohibited claims and professional-advice exclusions.

## Stage Model

| Stage | Support posture | Staffing assumption | Current status |
|---|---|---|---|
| Documentation planning | No live user support; documentation review only. | Not applicable unless owner assigns documentation contacts. | Active planning |
| Private beta | Limited trusted tester support only if private beta is separately approved. Covers product/account support, consent, withdrawal, deletion/export/access, safety-boundary questions, issue reporting, and owner escalation. | Beta Operations Manager assigned as named operations/support owner. Backup and escalation owners defined above. | Approved for support planning only / beta remains NO-GO until final go/no-go |
| Public MVP | Public-facing support model required before build approval, including response channels, escalation, data rights, incident handoff, and support copy review. | Unknown until public MVP operations/support owner approves. | NO-GO |
| Production | Production support operations required before launch, including staffing, coverage, escalation, provider incidents, data rights, accessibility support, analytics/privacy issues, and incident response. | Unknown until production operations plan is approved. | NO-GO |

## Required Support Capabilities Before Production

- Approved support scope and exclusions.
- Named operations/support owner.
- Approved support channels.
- Approved response-time targets, if any.
- Privacy/legal review of support copy and data handling.
- Safety review of crisis/signposting boundaries.
- Data deletion/export/access support process.
- Incident response handoff.
- Provider incident handoff.
- Accessibility support pathway.
- Analytics/privacy issue pathway.
- Support training and prohibited-claims guidance.

## Standing Rule

Support readiness must be approved separately for each stage. Private beta support planning approval does not approve private beta start, public MVP support readiness, production support readiness, implementation, live support operations, or any compliance claim.

## Approval Status

- [x] Approved
- [ ] Rejected
- [ ] Modify

Owner notes:

Approved on 2026-06-01 by the operations/support owner and product owner for private beta support planning only. The named private beta operations/support owner is Beta Operations Manager. Private beta remains NO-GO until all required evidence is complete and the final go/no-go decision is signed.
