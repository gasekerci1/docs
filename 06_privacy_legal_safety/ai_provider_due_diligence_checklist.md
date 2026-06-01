# AI Provider Due Diligence Checklist

Current status: due-diligence review draft only. This document does not approve AI provider use, live user data processing, implementation, public MVP build, production readiness, or legal/privacy/security compliance claims.

No live beta user data may be sent to any AI provider before approval is recorded by the owner and relevant privacy/legal/security reviewers.

## Provider Review

| Check | Required evidence | Status |
|---|---|---|
| Provider identity and service scope documented | Provider name, service, models/features, intended beta use | Missing evidence |
| Retention terms reviewed | Whether prompts, outputs, logs, files, embeddings, or metadata are retained and for how long | Missing evidence |
| Logging terms reviewed | What provider logs, for what purpose, and for how long | Missing evidence |
| Training-use terms reviewed | Whether beta data can be used for model training or improvement; opt-out availability | Missing evidence |
| Deletion process reviewed | How deletion requests propagate to provider-held data and logs | Missing evidence |
| Subprocessors reviewed | Subprocessor list, purpose, and change notification process | Missing evidence |
| Cross-border transfer reviewed | Where data may be processed or stored | Missing evidence |
| Data minimisation plan reviewed | Minimum fields sent to provider for each beta use | Missing evidence |
| Opt-out and feature fallback reviewed | Whether users can avoid provider processing or specific data categories | Missing evidence |
| Incident response reviewed | Provider breach/security notification terms and support process | Missing evidence |
| Security controls reviewed | Encryption, access controls, audit practices, relevant assurance materials if available | Missing evidence |
| Contractual terms reviewed | Terms, data processing terms, confidentiality, liability, deletion, and usage restrictions | Missing evidence |
| Sensitive data handling reviewed | Documents, photos, audio, video, wearable signals, support contacts, and reflections | Missing evidence |
| Embedding/vector handling reviewed | Whether embeddings are created, retained, deleted, and isolated | Missing evidence |
| Human review reviewed | Whether provider personnel may review prompts/outputs and under what conditions | Missing evidence |

## Review Draft Findings

No provider-specific policy evidence was found in the reviewed repository files. The requested input paths `07_architecture_and_api/retrieval_and_embedding_rules.md` and `07_architecture_and_api/ai_memory_governance.md` were not present in the current worktree; matching conceptual files were reviewed at `05_ai_memory_data/retrieval_and_embedding_rules.md` and `05_ai_memory_data/ai_memory_governance.md`.

The conceptual AI and memory files require provider retention, training, logging, deletion, subprocessors, and relevant transfer terms to be documented and approved before any live user data is processed. They do not provide provider-specific evidence or approval.

## Data Risks

- Live beta user data could be retained in provider prompts, outputs, logs, files, embeddings, metadata, or backups without an approved retention limit.
- User data could be used for model training or service improvement if provider terms are not reviewed and restricted.
- Deletion, withdrawal, or consent revocation might not propagate to provider-held logs, embeddings, metadata, or derived records.
- Sensitive data such as reflections, documents, photos, audio, video, wearable signals, support contacts, and crisis/safety content could be sent to providers without approved handling rules.
- Cross-border processing, subprocessors, human review, and incident notification obligations remain unknown.
- Embeddings or vector records could persist after source data is deleted, edited, rejected, expired, archived, or consent-withdrawn.

## Required Owner Decisions

- AI/data owner must decide whether any AI provider may be reviewed for private beta use and identify the exact provider, service, model/features, and intended beta use.
- Privacy/legal owner must review provider data processing terms, retention, logging, training-use, deletion, subprocessors, transfers, consent disclosure, and any legal/privacy/compliance claims.
- Security owner must review provider security controls, incident response, access controls, data isolation, and sensitive-data exposure.
- Product owner must confirm which beta features require AI provider processing and which user data categories are in scope.
- Owners must decide whether embeddings are used in private beta, where they are stored, how they are invalidated or deleted, and how provider-held derived data is handled.
- Owners must approve opt-out or non-AI fallback behavior before beta data collection if AI provider processing is optional.

## Approval Gate

Live beta user data must not be sent to an AI provider until:

- Provider review is complete.
- Beta consent notice discloses provider processing.
- Data minimisation is approved.
- Deletion and retention handling is approved.
- Owner approval is recorded.
