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
| COM-B is useful for identifying capability, opportunity, and motivation barriers. | `evidence_based_growth_systems_report.md` | Research-supported | Strong evidence | Validate user comprehension in BecomingOS diagnosis flow. | Only as non-clinical educational wording. |
| COM-B outputs are clinical diagnoses. | Source-of-truth safety boundary; growth systems report | Rejected | Owner decision / safety boundary | None; keep prohibited. | No. |
| Self-Determination Theory supports designing for choice, autonomous motivation, competence, and relatedness. | `evidence_based_growth_systems_report.md` | Research-supported | Moderate evidence | Validate whether users experience BecomingOS flows as autonomy-supportive. | Only general educational phrasing, not outcome claims. |
| Implementation intentions improve action planning. | `evidence_based_growth_systems_report.md` | Research-supported | Strong evidence | Test if BecomingOS users can create and use if-then plans. | Limited educational wording allowed. |
| WOOP / MCII can support obstacle-aware planning. | `evidence_based_growth_systems_report.md` | Research-supported | Moderate evidence | Test interactive WOOP flow with BecomingOS users. | Limited educational wording allowed. |
| Habit automaticity is supported by repetition in stable contexts over variable timeframes. | `evidence_based_growth_systems_report.md` | Research-supported | Moderate evidence | Validate habit tracking and cue logging in beta. | Avoid time-to-habit promises. |
| Self-monitoring is a high-confidence behaviour-change mechanism. | `evidence_based_growth_systems_report.md` | Research-supported | Strong evidence | Test completion tracking, cue logging, and review comprehension. | Limited educational wording allowed. |
| Feedback and prompts/cues can support digital engagement and behaviour change. | `evidence_based_growth_systems_report.md` | Research-supported | Moderate evidence | Test whether prompts feel supportive rather than pressuring. | Limited educational wording allowed. |
| Supportive accountability can help when opt-in, trusted, and process-focused. | `evidence_based_growth_systems_report.md` | Research-supported | Moderate evidence | Validate Support Circle permissions, comprehension, and safety. | Only with optional/permissioned caveats. |
| Bad Day Mode is an evidence-proven named intervention. | `evidence_based_growth_systems_report.md` | Implementation inference | Weak evidence as named product pattern | Validate whether reduced plans reduce shame and support continuity. | No broad claim. |
| Today Directive as a one-action daily surface is proven for BecomingOS users. | `evidence_based_growth_systems_report.md` | Implementation inference | Implementation inference | Validate with BecomingOS users in private beta/research. | No. |
| The growth loop will improve user outcomes. | `evidence_based_growth_systems_report.md` | Assumption until user validation | Implementation inference | Conduct BecomingOS user research and beta evaluation. | No. |
| Analytics events such as `goal_created`, `if_then_saved`, and `bad_day_mode_used` are useful mechanism indicators. | `evidence_based_growth_systems_report.md`; `analytics_event_taxonomy.md` | Planning assumption | Implementation inference | Validate privacy-safe event collection and usefulness in beta. | No public-facing copy needed. |
| Electronic consent can improve or support comprehension, acceptability, usability, and process efficiency compared with paper-only consent in some contexts. | Comparative effectiveness eConsent systematic review, JMIR 2023 / PMC: https://pmc.ncbi.nlm.nih.gov/articles/PMC10504628/; electronic informed consent RCT systematic review, Trials 2023. | Research-supported, not BecomingOS-validated | Strong external research | Test BecomingOS consent comprehension with target users, including optional data categories, withdrawal, AI-provider disclosure, and no-production-reuse language. | Yes, only as design rationale; do not claim consent comprehension is proven for BecomingOS. |
| Informed-consent comprehension is often incomplete, so consent UX should include plain language, checks for understanding, and explicit withdrawal/confidentiality explanations. | Participants' understanding of informed consent systematic review/meta-analysis, 2023 / PMC: https://pmc.ncbi.nlm.nih.gov/articles/PMC10760836/; JAMA informed-consent comprehension intervention review. | Research-supported | Strong external research | Add comprehension questions to beta testing script and require participant explanation of voluntary participation, optional categories, AI processing, retention, deletion, withdrawal, and emergency boundaries. | Yes, as rationale for comprehension checks; no compliance claim. |
| User trust in AI is shaped by transparency, perceived reliability, accountability, privacy/security concerns, and human oversight. | Patient/general-public attitudes toward clinical AI systematic review, PubMed: https://pubmed.ncbi.nlm.nih.gov/34446266/; conversational AI privacy/security/trust systematic review, 2024. | Research-supported, not BecomingOS-validated | Strong external research | Validate whether users understand AI outputs are drafts, what context influenced recommendations, how to reject outputs, and when human/professional support is needed. | Yes, only as rationale for transparency and draft-output design. |
| Privacy and data-security concerns are material adoption barriers for AI and digital health tools, especially where sensitive health, reflection, or support-contact data may be involved. | Conversational AI privacy/security/trust systematic review, 2024; patient privacy perspective on health information exchange systematic review; mental-health app privacy studies. | Research-supported | Strong external research | Test privacy comfort by category: manual entries, calendar, health/wearable signals, tasks, documents, photos, audio, video, support contacts, AI provider exposure, logs, embeddings, and deletion. | Yes, as rationale for minimisation and consent design; do not claim user trust is established. |
| Digital mental health and wellbeing tools show market interest and adoption potential, but engagement, trust, safety, privacy, evidence base, and fit vary substantially by user segment. | Digital mental health intervention engagement reviews; Evaluation of Digital Mental Health Technologies in the United States systematic review / PMC: https://pmc.ncbi.nlm.nih.gov/articles/PMC11399741/; JMIR engagement review. | Research-supported general market evidence | Moderate external research | Validate BecomingOS target segment, problem urgency, channel, retention, and feature-level willingness to use through interviews, concept tests, and beta usage evidence. | Limited public use allowed only as broad market context; no demand or product-market-fit claim. |
| Willingness-to-pay for digital health or digital mental-health tools varies by population, service model, perceived value, and cost sensitivity; direct willingness-to-pay for BecomingOS is unvalidated. | Consumers' willingness to pay for eHealth systematic review/meta-analysis, JMIR 2022; national survey on willingness to use/pay for digital mental health interventions / PMC: https://pmc.ncbi.nlm.nih.gov/articles/PMC11046394/. | Research-supported general pricing evidence | Moderate external research | Run target-segment pricing interviews, Van Westendorp or conjoint-style tests, landing-page pricing tests if appropriate, and beta follow-up on perceived paid value. | No public pricing/demand claim until BecomingOS-specific validation exists. |
| Safe mental-health app use requires attention to privacy/security, evidence base, accessibility, user control, crisis boundaries, and clear limitations. | APA App Evaluation Model: https://www.psychiatry.org/psychiatrists/practice/mental-health-apps/the-app-evaluation-model; systematic assessment of mental health apps using APA model / PMC: https://pmc.ncbi.nlm.nih.gov/articles/PMC9561256/; NICE digital health evidence standards. | Research-supported evaluation framework | Strong external framework evidence | Review BecomingOS against accessibility, privacy/security, evidence base, engagement/usability, interoperability, crisis-boundary, and data-rights criteria before any live beta or public claim. | Yes, as internal evaluation rationale; no claim that BecomingOS is a mental-health treatment or clinically validated app. |
| Inclusive design and cognitive accessibility guidance support plain language, consistent help, clear navigation, error prevention/recovery, reduced cognitive load, and multiple ways to understand content. | W3C WCAG 2.2: https://www.w3.org/TR/WCAG22/; W3C Cognitive Accessibility guidance: https://www.w3.org/WAI/cognitive/; MDN cognitive accessibility guidance. | Standards/guidance-supported, implementation not validated | Strong guidance evidence | Test implemented flows with keyboard, screen reader, zoom/reflow, contrast checks, plain-language review, cognitive walkthroughs, and participant comprehension checks. | Yes, as design/accessibility rationale; do not claim WCAG conformance without test evidence. |
| BecomingOS-specific feature performance remains unvalidated for Today Directive, Bad Day Mode, Life Capture, AI memory confirmation, Support Circle permissions, and question safety. | Internal product docs; growth systems research summary; accessibility QA evidence; safety/privacy docs. | Validation gap | Validation gap | Run user research and beta tests that measure comprehension, perceived safety, completion, trust, usefulness, privacy comfort, accessibility, and negative effects for each named feature. | No public performance or outcome claims. |

## Validation Gaps To Track

- Completed user research findings:
  - Recruit target users and trusted beta candidates.
  - Test whether users understand BecomingOS as educational, non-clinical, experimental, and pre-MVP.
  - Record comprehension, perceived value, perceived risk, trust, and confusion points.
- Target segment validation:
  - Define primary segment hypotheses.
  - Validate pain points, context of use, existing alternatives, urgency, and adoption barriers.
  - Separate internal alias/lifeOS references from public BecomingOS messaging.
- Market demand validation:
  - Test problem-solution fit before making demand claims.
  - Validate whether users would repeatedly use reflection, planning, AI draft, and memory confirmation flows.
  - Document channels, segment language, and reasons for non-adoption.
- Pricing and willingness-to-pay validation:
  - Run pricing interviews or structured willingness-to-pay research with target users.
  - Validate perceived value by feature bundle, not only by general wellbeing interest.
  - Avoid public pricing or revenue claims until BecomingOS-specific evidence exists.
- Consent comprehension:
  - Test participant understanding of optionality, data categories, retention, deletion, access/export, withdrawal, AI provider processing, and no production reuse.
  - Add comprehension prompts to beta scripts.
  - Retest any consent copy changed after provider, retention, or support-channel updates.
- AI trust and calibrated reliance:
  - Test whether users understand AI outputs are drafts requiring review.
  - Test whether users can identify, reject, edit, or confirm AI-generated memory candidates.
  - Evaluate whether users over-trust recommendations or mistake them for professional advice.
- Question safety and non-clinical comprehension:
  - Review all prompts for shame, coercion, diagnosis, treatment framing, crisis implication, and professional-advice drift.
  - Test whether users can distinguish reflection/planning prompts from therapy or diagnosis.
  - Add stop criteria for distress, confusion, or inappropriate reliance.
- Privacy comfort:
  - Validate comfort separately for manual entries, calendar, health/wearable signals, tasks, documents, photos, audio, video, support contacts, AI provider exposure, logs, embeddings, and analytics.
  - Track which categories users decline and why.
  - Confirm deletion, withdrawal, and no-production-reuse language is understood.
- Accessibility:
  - Convert prototype QA evidence into implemented-flow evidence before any live beta or public MVP claim.
  - Test keyboard access, screen-reader labels, focus order, contrast, zoom/reflow, error messages, tables, forms, and cognitive load.
  - Include plain-language and emotional-safety review for sensitive flows.
- BecomingOS feature performance:
  - Validate Today Directive comprehension, perceived usefulness, completion, and pressure/shame risk.
  - Validate Bad Day Mode for reduced shame, realistic action planning, and non-clinical boundaries.
  - Validate Life Capture input burden, privacy comfort, and deletion/editing expectations.
  - Validate if-then planning, habit cues, and self-monitoring without outcome promises.
  - Validate Support Circle permissions, opt-in controls, expiry/revocation, and no emergency-monitoring understanding.
