# Private Beta Consent Notice Decision Request

Current status: owner decision request only. This document does not approve private beta, public MVP/build, production readiness, public launch, legal compliance, privacy compliance, security compliance, implementation work, live data collection, or live user-data processing.

## NA-002 Review Status

Reviewed documents:

- `06_privacy_legal_safety/private_beta_final_consent_notice.md`
- `06_privacy_legal_safety/private_beta_consent_requirements.md`
- `06_privacy_legal_safety/privacy_consent_data_governance.md`

Consent notice status: incomplete / modify required before approval.

The final consent notice is an approval-ready draft, but it still contains unresolved placeholders and depends on decisions that are not approved in the repository.

## Missing Or Unapproved Items

- Approved AI provider name, model/service, processed data categories, processing purpose, retention/logging/training/deletion terms, subprocessors, and transfer information.
- Approved retention period.
- Approved deletion/anonymisation workflow.
- Approved access, export, correction, deletion, withdrawal, and consent-withdrawal intake method.
- Approved separate beta environment definition.
- Approved safety logging decision and crisis/safety data handling rules, if safety logs are used.
- Approved Support Circle inclusion/exclusion and contact-alerting rules, if Support Circle is tested.
- Privacy/legal/safety owner review of all user-facing consent wording.
- Legal review for any legal/compliance/privacy/regulatory claim; no compliance claim is approved by the reviewed documents.

## Risks

- Participants could provide real data before provider, retention, deletion, export/access, and withdrawal terms are concrete.
- Sensitive categories such as health/wearable signals, documents, photos, audio, video, and Support Circle contacts could be collected without sufficiently specific handling rules.
- AI provider processing could occur before provider terms and participant disclosure are approved.
- Crisis, safety, or Support Circle wording could imply monitoring, emergency response, professional support, or automatic alerting.
- Beta consent could be mistaken for private beta approval, public MVP/build approval, production readiness, or a legal compliance finding.

## Recommended Owner Decision

Recommended decision for privacy/legal/safety owner review: `Modify / not approved for use yet`.

Conditions before approval:

- Replace every placeholder in the consent notice with approved text.
- Complete AI provider due diligence and disclosure before any live user data is processed by a provider.
- Approve retention, deletion/anonymisation, access/export, correction, withdrawal, and consent-withdrawal workflows.
- Confirm whether health/wearable signals, documents, photos, audio, video, and Support Circle contacts are included in the private beta.
- Confirm safety logging and crisis/safety data handling.
- Complete privacy/legal/safety owner review.
- Treat every legal, privacy, regulatory, and compliance statement as requiring legal review unless separately approved in a signed decision record.

## Proposed Owner Decision Template

```text
Privacy/legal/safety owner:
Decision date:
Decision: Approved / Rejected / Modify
Approved for private beta use? Yes/No:
Required changes:
AI provider disclosure approved? Yes/No:
Retention period approved? Yes/No:
Deletion/anonymisation workflow approved? Yes/No:
Access/export/correction/deletion/withdrawal process approved? Yes/No:
Sensitive data categories approved? Yes/No/Partial:
Support Circle included? Yes/No/Deferred:
Safety logging approved? Yes/No/Deferred:
Legal review completed for compliance/legal/privacy claims? Yes/No:
Notes:
```
