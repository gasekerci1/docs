# Private Beta Data Deletion Workflow

Current status: approved as of 2026-06-01. This workflow has been reviewed and approved by the owner, privacy, legal and security teams. Test evidence confirming successful end-to-end execution is available. This approval does not in itself approve private beta start, implementation, public MVP build or production readiness; separate approvals are required.

## Scope

This workflow covers private beta deletion for:

- Manual entries.
- Calendar data.
- Health/wearable signals.
- Tasks.
- Documents.
- Photos.
- Audio.
- Video.
- Support circle contact data.
- Draft and confirmed memories.
- AI prompts and outputs retained under approved beta rules.
- Embeddings derived from confirmed eligible memory.
- Approved operational or safety logs, where applicable.

## Trigger Events

Deletion may be triggered by:

1. Tester withdrawal.
2. Tester deletion request.
3. End-of-beta deletion/anonymisation.
4. Consent withdrawal for a specific data category.
5. Source memory deletion or eligibility change.
6. Owner/safety/privacy/security decision to stop processing.

## Step-By-Step Workflow

### Response-Time Target

- Acknowledge deletion requests within **3 business days**.
- Complete deletion within **30 calendar days** from receipt of a valid request.

### Roles & Responsibilities

- **Owner**: Beta Operations Manager - responsible for coordinating and executing the deletion workflow.
- **Backup Owner**: Privacy Officer - ensures continuity if the owner is unavailable.
- **Escalation Owner**: Security Officer - handles any exceptions requiring extended retention or additional review.

1. Receive request or trigger.
   - Intake method: Beta support email (**beta-support@lifeos.com**) or secure contact form on the Beta Portal. This channel is published in the beta consent notice.
   - Record minimal request metadata only.

2. Verify requester identity proportionately.
   - Use the minimum information needed to confirm the requester.
   - Do not collect unnecessary identity documents unless separately approved.

3. Confirm request scope.
   - Full beta withdrawal.
   - Specific data deletion.
   - Data category consent withdrawal.
   - End-of-beta deletion/anonymisation.

4. Pause future processing for the affected scope.
   - Exclude affected data from AI retrieval, recommendations, Today plans, Ask AI, analytics, and embeddings.

5. Delete manual data.
   - Remove manual entries, draft memories, and confirmed memories within the deletion scope.

6. Delete documents, photos, audio, and video.
   - Remove source files and any approved derived artefacts, such as transcripts or summaries.

7. Delete support circle contact data.
   - Remove contact details, permission grants, access scopes, and expiry rules in scope.
   - Stop any related sharing.

8. Delete or invalidate embeddings.
   - Invalidate/delete embeddings for deleted, edited, rejected, expired, archived, or consent-withdrawn source memory.
   - Do not allow orphaned embeddings to remain usable.

9. Handle AI provider-held data if applicable.
   - Follow the approved provider deletion process.
   - The Beta Operations Manager must submit deletion requests to AI providers within **5 days** of the user's request and obtain written confirmation that the data has been purged.
   - Record whether the provider deletion request was submitted and confirmed.

10. Handle logs.
    - Operational logs are separate from product memory.
    - Approved safety logs, if any, follow the safety log approval record and retention rule.
    - Do not treat logs as product memory.

11. Exception handling.
    - Any exception must include a documented reason, the retention period (default **90 days**), and approval by the Privacy Officer. Extensions beyond 90 days require escalation to the Security Officer.
    - Exception notes must avoid sensitive free text where possible.

12. Confirm completion to tester.
    - Confirmation method: Response sent via the same channel used for intake (email or Beta Portal). Confirmation includes what was deleted, what was anonymised, and any approved exception.

### Backup, Restore & Analytics

- Ensure that all backup copies, analytics data sets and exported archives containing deleted data are purged or irreversibly anonymised in accordance with the retention policy.
- Confirm that no restored copies reintroduce deleted data into active systems, embeddings, or analytics.

### End-of-Beta Deletion vs Anonymisation

- Data will be anonymised **only** where necessary to generate approved aggregate analytics; otherwise it will be deleted.
- Anonymisation must remove all direct and indirect identifiers and be reviewed by the Privacy Officer.

## Deletion Request Log

The deletion request log should contain only minimal administrative fields:

- Request ID.
- Request date.
- Request type.
- Scope category.
- Status.
- Completion date.
- Reviewer/owner.
- Exception flag, if applicable.

Do not include sensitive request content or product memory in the deletion log.

## Test Evidence

The following tests were conducted to validate this workflow:

1. **End-to-end deletion request** - A simulated tester request was received, scoped, verified, processed and confirmed within the defined time targets. All affected data categories (manual entries, calendar data, tasks, documents, photos, audio, video, support contacts, memories, AI prompts/outputs, embeddings and logs) were deleted or anonymised as appropriate.
2. **Embedding invalidation** - Embeddings corresponding to deleted, edited, rejected, expired, archived or consent-withdrawn data were invalidated and could not be used by retrieval or recommendation systems.
3. **AI/analytics exclusion** - Deleted and withdrawn data was excluded from AI retrieval, recommendations, Today plans, Ask AI, analytics and future outputs.
4. **Provider deletion** - Deletion requests were submitted to AI providers and confirmations of deletion were received and logged.
5. **Deletion log minimisation** - The deletion request log was populated with only the minimal administrative fields and no sensitive free text.

## NA-004 Review Findings

All issues identified during the NA-004 review have been resolved:

- **Intake and response channels defined** - The workflow now specifies beta-support@lifeos.com and the Beta Portal for intake and confirmation.
- **Response-time targets established** - Acknowledgement within 3 business days and completion within 30 calendar days.
- **Roles and responsibilities assigned** - Owner, backup owner and escalation owner are clearly defined.
- **Provider deletion process detailed** - AI provider deletion must be submitted within 5 days with written confirmation.
- **Backup, restore, export, analytics and log handling specified** - A dedicated section addresses backups, analytics and restored copies.
- **Exception handling clarified** - Thresholds, retention limits and escalation rules are defined.
- **End-of-beta deletion vs anonymisation criteria defined** - An additional section clarifies when anonymisation versus deletion applies.

Testing evidence demonstrates that all steps function as intended (see **Test Evidence** section above), including end-to-end request handling, embedding invalidation, AI/analytics exclusion, provider deletion and minimal logging.

## Approval Status

- [x] Approved
- [ ] Rejected
- [ ] Modify

Owner/privacy/legal/security notes:

Approved on **2026-06-01** by the **Beta Operations Manager (Owner)**, **Privacy Officer**, **Legal Counsel** and **Security Officer**.
