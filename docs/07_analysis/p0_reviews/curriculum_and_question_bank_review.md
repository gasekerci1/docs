# Curriculum and Question Bank Agent P0 Review Assessment

## Review Scope

Reviewed deliverable:

- `docs/03_curriculum_and_questions/curriculum_and_question_bank.docx`

Dependency inputs reviewed:

- `docs/01_product/prototype_ux_specification.docx`
- `docs/07_analysis/p0_reviews/prototype_ux_review.md`
- `docs/01_product/prd_v0.1_for_becomingos.docx`
- `docs/07_analysis/p0_reviews/prd_review.md`
- `docs/10_operations_testing_accessibility/accessibility_qa_plan.docx`
- `docs/07_analysis/p0_reviews/accessibility_qa_review.md`
- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`
- `docs/07_analysis/p0_reviews/legal_claims_review.md`
- `docs/05_privacy_legal_safety/crisis_localisation_policy.docx`
- `docs/07_analysis/p0_reviews/crisis_localisation_review.md`
- `docs/02_research_and_validation/user_research_plan.docx`
- `docs/07_analysis/p0_reviews/user_research_review.md`

Related repository controls reviewed:

- `docs/07_analysis/p0_owner_review_packet.md`
- `docs/07_analysis/agent_owner_review_decision_register.md`
- `docs/07_analysis/remaining_readiness_blockers.md`
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`
- `docs/09_agent_prompts/13_curriculum_question_bank_agent.md`

## Review Status

Review assessment drafted; Curriculum owner sign-off required

## Decision

Conditional — changes required

This is not a sign-off decision. Curriculum owner sign-off is still required before the Curriculum and Question Bank deliverable can be used as P0 evidence.

## Acceptance Criteria Check

| Criterion | Assessment | Notes |
|---|---|---|
| Covers Modules 0-2 or clearly marks the intended scope. | Met | The document covers Module 0 Orientation & Privacy, Module 1 Values & Morals, and Module 2 Pleasure, Pain & Desire, with Module 2 labelled draft in the plain-language summary. |
| Defines micro-lessons. | Met | Each module contains three micro-lessons with objectives and micro-lesson copy. |
| Defines reflective questions. | Met | The question bank includes open-text, rating, ranking, multiple-choice, yes/no, and self-assessment prompts across Modules 0-2. |
| Defines question types. | Met | Tables identify question type, purpose, intensity, branching rule, AI/memory rule, and safety note. |
| Defines AI draft/memory prompts or interpretation support if in scope. | Met with caveat | AI/memory rules are included for high-level summaries, values, barriers, activities, and interests, but privacy/data owners should confirm what may become memory. |
| Defines user confirmation/edit/reject expectations where AI memory is involved. | Partial | The document defines memory suggestions and cautious AI interpretation boundaries, but explicit confirm/edit/reject copy and workflow expectations are mostly handled in the Prototype UX deliverable. |
| Uses shame-free, non-clinical, educational wording. | Met with caveat | The content is largely educational, reflective, and non-shaming, with safety notes that avoid judgement and pathologising. Curriculum owner should still review all prompts line by line. |
| Avoids therapy, diagnosis, treatment, crisis-support, legal, medical, and financial advice. | Met with caveat | The safety notes avoid diagnosis and mental-health inference. Legal and safety owners should review Module 2 discomfort/desire language and any support/resource wording before participant use. |
| Avoids high-intensity or unsafe prompts without skip, pause, and safety handling. | Met with caveat | Most prompts are intensity 1-3, a few reach 4, and skip/pause controls are repeatedly noted. Owner review should confirm intensity 4 prompts are necessary and safely worded. |
| Defines content intensity or risk levels. | Met | Every prompt includes emotional intensity ratings, and safety notes summarize intensity handling. |
| Defines skip, pause, and opt-out handling. | Met | Skip and pause are described in individual prompt rules, safety review notes, and platform-level handling. |
| Aligns with Prototype UX flows. | Partial | It aligns with orientation/privacy and values flows, but the Prototype UX review flagged the need to map Module 0 and Module 1 content more tightly into prototype screens. |
| Aligns with Accessibility QA and cognitive accessibility requirements. | Partial | The document includes plain-language rewrite, short prompts, fatigue constraints, and skip/pause. It still needs accessibility review for cognitive load, reading level, screen-reader clarity, ranking fatigue, and task length. |
| Aligns with Legal Claims and Crisis Localisation boundaries. | Partial | It avoids diagnosis, trauma probing, and crisis detail requests, but legal/safety sign-off remains conditional and crisis fallback handling is mostly outside this document. |
| Supports user research/prototype testing without claiming validated outcomes. | Met with caveat | It includes user-testing success criteria, but those criteria should be treated as future evaluation targets rather than achieved outcomes. |
| Identifies open content, safety, research, and review questions. | Partial | It includes safety, behavioural-science, and user-testing notes, but a clearer open-question list for Curriculum, Research, Legal, Accessibility, and Safety owners would strengthen review readiness. |
| Avoids implying production readiness or implemented content engine. | Met with caveat | The document is a curriculum/question-bank artifact and does not implement a content engine, but references to storage, branching, AI summaries, and calendar reminders should stay conceptual until build evidence exists. |

