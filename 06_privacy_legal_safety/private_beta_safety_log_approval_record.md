# Private Beta Safety Log Approval Record

Current status: approved for limited private beta safety event classification logging as of 2026-06-01.

This record approves only minimal, segregated safety event classification logging for limited private beta. It does not approve public MVP build, production readiness, implementation beyond the limited private beta support/safety process, emergency monitoring, crisis intervention, therapy, diagnosis, treatment, professional advice, or compliance claims.

## Decision

Safety logging status: enabled for minimal event classifications only.

Safety logs must not be used for product memory, AI memory, recommendations, analytics text, marketing, training data, or production reuse.

## Safety Log Purpose

Approved purpose:

- Narrow private beta safety review.
- Operational learning about whether safety boundaries and signposting are understood.
- Review of approved stop criteria.
- Minimal escalation tracking when a safety-boundary concern occurs.

## Permitted Fields

Approved permitted fields:

- Event ID.
- Date or timestamp.
- Event category.
- Severity level.
- Resource shown category.
- Self-initiated/help-seeking flag.
- Action taken category.
- Owner notified.
- Review owner.
- Status.
- Closure date.

## Prohibited Fields

Do not log:

- Crisis message text.
- Sensitive free text.
- Self-harm details.
- Diagnosis labels.
- Therapy-style notes.
- Full conversation transcripts.
- Manual reflection content.
- Documents, photos, audio, or video.
- Support contact private details beyond approved minimal identifiers.
- Product memory content.
- AI prompt or output text.

## Retention Limit

Retention limit: 90 days from the event date unless a shorter legally required period applies or the privacy/legal owner approves earlier deletion.

Safety log data must be deleted or anonymised after beta unless renewed consent and owner approval exist under a future approved policy.

## Access Roles

Approved access roles:

- Safety Owner.
- Privacy/Legal Owner.
- Security Officer.
- Beta Operations Manager.
- Product Owner only when needed for beta stop/resume or Support Circle decisions.

Access must be limited to named roles with beta safety responsibilities.

## Exclusions

- Excluded from product memory: Yes.
- Excluded from AI memory: Yes.
- Excluded from recommendations: Yes.
- Excluded from analytics text: Yes.
- Excluded from embeddings: Yes.
- Excluded from model/provider training data: Yes.
- Excluded from marketing evidence: Yes.

Crisis text and sensitive free text must not enter product memory, AI memory, recommendations, analytics text, embeddings, model/provider training data, or future outputs.

## Escalation Path

- Safety-boundary concern: Safety Owner and Beta Operations Manager.
- Privacy/data issue: Privacy/Legal Owner.
- Security or access issue: Security Officer.
- Support Circle issue: Product Owner, Safety Owner, and Privacy/Legal Owner.
- Stop/pause trigger: follow `08_operations_testing_accessibility/private_beta_stop_criteria.md`.

## Approval Status

- [x] Approved
- [ ] Rejected
- [ ] Modify

Owner notes:

Approved on 2026-06-01 by safety, privacy/legal, security, and owner reviewers for limited private beta safety event classification logging only.
