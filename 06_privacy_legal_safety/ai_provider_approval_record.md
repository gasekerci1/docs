# AI Provider Approval Record

Current status: approved for narrowly scoped OpenAI private beta use as of 2026-06-01.

This record approves OpenAI only for the limited private beta scope described below. It does not approve public MVP build, production readiness, commercial launch, broader provider use, unrestricted endpoint use, or compliance claims.

## Provider Details

- Provider name: OpenAI
- Model/service: OpenAI API; text-only Responses API or Chat Completions with `store=false`; embeddings only for confirmed eligible memory if internal invalidation rules are followed.
- Intended beta feature/use: AI-drafted summaries, recommendations, memory candidates, and planning support for trusted private beta participants.
- Reviewer: AI/data owner; privacy/legal owner; security owner; product owner.
- Review date: 2026-06-01.

## Data And Purpose

- Data categories sent: Manual entries, calendar events, tasks, and other user-provided inputs intentionally submitted for approved AI-drafted summaries, recommendations, memory candidates, or planning support. Health/wearable signals, documents, photos, audio, video, and support circle contacts remain excluded from AI provider processing unless separately approved and disclosed.
- Purpose: Generate AI-drafted summaries, recommendations, memory candidates, and planning support for user review.
- Minimum data required: Only the minimum user-confirmed context needed for the approved beta feature; excluded, deleted, rejected, unconfirmed, expired, archived, or consent-withdrawn data must not be sent.
- User-facing disclosure location: `06_privacy_legal_safety/private_beta_final_consent_notice.md`.
- Opt-out or non-AI fallback: Participants may decline optional AI-related data categories where practical, reject AI outputs, withhold memory confirmation, and withdraw from beta under the approved withdrawal workflow.

## Provider Terms Review

| Review area | Finding / evidence | Status |
|---|---|---|
| Retention terms | Evidence reviewed in `06_privacy_legal_safety/openai_evidence/openai_due_diligence_evidence_pack.md`; default abuse-monitoring and endpoint retention risks accepted for the narrow approved scope. | Approved for limited private beta scope |
| Logging terms | Evidence reviewed; BecomingOS operational logs must remain minimal and OpenAI endpoint scope must avoid unnecessary sensitive content. | Approved for limited private beta scope |
| Training-use terms | Evidence reviewed; OpenAI/API training opt-in must remain disabled unless renewed owner approval and participant consent are obtained. | Approved |
| Deletion terms | Evidence reviewed; deletion workflow must be followed, including provider-held deletion where applicable. | Approved for limited private beta scope |
| Subprocessors | Evidence reviewed; owners accept current evidence for private beta and require monitoring for changes. | Approved for limited private beta scope |
| Cross-border transfer | Evidence reviewed; owners accept transfer posture for limited private beta. | Approved for limited private beta scope |
| Security posture | Public security evidence and Trust Portal placeholder reviewed; owners accept residual risk for limited private beta only. | Approved for limited private beta scope |
| Incident response | DPA breach-notification evidence reviewed; internal incident escalation remains required. | Approved for limited private beta scope |
| Contract/DPA status | Services Agreement and DPA evidence pack reviewed; owners accept evidence for limited private beta planning/use. | Approved for limited private beta scope |
| Human review of prompts/outputs | Limited manual-review risk for certain file/image cases reviewed; files/images/audio/video excluded unless separately approved. | Approved with exclusions |
| Embedding/vector handling | Embeddings allowed only for confirmed eligible memory under internal invalidation rules; vector stores excluded unless separately approved. | Approved with exclusions |
| Sensitive data handling | Health/wearable signals, documents, photos, audio, video, and support circle contacts excluded from provider processing unless separately approved and disclosed. | Approved with exclusions |

## Required Owner Review

- AI/data owner: Approved for limited private beta scope.
- Privacy/legal owner: Approved for limited private beta scope.
- Security owner: Approved for limited private beta scope.
- Product owner: Approved for limited private beta scope.

## Decision

- [x] Approved
- [ ] Rejected
- [ ] Modify

Owner notes:
OpenAI is approved only for the narrow private beta scope above. No public MVP, production, commercial launch, unrestricted endpoint use, files/images/audio/video processing, vector store use, remote tools, web search, beta/preview services, or compliance claims are approved.

Conditions:
- Use text-only Responses API or Chat Completions with `store=false`.
- Keep data sharing/training opt-in disabled unless separately approved.
- Use embeddings only for confirmed eligible memory and only under approved invalidation/deletion rules.
- Do not use vector stores, files, images, audio, video, Assistants, Threads, Conversations, remote MCP/tools, web search, or beta/preview services unless separately approved.
- Follow the approved consent, deletion, withdrawal, support, incident, and safety-boundary workflows.

Date: 2026-06-01.
