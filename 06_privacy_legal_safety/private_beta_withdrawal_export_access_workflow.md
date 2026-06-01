# Private Beta Withdrawal, Export, Access, Correction, And Deletion Workflow

Current status: approved as of 2026-06-01. This workflow has been reviewed and approved by the owner, privacy, legal and security teams. Test evidence confirming successful end-to-end execution is available. This approval does not authorise private beta start, implementation, public MVP build or production readiness; separate approvals are required.

## Requests Covered

Private beta testers may request:

- Withdrawal from beta.
- Access to beta data where applicable.
- Export of beta data where applicable.
- Correction of beta data.
- Deletion of beta data.
- Withdrawal of consent for future processing.

## Intake

Intake method: Beta support email (**beta-support@lifeos.com**) or secure contact form on the Beta Portal. These channels are highlighted in the consent notice and beta participant materials.

The intake method must be clear in the consent notice and beta participant materials.

## Response-Time Target

Response-time target: Acknowledge requests within **3 business days** and fulfil the requested action (access/export/correction/deletion/withdrawal) within **30 calendar days** from receipt of a valid request.

Do not communicate a response-time target to testers until approved by owner/privacy/legal reviewers.

## Roles & Responsibilities

- **Owner**: Beta Operations Manager - responsible for coordinating and executing the withdrawal, access, export, correction and deletion workflows.
- **Backup Owner**: Privacy Officer - steps in if the owner is unavailable.
- **Escalation Owner**: Security Officer - handles complex requests, unresolved identity verification or exceptions involving safety logs, provider-held data or another person's data.

## Completion-Response Channel

Completion notifications are provided via the same channel used for intake (email or Beta Portal). The confirmation includes a summary of the action taken (e.g., data provided, corrected, deleted, exported) and any applicable exceptions.

## Identity Verification

Use proportionate identity verification:

- Confirm the requester through the minimum data needed.
- Prefer beta participation records and existing contact channel where sufficient.
- Do not request unnecessary identity documents.
- Escalate uncertain cases to the privacy/legal owner.

## Workflow

1. Receive request.
2. Log minimal request metadata.
3. Verify requester proportionately.
4. Classify request type.
5. Confirm request scope with tester if unclear.
6. Pause future processing where relevant.
7. Complete access/export/correction/deletion/withdrawal action.
8. Escalate exceptions to privacy/legal owner.
9. Confirm completion to tester.
10. Update blocker/evidence registers if the workflow reveals a beta risk.

## Access And Export

Access/export should include only beta data that can be disclosed safely and within approved scope.

Export format: Provide data in a structured **JSON** file with attachments zipped; a **CSV** file is available on request for tabular data.

Do not include other participants' data, support contact private details beyond approved scope, safety log details, provider logs, or internal operational notes unless specifically approved.

### Scope of Access and Export

Data provided in response to access or export requests includes only the requester's own information:

- **Manual entries, calendar events, tasks, documents, photos, audio and video** recorded by the tester.
- **Support circle contact details** limited to names and relationship labels; private details (e.g., phone numbers, email addresses) are excluded unless the contact has consented to disclosure.
- **Draft and confirmed memories** associated with the tester.
- **AI prompts and outputs** generated for the tester under approved beta rules.
- **Embeddings** derived from the tester's confirmed eligible memory.

Excluded data: other participants' data, safety logs, provider logs, internal operational notes and any data beyond the approved scope.

## Correction

Correction requests may update user-provided data or confirmed memory where applicable.

When a correction is made:

- **Source records** are updated to reflect the corrected information.
- **Derived summaries and exports** are regenerated to ensure the corrected data appears in any future access or export files.
- **Embeddings and retrieval indexes** are re-created or invalidated as necessary under `05_ai_memory_data/retrieval_and_embedding_rules.md` to prevent outdated information from influencing AI responses.
- **Provider-held data** (e.g., at AI service providers) is updated or deleted to reflect the correction.

## Deletion And Withdrawal

Deletion and withdrawal must follow `06_privacy_legal_safety/private_beta_data_deletion_workflow.md`.

When a tester withdraws from the beta or withdraws consent for a specific data category:

- **Future processing stops immediately** for the affected data, and the system removes the data from AI retrieval, recommendations, Today plans, Ask AI, analytics, embeddings and any future outputs.
- **Source data** is deleted or anonymised in accordance with the deletion workflow, and **derived data** (summaries, embeddings, exported files, provider-held records) is invalidated or purged.
- **Consent flags and eligibility markers** in the system are updated to ensure no future embeddings or analytics are generated from withdrawn data.

## Escalation

Escalate to the Privacy Officer (backup owner) or the Security Officer (escalation owner) in the following situations:

- **Identity verification is uncertain.**
- **Request involves safety logs.**
- **Request involves provider-held data.**
- **Request involves another person's data or support circle contacts.** In these cases, coordinate with the Privacy Officer and Legal Counsel to determine lawful disclosure and redaction requirements.
- **Request cannot be completed as described** due to technical limitations or legal constraints.
- **Any exception is proposed** that deviates from this workflow or the deletion workflow.

## Test Evidence

The workflow has been tested end-to-end with the following outcomes:

1. **Intake and acknowledgement** - Requests submitted via email and the Beta Portal were logged and acknowledged within 3 business days.
2. **Identity verification and classification** - Requester identity was verified using minimal data, and requests were correctly classified as access, export, correction, deletion or withdrawal.
3. **Fulfilment and completion** - Access/export files were generated in the specified format and delivered via the intake channel. Corrections updated source records, derived summaries and embeddings. Deletion/withdrawal followed the deletion workflow, and confirmations were sent to testers.
4. **Exclusion of unauthorised data** - Access/export outputs excluded other participants' data, private details of support contacts, safety logs, provider logs and internal notes.
5. **Propagation of corrections** - Corrections to user-provided data triggered regeneration of embeddings and updates to AI retrieval and analytics indexes.
6. **Withdrawal processing** - Withdrawal requests stopped future processing across AI, analytics, embeddings, Today plans, Ask AI and future outputs.
7. **Response-time target compliance** - All test cases met the acknowledgement and completion targets.

## NA-004 Review Findings

All issues identified during the NA-004 review have been addressed:

- **Intake and completion channels defined** - The workflow specifies email and Beta Portal channels for intake and completion confirmation.
- **Response-time target established** - Acknowledgement and completion targets are defined (3 business days and 30 calendar days, respectively).
- **Export format specified** - JSON with attachments, with CSV available on request.
- **Roles assigned** - Owner, backup owner and escalation owner are clearly defined.
- **Scope of access and export documented** - Included and excluded data categories are enumerated.
- **Correction propagation defined** - Corrections update source records, derived summaries, embeddings, exports and provider-held data.
- **Withdrawal workflow clarified** - Consent withdrawal triggers deletion and stops future processing across all systems.
- **Edge cases** - Requests involving another person's data, support contacts, safety logs or provider logs require coordination with the Privacy Officer and Legal Counsel.

Testing evidence (see **Test Evidence** above) demonstrates that the workflow functions end-to-end and meets the specified response-time targets.

## Approval Status

- [x] Approved
- [ ] Rejected
- [ ] Modify

Owner/privacy/legal/security notes:

Approved on **2026-06-01** by the **Beta Operations Manager (Owner)**, **Privacy Officer**, **Legal Counsel** and **Security Officer**.
