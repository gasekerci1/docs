# Crisis Localisation Agent P0 Review Assessment

## Review Scope

Reviewed deliverable:

- `docs/05_privacy_legal_safety/crisis_localisation_policy.docx`

Dependency inputs reviewed:

- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`
- `docs/07_analysis/p0_reviews/legal_claims_review.md`
- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`
- `docs/07_analysis/p0_reviews/privacy_and_consent_review.md`
- `docs/05_privacy_legal_safety/security_threat_model.docx`
- `docs/07_analysis/p0_reviews/security_threat_model_review.md`
- `docs/04_ai_memory_and_data/ai_evaluation_harness.docx`
- `docs/07_analysis/p0_reviews/ai_evaluation_harness_review.md`
- `docs/04_ai_memory_and_data/canonical_data_model.docx`
- `docs/07_analysis/p0_reviews/canonical_data_model_review.md`
- `docs/01_product/prd_v0.1_for_becomingos.docx`
- `docs/07_analysis/p0_reviews/prd_review.md`

Related repository controls reviewed:

- `docs/07_analysis/p0_owner_review_packet.md`
- `docs/07_analysis/agent_owner_review_decision_register.md`
- `docs/07_analysis/remaining_readiness_blockers.md`
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`
- `docs/09_agent_prompts/10_crisis_localisation_agent.md`

## Review Status

Review assessment drafted; Safety/legal owner sign-off required

## Decision

Conditional — changes required

This is not an acceptance decision. Safety/legal owner sign-off is still required before the Crisis Localisation deliverable can be used as accepted P0 evidence.

## Acceptance Criteria Check

| Criterion | Assessment | Notes |
|---|---|---|
| Preserves the boundary that BecomingOS is not crisis support. | Met with caveat | The policy states BecomingOS is not an emergency service, crisis-monitoring tool, provider of psychotherapy, crisis service, therapy substitute, or emergency assistance provider. Safety/legal owner should verify that all crisis card and moderate-risk copy preserves this boundary. |
| Avoids implying monitoring, emergency response, or active intervention. | Met with caveat | The policy says not to imply real-time monitoring, emergency dispatch, third-party notification, or active rescue. Some detection and safety-event language should be checked so it does not create an implied monitoring promise. |
| Defines supported locales or clearly marks locale assumptions. | Met | The policy identifies launch geography assumptions for Australia, Canada, the United States, and the United Kingdom, with an "Other countries" fallback path. These remain assumptions until launch geography is confirmed. |
| Defines crisis fallback copy. | Met | The policy includes fallback wording for unknown or unsupported locale cases and separate high-risk, moderate-risk, and Bad-Day Mode copy. |
| Defines emergency-resource routing language. | Met | The policy describes local emergency numbers, helplines, hotline categories, risk-category matching, and generic emergency instructions for unknown locales. |
| Defines resource maintenance process. | Met | It describes initial collection, official-source verification, legal review, QA, quarterly review, ad-hoc updates, annual audit, and user/provider correction reports. |
| Defines ownership for resource review/update. | Met with caveat | The policy names a Head of Safety or Crisis Response Lead, maintenance team, engineering owner, legal/privacy counsel, and governance committee. Actual named owners are still needed before operational reliance. |
| Defines unsupported-locale fallback. | Met | Unknown or unsupported locales receive generic emergency guidance, local emergency-services direction, and a country health-authority recommendation. |
| Defines raw crisis text handling and storage minimisation. | Met | The policy repeatedly states raw crisis text should not be stored by default and that logs should contain anonymised metadata, category, locale, resource IDs, and acknowledgement only. |
| Aligns with Legal Claims boundaries. | Met with caveat | The policy aligns with the Legal Claims review by prohibiting therapy, diagnosis, crisis-support promises, emergency dispatch, confidentiality promises, and rescue language. The Legal owner still needs to review final copy and jurisdiction-specific risk. |
| Aligns with Privacy and Consent handling of crisis data. | Met with caveat | The policy matches the privacy position against storing raw crisis text and precise location by default, but hashed user ID, retention period, IP-geolocation, minors, and cross-border handling need Privacy/legal owner confirmation. |
| Aligns with AI Evaluation Harness crisis/refusal tests. | Met with caveat | The policy supplies trigger categories, test requirements, false-positive/false-negative concerns, refusal boundaries, and logging checks. AI safety owner must reconcile thresholds and routing expectations. |
| Aligns with Security Threat Model safety-event risks. | Met with caveat | The policy includes anonymised safety-event records, restricted access, encryption, retention, audit, and governance review. Security owner must validate access control, monitoring, logs, and residual risks. |
| Aligns with Canonical Data Model crisis/safety entities. | Met with caveat | The policy maps to safety events, locale, resources shown, acknowledgement, retention, and deletion metadata. Data/privacy owner must reconcile exact fields, retention rules, and non-influence of raw crisis text. |
| Identifies open safety/legal questions. | Met | The policy lists open questions on duty to warn, cross-border transfer, minors, incorrect resources, third-party resource vetting, future social features, language localisation, accessibility, retention/deletion, and helpline communication. |
| Avoids implying production readiness or implemented crisis workflow. | Partial | The policy is documentation-only, but sections describing detection pipelines, UI interruption, database structure, logging, governance, and testing should be treated as future requirements until owner sign-off and build evidence exist. |

## Findings

### Strengths

- The policy is comprehensive and closely matches the Crisis Localisation Agent prompt, including localisation policy, launch geography assumptions, locale detection, fallback wording, resource database structure, verification process, update schedule, ownership, trigger categories, escalation copy, redirect copy, Bad-Day Mode copy, storage limits, event logging, test plan, and legal/safety questions.
- It strongly preserves the boundary that BecomingOS is not an emergency service, crisis-monitoring tool, therapy provider, clinical assessment tool, or emergency dispatcher.
- It includes practical copy for high-risk, moderate-risk, and non-clinical distress situations, with repeated statements that BecomingOS cannot provide emergency assistance or therapy.
- It includes a structured crisis resource database model with verified date, verified by, source URL, language, coverage, resource type, contact methods, and notes.
- It provides a cautious data-minimisation model that avoids storing raw crisis text by default and limits safety logs to anonymised metadata.
- It identifies legal/safety questions rather than treating crisis localisation obligations as settled.

### Gaps

- The deliverable does not yet have Safety/legal owner sign-off, a decision date, or a recorded owner decision.
- Supported launch geography is still an assumption and needs Product, Safety/legal, and possibly GTM confirmation before the locale set can be treated as controlling.
- Crisis resource phone numbers, short codes, URLs, languages, and coverage areas require fresh owner verification before any user-facing use.
- The policy references detection pipelines and machine-learning models; AI Evaluation, Security, Privacy, and Product owners need to ensure that this language does not imply continuous monitoring or implemented crisis support.
- The ownership model names roles but not actual accountable owners, review calendar, evidence log location, or escalation process for stale resources.
- The policy needs reconciliation with unresolved minors, duty-to-warn, cross-border, retention, hashed ID, IP-geolocation, and accessibility questions.

### Risks

- Outdated or inaccurate hotline information could create user harm and legal exposure if surfaced without a verified maintenance process.
- Copy that says the system detected risk or interrupts normal flow could be misread as monitoring or active support if not framed carefully.
- Locale inference through billing data, phone country code, device settings, or IP could create privacy and consent concerns if not aligned with the privacy design.
- Storing hashed user IDs, risk categories, acknowledgement state, locale, or follow-up flags may still constitute sensitive processing and needs qualified privacy/legal review.
- High-risk categories involving self-harm, harm to others, abuse, overdose, and minors may trigger jurisdiction-specific obligations that the repo has not resolved.
- The policy could be mistaken for operational readiness unless the review register and downstream documents keep it provisional.

### Contradictions

- The Legal Claims review requires no crisis-support or emergency-intervention implication, while this policy includes detection, crisis cards, blocked normal flow, safety logs, and governance review. Those can coexist, but the language needs Safety/legal owner reconciliation.
- The Privacy and Consent review supports not storing raw crisis text by default, while this policy proposes safety-event records with hashed user ID, acknowledgement, follow-up flags, and optional internal notes. The exact allowed fields and retention period remain unresolved.
- The Security Threat Model review flags crisis/safety data handling as conditional, and this policy depends on those controls for encrypted logs, restricted access, audit, and governance review.
- The AI Evaluation Harness review includes crisis routing tests and thresholds that are not yet owner-approved; this policy should not lock test thresholds or routing behavior ahead of that sign-off.
- The Canonical Data Model review treats crisis routing and safety entities as provisional; this policy should not be treated as final schema or workflow instruction.

### Required changes

- Safety/legal owner should verify all supported locales, emergency numbers, helplines, text/chat channels, language coverage, source URLs, and resource freshness before user-facing use.
- Confirm the actual launch geography and explicitly mark any non-launch locale content as reference or future expansion.
- Reconcile crisis detection, crisis-card interruption, acknowledgement, follow-up flags, and resumption of normal functionality with Legal Claims, Privacy and Consent, Security, AI Evaluation, Canonical Data Model, and PRD owners.
- Define accountable named owners or owner roles for resource verification, legal review, quarterly review, annual audit, user/provider correction reports, and stale-resource incident response.
- Clarify that all detection, routing, logging, UI, and database language is a future requirement, not evidence of implemented functionality.
- Resolve open safety/legal questions around duty to warn, minors, cross-border data transfer, retention/deletion, unsupported locales, accessibility, and helpline-provider permissions.
- Keep the Crisis Localisation status below sign-off until explicit Safety/legal owner review is recorded in the repository.

### Open questions

- Which launch countries and languages are in scope for the first user-facing prototype or MVP candidate?
- Who is the named Safety/legal owner for approving resource copy, resource lists, and update evidence?
- What source-of-truth file or database will track crisis resource verification date, verifier, source URL, and review history?
- What crisis-event metadata can be stored, for how long, and under which consent or legal basis?
- How should the product handle minors, abuse disclosures, threats to others, and jurisdiction-specific duty-to-warn questions?
- What exact wording prevents users from assuming BecomingOS monitors them, contacts emergency services, or provides crisis support?
- How should unsupported locales and ambiguous locale signals be handled without over-collecting location data?

## Evidence Reviewed

- `docs/05_privacy_legal_safety/crisis_localisation_policy.docx`: Provides the crisis localisation policy, supported launch geography assumptions, locale detection rules, fallback wording, resource database schema, verification process, update schedule, owner model, trigger categories, escalation copy, redirect copy, Bad-Day Mode copy, storage limits, safety-event logging model, testing plan, and open legal/safety questions.
- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`: Provides prohibited and safe claims, crisis boundary language, AI limitation language, and professional-boundary constraints that crisis copy must preserve.
- `docs/07_analysis/p0_reviews/legal_claims_review.md`: Records the Legal Claims assessment as conditional, with open issues around final copy, launch jurisdictions, crisis/AI boundary language, and upstream dependency alignment.
- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`: Provides privacy, consent, retention, deletion, AI provider, cross-border, age-gating, and crisis-data assumptions that crisis localisation must respect.
- `docs/07_analysis/p0_reviews/privacy_and_consent_review.md`: Records the Privacy and Consent assessment as conditional, with open issues around age/minor scope, vendor/controller assumptions, AI provider retention, crisis handling, and implementation-flavored criteria.
- `docs/05_privacy_legal_safety/security_threat_model.docx`: Provides the security assumptions for safety events, access controls, logging, encryption, prompt injection, vendor risks, incident response, and crisis/safety data protection.
- `docs/07_analysis/p0_reviews/security_threat_model_review.md`: Records the Security Threat Model assessment as conditional, with open issues around architecture/vendor assumptions, residual risks, crisis/safety data handling, secure deletion, admin access, and future security gate wording.
- `docs/04_ai_memory_and_data/ai_evaluation_harness.docx`: Provides AI evaluation expectations for crisis detection, refusal tests, prompt injection, privacy leakage, deleted-memory behavior, hallucination, thresholds, and regression testing.
- `docs/07_analysis/p0_reviews/ai_evaluation_harness_review.md`: Records the AI Evaluation Harness assessment as conditional, with open issues around thresholds, confirmation/edit/reject tests, context minimisation, crisis routing, and security/crisis dependencies.
- `docs/04_ai_memory_and_data/canonical_data_model.docx`: Provides conceptual entities and fields for users, consents, memories, safety events, crisis routing, resources shown, acknowledgement, logging, retention, deletion, and audit/provenance.
- `docs/07_analysis/p0_reviews/canonical_data_model_review.md`: Records the Canonical Data Model assessment as conditional, with open issues around crisis routing, retention/deletion, archived/deleted memory handling, entity scope, progress tracking, and dependency alignment.
- `docs/01_product/prd_v0.1_for_becomingos.docx`: Provides product boundaries, educational/non-clinical positioning, crisis fallback requirements, AI draft-only behavior, user-confirmed memory rules, and release-gate context.
- `docs/07_analysis/p0_reviews/prd_review.md`: Records the PRD assessment as conditional, with open issues around prototype vs MVP scope, research-dependent claims, and implementation-flavored gate wording.
- `docs/09_agent_prompts/10_crisis_localisation_agent.md`: Defines the expected Crisis Localisation deliverables, hard constraints, acceptance criteria, and documentation-only boundary.
- `docs/07_analysis/p0_owner_review_packet.md`: Establishes P0 review order, crisis localisation review focus, update instructions, and the explicit non-build rule.
- `docs/07_analysis/agent_owner_review_decision_register.md`: Shows the Crisis Localisation deliverable was pending owner review before this assessment.
- `docs/07_analysis/remaining_readiness_blockers.md`: Confirms owner review, P0 evidence closure, and legal/privacy/security/safety sign-off remain blockers before MVP build planning.
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`: Requires a crisis localisation policy with supported locales, fallback copy, and resource maintenance process before readiness gates can progress.
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`: Places Crisis Localisation after security-related P0 inputs and before accessibility, prototype UX, curriculum, architecture, and build planning.
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`: Confirms the Crisis Localisation output belongs in `docs/05_privacy_legal_safety/` and remains documentation/readiness material.

