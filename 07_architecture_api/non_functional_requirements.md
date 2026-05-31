# Non-Functional Requirements

Current status: stage-classified NFR planning document.

This document does not approve implementation, private beta, public MVP build, production readiness, public launch, or compliance claims.

All public MVP and production NFRs are candidate targets, not approved commitments.

## Stage Classification

| Stage | NFR posture |
|---|---|
| Documentation planning | Define boundaries, evidence gates, and conceptual quality bars. |
| Private beta | Candidate safeguards for limited trusted testers only after approvals. |
| Public MVP | Candidate targets requiring evidence and owner approval before build. |
| Production | Future targets requiring separate production readiness approval. |

## Quality Bars By Area

| Area | Documentation planning | Private beta candidate bar | Public MVP candidate target | Production future target |
|---|---|---|---|---|
| Performance | No implementation assumptions. | Flows should be usable enough for small trusted tester sessions if beta is approved. | Targets must be defined by architecture/engineering owner before build. | Production performance SLOs require separate approval. |
| Privacy | Source-of-truth data boundaries documented. | Explicit consent, minimisation, retention, deletion, withdrawal, and no production reuse required. | Privacy impact assessment and consent/data governance required. | Production privacy operations and legal review required. |
| Security | Conceptual threats documented. | Separate beta environment, least access, minimal logging, deletion workflow, AI provider review required. | Security threat model review and architecture decision required. | Production security programme, monitoring, incident response, and access governance required. |
| Availability | No availability promise. | No public availability promise; manual shutdown plan required. | Candidate public availability target must be defined before build. | Production uptime/SLO commitments require separate approval. |
| Accessibility | WCAG 2.2 AA is default baseline decision. | Beta-facing flows need review plan or documented approach. | Accessibility QA evidence required before public MVP/build approval. | Production accessibility maintenance process required. |
| Deletion/export | Conceptual rights and workflows documented. | Tested workflow needed for beta data, derived data, embeddings, and provider-held data. | Public MVP deletion/export/access workflow evidence required. | Production deletion/export operations and auditability required. |
| Logging | Minimal logging principles documented. | Logs must avoid sensitive free text; safety logs segregated if approved. | Logging taxonomy and privacy review required. | Production monitoring/logging governance required. |
| Reliability | No reliability claim. | Beta must be pausable; data integrity for deletion/consent/memory states required if approved. | Reliability tests and failure modes required before build approval. | Production resilience and recovery targets require approval. |
| Incident response | Conceptual escalation needs documented. | Stop criteria and named owners required. | Support/incident response plan required. | Production incident response process and owners required. |
| AI safety | AI drafts, citations/explanations, memory exclusions, and provider preconditions documented. | AI provider approval and memory/embedding verification required if AI used. | AI evaluation harness results and provider approval required. | Production AI governance and monitoring require separate approval. |

## Candidate Public MVP NFR Preconditions

Before public MVP/build can be considered:

- Product scope must be approved.
- Architecture decision must be approved.
- NFR targets must be accepted by owner and stage-labelled as public MVP, not production.
- Privacy/legal/safety/security/AI/data owners must approve relevant quality bars.
- Testing and accessibility evidence must exist.
- Release go/no-go must be signed.

## Not Approved

This document does not approve production SLOs, security compliance, privacy compliance, accessibility compliance, AI safety compliance, vendor use, infrastructure, implementation, public launch, or production readiness.
