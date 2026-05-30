# Privacy and Consent Agent P0 Review Assessment

## Review Scope

Reviewed deliverable:

- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`

Dependency inputs reviewed:

- `docs/01_product/prd_v0.1_for_becomingos.docx`
- `docs/07_analysis/p0_reviews/prd_review.md`
- `docs/02_research_and_validation/user_research_plan.docx`
- `docs/07_analysis/p0_reviews/user_research_review.md`

Related repository controls reviewed:

- `docs/07_analysis/p0_owner_review_packet.md`
- `docs/07_analysis/agent_owner_review_decision_register.md`
- `docs/07_analysis/remaining_readiness_blockers.md`
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`
- `docs/09_agent_prompts/06_privacy_and_consent_agent.md`

## Review Status

Review assessment drafted; Privacy/legal owner sign-off required

## Decision

Conditional — changes required

This is not an acceptance decision. Privacy/legal owner sign-off is still required before the Privacy and Consent deliverable can be used as accepted P0 evidence.

## Acceptance Criteria Check

| Criterion | Assessment | Notes |
|---|---|---|
| Defines data inventory. | Met | The pack includes categories for user profile, reflections, tags/metadata, calendar data, AI prompts/responses, encrypted backup, analytics, and support requests. |
| Defines data purpose and minimisation. | Met | The pack links each data category to purpose and includes a dedicated data minimisation policy. |
| Defines consent model. | Met | Consent categories include core journaling, sensitive data processing, AI analysis, calendar access, analytics, cloud backup, and cross-border transfers. |
| Defines participant/user consent copy or principles. | Met | The pack includes plain-language consent screen examples and privacy notice outline. |
| Defines consent withdrawal. | Met | Users can withdraw feature-specific consent, with future processing stopped and historical data deleted or de-identified unless required by law. |
| Defines retention policy. | Met | The pack includes a retention schedule for local reflections, synced reflections, metadata, AI prompts, backups, analytics, support requests, and age-verification records. |
| Defines export policy. | Met | Users can export reflections and tags in standard formats such as JSON or CSV, with temporary server exports deleted after a short window. |
| Defines deletion policy. | Met | Individual and account deletion are covered, including server deletion timelines and backup purge notes. |
| Defines memory deletion and rejected-memory exclusion. | Met | The pack states rejected or deleted memories are excluded from prompts, retrieval, embeddings, and future outputs. |
| Defines AI provider disclosure expectations. | Met with caveat | The pack explains AI provider processing and retention assumptions, but vendor-specific commitments need current review before use as compliance evidence. |
| Defines sensitive reflective data handling. | Met | Sensitive reflections are identified, explicit consent is required, and data minimisation is emphasized. |
| Defines crisis text handling and avoids storing raw sensitive crisis text by default. | Met | The pack says raw crisis text should not be stored by default and should use high-level tags or scrubbed summaries. |
| Defines audit/logging expectations without implying implementation exists. | Partial | The pack lists audit logs as MVP acceptance criteria, but wording should be clarified as future criteria, not current implementation. |
| Aligns with PRD and User Research assumptions. | Met with caveat | The pack aligns with the PRD on consent, deletion, AI drafts, calendar consent, and no supporter sharing, but age/minor language and organisation/vendor assumptions need reconciliation. |
| Identifies open privacy/legal questions. | Met | The pack includes legal counsel questions on sensitive data, health/privacy regulations, cross-border transfers, age-gating, AI liability, retention, crisis data, calendar data, and duty to warn. |
| Avoids implying production readiness. | Partial | The pack is clearly for legal review, but its MVP privacy acceptance criteria include implementation-ready wording that should stay provisional until owner sign-off and later build evidence exist. |

## Findings

### Strengths

