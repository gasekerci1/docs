# Non-Functional Requirements Agent P0 Review Assessment

## Review Scope

Reviewed deliverable:

- `docs/06_architecture_and_api/non_functional_requirements.docx`

Dependency inputs reviewed:

- `docs/01_product/prd_v0.1_for_becomingos.docx`
- `docs/07_analysis/p0_reviews/prd_review.md`
- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`
- `docs/07_analysis/p0_reviews/privacy_and_consent_review.md`
- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`
- `docs/07_analysis/p0_reviews/legal_claims_review.md`
- `docs/02_research_and_validation/user_research_plan.docx`
- `docs/07_analysis/p0_reviews/user_research_review.md`

Related repository controls reviewed:

- `docs/07_analysis/p0_owner_review_packet.md`
- `docs/07_analysis/agent_owner_review_decision_register.md`
- `docs/07_analysis/remaining_readiness_blockers.md`
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`
- `docs/09_agent_prompts/04_non_functional_requirements_agent.md`

## Review Status

Review assessment drafted; Engineering/product owner sign-off required

## Decision

Conditional — changes required

This is not an acceptance decision. Engineering/product owner sign-off is still required before the Non-Functional Requirements deliverable can be used as accepted P0 evidence.

## Acceptance Criteria Check

| Criterion | Assessment | Notes |
|---|---|---|
| Defines measurable non-functional requirements. | Met | The document uses requirement IDs, priorities, measurement methods, acceptance criteria, owners, and stage requirements for NFR-01 through NFR-39. |
| Covers availability and reliability. | Met | Availability targets, error budgets, graceful degradation, backup, restore, RTO, and RPO are included. |
| Covers performance. | Met | Page load, API latency, AI response latency, timeout/retry, concurrency, search, and storage targets are specified. |
| Covers privacy and consent requirements. | Met with caveat | Data minimisation, consent, data rights, retention, export, residency, and cross-border processing are covered, but privacy assumptions remain conditional pending owner sign-off. |
| Covers deletion/export/retention requirements. | Met | NFR-14, NFR-15, and NFR-16 address data subject rights, deletion, retention, backups/vector removal, and export. |
| Covers AI safety and evaluation-related requirements. | Met | AI fallback, safety event logging, structured output validation, refusal reliability, and red-team targets are included. |
| Covers crisis/safety boundary requirements. | Partial | Safety event logging and incident escalation are covered, but crisis boundary behavior should be reconciled with Crisis Localisation and Legal Claims review. |
| Covers security and access-control requirements. | Met | Encryption, zero-trust, least privilege, MFA, secrets management, audit logging, and immutable logs are included. |
| Covers observability, logging, audit, and analytics expectations. | Met | Audit logging, central logging, metrics, traces, safety logging, dashboards, and alerting expectations are included. |
| Covers accessibility requirements, including WCAG 2.2 AA where relevant. | Met with caveat | WCAG 2.2 AA appears in NFR-24, but it is listed for closed beta rather than P0/prototype review, so timing needs owner confirmation. |
| Covers support/operations expectations. | Met | Support response times, escalation, crisis management, incident playbooks, post-mortems, and cost management are included. |
| Defines acceptance criteria or verification method for each major NFR. | Met | Each requirement includes a measurement method and acceptance criteria. Some criteria should be reframed as future verification gates rather than current implementation state. |
| Clearly marks assumptions and provisional targets. | Met with caveat | The document has a product assumptions section and open decisions, but some assumptions are broad and should be explicitly confirmed as provisional. |
| Aligns with PRD, Privacy and Consent, Legal Claims, and User Research assumptions. | Partial | The document aligns on non-clinical boundaries, data rights, privacy, safety, and AI controls, but product-scope assumptions such as mobile apps, admin dashboard, enterprise users, and production scale need reconciliation. |
| Avoids implying production readiness or implementation exists. | Partial | The document is an NFR artifact, but several acceptance criteria use implementation language such as implemented, enforced, configured, and in place; this should remain future-oriented until build evidence exists. |

## Findings

### Strengths

- The NFR pack is broad and structured, with a formal table covering requirement ID, priority, measurement method, acceptance criteria, owner, and stage required by.
- It separates product assumptions from requirements and includes open decisions for hosting region, LLM provider, support tiering, compliance framework, and vector database selection.
- It provides measurable targets for page load, API latency, AI latency, availability, error budgets, capacity, storage, vector search, export timing, support response times, RTO, RPO, and AI evaluation thresholds.
- It covers many BecomingOS-relevant risk areas, including sensitive data, consent withdrawal, data subject rights, deletion from backups/vector stores, encryption, least privilege, audit logs, data residency, cross-border processing, AI refusal testing, red-team testing, and safety event logging.
- It frames open architecture choices as decisions to resolve before dependent stages, which is useful for documentation-first planning.

### Gaps

- The deliverable does not yet have Engineering/product owner sign-off, a decision date, or a recorded review decision.
- Some product assumptions appear broader than the currently reviewed P0 materials, including native mobile apps, admin dashboard, enterprise team members, production-scale DAU targets, and global expansion.
- Accessibility is included, but WCAG 2.2 AA is assigned to closed beta; owner review should decide whether prototype and MVP gates need earlier accessibility requirements.
- Crisis and safety boundaries are present through AI safety logging and escalation, but the NFRs need explicit alignment with Crisis Localisation and Legal Claims boundaries before reliance.
- Security threat model, AI evaluation harness, accessibility QA, support operations, analytics taxonomy, testing strategy, and technical architecture reviews are not yet signed off, so several NFR targets remain provisional.
- Several acceptance criteria describe future implementation or monitoring mechanisms and should be clearly labeled as future verification requirements, not current repo state.

### Risks

- Treating the NFR table as accepted engineering requirements before owner review could prematurely lock architecture, vendor, cost, data residency, and operational choices.
- Broad scale and platform assumptions may overfit the architecture plan before user research, PRD, market validation, and product scope are resolved.
- Privacy and deletion targets require later confirmation against the canonical data model, AI provider terms, backup design, vector storage, audit logging, and security controls.
- AI safety thresholds such as refusal reliability and golden-set precision may be useful starting points but need AI Safety owner validation and test-set definition.
- Support and incident SLA targets may imply operational coverage that has not yet been staffed or costed.

### Contradictions

- The PRD review remains conditional, so any NFR that assumes a fixed MVP, mobile, enterprise, admin, or production scale should be treated as provisional.
- The Privacy and Consent review identified open issues around age/minor scope, vendor/controller assumptions, AI provider retention, crisis handling, and implementation-flavored criteria; the NFR document depends on those same unresolved choices.
- The Legal Claims review requires crisis and AI boundary language to remain conservative; NFR crisis/escalation wording must avoid implying monitored crisis support.
- No direct contradiction was found with the repository's non-clinical, educational, documentation-first boundary when the NFRs are treated as planning requirements rather than implemented capabilities.

### Required changes

- Engineering/product owner should confirm which assumptions are in scope for P0, prototype, MVP, closed beta, and later planning, especially platform, admin, enterprise, geography, and scale assumptions.
- Reframe implementation-language acceptance criteria so they are clearly future verification gates and not statements that systems already exist.
- Reconcile privacy, data rights, deletion, export, retention, residency, and cross-border NFRs with the Privacy and Consent review and future Canonical Data Model review.
- Reconcile AI fallback, safety logging, golden-set, refusal, and red-team targets with the AI Evaluation Harness review before using them as hard gates.
- Reconcile security and access-control requirements with the Security Threat Model review once drafted.
- Reconcile WCAG 2.2 AA timing with Accessibility QA and decide whether earlier prototype/MVP accessibility checks should be P0 gates.
- Confirm support, incident, backup, restore, RTO, RPO, cost, and observability targets with Operations, Testing Strategy, and Technical Architecture before build planning.

### Open questions

- Which product surfaces are actually in scope for the first reviewed prototype and MVP candidate: web only, mobile, admin dashboard, API, or enterprise workflows?
- Which launch geography and data residency assumptions are controlling for P0 and MVP planning?
- Which NFRs are mandatory before architecture planning versus later closed beta or production hardening?
- What are the accepted AI safety thresholds, who owns them, and what datasets will measure them?
- Should accessibility requirements move earlier than closed beta for core prototype and MVP validation flows?
- What operational staffing and support coverage are realistic for the stages named in the NFR table?

## Evidence Reviewed

- `docs/06_architecture_and_api/non_functional_requirements.docx`: Provides the NFR document, including product assumptions, a requirement table covering performance, availability, reliability, scalability, privacy, security, data residency, accessibility, observability, cost, support, backup/disaster recovery, AI safety, and open decisions.
- `docs/01_product/prd_v0.1_for_becomingos.docx`: Provides product boundaries, release gates, AI draft and user-confirmed memory expectations, privacy/export/delete requirements, and non-clinical positioning that the NFRs must support.
- `docs/07_analysis/p0_reviews/prd_review.md`: Records the PRD assessment as conditional, with open issues around prototype vs MVP scope, research-dependent claims, and implementation-flavored gate wording.
- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`: Provides privacy, consent, retention, deletion, export, AI provider, cross-border, age-gating, and crisis-data assumptions that inform NFR privacy and compliance targets.
- `docs/07_analysis/p0_reviews/privacy_and_consent_review.md`: Records the Privacy and Consent assessment as conditional, with open issues around age/minor scope, vendor/controller assumptions, AI provider retention, crisis handling, and implementation-flavored MVP criteria.
- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`: Provides prohibited claims, safe wording, crisis boundary, AI limitation, user acknowledgement, and legal review checklist context that NFR safety and support language must respect.
- `docs/07_analysis/p0_reviews/legal_claims_review.md`: Records the Legal Claims assessment as conditional, with open issues around final copy coverage, launch-jurisdiction assumptions, crisis/AI boundary language, and conditional upstream reviews.
- `docs/02_research_and_validation/user_research_plan.docx`: Provides research recruitment, consent, withdrawal, safety, and participant comprehension requirements that influence prototype NFRs and support/safety expectations.
- `docs/07_analysis/p0_reviews/user_research_review.md`: Records the User Research assessment as ready for Research owner sign-off while confirming that findings are not yet completed or signed off.
- `docs/09_agent_prompts/04_non_functional_requirements_agent.md`: Defines the expected NFR output, including product assumptions, performance, availability, reliability, scalability, privacy, security, data residency, accessibility, observability, cost, support, backup/disaster recovery, AI safety, and open decisions.
- `docs/07_analysis/p0_owner_review_packet.md`: Establishes P0 review order, NFR review focus, update instructions, and the explicit non-build rule.
- `docs/07_analysis/agent_owner_review_decision_register.md`: Shows the Non-Functional Requirements deliverable was pending owner review before this assessment.
- `docs/07_analysis/remaining_readiness_blockers.md`: Confirms owner review, P0 evidence closure, and legal/privacy/security/safety sign-off remain blockers before MVP build planning.
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`: Requires measurable NFR acceptance criteria and owner-accepted evidence before readiness gates can progress.
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`: Places NFR review early in the P0 sequence before architecture and build planning.
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`: Confirms NFR output belongs in `docs/06_architecture_and_api/` and remains documentation/readiness material.

