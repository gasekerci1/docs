# Growth Systems Research Summary

Current status: research summary only. This document does not approve public MVP build, production readiness, implementation work, clinical claims, medical claims, legal claims, or regulatory compliance claims.

Primary source: `03_research_validation/evidence_based_growth_systems_report.md`.

Product source of truth remains `docs/02_product/becomingos_product_specification.docx`. Where this research suggests broader product scope, the source-of-truth product specification controls.

## Summary

The growth systems report argues that a personal growth product should not depend on inspiration, generic content, punitive streak pressure, or vague motivation. The better-supported pattern is a tight behaviour loop:

1. Diagnose the real barrier.
2. Connect the action to a personally endorsed reason.
3. Translate the intention into a concrete if-then plan.
4. Make the action easy in a stable context.
5. Monitor completion and cue consistency.
6. Review misses without shame.
7. Adapt the plan instead of abandoning it.

The report recommends using BecomingOS as a personal operating system for change, with the core loop: diagnosis flow -> Today Directive -> if-then plan -> completion tracking -> failure diagnosis -> adaptive reset.

## Best-Supported Mechanisms

| Mechanism | Evidence status in report | Product interpretation |
|---|---|---|
| COM-B diagnosis | Strong as a diagnostic scaffold for capability, opportunity, and motivation barriers. | Use as a non-clinical behavioural lens, not a clinical diagnosis. |
| Self-Determination Theory | Moderate evidence for supporting autonomous motivation and perceived competence. | Design for choice, rationale, personal meaning, and small wins. |
| Implementation intentions | Strong evidence for turning intentions into action through if-then plans. | Meaningful plans should include a cue, trigger, contingency, or time anchor. |
| WOOP / MCII | Moderate evidence for obstacle-aware goal pursuit. | Use as an interactive reflection/planning structure, not a static worksheet. |
| Habit automaticity | Moderate evidence that repetition in stable contexts supports maintenance over time. | Avoid "21 day" promises; track consistency, cues, and gradual automaticity. |
| Self-monitoring | Strong evidence as a reliable behaviour-change technique. | Track actions, cues, difficulty, and outcomes, not only streaks. |
| Feedback | Moderate evidence as part of digital behaviour-change systems. | Provide non-shaming feedback that helps revise the next plan. |
| Prompts/cues | Moderate evidence for engagement and habit formation when tied to context. | Use prompts to support chosen plans, not to pressure users. |
| Supportive accountability | Moderate and variable evidence. | Make support opt-in, permissioned, process-focused, and user-controlled. |
| Bad Day Mode | Implementation inference grounded in competence protection, goal scaling, habit continuity, and non-shaming recovery. | Scale the plan down when the full version is unrealistic. |

## Evidence Versus Implementation Inference

Evidence-supported:

- Self-monitoring is a high-confidence mechanism.
- If-then plans are well-supported for action initiation and derailment prevention.
- COM-B is useful for classifying barriers before choosing a tactic.
- SDT supports choice, autonomous motivation, competence, and relatedness.
- Cues, feedback, goal setting, and social support are repeatedly associated with digital engagement.

Implementation inference:

- The exact BecomingOS loop and feature sequence.
- Today Directive as the one-action daily surface.
- Behaviour contract builder.
- Bad Day Mode implementation details.
- Directive ranking formulas.
- Specific analytics event names.

## Product Boundary

This research supports planning and private-beta design decisions. It does not approve public MVP build, production readiness, implementation, clinical claims, therapy claims, diagnosis, treatment, crisis intervention, or professional advice.

Any private beta use of these mechanisms must follow the BecomingOS source-of-truth boundaries: explicit consent, minimal data collection, separate beta environment, confirmed memory only, no durable memory without user confirmation, and no production reuse without renewed consent.

