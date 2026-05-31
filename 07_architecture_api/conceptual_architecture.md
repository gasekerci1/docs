# Conceptual Architecture

Current status: conceptual architecture planning only.

This document does not approve implementation, app code, infrastructure, configuration, public MVP build, private beta, production readiness, public launch, or security/privacy/compliance claims.

Product source of truth: `docs/02_product/becomingos_product_specification.docx`.

## Architecture Boundary

The components below describe conceptual responsibilities only. They are not technology choices, database schemas, API contracts, deployment plans, or engineering approval.

## High-Level Conceptual Components

| Component | Conceptual responsibility | Required approvals before build |
|---|---|---|
| Input/capture layer | Accept user-provided manual entries, calendar context, tasks, documents, photos, audio, video, wearable signals, and support contacts where approved. | Product, privacy/legal, safety, security, AI/data for any provider processing. |
| Consent layer | Record data category consent, optionality, purpose, retention, withdrawal, deletion, access/export, and AI provider disclosure. | Privacy/legal, security, product. |
| Memory layer | Manage draft, confirmed, edited, rejected, deleted, archived, expired, and consent-withdrawn memory states. | Product, AI/data, privacy/legal, security. |
| AI reasoning layer | Draft reflections, summaries, options, recommendations, and plans for user review. | AI/data, safety, privacy/legal, security, product. |
| Retrieval/embedding layer | Retrieve only confirmed eligible memory and manage embedding invalidation/deletion. | AI/data, privacy/legal, security. |
| Today plan layer | Create editable/rejectable daily planning outputs such as Today Directive, if-then plans, and Bad Day Mode reductions. | Product, research/testing, safety. |
| Support circle permissions layer | Manage opt-in support/accountability permissions, sharing scope, expiry, revocation, and no automatic alerting without prior consent and rules. | Product, privacy/legal, safety, security. |
| Analytics/safety logging layer | Capture only approved privacy-safe event categories and minimal segregated safety logs, if approved. | Product, privacy/legal, safety, security. |
| Export/delete layer | Support access/export, correction, deletion, withdrawal, post-beta deletion/anonymisation, provider deletion, and embedding invalidation. | Privacy/legal, security, AI/data, product. |

## Unresolved Decisions

- Whether public MVP/build should be considered at all after evidence gates.
- Public MVP feature scope and exclusions.
- Source DOCX filename/path mismatch.
- AI provider choice and approved terms.
- Data categories allowed for any public MVP.
- Architecture decision record and technology constraints.
- Public MVP consent, privacy, deletion, export, and withdrawal processes.
- Security model and access control for any build.
- Analytics and safety logging approval.
- Support Circle inclusion and alerting rules.
- Accessibility target evidence for built flows.
- Operations/support ownership.

## Required Approvals Before Build

- Product owner approval of MVP scope.
- Research owner validation that evidence supports public MVP/build consideration.
- Privacy/legal owner approval of consent, claims, and data governance.
- Safety owner approval of boundaries and crisis/signposting controls.
- AI/data owner approval of AI provider, memory, retrieval, embedding, and evaluation controls.
- Security owner approval of threat model and environment approach.
- Architecture/engineering owner approval of architecture decision.
- Operations/support owner approval of support and incident process.
- Accessibility/testing owner approval of QA and testing plan.
- Final project owner public MVP/build GO.
