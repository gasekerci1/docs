# Release Readiness Checklist

Current status: staged readiness planning only.

This checklist does not approve private beta, public MVP build, production readiness, public launch, implementation, or compliance claims.

## Stage Status

| Stage | Current status | Meaning |
|---|---|---|
| Documentation planning | Active | Canonical planning, traceability, and gate documents are being created. |
| Private beta | GO for limited private beta only | Real data may be processed only within signed private beta approvals and boundaries. |
| Public MVP | NO-GO | Public MVP/build gates are missing or incomplete. |
| Production | NO-GO | Production readiness gates are not defined or approved. |

## Documentation Planning Gates

- [x] Source-of-truth register exists.
- [x] Owner decision register exists.
- [x] Traceability map exists.
- [x] Private beta planning docs exist.
- [x] Public MVP/build gate docs exist.
- [x] Source DOCX filename/path mismatch resolved by owner.
- [ ] Archive/cleanup approval completed, if ever requested.

## Private Beta Gates

- [x] Final consent notice approved.
- [x] Privacy/data governance approved.
- [x] Retention/deletion/withdrawal/export workflow approved.
- [x] AI provider due diligence approved.
- [x] Separate beta environment approved.
- [x] Safety logging and crisis boundary controls approved.
- [x] Security review approved.
- [x] Analytics review approved, if analytics are used.
- [x] Support Circle rules approved, if included.
- [x] Testing plan and stop criteria approved.
- [x] Operations/support owner assigned.
- [x] Final private beta go/no-go signed GO.

## Public MVP Gates

- [ ] Candidate MVP scope approved.
- [ ] User research synthesis completed.
- [ ] Market validation completed.
- [ ] Private beta learnings incorporated, if beta runs.
- [ ] Privacy impact assessment completed.
- [ ] Legal claims review completed.
- [ ] Safety boundary and crisis/signposting review completed.
- [ ] AI provider approval completed.
- [ ] AI evaluation harness results completed.
- [ ] Memory/retrieval/embedding test evidence completed.
- [ ] Security threat model reviewed for public MVP.
- [ ] Architecture decision record approved.
- [ ] NFR stage approval completed.
- [ ] Accessibility QA evidence completed.
- [ ] MVP testing results completed.
- [ ] Support/incident response plan approved.
- [ ] Analytics event review approved.
- [ ] Final public MVP/build go/no-go signed GO.

## Production Gates

- [ ] Production scope approved.
- [ ] Production privacy/legal/security review completed.
- [ ] Production architecture and operations approved.
- [ ] Production incident response and support approved.
- [ ] Production monitoring/logging approved.
- [ ] Production data retention/deletion/export workflows approved.
- [ ] Production AI provider and model governance approved.
- [ ] Production accessibility QA completed.
- [ ] Production load/reliability testing completed.
- [ ] Final production readiness go/no-go signed GO.

## Standing Rule

Each stage requires its own evidence and owner approval. Approval at one stage does not approve a later stage.
