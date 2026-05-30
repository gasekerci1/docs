# Security Threat Model Agent P0 Review Assessment

## Review Scope

Reviewed deliverable:

- `docs/05_privacy_legal_safety/security_threat_model.docx`

Dependency inputs reviewed:

- `docs/04_ai_memory_and_data/canonical_data_model.docx`
- `docs/07_analysis/p0_reviews/canonical_data_model_review.md`
- `docs/04_ai_memory_and_data/ai_evaluation_harness.docx`
- `docs/07_analysis/p0_reviews/ai_evaluation_harness_review.md`
- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`
- `docs/07_analysis/p0_reviews/privacy_and_consent_review.md`
- `docs/06_architecture_and_api/non_functional_requirements.docx`
- `docs/07_analysis/p0_reviews/non_functional_requirements_review.md`
- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`
- `docs/07_analysis/p0_reviews/legal_claims_review.md`
- `docs/01_product/prd_v0.1_for_becomingos.docx`
- `docs/07_analysis/p0_reviews/prd_review.md`

Related repository controls reviewed:

- `docs/07_analysis/p0_owner_review_packet.md`
- `docs/07_analysis/agent_owner_review_decision_register.md`
- `docs/07_analysis/remaining_readiness_blockers.md`
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`
- `docs/09_agent_prompts/09_security_threat_model_agent.md`

## Review Status

Review assessment drafted; Security owner sign-off required

## Decision

Conditional — changes required

This is not an acceptance decision. Security owner sign-off is still required before the Security Threat Model deliverable can be used as accepted P0 evidence.

## Acceptance Criteria Check

| Criterion | Assessment | Notes |
|---|---|---|
| Defines protected assets. | Met | The asset inventory covers reflections/memories, AI drafts and chat logs, consents, safety events, metadata, embeddings, calendar preferences, credentials, secrets, infrastructure, AI models, and audit logs. |
| Defines trust boundaries. | Met | Client, application, data storage, AI provider, backup, administrative, and third-party integration boundaries are defined. |
| Defines users, admins, support users, AI providers, and external vendor boundaries. | Met | The RBAC model and trust-boundary sections identify end users, support agents, safety specialists, data stewards, system services, admins, AI providers, cloud backup, and integrations. |
| Defines threats to personal reflective data. | Met | Information disclosure, tampering, insider misuse, backups, logs, support access, and AI provider disclosure are covered. |
| Defines threats to memory data, deleted/rejected memory, embeddings, and retrieval. | Met | The model covers memory tampering, embedding tampering, secure deletion, embedding invalidation, vector database access, caches, retrieval, and deleted/rejected memory non-influence. |
| Defines prompt injection and indirect prompt injection risks. | Met | Prompt injection analysis covers direct and indirect attacks, malicious retrieved content, hidden instructions, guardrail bypass, and output filtering. |
| Defines data leakage risks. | Met | Risks include database breaches, AI provider disclosure, log leakage, backups, other-user data, training use, and prompt leakage. |
| Defines account takeover and access-control risks. | Met | Spoofing, credential stuffing, phishing, session hijacking, MFA, account lifecycle, RBAC, ABAC, least privilege, and break-glass workflows are addressed. |
| Defines insider/admin misuse risks. | Met | Insider misuse is included as an abuse case, and admin/support roles are constrained through RBAC, audit logging, approval, and least privilege. |
| Defines AI provider/vendor risks. | Met | AI provider risk analysis covers procurement, contracts, secondary data use, breach notification, monitoring, vendor incidents, and contingency planning. |
| Defines crisis/safety data risks. | Met with caveat | Safety events and crisis disclosures are treated as highly sensitive, but crisis routing and intervention assumptions need safety/legal reconciliation. |
| Defines calendar/integration risks if in scope. | Met | Calendar preferences and third-party integrations are included as assets and trust boundaries with scoped tokens and sandboxing. |
| Defines audit/logging/security monitoring expectations. | Met | Audit logging requirements cover authentication, authorization, admin actions, application operations, crisis/safety events, metadata, integrity, confidentiality, retention, review, and redaction. |
| Defines mitigations and residual risks. | Partial | Mitigations are strong, but residual risk tracking is less explicit than the mitigations and acceptance criteria. |
| Aligns with PRD, Privacy and Consent, Canonical Data Model, AI Evaluation Harness, NFR, and Legal Claims assumptions. | Partial | The model aligns on non-clinical boundaries, sensitive data, deletion, embeddings, prompt injection, AI providers, and least privilege, but all named dependency reviews remain conditional. |
| Clearly marks assumptions and unresolved architecture/vendor/security questions. | Partial | It includes key assumptions, but cloud, vendor, auth, AI provider, vector database, backup, and monitoring choices should be explicitly marked provisional. |
| Avoids implying production security controls already exist. | Partial | The document is pre-MVP, but some acceptance criteria use implemented/configured/completed wording and should be framed as future verification gates. |

## Findings

### Strengths

- The threat model is comprehensive and covers asset inventory, trust boundaries, data-flow security, STRIDE analysis, abuse cases, prompt injection, AI provider risks, authentication, authorization, RBAC, encryption, secrets, audit logging, secure deletion, embedding invalidation, backup/restore, incident response, vulnerability scanning, penetration testing, and security acceptance criteria.
- It correctly treats user reflections, AI drafts, safety events, embeddings, audit logs, secrets, credentials, and backups as sensitive or highly sensitive assets.
- It explicitly includes AI-specific security risks, including prompt injection, indirect prompt injection, retrieval poisoning, AI provider disclosure, and model-service unavailability.
- It includes secure deletion and embedding invalidation requirements for deleted or rejected memories across active storage, vector stores, caches, prompts, retrieval, and recommendations.
- It uses least privilege, RBAC, ABAC, MFA, encrypted storage/transit, secret management, audit logging, and incident response as core controls.
- It does not add application code or dependencies.

### Gaps

- The deliverable does not yet have Security owner sign-off, a decision date, or a recorded owner decision.
- Residual risk treatment is implied but not consistently separated from mitigations; a dedicated residual-risk register would make owner review stronger.
- Some security acceptance criteria describe future implemented controls, completed scans, completed penetration tests, configured detection systems, and rehearsed incident response; these should stay future gates, not current state.
- Architecture choices such as cloud provider, hosting regions, identity provider, MFA approach, vector database, AI provider, logging/SIEM, secrets manager, KMS/HSM, backup provider, and mobile/web scope remain assumptions.
- Crisis and safety event handling needs alignment with the Legal Claims and Crisis Localisation boundaries so security controls do not imply monitored crisis support.
- Security testing scope should be reconciled with the AI Evaluation Harness, especially prompt injection, RAG, retrieval, deleted-memory resurfacing, privacy leakage, and incident response cases.

### Risks

- Treating this threat model as accepted security evidence before owner sign-off could create a false readiness signal.
- If crisis/safety events are stored or escalated without a settled safety/legal policy, the system could create privacy, duty-of-care, and access-control risks.
- AI provider and vector database risks depend heavily on vendor contract terms, data retention, deletion support, region, logging behavior, and incident response commitments.
- Secure deletion across backups, caches, embeddings, logs, prompts, and AI provider systems may be difficult to prove without architecture and vendor commitments.
- RBAC and break-glass workflows can reduce insider risk, but also require audit, alerting, training, access review, and owner-approved operating procedures.

### Contradictions

- The Legal Claims review requires the product not to imply crisis support or emergency intervention. The security model's crisis/safety event and safety specialist language should be reviewed carefully so it does not create a product promise outside that boundary.
- The Canonical Data Model review flagged crisis-routing behavior as unresolved; this security model depends on that same unresolved data and workflow choice.
- The AI Evaluation Harness review is conditional and requires reconciliation around crisis routing, prompt injection, context minimisation, and test-data handling; those same areas are core to this security model.
- No direct contradiction was found with the PRD requirement that deleted or rejected memories must not influence prompts, retrieval, embeddings, Today, Ask AI, Calendar, or Review.

### Required changes

- Security owner should confirm the controlling architecture assumptions: cloud provider, hosting region, auth/MFA approach, AI provider, vector database, backup provider, logging/SIEM, KMS/HSM, and admin/support scope.
- Reframe implementation-flavored security acceptance criteria as future verification gates until build evidence exists.
- Add a residual-risk register with owner, severity, likelihood, treatment, decision date, and unresolved dependency for each major risk.
- Reconcile crisis/safety event storage, access, routing, escalation, and audit logging with Privacy, Legal Claims, Crisis Localisation, and Product owners.
- Reconcile secure deletion and embedding invalidation with the Canonical Data Model, NFRs, AI provider terms, backups, caches, logs, and retrieval pipeline.
- Confirm AI security tests with the AI Evaluation Harness owner, including prompt injection, indirect RAG injection, data leakage, deleted-memory retrieval, and context minimisation.
- Keep the Security Threat Model status below sign-off until explicit Security owner review is recorded in the repository.

### Open questions

- Which architecture and vendor choices are sufficiently real to threat-model before MVP architecture planning?
- What residual risks remain after proposed mitigations, and who owns each risk decision?
- What crisis/safety event data can be stored without implying monitored crisis support or creating unmanaged obligations?
- How will secure deletion be verified across primary databases, vector databases, caches, backups, logs, prompts, and AI provider systems?
- What admin/support data access is necessary, and what break-glass approvals, alerts, and audit reviews are required?
- What security gates must be completed before prototype testing versus MVP build planning versus closed beta?

## Evidence Reviewed

- `docs/05_privacy_legal_safety/security_threat_model.docx`: Provides the security threat model, including asset inventory, trust boundaries, data-flow description, STRIDE analysis, abuse cases, prompt-injection threat analysis, AI provider risk analysis, authentication, authorization, RBAC, encryption, secrets, audit logging, secure deletion, embedding invalidation, backup/restore, incident response, scanning, penetration testing, and security acceptance criteria.
- `docs/04_ai_memory_and_data/canonical_data_model.docx`: Provides user, memory, consent, deletion, embedding, safety event, crisis routing, support, incident, audit, and export entities that security controls must protect.
- `docs/07_analysis/p0_reviews/canonical_data_model_review.md`: Records the Canonical Data Model assessment as conditional, with open issues around crisis routing, retention/deletion, archived/deleted memory handling, entity scope, progress tracking, and dependency alignment.
- `docs/04_ai_memory_and_data/ai_evaluation_harness.docx`: Provides AI safety, red-team, prompt-injection, privacy leakage, deleted-memory, refusal, crisis, hallucination, confidence, schema, regression, and incident-response evaluation expectations.
- `docs/07_analysis/p0_reviews/ai_evaluation_harness_review.md`: Records the AI Evaluation Harness assessment as conditional, with open issues around thresholds, confirmation/edit/reject tests, context minimisation, crisis routing, and security/crisis dependencies.
- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`: Provides privacy, consent, retention, deletion, export, AI provider, cross-border, age-gating, and crisis data assumptions that security controls must support.
- `docs/07_analysis/p0_reviews/privacy_and_consent_review.md`: Records the Privacy and Consent assessment as conditional, with open issues around age/minor scope, vendor/controller assumptions, AI provider retention, crisis handling, and implementation-flavored criteria.
- `docs/06_architecture_and_api/non_functional_requirements.docx`: Provides NFR targets for encryption, zero trust, secrets, audit logging, observability, data residency, cross-border processing, backup/restore, AI safety, and support/incident expectations.
- `docs/07_analysis/p0_reviews/non_functional_requirements_review.md`: Records the NFR assessment as conditional, with open issues around broad product/platform/scale assumptions, future implementation criteria, and dependencies on privacy, legal, security, AI, operations, and testing reviews.
- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`: Provides prohibited claims, crisis boundary language, AI limitation language, and professional-boundary constraints that security and incident language must not contradict.
- `docs/07_analysis/p0_reviews/legal_claims_review.md`: Records the Legal Claims assessment as conditional, with open issues around final copy, launch jurisdictions, crisis/AI boundary language, and upstream dependency alignment.
- `docs/01_product/prd_v0.1_for_becomingos.docx`: Provides product boundaries, non-clinical positioning, AI draft-only behavior, user-confirmed memory rules, consent/export/delete expectations, and release-gate context.
- `docs/07_analysis/p0_reviews/prd_review.md`: Records the PRD assessment as conditional, with open issues around prototype vs MVP scope, research-dependent claims, and implementation-flavored gate wording.
- `docs/09_agent_prompts/09_security_threat_model_agent.md`: Defines expected Security Threat Model deliverables, hard constraints, and acceptance criteria.
- `docs/07_analysis/p0_owner_review_packet.md`: Establishes P0 review order, security review focus, update instructions, and the explicit non-build rule.
- `docs/07_analysis/agent_owner_review_decision_register.md`: Shows the Security Threat Model deliverable was pending owner review before this assessment.
- `docs/07_analysis/remaining_readiness_blockers.md`: Confirms owner review, P0 evidence closure, and legal/privacy/security/safety sign-off remain blockers before MVP build planning.
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`: Requires a security threat model with prompt injection and AI-provider risks before readiness gates can progress.
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`: Places Security Threat Model review after AI Evaluation Harness and before Crisis Localisation, Accessibility, Architecture, and build planning.
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`: Confirms Security Threat Model output belongs in `docs/05_privacy_legal_safety/` and remains documentation/readiness material.

## Dependency Notes

Security depends on PRD scope, canonical data model, privacy/consent, NFRs, AI evaluation, crisis localisation, vendors, hosting, auth, logging, and architecture. These dependencies define the assets, trust boundaries, data flows, security controls, deletion behavior, prompt-injection controls, incident response, and operational monitoring that must be reviewed before architecture or build planning.

PRD, Canonical Data Model, AI Evaluation, Privacy, Legal, and NFR reviews are conditional, so security assumptions remain provisional. The threat model should not be treated as final security evidence, architecture approval, or implementation authorization until those dependencies are reconciled and Security owner sign-off exists.

The security threat model can be reviewed as a pre-MVP security planning artifact, but not treated as accepted security evidence until Security owner sign-off exists.

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

Update the Security Threat Model Agent row in `docs/07_analysis/agent_owner_review_decision_register.md` as follows:

| Deliverable path | Review status | Decision | Decision date | Evidence reviewed | Open issues | Severity | Follow-up action |
|---|---|---|---|---|---|---|---|
| `docs/05_privacy_legal_safety/security_threat_model.docx` | Review assessment drafted; Security owner sign-off required | Conditional — changes required | 2026-05-20 | `docs/07_analysis/p0_reviews/security_threat_model_review.md` | Security owner to confirm architecture/vendor assumptions, residual risks, crisis/safety data handling, secure deletion and embedding invalidation proof, admin access controls, and future security gate wording. | Medium | Security owner to review and sign off |

## Non-Build Rule

Do not start production implementation, backend, frontend, API, database, authentication, CI/CD, deployment, monitoring, or release work until P0 blockers are closed with evidence and the Integration Agent gives a documented go/no-go decision.
