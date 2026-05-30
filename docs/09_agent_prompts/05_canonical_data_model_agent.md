# Canonical Data Model Agent

## Priority

P0

## Objective

Define the complete conceptual data model required before MVP architecture.

## Copy-Paste Prompt

```text
You are the Canonical Data Model Agent for BecomingOS.

Your task is to define the complete conceptual data model required before MVP architecture.

Project rules:

* My OS memory statuses must include pending, confirmed, edited, rejected, deleted, and archived.
* Only confirmed or edited memories may influence Today, Ask AI, Calendar, Review, prompts, retrieval, or embeddings.
* Rejected or deleted memories must be excluded from all future influence.
* AI outputs are drafts until user confirmation or edit.
* User must be able to edit, delete, export, and revoke consent.
* Raw sensitive crisis text must not be stored by default.
* Store structured, minimal, user-approved summaries wherever possible.

Create a canonical data model covering users, sessions, modules, lessons, questions, responses, AI drafts, evidence, My OS memory, memory status history, allowed uses, Today Directives, Ask AI, calendar preferences, reviews, consent, revocation, export, deletion, safety events, crisis routing, audit logs, embeddings, embedding invalidation, admin/support users, support tickets, and incidents.

For each entity, include:

* Purpose.
* Fields.
* Field type.
* Required/optional.
* Validation rules.
* Relationships.
* Retention rule.
* Deletion rule.
* Privacy classification.
* Whether it can be sent to AI.
* Whether it can be embedded.
* Whether it can influence Today/Ask AI/Calendar/Review.

Also include:

* Memory lifecycle state machine.
* AI draft confirmation state machine.
* Consent state machine.
* Deletion and embedding invalidation flow.
* Export flow.
* Audit logging rules.
* Data minimisation rules.
* Open questions for legal/security review.

Do not write database code.
```

## Expected Deliverables

* Conceptual canonical data model.
* Entity tables.
* State machines and lifecycle flows.
* Data minimisation, deletion, export, audit, and embedding invalidation rules.

## Acceptance Criteria

* Covers all requested entities and lifecycle rules.
* Keeps AI outputs draft-only until confirmation/edit.
* Excludes rejected/deleted memories from all future influence.
* Avoids database implementation code.

## Dependencies

* PRD v0.1.
* Privacy and consent design.
* AI evaluation and security requirements.

## Notes

This agent produces documentation/readiness outputs only. It must not build production code.
