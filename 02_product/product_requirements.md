# Product Requirements

Current status: conceptual pre-MVP requirements derived from `docs/02_product/becomingos_product_specification.docx`.

These requirements do not approve implementation, public MVP build, production readiness, technical architecture, API design, database schema, auth, deployment, or vendor use.

## Core Pillars

### Self-Discovery Journey

The system should guide users through educational, non-clinical reflection about values, patterns, priorities, motivations, constraints, and desired change.

Reflection prompts must avoid diagnosis, treatment claims, crisis probing, shame, coercion, and professional-advice framing.

### Memory Engine

The system may maintain user-confirmed memory only after explicit user review and confirmation.

Draft, rejected, deleted, or unconfirmed content must not influence future retrieval, recommendations, or AI outputs.

### Future Self Builder

The system should help users describe possible future selves, direction, identity, values, and goals as reflective planning material.

It must not promise transformation, guaranteed outcomes, clinical improvement, financial outcomes, or professional results.

### Decision Engine

The system may generate draft options, trade-offs, and reflections for user review.

AI must explain or cite which confirmed user context influenced recommendations. The user remains the decision-maker.

### Daily Plan System

The system should help translate user-confirmed reflection into practical daily actions, priorities, reviews, and plans.

Daily plans must remain editable and optional.

### Life Signals And Wearables Integration

Signals from calendars, health/wearable sources, tasks, or other integrations are conceptual only unless private beta consent and storage safeguards are in place.

Users decide which signals to provide. Data collection must be clearly explained and minimal.

### Life Capture / Multimodal Input

Manual entries, documents, photos, audio, video, and other multimodal inputs are conceptual product inputs.

Private beta processing of these inputs requires explicit consent, purpose limitation, retention limits, deletion rights, and AI provider disclosure.

### Support Circle And Accountability

Support Circle features are optional and user-controlled.

The product must not automatically alert contacts unless prior user consent, rules, and boundaries exist. Support Circle is not emergency monitoring or crisis response.

## Technical Status

All technical details are conceptual only.

Architecture, API, NFR, AI provider, database, vector storage, auth, deployment, logging, analytics, and integration documents are planning evidence only. They do not approve implementation.

## Evidence-Based Growth Loop

These requirements are planning/private-beta requirements only. They do not approve public MVP build, production readiness, implementation, clinical claims, medical claims, legal claims, or regulatory compliance claims.

Research source: `03_research_validation/evidence_based_growth_systems_report.md`.

The product should plan around this evidence-informed loop:

```text
diagnosis flow -> Today Directive -> if-then plan -> completion tracking -> failure diagnosis -> adaptive reset
```

### Diagnosis Flow

The system should help users identify non-clinical barriers using COM-B as a behavioural lens: capability, opportunity, and motivation.

This must not be described as clinical diagnosis, mental-health screening, treatment, or professional assessment.

### Today Directive

The system should generate or draft one feasible next action for user review, with a rationale tied to user-confirmed context where applicable.

The Today Directive should remain editable, rejectable, and non-prescriptive.

### If-Then Plan Builder

The system should help users turn a chosen action into an implementation intention:

```text
If [cue/context], then I will [specific action].
```

Plans should include a cue, action, and optional fallback or reduced version.

### Habit Tracker With Cue Logging

The system should support self-monitoring by tracking completion, reduced-version completion, cue match, and difficulty bands.

Tracking must avoid punitive streak pressure and must not collect sensitive free text unless separately justified and consented.

### Failure Diagnosis

The system should help users review missed or difficult actions without shame. Failure diagnosis should identify practical barriers and lead to plan adjustment.

Failure diagnosis must not label the user, diagnose a condition, or infer clinical causes.

### Bad Day Mode

The system should offer a reduced plan when the full action is unrealistic. Bad Day Mode should protect competence and continuity by scaling down rather than treating the day as a failure.

Bad Day Mode is low-intensity planning support only, not therapy or crisis support.

### Optional Support Circle Permissions

The system may support optional, permissioned accountability. Users must choose who sees what, for how long, and why.

Support Circle must not automatically alert contacts unless prior user consent and rules exist. It is not emergency monitoring or crisis response.

## Private Beta Requirements

Private beta requirements are separate from conceptual product requirements:

- Limited trusted participants only, with 5-10 testers suggested.
- Explicit beta consent notice required.
- Separate beta environment required.
- Real data allowed only with explicit consent.
- Minimal logging.
- Defined retention period, with 90 days suggested.
- Edit, deletion, access/export, and withdrawal processes required.
- Beta data must be deleted or anonymised after beta.
- No production reuse of beta data without renewed consent.