- The pack clearly states it is not legal advice and is a structured privacy design artifact for qualified privacy/legal review.
- It includes a PIA draft, data inventory, data-flow map, consent model, consent screen copy, privacy notice outline, retention schedule, deletion/export policy, vendor/subprocessor checklist, AI provider checklist, cross-border issue list, age-gating checklist, data minimisation policy, never-save data list, crisis handling policy, MVP privacy acceptance criteria, and open legal questions.
- It strongly supports granular consent, data minimisation, user edit/delete/export rights, optional encrypted backup, explicit calendar consent, no automatic calendar write-back, and no supporter sharing in MVP.
- It addresses sensitive reflective data and crisis data with a clear default against storing raw crisis text.
- It connects deletion and rejected-memory handling to retrieval, embeddings, prompts, and future outputs.
- It identifies several qualified legal review questions rather than treating compliance as already resolved.

### Gaps

- The pack does not yet have Privacy/legal owner sign-off, decision date, or accepted evidence record.
- The PRD review is conditional, so product scope, prototype/MVP boundaries, and some research-dependent assumptions remain provisional.
- The canonical data model, security threat model, AI provider review, and crisis localisation review are not yet accepted, so privacy design dependencies remain open.
- Vendor names, controller identity, hosting regions, AI provider retention settings, and cross-border transfer pathways appear to be assumptions that need confirmation.
- The pack's MVP privacy acceptance criteria include implementation terms such as implemented, configured, enforced in code, audit logs implemented, and staff training; these should be framed as future criteria, not current state.

### Risks

- If the pack is treated as compliance evidence before privacy/legal sign-off, it could create a false readiness signal.
- AI provider retention, cross-border transfers, and sensitive reflective data processing may change depending on vendor contracts and selected infrastructure.
- Crisis handling may create safety/legal obligations that must be reconciled with the Crisis Localisation Agent and Legal Claims Review Agent.
- Age-gating and minor-handling language may conflict with the PRD's adult-only assumption unless clarified.
- Deletion across local storage, server storage, backups, AI provider logs, embeddings, and analytics requires later technical verification; the design alone does not prove enforcement.

### Contradictions

- The PRD frames the product as adults-only, while the privacy pack mentions adults and potentially minors if allowed by age-gating. This should be reconciled before sign-off.
- The PRD and prompt prohibit supporter sharing in MVP; the privacy pack aligns with that, but the existence of a separate supporter/donor privacy file elsewhere in local materials should not be treated as MVP scope without Product and Privacy/legal owner approval.
- No contradiction was found with the hard constraints around granular consent, optional encrypted backup, explicit calendar consent, no automatic calendar write-back, no raw crisis text by default, and deleted/rejected memory exclusion.

### Required changes

- Reconcile age/minor handling with the PRD's adults-only scope and document whether age assurance is self-declaration or a more formal method.
- Clarify organisation, controller, processor/vendor, AI provider, hosting region, and cross-border transfer assumptions before using the pack as compliance evidence.
- Rewrite implementation-flavored MVP privacy acceptance criteria so they are clearly future gates, not current implementation status.
- Confirm crisis data handling with Crisis Localisation and Legal Claims Review before participant research or product use.
- Confirm deletion and rejected-memory exclusion requirements with the Canonical Data Model and Security Threat Model once those reviews are drafted.
- Keep the Privacy and Consent status below acceptance until explicit Privacy/legal owner sign-off exists in the repository.

### Open questions

- Who is the legal controller for BecomingOS, and is the named entity in the pack confirmed?
- Which AI provider, cloud backup, analytics, and support vendors are actually in scope for the first reviewed prototype or MVP candidate?
- Is BecomingOS strictly adults-only for P0/MVP planning, and what age-gating method is proportionate?
- What cross-border transfer safeguards are required for the selected launch geography and vendor regions?
- What exact deletion standard applies to backups, AI provider logs, embeddings, analytics, and support records?
- What crisis data, if any, may be retained as metadata without creating clinical, crisis-support, or duty-to-warn obligations?

## Evidence Reviewed

- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`: Provides the privacy and consent design pack, including PIA draft, data inventory, data-flow map, consent model, screen copy, privacy notice outline, retention schedule, deletion/export policy, vendor and AI provider checklists, cross-border issue list, age-gating checklist, data minimisation policy, never-save data list, crisis data policy, MVP privacy acceptance criteria, and legal counsel questions.
- `docs/01_product/prd_v0.1_for_becomingos.docx`: Provides product scope, user assumptions, non-clinical boundaries, AI draft and memory requirements, consent/export/delete/privacy requirements, safety requirements, and release gates that privacy design depends on.
- `docs/07_analysis/p0_reviews/prd_review.md`: Records the PRD review as conditional, with open issues around prototype vs MVP scope, research-dependent claims, and implementation-flavored gate wording.
- `docs/02_research_and_validation/user_research_plan.docx`: Provides research recruitment, consent, data handling, emotional safety, and participant withdrawal expectations that privacy review must support.
- `docs/07_analysis/p0_reviews/user_research_review.md`: Records the User Research review as ready for Research owner sign-off but confirms that research findings are not yet completed or accepted.
- `docs/09_agent_prompts/06_privacy_and_consent_agent.md`: Defines expected Privacy and Consent deliverables and hard constraints, including minimal structured data, granular consent, optional encrypted backup, explicit calendar consent, no automatic calendar write-back, no supporter sharing in MVP, AI provider retention minimisation, no raw crisis text by default, and deleted/rejected memory exclusion.
- `docs/07_analysis/p0_owner_review_packet.md`: Establishes P0 review order, privacy review focus, update instructions, and the explicit non-build rule.
- `docs/07_analysis/agent_owner_review_decision_register.md`: Shows the Privacy and Consent deliverable was previously pending owner review with no decision date or evidence record.
- `docs/07_analysis/remaining_readiness_blockers.md`: Confirms owner review, P0 evidence acceptance, and legal/privacy/security/safety sign-off remain blockers before MVP build planning.
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`: Requires a privacy and consent pack with data inventory, consent model, retention, export, and deletion policy, and states readiness requires owner acceptance.
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`: Places Privacy and Consent after PRD and before data model and architecture hardening.
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`: Confirms Privacy and Consent output belongs in `docs/05_privacy_legal_safety/` and remains pending owner review.

## Dependency Notes

Privacy review depends on PRD scope, research recruitment and data handling, canonical data model, security threat model, AI provider review, and crisis localisation. Those dependencies determine what data is collected, what is optional, what is retained, how memory deletion works, what vendors receive data, how crisis text is handled, and what legal/privacy obligations apply.

The PRD and User Research deliverables are not yet accepted. The PRD review is conditional and the User Research review still requires Research owner sign-off. As a result, privacy assumptions about target users, launch geography, prototype/MVP scope, sensitive data categories, consent copy, and research data handling remain provisional.

The pack can be reviewed as a draft privacy design artifact, but it must not be treated as accepted compliance evidence until Privacy/legal owner sign-off exists. It also cannot close MVP build readiness by itself; later reviews must reconcile the canonical data model, security controls, crisis localisation, AI provider terms, and legal claims boundaries.

## Review Decision Template

```text
Agent:
Deliverable reviewed:
Review owner:
Review date:
Decision:
Evidence reviewed:
Open issues:
Severity:
Required changes:
Can this be used as P0 evidence? Yes/No/Conditional:
Notes:
```

## Recommended Register Update

Update the Privacy and Consent Agent row in `docs/07_analysis/agent_owner_review_decision_register.md` as follows:

| Deliverable path | Review status | Decision | Decision date | Evidence reviewed | Open issues | Severity | Follow-up action |
|---|---|---|---|---|---|---|---|
| `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx` | Review assessment drafted; Privacy/legal owner sign-off required | Conditional — changes required | 2026-05-20 | `docs/07_analysis/p0_reviews/privacy_and_consent_review.md` | Reconcile age/minor scope, vendor/controller assumptions, AI provider retention, crisis handling, and implementation-flavored MVP criteria. | Medium | Privacy/legal owner to review and sign off |

## Non-Build Rule

Do not start production implementation, backend, frontend, API, database, authentication, CI/CD, deployment, monitoring, or release work until P0 blockers are closed with evidence and the Integration Agent gives a documented go/no-go decision.