## Findings

### Strengths

- The deliverable closely matches the Curriculum and Question Bank Agent prompt and covers Modules 0-2 with lesson objectives, micro-lesson scripts, knowledge checks, reflective prompts, question purpose labels, intensity ratings, branching rules, AI/memory rules, safety notes, plain-language rewrite, behavioural science review notes, and user-testing success criteria.
- The curriculum is structured for prototype learning rather than production delivery, with clear module themes: Orientation & Privacy, Values & Morals, and Pleasure, Pain & Desire.
- It uses low-to-moderate intensity prompts, repeatedly reminds users they can skip or keep answers brief, and avoids requests for trauma details or diagnoses.
- AI and memory rules are framed as high-level summaries and user-labelled values/interests rather than raw narratives or inferred conditions.
- The document includes fatigue controls, including 8-12 prompts per module, a limited number of knowledge checks, and skip/pause expectations.
- It supports research planning by defining comprehension, psychological safety, relevance, behavioural-science alignment, data trust, branching, and feasibility criteria.

### Gaps

- The deliverable does not yet have Curriculum owner sign-off, a decision date, or a recorded owner decision.
- Explicit user confirmation/edit/reject expectations for memory are not fully specified inside the curriculum document and need alignment with Prototype UX and data/privacy rules.
- The document includes memory suggestions and storage preferences, but final memory eligibility, retention, deletion, and rejected-memory rules depend on Privacy, Data Model, and AI Evaluation reviews.
- Module 2 includes potentially sensitive topics around discomfort, avoidance, desire, and satisfaction; these need Curriculum, Legal, Accessibility, and Safety review for emotional intensity and non-clinical boundaries.
- The user-testing success criteria are helpful but should be separated from evidence; no user testing outcomes have been produced yet.
- The document references an older source in `docs/00_inbox/extracted_text/24_mvp_question_bank.md`; Curriculum owner should confirm whether that is still an appropriate source for intensity guidance.

### Risks

- Treating the curriculum as content-safety sign-off before owner review could create a false readiness signal.
- If memory suggestions are implemented too literally, reflective answers could be stored or used without clear user confirmation, edit, reject, retention, and deletion controls.
- Some prompts about barriers, conflict, discomfort, pain, desire, and avoidance could feel more intense for vulnerable participants than their numeric rating suggests.
- Ranking, rating, and repeated self-assessment prompts may create cognitive fatigue unless the prototype flow is tightly scoped and tested.
- Privacy copy in Module 0 says information is private and used to guide the journey; this must be reconciled with exact privacy/consent wording and prototype data-handling rules.
- The curriculum depends on PRD, Prototype UX, Accessibility, Legal Claims, Crisis Localisation, User Research, AI evaluation, and privacy/consent inputs that are conditional or not all fully reviewed.

### Contradictions

