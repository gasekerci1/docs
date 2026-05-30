# P0 Owner Review Packet

## Current Status

Agent deliverables have been added to the repository, including the P0 reports needed for the BecomingOS documentation-first readiness review.

These deliverables are pending owner review. Added to the repository does not mean accepted, approved, complete, build-ready, beta-ready, or production-ready.

MVP build planning remains blocked until P0 evidence is accepted by the relevant review owners and the Integration Agent gives a documented go/no-go decision.

## P0 Review Order

1. Master Orchestrator Agent
2. User Research Agent
3. PRD Agent
4. Privacy and Consent Agent
5. Legal Claims Review Agent
6. Non-Functional Requirements Agent
7. Canonical Data Model Agent
8. AI Evaluation Harness Agent
9. Security Threat Model Agent
10. Crisis Localisation Agent
11. Accessibility QA Agent
12. Prototype UX Agent
13. Curriculum and Question Bank Agent

## P0 Deliverable Table

| Order | Agent | Deliverable path | Review owner | Review status | Decision | Key review focus |
|---:|---|---|---|---|---|---|
| 1 | Master Orchestrator Agent | `docs/07_analysis/work_plan_creation.docx`<br>`docs/07_analysis/workflow_coordination_plan.docx` | Product lead | Pending owner review | Not decided | Execution order, dependency map, P0 evidence gates, non-build constraints, required document list |
| 2 | User Research Agent | `docs/02_research_and_validation/user_research_plan.docx` | Research owner | Pending owner review | Not decided | Research ethics, target segments, recruitment boundaries, evidence plan, prototype comprehension |
| 3 | PRD Agent | `docs/01_product/prd_v0.1_for_becomingos.docx` | Product owner | Pending owner review | Not decided | Scope discipline, release gates, non-clinical boundaries, exclusions, dependency alignment |
| 4 | Privacy and Consent Agent | `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx` | Privacy/legal owner | Pending owner review | Not decided | Data inventory, consent model, retention, export, deletion, AI provider disclosure |
| 5 | Legal Claims Review Agent | `docs/05_privacy_legal_safety/legal_claims_review_pack.docx` | Legal owner | Pending owner review | Not decided | Prohibited claims, safe positioning, marketing language, professional boundary language |
| 6 | Non-Functional Requirements Agent | `docs/06_architecture_and_api/non_functional_requirements.docx` | Engineering/product owner | Pending owner review | Not decided | Measurable requirements, accessibility, privacy, safety, consent response times |
| 7 | Canonical Data Model Agent | `docs/04_ai_memory_and_data/canonical_data_model.docx` | Data/privacy owner | Pending owner review | Not decided | Memory lifecycle, deletion, rejected-memory exclusion, embedding invalidation, auditability |
| 8 | AI Evaluation Harness Agent | `docs/04_ai_memory_and_data/ai_evaluation_harness.docx` | AI safety owner | Pending owner review | Not decided | Golden tests, red-team tests, refusal tests, privacy tests, deleted-memory tests |
| 9 | Security Threat Model Agent | `docs/05_privacy_legal_safety/security_threat_model.docx` | Security owner | Pending owner review | Not decided | Personal data assets, prompt injection, AI provider risks, access control, abuse cases |
| 10 | Crisis Localisation Agent | `docs/05_privacy_legal_safety/crisis_localisation_policy.docx` | Safety/legal owner | Pending owner review | Not decided | Crisis boundary, supported locales, fallback copy, resource maintenance, escalation limits |
| 11 | Accessibility QA Agent | `docs/10_operations_testing_accessibility/accessibility_qa_plan.docx` | Accessibility owner | Pending owner review | Not decided | WCAG 2.2 AA, keyboard access, screen reader support, cognitive accessibility, test scripts |
| 12 | Prototype UX Agent | `docs/01_product/prototype_ux_specification.docx` | Design/product owner | Pending owner review | Not decided | Consent flows, skip/pause, AI confirm/edit/reject, crisis fallback, user comprehension |
| 13 | Curriculum and Question Bank Agent | `docs/03_curriculum_and_questions/curriculum_and_question_bank.docx` | Curriculum owner | Pending owner review | Not decided | Module 0-2 quality, shame-free wording, non-clinical safety, content intensity, evidence fit |

## Standard Review Questions

- Does the deliverable match the agent's expected output?
- Does it respect BecomingOS non-clinical boundaries?
- Does it avoid therapy, diagnosis, treatment, crisis-support, legal, financial, and medical claims?
- Does it include evidence or clearly mark assumptions?
- Does it identify unresolved risks?
- Does it avoid implying production readiness?
- Does it specify owner, decision status, and open issues?
- Does it align with upstream dependencies?
- Does it create any contradiction with other P0 documents?

## Document-Specific Review Focus

### Master Orchestrator Agent

