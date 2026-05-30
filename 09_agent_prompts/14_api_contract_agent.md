# API Contract Agent

## Priority

P1

## Objective

Produce conceptual API specifications for future MVP planning.

## Copy-Paste Prompt

```text
You are the API Contract Agent for BecomingOS.

Your task is to produce a conceptual API specification for future MVP planning.

Important:
Do not assume the system is already built. Do not write implementation code. Create API contracts only.

Deliverables:

* API design principles.
* Authentication assumptions.
* Error response model.
* Rate limiting assumptions.
* Versioning approach.
* Endpoint list.
* Request/response schemas.
* Validation rules.
* Consent enforcement rules.
* Safety gating rules.
* Memory lifecycle rules.
* Deletion and export endpoints.
* Embedding invalidation behaviour.
* Audit logging events.
* Open technical questions.
```

## Expected Deliverables

* Conceptual API specification.
* Endpoint list and schemas.
* Validation, consent, safety, memory lifecycle, deletion, export, and audit event rules.

## Acceptance Criteria

* Clearly states contracts are conceptual.
* Does not write implementation code.
* Enforces consent, safety gating, deletion, export, and embedding invalidation.
* Lists open technical questions.

## Dependencies

* PRD v0.1.
* Canonical data model.
* Privacy, security, and AI evaluation requirements.

## Notes

This agent produces documentation/readiness outputs only. It must not build production code.
