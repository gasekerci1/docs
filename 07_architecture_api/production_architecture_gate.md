# Production Architecture Gate

Current status: conceptual production architecture gate only.

Default status: not approved.

This document does not approve architecture, implementation, infrastructure, private beta, public MVP build, production readiness, public launch, or security/privacy/compliance claims.

## Required Architecture Approvals Before Production

| Approval area | Required evidence | Current status |
|---|---|---|
| Architecture decision record | Signed architecture decision record for production scope and constraints. | Missing / not approved |
| Threat model | Production threat model reviewed and closed or risk-accepted by security owner. | Missing / not approved |
| Data storage model | Approved model for source data, memories, embeddings, logs, analytics, backups, provider-held data, and retention. | Missing |
| Auth/access control model | Approved authentication, authorisation, least-access, access review, and support/admin access model. | Missing |
| Backup/recovery | Approved backup, restore, retention, deletion, consent withdrawal, and recovery process. | Missing |
| Monitoring/logging policy | Approved logging and monitoring approach excluding sensitive free text and crisis text unless separately approved. | Missing / not approved |
| Deletion/export mechanism | Approved evidence that deletion/export/access/correction/withdrawal and derived-data deletion work. | Missing |
| AI provider integration | Approved provider integration model, data minimisation, retention/deletion, and fallback/opt-out approach. | Missing / not approved |
| Incident response | Approved technical incident response integration, owner roles, escalation, and shutdown/recovery plan. | Missing / not approved |
| NFRs | Approved production NFRs for reliability, availability, performance, privacy, security, accessibility, logging, data rights, support, and AI safety. | Missing / not approved |

## Production Architecture Boundary

Current architecture documents are conceptual only. They do not approve app code, API contracts, database schema, authentication, deployment, vendor choices, vector storage, monitoring/logging tooling, or production architecture.

## Approval Status

- [ ] Approved
- [ ] Rejected
- [ ] Modify

Architecture/engineering owner:

Security owner:

Conditions:

Notes:

Date:
