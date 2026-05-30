# Canonical Data Model Agent P0 Review Assessment

## Review Scope

Reviewed deliverable:

- `docs/04_ai_memory_and_data/canonical_data_model.docx`

Dependency inputs reviewed:

- `docs/01_product/prd_v0.1_for_becomingos.docx`
- `docs/07_analysis/p0_reviews/prd_review.md`
- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`
- `docs/07_analysis/p0_reviews/privacy_and_consent_review.md`
- `docs/06_architecture_and_api/non_functional_requirements.docx`
- `docs/07_analysis/p0_reviews/non_functional_requirements_review.md`
- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`
- `docs/07_analysis/p0_reviews/legal_claims_review.md`

Related repository controls reviewed:

- `docs/07_analysis/p0_owner_review_packet.md`
- `docs/07_analysis/agent_owner_review_decision_register.md`
- `docs/07_analysis/remaining_readiness_blockers.md`
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`
- `docs/09_agent_prompts/05_canonical_data_model_agent.md`

## Review Status

Review assessment drafted; Data/privacy owner sign-off required

## Decision

Conditional — changes required

This is not an acceptance decision. Data/privacy owner sign-off is still required before the Canonical Data Model deliverable can be used as accepted P0 evidence.

## Acceptance Criteria Check

| Criterion | Assessment | Notes |
|---|---|---|
| Defines core entities. | Met | The model defines users, sessions, modules, lessons, questions, responses, AI drafts, evidence, memory, allowed uses, directives, Ask AI, calendar, reviews, consent, export, deletion, safety, audit, embeddings, support, and incidents. |
| Defines relationships between entities. | Met | Entity tables include foreign-key style relationships such as user-to-response, response-to-draft, draft-to-memory, memory-to-status-history, memory-to-embedding, and consent-to-revocation. |
| Defines user profile/user identity data. | Met | User and session/account entities define identifiers, email, name, password hash, timezone, language, preferences, session tokens, IP/device metadata, and account status expectations. |
| Defines module, lesson, question, response, and progress data. | Met with caveat | Modules, lessons, questions, responses, and review/progress concepts are included; explicit lesson completion/progress tracking should be confirmed against the PRD and curriculum review. |
| Defines memory records and memory lifecycle. | Met | My OS Memory, Memory Status History, Memory Allowed Uses, and the memory lifecycle state machine cover pending, confirmed, edited, rejected, deleted, and archived states. |
| Defines AI draft interpretation records. | Met | AI Interpretation Draft includes source response, model version, draft text, status, user feedback, and lifecycle behavior. |
| Defines user confirmation/edit/reject flow. | Met | The AI draft state machine confirms that confirmed or edited drafts create memory, while rejected drafts do not create memory. |
| Defines deletion, rejected-memory exclusion, and embedding invalidation expectations. | Met | The model states rejected/deleted memories are excluded from future influence and embeddings, and includes deletion plus embedding invalidation records and flow. |
| Defines consent scope and consent-state relationships. | Met | Consent Record and Consent Revocation capture granular consent purpose, details, withdrawal, processing cessation, deletion/anonymisation, and auditability. |
| Defines exportable data. | Met | Export Request and export flow identify user data exports, encrypted temporary files, field explanations, and exclusion/minimisation of raw sensitive data. |
| Defines retention and deletion metadata. | Met with caveat | Most entities include retention and deletion rules; exact retention periods remain open legal/privacy questions. |
| Defines audit/provenance metadata. | Met | Audit Log, Memory Status History, deletion records, embedding invalidation records, safety events, and incident records provide provenance and compliance tracking. |
| Defines calendar/directive/review data if in scope. | Met | Today Directive, Calendar Preference, Manual Calendar Item, Daily Review, and Weekly Review are included. Scope should be confirmed because PRD and NFR reviews remain conditional. |
| Clearly separates prototype/MVP planning from implementation. | Partial | The document is conceptual and does not write database code, but some fields and rules read like schema decisions and should be marked as planning targets until owner sign-off. |
| Aligns with PRD, Privacy and Consent, NFR, and Legal Claims assumptions. | Partial | The model aligns on AI draft confirmation, memory permissions, deletion, export, consent, and non-clinical boundaries, but depends on conditional PRD, Privacy, Legal, and NFR reviews. |
| Identifies open data/privacy/schema questions. | Met | The model includes open questions on retention, deleted-data archival, AI outputs, cross-border transfers, emergency protocols, minors, integrations, automated decision-making, embeddings, and access rights. |
| Avoids implying production database implementation exists. | Met with caveat | It states this is a conceptual pre-MVP model and contains no implementation code, but owner review should ensure schema-like tables are not treated as implemented. |

## Findings

### Strengths

- The model is comprehensive and structured, with entity purposes, field types, required/optional markers, validation rules, relationships, notes, retention/deletion guidance, privacy classification, AI/embedding eligibility, and influence rules.
- It directly supports the core BecomingOS constraint that AI outputs remain drafts until user confirmation or edit.
- It clearly defines memory statuses including pending, confirmed, edited, rejected, deleted, and archived, and limits influence to confirmed or edited memories.
- It includes deletion and embedding invalidation flow, export flow, consent state machine, audit logging rules, and data minimisation rules.
- It treats raw responses and evidence as sensitive/restricted, emphasizes structured minimal summaries, and avoids embedding raw sensitive content.
- It includes governance entities for safety events, crisis routing, audit logs, embeddings, support tickets, incidents, and admin/support users.

### Gaps

- The deliverable does not yet have Data/privacy owner sign-off, a decision date, or a recorded review decision.
- Exact retention periods are often illustrative or unresolved and need Data/privacy, Legal, and Security review before use as schema requirements.
- The model includes support/admin, crisis routing, manual calendar items, calendar integrations, reviews, and incidents, but upstream PRD, NFR, Privacy, and Legal reviews still need to confirm scope and boundaries.
- Lesson completion and progress data are implied through reviews and module/lesson/question flows, but explicit progress/completion entity coverage may need tightening.
- AI provider handling, local-versus-external processing, embedding storage risk, and backup deletion behavior need reconciliation with AI Evaluation, Security Threat Model, and NFR reviews.
- The model uses schema-like field tables; it should be labelled and used as conceptual planning rather than an implementation schema.

### Risks

- Crisis Routing Event includes actions such as contacted_support or notified_emergency_services, which may conflict with the legal boundary that BecomingOS is not monitored and cannot provide emergency or crisis support unless a qualified safety/legal review explicitly scopes that process.
- Retaining deleted or archived memory data for legal/research purposes may conflict with user expectations and deletion/privacy commitments unless retention purposes and anonymisation rules are approved.
- Embeddings may leak sensitive information even when based on summaries; secure vector storage and deletion verification need later security and AI safety review.
- Raw responses, Ask AI prompts, support tickets, and safety events may contain highly sensitive reflective content, so data minimisation and access controls must be validated before architecture decisions.
- Calendar and directive influence could drift into advice-like behavior unless legal claims and PRD boundaries remain explicit.

### Contradictions

- The Legal Claims review requires conservative crisis and AI boundary language. The canonical model's crisis routing actions need review to avoid implying monitored crisis support or emergency intervention.
- The Privacy and Consent review flagged age/minor, vendor/controller, AI provider retention, and crisis-handling questions; this model depends on those unresolved choices.
- The NFR review flagged broad product/platform assumptions and implementation-language criteria; this model likewise includes broad surface area that may exceed first prototype or MVP scope.
- No direct contradiction was found with the PRD requirements that only confirmed or edited memories may influence Today, Ask AI, Calendar, Review, prompts, retrieval, or embeddings.

### Required changes

- Data/privacy owner should confirm which entities are P0, prototype, MVP, later-stage, or out of scope before the model drives architecture work.
- Reconcile Crisis Routing Event and Safety Classification Event behavior with Crisis Localisation, Legal Claims, Privacy, and Security review before treating those entities as required.
- Add or clarify explicit progress/completion tracking if module, lesson, question, response, and progress data are expected as separate canonical concepts.
- Confirm retention and deletion rules for memories, raw responses, drafts, reviews, audit logs, safety events, support tickets, incidents, exports, backups, and embeddings.
- Confirm whether archived or anonymised deleted memories may be retained, and under what legal basis.
- Reconcile AI/embedding eligibility with future AI Evaluation Harness and Security Threat Model reviews.
- Keep this model below schema acceptance until Data/privacy owner sign-off is recorded in the repository.

### Open questions

- Which canonical entities are required before MVP architecture, and which are later planning concepts?
- What exact retention periods apply to raw responses, AI drafts, confirmed memories, deleted memories, reviews, safety events, audit logs, support tickets, and incident records?
- Can any deleted, rejected, or archived memory derivatives be retained for audit, legal, or research purposes without violating user deletion expectations?
- What is the safe and legally reviewed behavior for crisis classification and routing in a non-clinical, non-crisis-support product?
- What fields may be sent to external AI providers, embedded, or included in retrieval prompts under the final consent model?
- What verification process will prove embedding invalidation and backup deletion after memory deletion or consent revocation?

## Evidence Reviewed

- `docs/04_ai_memory_and_data/canonical_data_model.docx`: Provides the conceptual canonical data model, entity tables, field rules, relationships, lifecycle/state-machine descriptions, deletion and embedding invalidation flow, export flow, audit logging rules, data minimisation rules, and open legal/security questions.
- `docs/01_product/prd_v0.1_for_becomingos.docx`: Provides product boundaries, AI draft-only and user-confirmed memory rules, consent/export/delete expectations, Today/Ask AI/Calendar/Review influence boundaries, and non-clinical positioning that the data model must support.
- `docs/07_analysis/p0_reviews/prd_review.md`: Records the PRD assessment as conditional, with open issues around prototype vs MVP scope, research-dependent claims, and implementation-flavored gate wording.
- `docs/05_privacy_legal_safety/privacy_and_consent_pack.docx`: Provides privacy, consent, retention, deletion, export, AI provider, cross-border, age-gating, and crisis-data assumptions that the data model must honor.
- `docs/07_analysis/p0_reviews/privacy_and_consent_review.md`: Records the Privacy and Consent assessment as conditional, with open issues around age/minor scope, vendor/controller assumptions, AI provider retention, crisis handling, and implementation-flavored MVP criteria.
- `docs/06_architecture_and_api/non_functional_requirements.docx`: Provides quality-bar targets for privacy, data rights, retention, deletion, export, security, audit logging, observability, AI safety, backup, restore, support, and open architecture decisions.
- `docs/07_analysis/p0_reviews/non_functional_requirements_review.md`: Records the NFR assessment as conditional, with open issues around broad product/platform/scale assumptions, implementation-language criteria, accessibility timing, and dependencies on privacy, legal, security, AI, operations, and testing reviews.
- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`: Provides prohibited claims, safe positioning, crisis boundary language, AI limitation language, and legal review checklist constraints relevant to data influence and crisis/safety entities.
- `docs/07_analysis/p0_reviews/legal_claims_review.md`: Records the Legal Claims assessment as conditional, with open issues around final copy coverage, launch-jurisdiction assumptions, crisis/AI boundary language, and conditional upstream reviews.
- `docs/09_agent_prompts/05_canonical_data_model_agent.md`: Defines expected canonical data model coverage, including users, sessions, modules, lessons, questions, responses, AI drafts, evidence, memory, allowed uses, directives, Ask AI, calendar, reviews, consent, revocation, export, deletion, safety events, crisis routing, audit logs, embeddings, invalidation, support, tickets, and incidents.
- `docs/07_analysis/p0_owner_review_packet.md`: Establishes P0 review order, canonical data model review focus, update instructions, and the explicit non-build rule.
- `docs/07_analysis/agent_owner_review_decision_register.md`: Shows the Canonical Data Model deliverable was pending owner review before this assessment.
- `docs/07_analysis/remaining_readiness_blockers.md`: Confirms owner review, P0 evidence closure, and legal/privacy/security/safety sign-off remain blockers before MVP build planning.
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`: Requires the canonical data model to include memory lifecycle plus deletion and embedding invalidation before readiness gates can progress.
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`: Places Canonical Data Model review after NFR and before AI evaluation, security, crisis, architecture, and build planning.
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`: Confirms Canonical Data Model output belongs in `docs/04_ai_memory_and_data/` and remains documentation/readiness material.

## Dependency Notes

The data model depends on PRD scope, privacy/consent rules, NFRs, AI evaluation, security threat model, and crisis localisation. These dependencies determine which entities are needed, what data can be collected, what data can be retained, what may be sent to AI, what may be embedded, what must be exportable or deletable, and what crisis/safety metadata is permissible.

PRD, Privacy, Legal, and NFR reviews are conditional, so schema/data model decisions remain provisional. The canonical model should not drive technical architecture, database design, API contracts, or implementation sequencing until those upstream reviews are resolved and the Data/privacy owner records a decision.

The document can be reviewed as a canonical data planning artifact, but not treated as accepted schema or implementation until Data/privacy owner sign-off exists.

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

Update the Canonical Data Model Agent row in `docs/07_analysis/agent_owner_review_decision_register.md` as follows:

| Deliverable path | Review status | Decision | Decision date | Evidence reviewed | Open issues | Severity | Follow-up action |
|---|---|---|---|---|---|---|---|
| `docs/04_ai_memory_and_data/canonical_data_model.docx` | Review assessment drafted; Data/privacy owner sign-off required | Conditional — changes required | 2026-05-20 | `docs/07_analysis/p0_reviews/canonical_data_model_review.md` | Data/privacy owner to reconcile crisis routing, retention/deletion rules, archived/deleted memory handling, prototype/MVP entity scope, progress tracking, and dependencies on privacy, legal, NFR, AI, security, and crisis reviews. | Medium | Data/privacy owner to review and sign off |

## Non-Build Rule

Do not start production implementation, backend, frontend, API, database, authentication, CI/CD, deployment, monitoring, or release work until P0 blockers are closed with evidence and the Integration Agent gives a documented go/no-go decision.
