# Private Beta Data Deletion Workflow

Current status: review draft / modify required. Requires owner, privacy, legal, and security review. This workflow does not approve private beta, implementation, public MVP build, production readiness, or compliance claims.

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

1. Receive request or trigger.
   - Intake method placeholder: [Insert approved intake channel.]
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
   - Follow approved provider deletion process.
   - Record whether provider deletion request was submitted and confirmed.

10. Handle logs.
   - Operational logs are separate from product memory.
   - Approved safety logs, if any, follow the safety log approval record and retention rule.
   - Do not treat logs as product memory.

11. Exception handling.
   - Any exception must be reviewed by privacy/legal/security owner.
   - Exception notes must avoid sensitive free text where possible.

12. Confirm completion to tester.
   - Confirmation method placeholder: [Insert approved response channel.]
   - Include what was deleted, what was anonymised, and any approved exception.

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

## NA-004 Review Findings

Missing workflow steps or details:

- Approved intake channel is still a placeholder.
- Approved tester completion-response channel is still a placeholder.
- Response-time target is not defined in this workflow.
- Owner/reviewer roles for each deletion step are not assigned.
- Provider-held data deletion depends on AI provider approval and provider deletion evidence, which are not complete.
- Backup, restore, export, analytics, and operational log handling are not fully specified.
- Exception handling does not define approval thresholds, retention limits, or escalation owners beyond privacy/legal/security review.
- End-of-beta deletion versus anonymisation criteria are not operationally defined.

Testing evidence gaps:

- No test evidence shows a deletion request can be received, scoped, verified, completed, and confirmed.
- No test evidence shows embeddings are invalidated or deleted after source deletion, edit, rejection, expiry, archive, or consent withdrawal.
- No test evidence shows deleted or withdrawn data is excluded from AI retrieval, recommendations, Today plans, Ask AI, analytics, embeddings, and future outputs.
- No test evidence shows provider deletion requests can be submitted and confirmed.
- No test evidence shows deletion logs remain minimal and avoid sensitive free text.

## Approval Status

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Owner/privacy/legal/security notes:

Date:
