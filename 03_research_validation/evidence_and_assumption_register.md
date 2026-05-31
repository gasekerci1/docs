# Evidence And Assumption Register

Current status: canonical evidence/assumption register for pre-MVP planning.

This register separates evidence, assumptions, owner-approved decisions, unsupported claims, and validation gaps. It does not approve public MVP build, production readiness, implementation work, or public claims. Product-level conflicts are resolved in favour of `docs/02_product/becomingos_product_specification.docx`.

## Evidence Levels

- Owner decision: approved in `00_repository_control/owner_decision_register.md` or current source-of-truth register.
- Source evidence: supported by preserved source documents, but not necessarily validated with users.
- Planning assumption: plausible or proposed, not validated.
- Unsupported claim: should not be used until evidence exists.
- Validation gap: missing evidence required before beta, public MVP/build, or production.

## Register

| Claim | Source | Status | Evidence level | Next validation step | Public-facing copy allowed? |
|---|---|---|---|---|---|
| External product name is BecomingOS. | `source_of_truth_register.md`; `owner_decision_register.md` | Approved | Owner decision | Confirm source DOCX filename mismatch separately. | Yes, with no launch/build implication. |
| lifeOS is an internal repository alias, not marketed name. | `source_of_truth_register.md`; `terminology_and_naming.md` | Approved | Owner decision | Update future brand docs to match. | No, except internal/docs context. |
| Current stage is pre-MVP with limited private beta planning. | Source-of-truth register; DEC-002 | Approved | Owner decision | Create beta operating pack before real data. | Yes, if phrased as limited/private and not public. |
| No public build is authorised. | Source-of-truth register; DEC-024 | Approved | Owner decision | Maintain readiness gates. | Yes, as a limitation. |
| No production readiness is approved. | README; owner decisions; readiness evidence | Approved | Owner decision | Create production gate register before any claim changes. | Yes, as a limitation. |
| Product is educational, non-clinical reflection and action-planning. | Source-of-truth register; DEC-004 | Approved | Owner decision | Validate comprehension in research/beta. | Yes, with boundary wording. |
| Product is not therapy, diagnosis, treatment, crisis intervention, legal, medical, financial, or professional advice. | Source-of-truth register; safety boundaries; DEC-007/008 | Approved | Owner decision | Legal review final copy before broad release. | Yes, as disclaimer/boundary. |
| Private beta may use real data only with trusted participants and explicit consent. | Source-of-truth register; private beta scope | Approved in principle | Owner decision | Final consent notice and beta operations approval. | Limited beta-facing copy only. |
| Suggested beta size is 5-10 trusted testers. | `02_product/private_beta_scope.md` | Planning assumption | Source evidence / owner-provided requirement | Owner approve final participant cap. | No public-facing copy needed. |
| Beta retention should be 90 days. | Source-of-truth register; private beta docs | Planning assumption | Source evidence / owner-provided requirement | Owner/legal approve final retention. | Beta consent only after approval. |
| Beta data must be deleted or anonymised after beta. | Source-of-truth register | Approved | Owner decision | Define operational procedure and responsible owner. | Beta consent only. |
| No production reuse of beta data without renewed consent. | Source-of-truth register | Approved | Owner decision | Add to beta consent notice and data governance process. | Beta consent only. |
| Users decide what data to provide. | Source-of-truth register | Approved | Owner decision | Validate consent UX comprehension. | Yes, if accurate and not overbroad. |
| Users can edit or delete data. | Source-of-truth register | Approved requirement | Owner decision | Define beta request workflow and limitations. | Only after operational process exists. |
| Users can export/access data. | DEC-012; consent requirements | Required but incomplete | Validation gap | Define export/access workflow before beta. | No, until process exists. |
| AI outputs are drafts requiring user review. | Source-of-truth register; DEC-015 | Approved | Owner decision | Test user comprehension and reliance. | Yes, with clear boundaries. |
| Durable memory requires explicit user confirmation. | Source-of-truth register; DEC-015 | Approved | Owner decision | Implement/process design later; no app code here. | Yes, if no implementation implied. |
| Rejected/deleted/unconfirmed data is excluded from AI. | Source-of-truth register; DEC-016 | Approved | Owner decision | Define lifecycle and retrieval rules. | Yes, once operationally true. |
| Embeddings are generated only from confirmed items. | Source-of-truth register; DEC-018 | Approved | Owner decision | Provider/storage approval before live data. | No, unless implemented and verified. |
| Embeddings are invalidated when source changes/deletes. | Source-of-truth register; DEC-018 | Approved requirement | Owner decision | Define procedure and test evidence before live use. | No, unless implemented and verified. |
| Market demand exists for BecomingOS. | Market validation report; product recommendations | Assumption | Planning assumption | Conduct market validation and record results. | No. |
| Target segment is validated. | Research plans; market docs | Assumption | Planning assumption | Complete user research and segment validation. | No. |
| Pricing or willingness-to-pay is known. | Market validation report | Assumption | Planning assumption | Run pricing/willingness-to-pay research. | No. |
| Product-market fit or strong demand is proven. | No completed validation evidence found in control docs | Unsupported claim | Unsupported | Conduct research and market experiments. | No. |
| Accepted recommendations are validated evidence. | Accepted Recommendations; contradiction register CON-021 | Unsupported if stated as validation | Validation gap | Reclassify as planning inputs until tested. | No. |
| Prototype/internal validation may proceed. | DEC-005 | Approved in principle | Owner decision | Define research consent, scripts, and safety process. | Private/research context only. |
| Architecture/API/NFR documents are conceptual. | DEC-022; contradiction register | Approved | Owner decision | Create root conceptual architecture docs later. | Yes, as limitation. |
| App/MVP audit files prove current build approval. | Top-level app/MVP audit files | Unsupported/conflicting | Unsupported | Owner classify as historical, external, or in-scope evidence. | No. |
| BecomingOS is production-ready. | Readiness reports and owner decisions say no | Rejected | Owner decision / source evidence | None unless future production gates close. | No. |
| BecomingOS is a public MVP. | Owner decisions say no public build | Rejected | Owner decision | None unless public build gates close. | No. |

## Validation Gaps To Track

- Completed user research findings.
- Target segment validation.
- Market demand validation.
- Pricing and willingness-to-pay validation.
- Beta consent comprehension.
- AI trust and calibrated reliance.
- Question safety and non-clinical comprehension.
- Privacy comfort with data categories, AI provider disclosure, and deletion/withdrawal.
- Accessibility evidence for any built beta flows.

