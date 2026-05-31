# Private Beta Environment Requirements

Current status: conceptual environment requirements only. This document does not approve implementation, architecture, config files, deployment, public MVP build, production readiness, or security compliance claims.

## Purpose

Private beta requires a separate beta environment before real participant data is collected or processed.

The beta environment must be separated from development, experiments, demos, public-facing systems, and any future production environment.

## Requirements

| Area | Requirement |
|---|---|
| Environment separation | Beta data must be isolated from development, demo, and future production data. |
| Access control | Access must be limited to named people with beta responsibilities. Least-access principles should apply. |
| Minimal logging | Logs must avoid sensitive free text and must be limited to approved purposes. |
| Safety logs | If enabled, safety logs must be segregated from product memory and analytics. |
| Backup/restore assumptions | Any backup/restore approach must account for retention, withdrawal, deletion, and derived data. |
| Data deletion process | Deletion must cover source data and derived data, including embeddings where applicable. |
| Secret management concept | Any credentials or secrets must be managed outside documents and limited to authorised users. No secrets belong in docs. |
| Audit trail | The beta should have a minimal audit trail for consent, data category permissions, deletion requests, access changes, and owner approvals. |
| Manual shutdown plan | Owner must be able to pause or stop beta if safety, privacy, security, or AI provider issues arise. |
| AI provider boundary | No live data may be sent to AI providers until due diligence is approved. |
| Analytics boundary | Analytics must exclude crisis text and sensitive personal content unless separately approved. |

## Not Approved

This document does not approve:

- App code.
- Infrastructure.
- Deployment.
- Auth implementation.
- Database schema.
- API implementation.
- AI provider connection.
- Vector storage.
- Logging tools.
- Production architecture.

## Required Approvals Before Beta

- Product owner.
- Privacy/legal owner.
- Safety owner.
- Security owner.
- AI/data owner if AI providers or embeddings are used.
- Final owner go/no-go.

