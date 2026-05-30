# AI Evaluation Harness Agent P0 Review Assessment

## Review Scope

Reviewed deliverable:

- `docs/04_ai_memory_and_data/ai_evaluation_harness.docx`

Dependency inputs reviewed:

- `docs/04_ai_memory_and_data/canonical_data_model.docx`
- `docs/07_analysis/p0_reviews/canonical_data_model_review.md`
- `docs/01_product/prd_v0.1_for_becomingos.docx`
- `docs/07_analysis/p0_reviews/prd_review.md`
- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`
- `docs/07_analysis/p0_reviews/privacy_and_consent_review.md`
- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`
- `docs/07_analysis/p0_reviews/legal_claims_review.md`
- `docs/06_architecture_and_api/non_functional_requirements.docx`
- `docs/07_analysis/p0_reviews/non_functional_requirements_review.md`

Related repository controls reviewed:

- `docs/07_analysis/p0_owner_review_packet.md`
- `docs/07_analysis/agent_owner_review_decision_register.md`
- `docs/07_analysis/remaining_readiness_blockers.md`
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`
- `docs/09_agent_prompts/08_ai_evaluation_harness_agent.md`

## Review Status

Review assessment drafted; AI safety owner sign-off required

## Decision

Conditional — changes required

This is not an acceptance decision. AI safety owner sign-off is still required before the AI Evaluation Harness deliverable can be used as accepted P0 evidence.

## Acceptance Criteria Check

| Criterion | Assessment | Notes |
|---|---|---|
| Defines AI use cases under test. | Met | The harness covers interpretation drafts, memory suggestions, Today directives, weekly reviews, Ask AI recommendations, safety classifiers, and crisis routing classifiers. |
| Defines golden tests. | Met | Golden dataset design includes interpretation drafts, memory suggestions, directives, Ask AI, review prompts, safety classifier inputs, and crisis classifier inputs. |
| Defines red-team tests. | Met | Red-team dataset design includes direct jailbreaks, indirect prompt injection, encoded attacks, high-impact advice, crisis/therapy elicitation, sensitive attribute inference, memory manipulation, and data leakage. |
| Defines refusal tests. | Met | Refusal policy tests cover medical, legal, financial, therapy, crisis, and high-impact requests. |
| Defines privacy/data leakage tests. | Met | Privacy tests include training-data disclosure, cross-user memory leakage, unrelated data leakage, and deleted-memory retrieval. |
| Defines deleted-memory and rejected-memory tests. | Met | The harness includes deleted/rejected memory exclusion tests and expects deleted/rejected content not to resurface. |
| Defines crisis/safety boundary tests. | Met with caveat | Crisis trigger tests and crisis routing metrics are defined, but routing behavior must be reconciled with Legal Claims, Privacy, Crisis Localisation, and the non-clinical boundary. |
| Defines legal/medical/financial/high-impact advice refusal tests. | Met | Specific examples and thresholds require refusal for medical, legal, financial, therapy, employment, credit, insurance, education, housing, and other high-impact scenarios. |
| Defines prompt injection tests. | Met | Direct jailbreak, role-play, encoding, indirect RAG injection, malicious metadata, and poisoned retrieved-document scenarios are included. |
| Defines memory retrieval and context-minimisation tests. | Met with caveat | Retrieval and evidence references are tested, and deleted/rejected memory exclusion is explicit; context-minimisation should be tightened against the final consent and data model decisions. |
| Defines user confirmation/edit/reject evaluation. | Met with caveat | Memory suggestion and rejected-memory tests imply confirmation/edit/reject behavior, but explicit test cases for edit and reject workflows should be expanded. |
| Defines hallucination and unsupported-inference checks. | Met | Hallucination, in-domain factual, out-of-domain, ambiguous query, fact scoring, citations, and unsupported-claim checks are included. |
| Defines metrics, thresholds, and pass/fail criteria. | Met | Metrics include safety accuracy, crisis routing, hallucination, prompt-injection success, privacy leakage, schema compliance, refusal correctness, Brier score, citation completeness, and regression stability. |
| Defines regression testing expectations. | Met | Regression testing includes CI runs, dataset versioning, targeted PR subsets, nightly full suites, dashboards, A/B/shadow evaluation, monitoring, and quarterly refresh. |
| Defines human review/escalation expectations. | Met | Human review workflow includes automatic evaluation, triage, cross-functional board review, decisioning, regression asset creation, and release gating. |
| Aligns with PRD, Canonical Data Model, Privacy, Legal Claims, and NFR assumptions. | Partial | The harness aligns with draft-only AI, memory exclusion, refusal, privacy, and structured output assumptions, but all named dependency reviews are conditional. |
| Clearly marks assumptions and unresolved test design questions. | Partial | The document names thresholds and dataset composition, but several values read as proposed targets and should be explicitly marked provisional until AI safety owner sign-off. |
| Avoids implying production AI implementation exists. | Partial | The deliverable is a harness specification and does not include implementation code, but language around CI, production monitoring, and release gating should remain future-oriented until build evidence exists. |

## Findings

### Strengths

- The harness defines a broad, concrete test taxonomy across functional correctness, safety/refusal, privacy/memory, robustness/security, hallucination/accuracy, confidence calibration, schema validation, evidence references, and regression.
- It includes dataset composition targets for golden and red-team suites, with examples across interpretation drafts, memory suggestions, Today directives, Ask AI, reviews, safety classification, and crisis classification.
- It explicitly tests prohibited behaviors: medical, legal, financial, therapy, crisis, high-impact advice, sensitive attribute inference, prompt injection, training-data disclosure, cross-user leakage, and deleted/rejected memory resurfacing.
- It includes useful quality metrics and thresholds, including 0 privacy leaks, 100% high-impact refusal, >99% schema compliance, citation completeness, prompt-injection success limits, hallucination limits, and regression stability.
- It requires human review, incident response, regression asset creation, dataset versioning, monitoring, and release-gate discipline.
- It is documentation-only and does not implement AI code.

### Gaps

- The deliverable does not yet have AI safety owner sign-off, a decision date, or a recorded owner decision.
- The proposed thresholds are plausible but need explicit AI safety owner validation, especially for crisis false negatives, prompt-injection success, hallucination rate, confidence calibration, and false refusal rates.
- The harness references crisis routing and crisis support behavior that must be reconciled with the Legal Claims review and the non-clinical, non-crisis-support boundary.
- User confirmation/edit/reject tests should be expanded into explicit workflow tests covering draft creation, edit before save, reject without influence, and later deletion or consent revocation.
- Context-minimisation tests should more directly verify least-necessary retrieval, consent-scoped context assembly, no raw crisis text reuse, and no use of non-consented or expired data.
- Security Threat Model and Crisis Localisation reviews are not yet drafted or signed off, leaving prompt-injection, RAG, crisis-resource, and incident-response assumptions provisional.

### Risks

- Treating the thresholds as accepted before AI safety review could create a false safety signal.
- Crisis routing requirements may imply monitored crisis support unless safety/legal owners tightly define the expected product behavior.
- The harness assumes structured outputs with confidence and citations, but the PRD, data model, and NFR reviews are conditional, so final schemas and evidence references may change.
- Dataset composition targets may be too small, too broad, or insufficiently localised depending on launch geography, supported languages, and crisis-resource coverage.
- CI, shadow evaluation, production monitoring, and incident-response language could be misread as current operational capability unless kept as future verification planning.

### Contradictions

- The Legal Claims review requires AI not to provide crisis support, therapy, diagnosis, legal advice, financial advice, or high-impact decisions. The harness supports this overall, but crisis routing language must not imply active monitoring or emergency intervention.
- The Canonical Data Model review flagged crisis-routing and safety-event behavior as needing owner reconciliation; the AI harness depends on those same unresolved choices.
- The Privacy and Consent review flagged AI provider retention and crisis text handling; the harness must ensure test data, logs, and incident artifacts do not store or repeat raw crisis details.
- No direct contradiction was found with the PRD rule that AI outputs are draft-only and memories require user confirmation/edit before influence.

### Required changes

- AI safety owner should validate or revise all metrics and pass/fail thresholds before the harness is used as P0 evidence.
- Add explicit tests for confirmation, edit, reject, deletion, consent revocation, embedding invalidation, and non-influence across Today, Ask AI, Calendar, Review, prompts, retrieval, and embeddings.
- Reconcile crisis detection, routing, logging, and response expectations with Legal Claims, Privacy, Crisis Localisation, Security, and Product owners.
- Add context-minimisation tests that verify only consented, active, confirmed/edited, relevant memories are retrieved and used.
- Mark CI, production monitoring, shadow evaluation, and release-gate references as future verification expectations rather than current implementation.
- Confirm dataset governance, annotator roles, protected-data handling, localisation, and sensitive test-data retention before collecting or running real evaluation datasets.

### Open questions

- Which AI use cases are P0 for prototype/MVP readiness, and which belong to later closed beta planning?
- What exact refusal, crisis, hallucination, prompt-injection, privacy, and schema thresholds should the AI safety owner approve?
- What crisis-response behavior is allowed without implying monitored crisis support or emergency intervention?
- How will test datasets avoid retaining raw crisis text, personal data, or sensitive attributes unnecessarily?
- What schemas will be used for AI drafts, memory suggestions, Today directives, Ask AI responses, and safety classifications?
- Who participates in the human review board, and what decisions can it make before formal owner sign-off?

## Evidence Reviewed

- `docs/04_ai_memory_and_data/ai_evaluation_harness.docx`: Provides the AI evaluation harness specification, including test taxonomy, golden dataset design, red-team dataset design, functional/safety/privacy/prompt-injection/hallucination/refusal tests, metrics and thresholds, human review workflow, regression testing plan, incident response workflow, release gate checklist, and maintenance plan.
- `docs/04_ai_memory_and_data/canonical_data_model.docx`: Provides memory lifecycle, AI draft, consent, deletion, embedding invalidation, safety event, crisis routing, audit, support, and incident data concepts that the harness must test.
- `docs/07_analysis/p0_reviews/canonical_data_model_review.md`: Records the Canonical Data Model assessment as conditional, with open issues around crisis routing, retention/deletion rules, archived/deleted memory handling, entity scope, progress tracking, and dependencies on privacy, legal, NFR, AI, security, and crisis reviews.
- `docs/01_product/prd_v0.1_for_becomingos.docx`: Provides AI draft-only behavior, user-confirmed memory requirements, non-clinical boundaries, Today/Ask AI/Calendar/Review influence rules, consent/export/delete expectations, and release-gate context.
- `docs/07_analysis/p0_reviews/prd_review.md`: Records the PRD assessment as conditional, with open issues around prototype vs MVP scope, research-dependent claims, and implementation-flavored gate wording.
- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`: Provides consent, sensitive data, AI provider, retention, deletion, export, crisis text handling, and privacy expectations that evaluation data and logs must respect.
- `docs/07_analysis/p0_reviews/privacy_and_consent_review.md`: Records the Privacy and Consent assessment as conditional, with open issues around age/minor scope, vendor/controller assumptions, AI provider retention, crisis handling, and implementation-flavored criteria.
- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`: Provides prohibited claims, safe wording, crisis boundary, AI limitation, user acknowledgement, and refusal-copy constraints relevant to AI behavior.
- `docs/07_analysis/p0_reviews/legal_claims_review.md`: Records the Legal Claims assessment as conditional, with open issues around final copy coverage, launch-jurisdiction assumptions, crisis/AI boundary language, and conditional upstream reviews.
- `docs/06_architecture_and_api/non_functional_requirements.docx`: Provides NFR targets for AI response latency, AI fallback, safety event logging, structured output validation, refusal reliability, red-team targets, observability, privacy, deletion, security, and support operations.
- `docs/07_analysis/p0_reviews/non_functional_requirements_review.md`: Records the NFR assessment as conditional, with open issues around broad product/platform/scale assumptions, implementation-language criteria, accessibility timing, and dependencies on privacy, legal, security, AI, operations, and testing reviews.
- `docs/09_agent_prompts/08_ai_evaluation_harness_agent.md`: Defines expected AI Evaluation Harness deliverables, including golden/red-team datasets, refusal, privacy, hallucination, crisis, prompt injection, deleted-memory tests, metrics, thresholds, human review, regression testing, and incident response.
- `docs/07_analysis/p0_owner_review_packet.md`: Establishes P0 review order, AI evaluation review focus, update instructions, and the explicit non-build rule.
- `docs/07_analysis/agent_owner_review_decision_register.md`: Shows the AI Evaluation Harness deliverable was pending owner review before this assessment.
- `docs/07_analysis/remaining_readiness_blockers.md`: Confirms owner review, P0 evidence closure, and legal/privacy/security/safety sign-off remain blockers before MVP build planning.
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`: Requires an AI evaluation harness with golden, red-team, refusal, privacy, and deleted-memory tests before readiness gates can progress.
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`: Places AI Evaluation Harness review after Canonical Data Model and before Security, Crisis Localisation, Architecture, and build planning.
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`: Confirms AI Evaluation Harness output belongs in `docs/04_ai_memory_and_data/` and remains documentation/readiness material.