- The Prototype UX review frames the validation prototype primarily around Module 0 and Module 1, while this curriculum covers Modules 0-2. This is not fatal, but the test scope must be clarified.
- The PRD has broader seven-module MVP language, while the curriculum is Module 0-2 only. Curriculum owner should confirm this is prototype scope, not full MVP content scope.
- The privacy-oriented microcopy says user information is used only to guide the journey and never shared without consent; Privacy/legal owner should confirm this wording before participant testing.
- The document says safety has been reviewed, but the repository review chain has not recorded Curriculum owner sign-off or final legal/safety sign-off for this deliverable.
- No direct contradiction was found with the non-clinical, educational boundary, but Module 2 wording needs careful safety/legal review.

### Required changes

- Curriculum owner should perform line-by-line review of all micro-lessons, prompts, AI/memory rules, branching, safety notes, and user-testing criteria.
- Clarify whether Module 2 is included in the immediate prototype validation round or remains draft/future scope.
- Add explicit confirmation/edit/reject expectations for curriculum-generated AI summaries and memory suggestions, or cross-reference the controlling Prototype UX and data/privacy rules.
- Reconcile all memory suggestion language with privacy/consent, canonical data model, deletion, rejected-memory exclusion, and AI evaluation expectations.
- Confirm privacy and consent copy in Module 0 with Privacy/legal owner before participant testing.
- Review Module 2 discomfort, pain, desire, and avoidance prompts for emotional intensity, cognitive load, non-clinical boundaries, and shame-free wording.
- Add a clearer open-questions section with owners for Curriculum, Research, Accessibility, Legal, Safety, Privacy, and AI evaluation review.
- Keep the Curriculum and Question Bank status below sign-off until explicit Curriculum owner review is recorded in the repository.

### Open questions

- Is Module 2 part of the next validation prototype, or should the first test round use only Modules 0 and 1?
- Which prompts are mandatory, optional, or reserved for later testing?
- What exact AI summaries and memory suggestions require user confirmation, editing, or rejection?
- What memory suggestions should be excluded until privacy/data model sign-off exists?
- Are any intensity 4 prompts too sensitive for early prototype participants?
- How will accessibility testing evaluate cognitive load, ranking fatigue, reading level, and screen-reader clarity for the curriculum?
- What user research evidence is required before the curriculum can be revised or expanded?

## Evidence Reviewed

- `docs/03_curriculum_and_questions/curriculum_and_question_bank.docx`: Provides the prototype curriculum and question bank for Modules 0-2, including lesson objectives, micro-lessons, knowledge checks, reflective prompts, question types, intensity ratings, branching rules, AI/memory rules, safety notes, plain-language rewrite, behavioural science review notes, and user-testing success criteria.
- `docs/01_product/prototype_ux_specification.docx`: Provides prototype scope, screen flow, consent flow, values reflection, AI draft confirmation/edit/reject, memory card, Today Directive, review, safety boundary, crisis fallback, user testing tasks, and accessibility notes that the curriculum must fit into.
- `docs/07_analysis/p0_reviews/prototype_ux_review.md`: Records the Prototype UX assessment as conditional, with open issues around prototype scope, research-evidence wording, privacy/consent copy, crisis fallback copy, accessibility alignment, and curriculum mapping.
- `docs/01_product/prd_v0.1_for_becomingos.docx`: Provides product scope, non-clinical boundaries, curriculum scope, AI draft-only behavior, user-confirmed memory requirements, skip/pause, accessibility, safety, and release-gate context.
- `docs/07_analysis/p0_reviews/prd_review.md`: Records the PRD assessment as conditional, with open issues around prototype versus MVP scope, research-dependent claims, and implementation-flavored gate wording.
- `docs/10_operations_testing_accessibility/accessibility_qa_plan.docx`: Provides WCAG 2.2 AA, cognitive accessibility, plain-language, keyboard, screen-reader, form, AI confirmation, crisis copy, and test evidence expectations that curriculum delivery should satisfy.
- `docs/07_analysis/p0_reviews/accessibility_qa_review.md`: Records the Accessibility QA assessment as conditional, with open issues around WCAG scope, assistive-technology matrix, triage rules, evidence format, and alignment with Prototype UX, Curriculum, Crisis, PRD, and NFR decisions.
- `docs/05_privacy_legal_safety/legal_claims_review_pack.docx`: Provides legal claim boundaries, prohibited claims, safe positioning, professional-boundary language, AI limitation wording, and crisis boundary guidance relevant to curriculum copy.
- `docs/07_analysis/p0_reviews/legal_claims_review.md`: Records the Legal Claims assessment as conditional, with open issues around final copy, crisis/AI boundary language, launch jurisdictions, and upstream dependency alignment.
- `docs/05_privacy_legal_safety/crisis_localisation_policy.docx`: Provides crisis boundary, fallback copy, trigger categories, crisis-resource routing, storage limits, and safety/legal open questions relevant to any curriculum distress handling.
- `docs/07_analysis/p0_reviews/crisis_localisation_review.md`: Records the Crisis Localisation assessment as conditional, with open issues around locale scope, crisis copy, unsupported-locale fallback, resource maintenance ownership, raw crisis text handling, and dependency alignment.
- `docs/02_research_and_validation/user_research_plan.docx`: Provides research planning context for prototype comprehension, emotional safety, participant consent, recruitment, and evidence capture.
- `docs/07_analysis/p0_reviews/user_research_review.md`: Records the User Research assessment as ready for Research owner sign-off, with open issues around geography, screener boundaries, support-resource wording, and evidence threshold before sessions run.
- `docs/09_agent_prompts/13_curriculum_question_bank_agent.md`: Defines expected Curriculum and Question Bank deliverables, question rules, fatigue constraints, safety boundaries, acceptance criteria, dependencies, and documentation-only scope.
- `docs/07_analysis/p0_owner_review_packet.md`: Establishes P0 review order, curriculum review focus, update instructions, and the explicit non-build rule.
- `docs/07_analysis/agent_owner_review_decision_register.md`: Shows the Curriculum and Question Bank deliverable was pending owner review before this assessment.
- `docs/07_analysis/remaining_readiness_blockers.md`: Confirms owner review, P0 evidence closure, and legal/privacy/security/safety sign-off remain blockers before MVP build planning.
- `docs/09_agent_prompts/AGENT_READINESS_CHECKLIST.md`: Requires curriculum and question bank evidence for Modules 0-2 with safety review notes before readiness gates can progress.
- `docs/09_agent_prompts/AGENT_EXECUTION_ORDER.md`: Places Curriculum and Question Bank after Prototype UX and before Market Validation, Architecture, and build planning.
- `docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md`: Confirms the Curriculum and Question Bank output belongs in `docs/03_curriculum_and_questions/` and remains documentation/readiness material.

## Dependency Notes

Curriculum depends on PRD scope, Prototype UX, User Research, Accessibility QA, Legal Claims, Crisis Localisation, AI evaluation, and privacy/consent where reflective data is collected. These dependencies determine which modules are in scope, what questions are safe to ask, how sensitive content is handled, what AI may summarise, what can become memory, and what participant evidence is needed.

Prototype UX, PRD, Accessibility, Legal, and Crisis reviews are conditional, so curriculum readiness remains provisional. The document should not be treated as final content, content-safety sign-off, or release permission until those dependencies are reconciled and Curriculum owner sign-off exists.

The document can be reviewed as a prototype curriculum and question-bank planning artifact, but not treated as content safety sign-off or MVP readiness until Curriculum owner sign-off exists.

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

Update the Curriculum and Question Bank Agent row in `docs/07_analysis/agent_owner_review_decision_register.md` as follows:

| Deliverable path | Review status | Decision | Decision date | Evidence reviewed | Open issues | Severity | Follow-up action |
|---|---|---|---|---|---|---|---|
| `docs/03_curriculum_and_questions/curriculum_and_question_bank.docx` | Review assessment drafted; Curriculum owner sign-off required | Conditional — changes required | 2026-05-21 | `docs/07_analysis/p0_reviews/curriculum_and_question_bank_review.md` | Curriculum owner to confirm Module 2 scope, line-level prompt safety, AI/memory confirmation rules, privacy copy, accessibility/cognitive load, and alignment with conditional prototype, legal, crisis, PRD, and research reviews. | Medium | Curriculum owner to review and sign off |

## Non-Build Rule

Do not start production implementation, backend, frontend, API, database, authentication, CI/CD, deployment, monitoring, or release work until P0 blockers are closed with evidence and the Integration Agent gives a documented go/no-go decision.
