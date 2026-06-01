# Security Review Evidence Gap Report

Current status: NA-007 evidence gap report only. This document does not approve security readiness, architecture readiness, private beta, public MVP/build, production readiness, public launch, implementation, or compliance claims.

## Review Inputs

Requested paths not found in the current worktree:

- `07_architecture_and_api/security_threat_model.md`
- `07_architecture_and_api/private_beta_environment_requirements.md`
- `07_architecture_and_api/production_architecture_gate.md`

Current matching repository files reviewed as supporting context:

- `06_privacy_legal_safety/security_threat_model.md`
- `07_architecture_api/private_beta_environment_requirements.md`
- `07_architecture_api/production_architecture_gate.md`
- `00_repository_control/current_status_dashboard.md`
- `00_repository_control/next_actions_register.md`

## Security Review Status

Security review status: incomplete / not approved.

The repository contains conceptual security and beta-environment planning. It does not contain signed Security owner review, evidence that a separate beta environment exists, evidence that controls have been implemented or tested, or production security closure.

## Missing Evidence

- Signed Security owner review for the private beta threat model.
- Approved separate beta environment definition and isolation boundary.
- Evidence that beta data is separated from development, demo, public-facing, and future production data.
- Access-control owner, approved roles, least-access rules, access-review cadence, and joiner/leaver/change process.
- Data storage location and owner for source data, memories, embeddings, logs, analytics, backups, and provider-held data.
- Authentication and authorization model for beta participants, admins, support roles, and reviewers.
- Secrets management owner, storage approach, rotation, revocation, and confirmation that secrets are not stored in docs.
- Minimal logging policy with exclusions for sensitive free text and crisis text.
- Safety logging decision and evidence that safety/crisis content is excluded from memory and analytics.
- Backup/restore plan aligned with retention, deletion, export/access, withdrawal, and derived-data invalidation.
- Deletion/export/access/correction/withdrawal test evidence, including embeddings and provider-held data if applicable.
- AI provider security review, retention/logging/training/deletion terms, incident terms, subprocessors, and data-transfer evidence.
- Incident response owner, severity model, escalation path, shutdown/recovery plan, and participant notification concept.
- Security testing evidence for access control, logging exclusions, deletion/invalidation, provider exposure, prompt injection, and data leakage.
- Production threat model closure or risk acceptance by Security owner.
- Production architecture decision record, NFR approval, monitoring/logging policy, and production security programme evidence.

## Highest-Risk Areas

- Sensitive beta data exposure: reflections, health/wearable signals, documents, photos, audio, video, support contacts, memories, prompts, and outputs may be exposed without approved access, storage, and logging controls.
- Environment mixing: beta data could mix with development, demos, public-facing systems, or future production systems.
- Deletion failure: deleted or withdrawn data could remain in backups, logs, exports, embeddings, analytics, or provider-held records.
- AI provider exposure: live user data could be sent to providers before retention, logging, training-use, deletion, subprocessors, transfer, security, and incident terms are approved.
- Crisis/safety handling: crisis text or sensitive free text could enter memory, analytics, logs, or future outputs, or imply monitoring/crisis intervention.
- Admin/support access: unapproved support, reviewer, or break-glass access could expose sensitive participant data without audit and review controls.
- False readiness signal: conceptual threat models and production gates could be mistaken for completed security evidence.

## Required Owner Decisions

- Security owner must decide whether the current conceptual threat model is sufficient as planning evidence only, and list required changes before any beta or architecture approval.
- Security owner and product owner must approve or reject the separate beta environment definition.
- Privacy/legal/security owners must approve data storage, retention, deletion, export/access, withdrawal, backup/restore, and no-production-reuse handling before real data use.
- Safety/privacy/legal/security owners must decide safety logging status and crisis/safety data handling.
- AI/data/privacy/legal/security owners must approve AI provider and embedding handling before any live user data is processed by providers or embedded.
- Architecture/engineering and Security owners must keep production architecture and production security readiness not approved until production evidence exists.
- Final project owner must keep private beta NO-GO until all required security, privacy/legal, safety, AI/data, research/testing, and final approval evidence is complete.
