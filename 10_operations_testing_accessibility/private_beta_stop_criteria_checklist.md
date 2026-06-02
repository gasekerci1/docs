# Private Beta Stop Criteria Checklist

Current status: limited trusted private beta stop checklist only. Any triggered criterion requires owner review before affected testing restarts.

| Criterion | Trigger | Required action | Owner review required? | Restart condition |
|---|---|---|---|---|
| Privacy issue | Data collected, exposed, retained, or shared outside approved beta scope. | Pause affected testing, preserve minimal incident facts, notify privacy owner, assess deletion/containment. | Yes | Privacy owner confirms containment, remediation, and participant handling. |
| Consent failure | Tester did not receive or acknowledge approved consent, or consent scope was unclear. | Stop affected session, pause processing, confirm/delete affected data as required. | Yes | Consent issue corrected and participant re-consents before any further testing. |
| Deletion/export failure | Access/export/correction/deletion/withdrawal request cannot be fulfilled within approved workflow. | Pause affected processing, escalate to privacy/security owner, document minimal administrative facts. | Yes | Workflow issue resolved and request completed or exception approved. |
| Unsafe AI output | AI output implies therapy, diagnosis, treatment, crisis support, emergency monitoring, legal/medical/financial advice, or harmful instruction. | Stop AI test flow, log minimal classification, review prompt/output handling, remove affected output from memory eligibility. | Yes | AI owner and safety owner approve mitigation and retest. |
| Crisis misuse | Participant attempts to use BecomingOS as crisis support or emergency response. | Stop product flow, show/signpost appropriate emergency or crisis resources, record minimal classification only. | Yes | Safety owner confirms boundary handling and whether testing may continue. |
| Unsupported therapy/medical/legal/financial use | Participant seeks professional advice outside approved non-clinical scope. | Redirect to boundary statement, stop that flow, do not provide advice. | Yes for repeated or serious cases | Operator confirms wording and flow prevent unsupported use. |
| Sensitive analytics capture | Analytics captures sensitive free text, crisis text, medical/therapy content, relationship details, addiction details, uploaded document text, or personal secrets. | Pause analytics, delete/anonymise affected data under approved workflow, review taxonomy. | Yes | Privacy/legal/safety owners approve corrected analytics handling. |
| Unapproved AI/provider/data flow | Files, images, audio, video, vector stores, wearables, passive monitoring, or automated tool actions are used with live data without approval. | Stop affected feature immediately, isolate/delete affected data, escalate to AI/privacy/security owners. | Yes | Separate approval or removal confirmed; affected data handled under approved workflow. |
| Participant distress | Participant reports distress or operator observes concerning discomfort related to beta use. | Stop session, remind non-clinical boundary, signpost appropriate support, record minimal classification only. | Yes | Safety owner reviews and approves whether participant may continue. |
| Security concern | Unauthorized access, suspicious activity, data exposure risk, or account/control weakness is observed. | Pause affected testing, escalate to security owner, preserve minimal incident facts. | Yes | Security owner confirms containment, remediation, and restart approval. |

## Operator Confirmation

- [ ] Stop criteria reviewed before testing.
- [ ] No triggered criterion remains unresolved.
- [ ] Any triggered criterion has named owner review.
- [ ] Restart condition has been met before affected testing resumes.
