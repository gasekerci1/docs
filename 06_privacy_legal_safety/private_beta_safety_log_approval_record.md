# Private Beta Safety Log Approval Record

Current status: decision request / not approved. Default status: not approved.

This record does not approve private beta, public MVP build, production readiness, implementation, or compliance claims.

## Default Status

Safety logging status: Not approved.

No safety logging may be enabled until the owner, safety, privacy/legal, and security reviewers make an explicit signed decision to enable, disable, or defer safety logging for private beta.

## Safety Log Purpose

Proposed purpose:

- Narrow beta safety review.
- Operational learning about whether safety boundaries and signposting are understood.
- Review of stop criteria where approved.

Safety logs must not be used for product memory, AI memory, recommendations, analytics text, marketing, training data, or production reuse.

## Permitted Fields

Proposed permitted fields:

- Event ID.
- Date or timestamp.
- Event category.
- Resource shown category.
- Self-initiated/help-seeking flag.
- Action taken category.
- Review owner.
- Status.

## Prohibited Fields

Prohibited unless separately approved by safety/privacy/legal owners:

- Crisis message text.
- Sensitive free text.
- Self-harm details.
- Diagnosis labels.
- Therapy-style notes.
- Full conversation transcripts.
- Manual reflection content.
- Documents, photos, audio, or video.
- Support contact private details beyond approved minimal identifiers.

## Retention Limit

Retention limit placeholder: [Insert approved retention period.]

Safety log retention may differ from product data retention only if approved by owner, safety, privacy/legal, and security reviewers.

## Access Roles

Approved access roles placeholder:

- Safety owner:
- Privacy/legal owner:
- Security owner:
- Product owner:
- Other approved reviewer:

Access must be limited to named roles with beta safety responsibilities.

## Exclusions

- Excluded from product memory: Yes.
- Excluded from AI memory: Yes.
- Excluded from recommendations: Yes.
- Excluded from analytics text: Yes.
- Excluded from model/provider training data: Yes.

## NA-006 Decision Request

Safety logging status: missing approval evidence / decision required.

The reviewed safety logging policy is a draft. The reviewed safety boundaries confirm that BecomingOS is not an emergency service, does not monitor users in real time, and must not be positioned as crisis intervention, therapy, diagnosis, treatment, emergency response, or professional advice.

### Crisis-Boundary Risks

- Safety logging could be misread as real-time monitoring, crisis response, rescue, clinical triage, or emergency support.
- Support Circle or accountability features could be misread as automatic alerting unless prior user consent, clear rules, and documented boundaries exist.
- Full crisis messages, self-harm details, diagnosis labels, therapy-style notes, transcripts, reflections, documents, photos, audio, video, or support contact details could expose sensitive data if logged.
- Over-broad safety logs could conflict with the non-clinical product boundary and data-minimisation posture.
- Retention without an approved limit could preserve crisis/safety data longer than necessary.

### Required Memory And Analytics Exclusions

Safety logs, if approved at all, must remain:

- Excluded from product memory.
- Excluded from AI memory.
- Excluded from recommendations.
- Excluded from analytics text.
- Excluded from model/provider training data.
- Excluded from marketing evidence.
- Segregated from product memory and analytics stores.

Crisis text and sensitive free text must not enter product memory, AI memory, recommendations, analytics text, embeddings, model/provider training data, or future outputs.

### Missing Approval Evidence

- No signed decision says safety logging is enabled, disabled, or deferred.
- Retention limit is still a placeholder.
- Approved access roles are still placeholders.
- Review owner and review date are still placeholders.
- Security review is not recorded.
- Privacy/legal review is not recorded.
- Safety owner review is not recorded.
- No testing evidence shows safety logs are segregated from product memory and analytics.
- No testing evidence shows crisis text and sensitive free text are excluded from analytics, AI memory, recommendations, embeddings, provider training, and future outputs.

### Required Owner Decision

Recommended decision for owner review: `Modify / not approved for use yet`.

The required owner decision must choose one:

- Disable safety logging for private beta.
- Defer safety logging until a later approved beta stage.
- Enable only minimal, segregated safety event classifications after safety, privacy/legal, security, and owner approval.

If enabled, the signed decision must define permitted fields, prohibited fields, retention limit, access roles, review owner, escalation path, deletion/export handling, and evidence that crisis text cannot enter memory or analytics.

## Review Owner

Review owner placeholder:

Date:

## Decision

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Owner notes:

Conditions:

Date:
