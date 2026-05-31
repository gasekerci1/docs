# Public MVP Build Gate Register

Current status: public MVP/build gate register only.

Default status: PUBLIC MVP / BUILD NO-GO.

This register does not approve private beta, public MVP build, production readiness, public launch, implementation work, or legal/privacy/security/accessibility/AI safety compliance claims.

Product source of truth: `docs/02_product/becomingos_product_specification.docx`.

Private beta planning is separate from public MVP/build approval. Production readiness is separate from both private beta and public MVP/build approval. Older app, MVP, audit, and readiness files are evidence only and do not approve build.

## Gate Register

| Gate | What must be true before public MVP/build can be considered | Current evidence | Status |
|---|---|---|---|
| Owner-approved product scope | Candidate public MVP scope is approved by product owner and traceable to source-of-truth product vision. | Conceptual requirements exist; `02_product/mvp_scope.md` is planning only. | Incomplete / not approved |
| Completed user research | Completed synthesis demonstrates user problem, comprehension, trust, consent clarity, and product boundary understanding. | Research register records user research evidence pending. | Missing |
| Market validation | Target segment, demand, pricing, and willingness-to-pay evidence are validated. | Evidence register marks these as assumptions. | Missing |
| Evidence/assumption register | Register is current and public claims are separated from assumptions. | `03_research_validation/evidence_and_assumption_register.md` exists. | Incomplete; review required |
| Privacy/legal/safety review | Public-facing claims, consent/data governance, safety boundaries, crisis signposting, and no-professional-advice language are reviewed. | Policies exist as planning docs; no broad release approval. | Incomplete / not approved |
| AI memory governance | Confirmed-only memory, AI draft status, exclusion rules, and embedding invalidation are verified with evidence. | Conceptual AI/memory docs exist. | Incomplete / not approved |
| AI provider due diligence | Provider terms for retention, logging, training, deletion, subprocessors, transfer, security, and contracts are approved. | Due diligence checklist exists; status not started. | Missing / not approved |
| Security review | Security threat model and build-stage controls are reviewed by security owner. | Conceptual private-beta threat model exists. | Incomplete / not approved |
| Beta learnings | If private beta runs, findings are synthesised and blockers resolved without overstating validation. | Private beta is currently NO-GO. | Missing |
| Architecture decision | Architecture decision record or equivalent owner decision approves build direction. | Conceptual architecture planning only. | Missing / not approved |
| NFR stage classification | Public MVP NFRs are accepted as stage targets with explicit exclusions from production commitments. | NFR planning document is candidate only. | Incomplete / not approved |
| Testing strategy | MVP testing strategy covers onboarding, consent, memory, AI, safety, privacy, accessibility, and operations. | Testing strategy is planning only. | Incomplete / not approved |
| Accessibility QA | Accessibility evidence for public MVP-facing flows exists; WCAG 2.2 AA baseline reviewed. | Baseline decision exists; no QA evidence. | Missing |
| Support/operations readiness | Support, incident response, deletion/export support, and safety escalation owners are assigned. | Private beta blocker register says operations/support owner not assigned. | Missing |
| Analytics/privacy review | Event taxonomy, retention, deletion, consent, and prohibited content exclusions are approved. | Analytics taxonomy exists; not approved for live use. | Incomplete / not approved |
| Release go/no-go | Final public MVP/build go/no-go is signed by required owners. | No public MVP owner approval exists. | Missing / not approved |

## Standing Rule

Public MVP/build remains NO-GO until every required gate is either completed and approved, or explicitly waived by the appropriate owner in a signed decision. A private beta GO, if later granted, does not satisfy this register by itself.
