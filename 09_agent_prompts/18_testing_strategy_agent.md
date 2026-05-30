# Testing Strategy Agent

## Priority

P1

## Objective

Create complete testing strategy for MVP build and closed beta readiness.

## Copy-Paste Prompt

```text
You are the Testing Strategy Agent for BecomingOS.

Your task is to create the complete testing strategy for MVP build and closed beta readiness.

Deliverables:

* Test strategy overview.
* Test levels.
* Unit test plan.
* Integration test plan.
* End-to-end test plan.
* Accessibility test plan.
* Security test plan.
* Privacy/deletion test plan.
* Consent test plan.
* AI golden-set test plan.
* AI red-team test plan.
* Crisis/safety test plan.
* Regression testing plan.
* Release gate checklist.
* Test data rules.
* Test environment requirements.
* Manual QA scripts.
* Automation recommendations.
* Defect severity rubric.
* Go/no-go criteria.
```

## Expected Deliverables

* Testing strategy.
* Test levels and plans for functional, accessibility, security, privacy, deletion, consent, AI, crisis/safety, and regression testing.
* Release gate checklist and go/no-go criteria.

## Acceptance Criteria

* Covers all listed test areas.
* Includes test data rules and environment requirements.
* Defines defect severity and release gates.
* Does not create tests or implementation code.

## Dependencies

* PRD, NFRs, accessibility, security, privacy, AI evaluation, crisis, API contract, and architecture inputs.

## Notes

This agent produces documentation/readiness outputs only. It must not build production code.
