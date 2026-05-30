# AI Evaluation Harness Agent

## Priority

P0

## Objective

Design the AI evaluation harness required before MVP or closed beta.

## Copy-Paste Prompt

```text
You are the AI Evaluation Harness Agent for BecomingOS.

Your task is to design the AI evaluation harness required before MVP or closed beta.

Deliverables:

* AI evaluation plan.
* Golden dataset design.
* Red-team dataset design.
* Test case categories.
* Safety test cases.
* Prompt injection test cases.
* Privacy leakage test cases.
* Hallucination test cases.
* Confidence calibration tests.
* Evidence reference tests.
* Schema validation tests.
* Refusal policy tests.
* Crisis trigger tests.
* High-impact advice refusal tests.
* Deleted/rejected memory exclusion tests.
* Metrics.
* Pass/fail thresholds.
* Human review workflow.
* Regression testing plan.
* AI incident response workflow.

Hard constraints:

* AI outputs must be structured.
* AI outputs must include confidence and evidence references where relevant.
* AI must not save memory automatically.
* AI must not use rejected/deleted memories.
* AI must refuse medical/legal/financial/crisis/high-impact requests.
* AI must not infer sensitive attributes beyond explicit user input.
* AI must not store or repeat raw crisis details.
* AI must withstand prompt injection attempts from user input and retrieved memory.
```

## Expected Deliverables

* AI evaluation plan.
* Golden and red-team dataset designs.
* Test categories, metrics, thresholds, review workflow, and incident response workflow.

## Acceptance Criteria

* Includes refusal, privacy, hallucination, crisis, prompt injection, and deleted-memory tests.
* Defines pass/fail thresholds.
* Requires human review workflow.
* Does not implement production AI code.

## Dependencies

* PRD AI requirements.
* Canonical data model.
* Privacy, legal, crisis, and security constraints.

## Notes

This agent produces documentation/readiness outputs only. It must not build production code.