- Confirm the plan covers all required P0 agents and dependencies.
- Check that the execution order matches the repository prompt guidance.
- Verify go/no-go rules keep MVP build blocked until evidence is accepted.
- Confirm required document paths, owners, open issues, and decision expectations are explicit.
- Check that the plan does not imply technical architecture or MVP build work can begin before P0 closure.

### User Research Agent

- Check recruitment ethics, consent expectations, and participant safeguards.
- Verify vulnerable-user boundaries and exclusion criteria are explicit.
- Confirm target segment assumptions are marked as assumptions unless evidence exists.
- Review prototype comprehension and usability learning goals.
- Check that no research outcome is claimed before research has occurred.

### PRD Agent

- Verify must, should, and won't scope is clear enough for review.
- Confirm release gates preserve the documentation-first sequence.
- Check non-clinical boundaries and out-of-scope claims.
- Review dependencies on research, privacy, legal, safety, data, and NFR inputs.
- Confirm the PRD does not imply MVP build readiness by itself.

### Privacy and Consent Agent

- Review the personal data inventory and data purpose mapping.
- Check consent capture, withdrawal, export, and deletion expectations.
- Verify retention rules and user-controlled memory boundaries.
- Confirm AI provider disclosure expectations are present.
- Check that privacy assumptions are clearly marked until accepted by the review owner.

### Legal Claims Review Agent

- Identify prohibited claims and risky language patterns.
- Check safe positioning statements for educational and reflective framing.
- Review marketing language for therapy, diagnosis, treatment, crisis, legal, medical, and financial confusion risk.
- Confirm professional boundary language is explicit.
- Verify unresolved legal questions are tracked rather than treated as resolved.

### Non-Functional Requirements Agent

- Check that requirements are measurable, testable, and reviewable.
- Review accessibility, privacy, safety, and consent response-time criteria.
- Confirm NFRs align with data, AI, legal, and crisis boundaries.
- Identify any requirement that depends on unresolved P0 evidence.
- Check that operational expectations do not imply production readiness.

### Canonical Data Model Agent

- Review user-confirmed memory lifecycle rules.
- Check deletion, export, and retention behavior expectations.
- Verify rejected-memory exclusion is explicit.
- Confirm embedding invalidation expectations after deletion or rejection.
- Review auditability and privacy alignment without starting implementation design.

### AI Evaluation Harness Agent

- Review golden test categories and expected coverage.
- Check red-team, refusal, privacy, and deleted-memory test expectations.
- Verify tests cover non-clinical, crisis, legal, financial, and medical claim boundaries.
- Confirm evaluation thresholds are proposed as review inputs, not accepted gates.
- Identify missing evidence or unresolved test design questions.

### Security Threat Model Agent

- Review personal data assets and trust boundaries.
- Check prompt injection, data leakage, and AI provider risk coverage.
- Verify access-control assumptions and abuse cases are documented.
- Confirm security dependencies on privacy, data model, and NFR inputs.
- Record unresolved security issues before any architecture is treated as stable.

### Crisis Localisation Agent

- Confirm BecomingOS is not positioned as crisis support.
- Review crisis boundary copy and fallback behavior expectations.
- Check supported locale assumptions and maintenance requirements.
- Verify resource freshness and ownership expectations.
- Identify unresolved legal or safety questions before use as P0 evidence.

### Accessibility QA Agent

- Review WCAG 2.2 AA coverage expectations.
- Check keyboard, focus order, and screen reader test plans.
- Verify cognitive accessibility and low-pressure interaction patterns.
- Confirm accessibility testing scripts are practical and evidence-oriented.
- Identify any dependency on prototype UX decisions or content intensity.

### Prototype UX Agent

- Review consent, skip, pause, and user-control flows.
- Check AI confirm, edit, and reject patterns for memory and reflection.
- Verify crisis fallback behavior and non-clinical comprehension.
- Confirm the prototype helps test understanding without implying product readiness.
- Identify contradictions with PRD, privacy, data model, or crisis documents.

### Curriculum and Question Bank Agent

- Review Module 0-2 quality, sequence, and learning intent.
- Check shame-free, non-clinical wording and emotional intensity.
- Verify questions avoid diagnosis, treatment, crisis, legal, medical, and financial guidance.
- Confirm content assumptions and evidence gaps are clearly marked.
- Identify dependencies on research, legal, crisis, and accessibility review.

## Review Decision Format

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

## Update Instructions

After each owner review:

- Update `docs/07_analysis/agent_owner_review_decision_register.md`.
- Do not update `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md` to accepted unless owner sign-off exists.
- If a document has issues, keep the status as pending or conditional.
- Record open issues and severity.
- Keep MVP build blocked until all P0 reviews are resolved.

## Explicit Non-Build Rule

Do not start production implementation, backend, frontend, API, database, authentication, CI/CD, deployment, monitoring, or release work until P0 blockers are closed with evidence and the Integration Agent gives a documented go/no-go decision.