## Dependency Notes

AI evaluation depends on PRD AI scope, canonical memory lifecycle, privacy/consent, legal claims, crisis localisation, security threat model, and NFR thresholds. These dependencies define the AI use cases under test, allowed and disallowed behavior, memory-state rules, retrieval context, privacy boundaries, refusal requirements, incident handling, and quality thresholds.

PRD, Canonical Data Model, Privacy, Legal, and NFR reviews are conditional, so AI evaluation thresholds remain provisional. The harness should not be used as accepted AI readiness evidence, release-gate evidence, or build authorization until those dependencies are reconciled and the AI safety owner records a decision.

The harness can be reviewed as a safety/quality planning artifact, but not treated as accepted AI readiness evidence until AI safety owner sign-off exists.

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

Update the AI Evaluation Harness Agent row in `docs/07_analysis/agent_owner_review_decision_register.md` as follows:

| Deliverable path | Review status | Decision | Decision date | Evidence reviewed | Open issues | Severity | Follow-up action |
|---|---|---|---|---|---|---|---|
| `docs/04_ai_memory_and_data/ai_evaluation_harness.docx` | Review assessment drafted; AI safety owner sign-off required | Conditional — changes required | 2026-05-20 | `docs/07_analysis/p0_reviews/ai_evaluation_harness_review.md` | AI safety owner to validate thresholds, expand confirmation/edit/reject and context-minimisation tests, reconcile crisis-routing assumptions, and align with conditional PRD, data model, privacy, legal, NFR, security, and crisis reviews. | Medium | AI safety owner to review and sign off |

## Non-Build Rule

Do not start production implementation, backend, frontend, API, database, authentication, CI/CD, deployment, monitoring, or release work until P0 blockers are closed with evidence and the Integration Agent gives a documented go/no-go decision.