## Dependency Notes

NFRs depend on PRD scope, privacy/consent rules, legal claims boundaries, AI evaluation, security threat model, accessibility QA, support operations, and testing strategy. These dependencies define which product surfaces exist, what data is collected, what safety boundaries apply, which AI behaviors are measurable, which risks must be controlled, and how later verification should be performed.

PRD, Privacy, and Legal reviews are conditional, so NFR targets remain provisional. The NFR document should not be used to finalize architecture, vendor selection, implementation sequencing, or operational commitments until the relevant owners resolve those upstream issues.

The NFR document can be reviewed as a draft quality-bar artifact, but not treated as accepted engineering requirements until Engineering/product owner sign-off exists.

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

Update the Non-Functional Requirements Agent row in `docs/07_analysis/agent_owner_review_decision_register.md` as follows:

| Deliverable path | Review status | Decision | Decision date | Evidence reviewed | Open issues | Severity | Follow-up action |
|---|---|---|---|---|---|---|---|
| `docs/06_architecture_and_api/non_functional_requirements.docx` | Review assessment drafted; Engineering/product owner sign-off required | Conditional — changes required | 2026-05-20 | `docs/07_analysis/p0_reviews/non_functional_requirements_review.md` | Engineering/product owner to reconcile broad product/platform/scale assumptions, implementation-language criteria, accessibility timing, and dependencies on privacy, legal, security, AI, operations, and testing reviews. | Medium | Engineering/product owner to review and sign off |

## Non-Build Rule

Do not start production implementation, backend, frontend, API, database, authentication, CI/CD, deployment, monitoring, or release work until P0 blockers are closed with evidence and the Integration Agent gives a documented go/no-go decision.
