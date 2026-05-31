# Private Beta Readiness Checklist

Current status: planning checklist only. This document does not approve private beta start, public MVP build, production readiness, implementation work, or legal/privacy/security/regulatory compliance claims.

Private beta may use real data only after explicit consent, privacy/safety review, AI provider review, separate environment definition, retention/deletion workflow, and owner go/no-go approval.

## Beta Boundary

- [ ] Private beta is limited to trusted participants only.
- [ ] Suggested participant count is confirmed or changed by owner; current suggestion is 5-10 trusted testers.
- [ ] Private beta is documented as non-public, non-commercial, pre-MVP, experimental, and non-clinical.
- [ ] Private beta is explicitly not public MVP, public build, production release, commercial launch, or production readiness.

## Product Gates

- [ ] Source-of-truth product scope reviewed against `docs/02_product/becomingos_product_specification.docx`.
- [ ] Beta feature scope documented and limited.
- [ ] Today Directive, Bad Day Mode, AI memory, Support Circle, and analytics scope confirmed for beta or excluded.
- [ ] User-facing wording reviewed for calm, respectful, non-shaming, non-clinical language.
- [ ] No claims of therapy, diagnosis, treatment, crisis intervention, legal advice, medical advice, financial advice, addiction treatment advice, guaranteed outcomes, public MVP, or production readiness.

## Consent And Privacy Gates

- [ ] Draft consent notice reviewed by privacy/legal owner.
- [ ] Consent notice covers manual entries, calendar, health/wearable signals, tasks, documents, photos, audio, video, and support circle contacts.
- [ ] Purpose and optionality are clear for each data category.
- [ ] Retention period approved; proposed default is 90 days unless owner approves otherwise.
- [ ] Deletion, access/export, and withdrawal process documented.
- [ ] No production reuse without renewed consent.
- [ ] Legal review completed before broad release or compliance claims.

## Safety Gates

- [ ] Safety boundaries reviewed.
- [ ] Product states it is not an emergency service and does not monitor users in real time.
- [ ] Crisis/safety content excluded from product memory.
- [ ] Minimal segregated safety logging policy approved, if safety logs are used.
- [ ] Crisis text and sensitive free text excluded from analytics unless separately approved.
- [ ] Support Circle automatic alerting prohibited unless prior consent and rules exist.

## AI And Memory Gates

- [ ] AI outputs are clearly labelled as drafts requiring user review.
- [ ] Durable memory requires explicit confirmation.
- [ ] Rejected, deleted, unconfirmed, expired, archived, and consent-withdrawn data excluded from AI use.
- [ ] Embeddings generated only from confirmed eligible memory.
- [ ] Embeddings invalidated/deleted when source memory changes eligibility.
- [ ] AI provider due diligence completed before live user data processing.

## Data And Security Gates

- [ ] Separate beta environment requirements approved.
- [ ] Access control and named owners defined.
- [ ] Minimal logging reviewed.
- [ ] Deletion/anonymisation workflow covers source data and derived data.
- [ ] Manual shutdown plan documented.
- [ ] Backup/restore assumptions reviewed.
- [ ] Secret-management concept documented at planning level.
- [ ] Security owner review completed.

## Accessibility, Testing, And Operations Gates

- [ ] WCAG 2.2 AA baseline accepted for beta-facing flows where applicable.
- [ ] Private beta testing plan approved.
- [ ] Stop criteria approved.
- [ ] Participant support process defined.
- [ ] Analytics event taxonomy reviewed for privacy/safety.
- [ ] Incident/contact owner for beta defined.

## Owner Approval Gate

- [ ] Product owner approval.
- [ ] Privacy/legal approval.
- [ ] Safety approval.
- [ ] AI provider/data approval.
- [ ] Security approval.
- [ ] Research/testing approval.
- [ ] Final owner go/no-go signed.

Default status: NO-GO until all required approvals are signed.