## Dependency Notes

Crisis localisation depends on Legal Claims, Privacy and Consent, Security Threat Model, AI Evaluation Harness, Canonical Data Model, PRD scope, launch geography, and qualified safety/legal review. These dependencies define what the product can safely say, what data it can store, how crisis routing is tested, how resources are selected, and how safety events are protected.

All related reviews are conditional, so crisis policy remains provisional. It should not be used as final crisis copy, final resource data, final legal/safety evidence, or implementation authorization until the dependent reviews are reconciled and Safety/legal owner sign-off exists.

The policy can be reviewed as a crisis boundary and localisation planning artifact, but not treated as accepted crisis/safety evidence until Safety/legal owner sign-off exists.

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

Update the Crisis Localisation Agent row in `docs/07_analysis/agent_owner_review_decision_register.md` as follows:

| Deliverable path | Review status | Decision | Decision date | Evidence reviewed | Open issues | Severity | Follow-up action |
|---|---|---|---|---|---|---|---|
| `docs/05_privacy_legal_safety/crisis_localisation_policy.docx` | Review assessment drafted; Safety/legal owner sign-off required | Conditional — changes required | 2026-05-20 | `docs/07_analysis/p0_reviews/crisis_localisation_review.md` | Safety/legal owner to confirm locale scope, crisis copy, unsupported-locale fallback, resource maintenance ownership, raw crisis text handling, and alignment with conditional legal, privacy, security, AI, data model, and PRD reviews. | Medium | Safety/legal owner to review and sign off |

## Non-Build Rule

Do not start production implementation, backend, frontend, API, database, authentication, CI/CD, deployment, monitoring, or release work until P0 blockers are closed with evidence and the Integration Agent gives a documented go/no-go decision.
