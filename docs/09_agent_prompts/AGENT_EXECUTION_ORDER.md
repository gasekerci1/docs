# Agent Execution Order

This order keeps BecomingOS in prototype/readiness mode while P0 evidence is gathered before architecture or build work.

| Order | Agent | Priority | Why this order matters | Expected output |
|---:|---|---|---|---|
| 1 | Master Orchestrator Agent | P0 | Sets scope, sequencing, dependencies, and go/no-go rules. | Work plan, dependency map, required document list. |
| 2 | User Research Agent | P0 | Validates target users and problem/solution evidence before build decisions. | User research plan and synthesis template. |
| 3 | PRD Agent | P0 | Converts product intent into versioned MVP requirements and boundaries. | PRD v0.1. |
| 4 | Privacy and Consent Agent | P0 | Defines data handling and consent before data model and architecture harden. | Privacy and consent pack. |
| 5 | Legal Claims Review Agent | P0 | Prevents unsafe or misleading product claims before copy spreads. | Legal claims review pack. |
| 6 | Non-Functional Requirements Agent | P0 | Defines measurable system expectations before architecture. | NFR document. |
| 7 | Canonical Data Model Agent | P0 | Defines memory, consent, deletion, and influence rules. | Canonical data model. |
| 8 | AI Evaluation Harness Agent | P0 | Defines AI safety and quality evidence required before beta. | AI evaluation harness plan. |
| 9 | Security Threat Model Agent | P0 | Identifies assets, threats, and security requirements. | Security threat model. |
| 10 | Crisis Localisation Agent | P0 | Defines crisis boundary handling and resource maintenance. | Crisis localisation policy. |
| 11 | Accessibility QA Agent | P0 | Defines WCAG and cognitive accessibility readiness. | Accessibility QA plan. |
| 12 | Prototype UX Agent | P0 | Creates validation-ready low-fidelity prototype specification. | Prototype UX specification. |
| 13 | Curriculum and Question Bank Agent | P0 | Creates prototype-ready module content under safety constraints. | Curriculum and question bank. |
| 14 | Market Validation Agent | P1 | Tests demand, positioning, and commercial assumptions. | Market validation report. |
| 15 | Analytics and Event Taxonomy Agent | P1 | Defines privacy-preserving measurement. | Analytics taxonomy. |
| 16 | Operations and Support Agent | P1 | Defines support and incident operations before closed beta. | Support playbook. |
| 17 | Testing Strategy Agent | P1 | Defines test coverage and release gates. | Testing strategy. |
| 18 | API Contract Agent | P1 | Drafts conceptual contracts after requirements and data model exist. | API specification draft. |
| 19 | Technical Architecture Agent | After P0 | Only proceeds beyond provisional design once P0 evidence exists. | Architecture blueprint or missing-input list. |
| 20 | Integration Agent | Final | Combines evidence into readiness verdict. | Integration readiness pack. |

## Dependency Notes

P0 work should close research, PRD, privacy/legal, data, AI safety, security, crisis, accessibility, prototype, and curriculum gaps before technical architecture is treated as actionable. P1 work can proceed in parallel once P0 direction is stable. The Integration Agent is the final synthesis gate and must not mark the product build-ready without evidence.
