# OpenAI AI Provider Due-Diligence Evidence Pack

## 1. Status

- Provider: OpenAI
- Review status: Evidence gathered; owner approval still required
- Approval status: Not approved
- Reason: Approval record must still be completed and signed by AI/data, privacy/legal, security and product owners.

This evidence pack is a due-diligence draft only. It does not approve OpenAI provider use, live beta user data processing, private beta start, public MVP build, production readiness, legal/privacy/security compliance, or any BecomingOS compliance claim.

## 2. Source Documents Reviewed

| Source document | Local file path | Official URL | Role in evidence pack | Evidence strength |
|---|---|---|---|---|
| OpenAI Services Agreement | `06_privacy_legal_safety/openai_evidence/services_agreement.md` | https://openai.com/policies/services-agreement/ | Primary business/developer/API services agreement evidence. | Strong for general contractual terms; executed customer-specific agreement/order form still required. |
| OpenAI Data Processing Addendum | `06_privacy_legal_safety/openai_evidence/data_processing_addendum.md` | https://openai.com/policies/data-processing-addendum/ | Primary processor, breach, subprocessor, transfer, and customer-obligation evidence. | Strong for standard DPA terms; executed customer-specific DPA confirmation still required. |
| OpenAI API Data Controls / Your Data page | `06_privacy_legal_safety/openai_evidence/api_data_controls.md` | https://developers.openai.com/api/docs/guides/your-data | Primary API retention, logging, training-use, endpoint retention, endpoint state, data residency, and ZDR/MAM evidence. | Strong for API data controls; selected endpoint/project settings still must be verified. |
| OpenAI Subprocessor List | `06_privacy_legal_safety/openai_evidence/subprocessor_list.md` | https://platform.openai.com/subprocessors | Subprocessor review and change-notification evidence. | Partial: DPA evidence found, but actual current list must be manually saved and reviewed. |
| OpenAI Security and Privacy page | `06_privacy_legal_safety/openai_evidence/security_privacy.md` | https://openai.com/security-and-privacy/ | Public security, encryption, accreditation, enterprise controls, and Trust Portal reference evidence. | Moderate to strong public summary; gated audit artifacts still required. |
| OpenAI Trust Portal / SOC 2 / ISO / Security Whitepaper | `06_privacy_legal_safety/openai_evidence/trust_portal_readme.md` | https://trust.openai.com/ | Placeholder and manual-download checklist for security assurance artifacts. | Missing/gated: SOC 2 report, ISO certificates, penetration testing report, security whitepaper, and data-flow diagrams may require login/NDA and must be obtained manually if not present in the repo. |
| OpenAI Privacy Policy | `06_privacy_legal_safety/openai_evidence/privacy_policy.md` | https://openai.com/policies/privacy-policy/ | Supporting context only; not primary API/business evidence. | Limited: source states API/business data is governed by business agreements, not the consumer privacy policy. |

## 3. Evidence Map Against Checklist

| Checklist item | Evidence found | Source document | Source location / search term | Evidence status | Remaining gap | Required owner action |
|---|---|---|---|---|---|---|
| Provider identity and service scope | Services Agreement applies to OpenAI APIs and business/developer services, not consumer/individual services unless specified. Customer may integrate API services into customer applications. | `services_agreement.md` | "applies to OpenAI APIs"; "business/developer services"; "consumer/individual services" | Evidence found | Confirm actual OpenAI organization, contracting party, project, model/service, and account tier. | AI/data owner and product owner freeze exact service scope before beta use. |
| Retention terms | API data may be stored as abuse monitoring logs or application state. Default abuse monitoring logs are retained up to 30 days unless exceptions apply. Endpoint retention varies. `/v1/vector_stores`, Assistants/Threads, Files, and some objects retain application state until deleted. | `api_data_controls.md` | "abuse monitoring logs"; "retained for up to 30 days"; "Endpoint retention table extract"; "application state retained until deleted" | Evidence found, conditional by endpoint | Confirm selected endpoints and whether default retention, MAM, or ZDR applies. | Privacy/legal, security, AI/data owners approve endpoint-specific retention and update consent notice. |
| Logging terms | Abuse monitoring logs may include prompts, responses, metadata, and classifier outputs. Default logs apply to all API feature usage unless ZDR/MAM approval changes behavior. | `api_data_controls.md` | "prompts and responses"; "metadata"; "classifier outputs"; "Zero Data Retention"; "Modified Abuse Monitoring" | Evidence found | Account/project logging settings not verified. | Security and privacy/legal owners decide whether default logging is acceptable or require MAM/ZDR. |
| Training-use terms | Services Agreement and API Data Controls say customer/API content is not used to develop, improve, or train models unless customer explicitly agrees or opts in. | `services_agreement.md`; `api_data_controls.md`; `security_privacy.md` | "will not use customer content"; "unless customer explicitly agrees"; "not used to train or improve" | Evidence found | Actual account data-sharing/training opt-in setting not verified. | AI/data owner verifies opt-in disabled and records evidence before live data. |
| Deletion process | Services Agreement says customer content is deleted within 30 days after termination unless exceptions apply. DPA says OpenAI will return or delete customer data on instruction after expiry/termination subject to law. API Data Controls says files can be deleted manually via API/dashboard or auto-deleted with `expires_after`; Assistants objects are deleted 30 days after deletion; objects not deleted may be retained indefinitely. | `services_agreement.md`; `data_processing_addendum.md`; `api_data_controls.md` | "delete customer content"; "return or delete"; "Files can be manually deleted"; "expires_after"; "retained indefinitely" | Evidence found, endpoint-dependent | BecomingOS deletion workflow has not been tested against selected OpenAI endpoints. | AI/data and privacy/legal owners test deletion, provider-held deletion, and evidence logging before approval. |
| Subprocessors | DPA gives general authorization for OpenAI to engage subprocessors listed in the official Sub-Processor List, requires notice/change process, allows customer objection within 30 days, imposes comparable obligations, and retains OpenAI liability as stated. | `data_processing_addendum.md`; `subprocessor_list.md` | "Sub-Processor List"; "object to a new subprocessor"; "30 days"; "comparable obligations" | Partial evidence found | Actual current subprocessor list was not extractable in local evidence and must be manually saved/reviewed. | Privacy/legal and security owners review current list and subscribe to changes. |
| Cross-border transfer | DPA references SCCs and UK Addendum. API Data Controls says Australia has regional storage but not regional processing, and Australia requires MAM or ZDR and uses `au.api.openai.com`. | `data_processing_addendum.md`; `api_data_controls.md` | "SCCs"; "UK Addendum"; "Australia has regional storage but not regional processing"; "au.api.openai.com" | Evidence found | Actual BecomingOS region, residency requirement, and transfer safeguards not approved. | Privacy/legal and security owners approve transfer posture and region/account settings. |
| Data minimisation | Services Agreement and DPA require customer to obtain rights, permissions, notices, consents, and authorizations for input/customer data. API Data Controls shows endpoint choices affect retention and state. | `services_agreement.md`; `data_processing_addendum.md`; `api_data_controls.md` | "consents necessary"; "rights, licences and permissions"; "customer must provide necessary notices"; "Endpoint retention varies" | Evidence supports need for minimisation | Internal BecomingOS data minimisation matrix and exact fields to send are not complete in this evidence pack. | Product, privacy/legal, and AI/data owners define minimum data per feature and prohibit unnecessary sensitive categories. |
| Opt-out / non-AI fallback | Source evidence covers OpenAI training opt-in/out and ZDR/MAM approval concepts, but does not define a BecomingOS participant non-AI fallback. | `api_data_controls.md`; referenced internal docs | "explicitly opts in"; "Zero Data Retention"; "Modified Abuse Monitoring" | Partial/provider-only evidence | Participant-level opt-out or non-AI fallback must be defined internally. | Product and privacy/legal owners define whether beta users can use non-AI flows or decline AI processing. |
| Incident response | DPA says OpenAI will notify customer without undue delay after becoming aware of a Personal Data Breach and provide reasonable assistance. Security and Privacy page references security measures and Trust Portal artifacts. | `data_processing_addendum.md`; `security_privacy.md`; `trust_portal_readme.md` | "without undue delay"; "Personal Data Breach"; "reasonable assistance"; "Trust Portal" | Evidence found, incomplete | Gated incident response/security artifacts not reviewed; internal incident process not tied to OpenAI. | Security and privacy/legal owners review Trust Portal artifacts and map provider incidents into BecomingOS incident response. |
| Security controls | Security and Privacy page states encryption at rest and in transit, independent auditor evaluation, SOC 2 Type 2 examination, ISO/IEC 27001, ISO/IEC 27701, ISO/IEC 42001, audit logs, data residency for API, account security, and fine-grained controls. Services Agreement says audit reports may be provided on written request. | `security_privacy.md`; `services_agreement.md`; `trust_portal_readme.md` | "encrypted at rest and in transit"; "SOC 2 Type 2"; "ISO/IEC"; "audit reports" | Public evidence found | SOC 2 report, ISO certificates, security whitepaper, penetration testing report, and data-flow diagram still missing/gated. | Security owner obtains/reviews artifacts or documents accepted residual risk. |
| Contractual terms | Services Agreement covers API/business services, customer content ownership, content use restrictions, customer consents, DPA incorporation, security audit reports, termination deletion, and beta services risk. | `services_agreement.md`; `data_processing_addendum.md` | "customer retains ownership"; "will only use customer content"; "DPA incorporated"; "Beta services" | Evidence found | Executed agreement, order form, DPA, and organization-specific terms not attached. | Privacy/legal and product owners confirm applicable executed terms before approval. |
| Sensitive data handling | DPA says no sensitive data is intended unless unexpectedly included in unstructured data. API Data Controls says image/file inputs may be scanned for CSAM and potential CSAM may be retained for manual review even under ZDR/MAM. | `data_processing_addendum.md`; `api_data_controls.md` | "no sensitive data is intended"; "image and file inputs"; "CSAM"; "manual review" | Evidence found, high-risk | BecomingOS may involve sensitive reflections, health/wearable signals, documents, photos, audio, video, and support contacts; scope must exclude or separately approve each category. | Privacy/legal, safety, security, and product owners approve sensitive category exclusions before beta. |
| Embedding/vector handling | `/v1/embeddings`: no training, 30-day abuse monitoring retention, no application state by default, ZDR eligible. `/v1/vector_stores`: no training, 30-day abuse monitoring retention, application state until deleted, not ZDR eligible. | `api_data_controls.md` | "`/v1/embeddings`"; "`/v1/vector_stores`"; "ZDR eligible"; "application state retained until deleted" | Evidence found | Internal embedding invalidation and deletion tests not completed; vector stores carry application-state retention risk. | AI/data and security owners allow embeddings only for confirmed eligible memory after internal lifecycle tests; exclude vector stores unless separately approved. |
| Human review | API Data Controls says potential CSAM from image/file inputs may be retained for manual review even with ZDR/MAM. This is limited evidence of provider human review risk for certain inputs, not a general AI-output review process. | `api_data_controls.md` | "potential CSAM"; "retained for manual review"; "even with ZDR or MAM" | Evidence found for limited cases | BecomingOS human review of AI outputs and user escalation must be defined internally; files/images/audio/video should be excluded unless separately approved. | Safety, privacy/legal, and AI/data owners define human review boundaries and prohibit unsupported sensitive inputs. |

## 4. OpenAI Endpoint Scope Recommendation

Recommended initial scope:

- Text-only API use.
- Prefer Responses API or Chat Completions with `store=false`.
- Embeddings endpoint allowed only for confirmed eligible memory if internal embedding invalidation workflow is implemented.
- No vector stores unless separately approved.
- No files/images/audio/video unless separately approved.
- No Assistants/Threads/Conversations unless separately approved.
- No remote MCP/tools/web search unless separately approved.
- No beta/preview services unless separately approved.

Rationale:

- Lower retention risk because Responses API and Chat Completions can avoid application state by default when configured appropriately, while vector stores, assistants, threads, conversations, and files may retain application state until deleted.
- Lower sensitive-data exposure by excluding media, documents, files, audio, video, support contacts, and other sensitive categories unless separately approved.
- Easier deletion and consent scope because text-only prompts and outputs can be mapped more directly to BecomingOS source records and deletion workflows.
- Better alignment with internal non-clinical, privacy, minimisation, deletion, and confirmed-memory rules.

This recommendation is not approval. It is a conservative starting point for owner review.

## 5. Risk Register

| Risk | Evidence | Severity | Mitigation | Approval condition |
|---|---|---|---|---|
| Default 30-day abuse monitoring logs may contain prompts, responses, and metadata. | `api_data_controls.md` states default abuse monitoring logs may include customer content and metadata and are retained up to 30 days unless exceptions apply. | High | Minimise prompt content, avoid sensitive categories, confirm account settings, consider MAM/ZDR if available and appropriate. | Owners approve retention/logging posture and consent disclosure. |
| Endpoint application-state retention may persist until deleted. | API Data Controls says endpoint retention varies and some endpoints retain application state until deleted. | High | Prefer text-only endpoints with no application state by default and `store=false`; exclude stateful endpoints unless approved. | Endpoint inventory and retention matrix approved. |
| Vector store retention until deleted creates persistent derived-data risk. | `/v1/vector_stores` has application state until deleted and is not ZDR eligible. | High | Exclude vector stores initially; use embeddings only if internal lifecycle deletion/invalidation is tested. | AI/data and security owners separately approve vector stores, if ever used. |
| Files/images CSAM/manual review exception may override ZDR/MAM expectations. | API Data Controls says image/file inputs may be scanned for CSAM and potential CSAM may be retained for manual review even under ZDR/MAM. | High | Exclude files, images, audio, and video from OpenAI processing unless separately approved and disclosed. | Sensitive media processing separately approved by privacy/legal, safety, and security owners. |
| Australia regional storage does not mean Australia regional processing. | API Data Controls says Australia has regional storage but not regional processing and requires MAM or ZDR using `au.api.openai.com`. | Medium/High | Do not make local-processing claims; review residency and transfer requirements. | Privacy/legal and security owners approve region settings and transfer posture. |
| Subprocessor list changes may affect risk profile. | DPA/subprocessor evidence includes notice and objection process, but actual current list is not saved locally. | Medium | Manually save current list, review subprocessors/jurisdictions/purposes, and subscribe to changes. | Privacy/legal and security owners approve list and change-monitoring process. |
| Gated Trust Portal artifacts are not yet reviewed. | `trust_portal_readme.md` lists SOC 2, ISO, security whitepaper, penetration test, and other artifacts as manual downloads. | High | Obtain artifacts or document accepted residual risk. | Security owner signs review or residual-risk acceptance. |
| User consent/disclosure is not final for OpenAI provider processing. | Internal consent notice is referenced separately and must disclose provider processing; this pack does not approve consent. | High | Update and approve beta consent notice with provider, data categories, retention/logging/training/deletion, subprocessors, transfers, and user request process. | Privacy/legal, safety, product, and AI/data owners approve consent language. |
| Deletion workflow has not been tested against selected OpenAI endpoints. | API Data Controls shows endpoint-specific deletion/application-state behavior. | High | Run deletion tests for selected endpoints and record provider-held deletion evidence if applicable. | AI/data, privacy/legal, and security owners approve test evidence. |
| Owner sign-off is not completed. | Approval record remains unchecked/conditional in this pack. | Critical | Complete approval record with signatures and date. | AI/data, privacy/legal, security, and product owners sign approval before live beta data processing. |

## 6. Decision

Conditional — evidence pack drafted, but provider is NOT approved.

Conditions before approval:

- Execute/retrieve Services Agreement and DPA applicable to the actual organisation.
- Confirm selected OpenAI organisation/project settings.
- Confirm data-sharing/training opt-in is disabled.
- Decide default retention vs Modified Abuse Monitoring vs Zero Data Retention.
- Freeze exact endpoint/model/tool scope.
- Complete deletion and embedding invalidation tests.
- Obtain/review Trust Portal artifacts: SOC 2, ISO certificates, security whitepaper, pentest report if available.
- Review subprocessor list and subscribe to changes.
- Update beta consent notice to disclose OpenAI provider processing.
- AI/data owner, privacy/legal owner, security owner and product owner sign approval record.

## 7. Approval Record Draft

### Provider Details

- Provider name: OpenAI
- Model/service: OpenAI API
- Intended beta feature/use: Draft only; exact endpoint scope pending
- Reviewer:
- Review date:

### Data and Purpose

- Data categories sent:
- Purpose:
- Minimum data required:
- User-facing disclosure location:
- Opt-out or non-AI fallback:

### Provider Terms Review

- Retention terms: Conditional
- Logging terms: Conditional
- Training-use terms: Evidence found; verify opt-in disabled
- Deletion terms: Conditional pending testing
- Subprocessors: Evidence found; owner review required
- Cross-border transfer: Evidence found; owner review required
- Security posture: Evidence found; Trust Portal artifacts pending
- Incident response: Evidence found; owner review required
- Contract/DPA status: DPA source found; executed copy pending
- Human review: Evidence found for limited cases; risk review required
- Embedding/vector handling: Evidence found; vector stores excluded unless separately approved
- Sensitive data handling: Conditional; files/images/audio/video excluded unless separately approved

### Decision

- [ ] Approved
- [ ] Rejected
- [x] Modify / Conditional

Owner notes:
OpenAI may be considered for a narrowly scoped private beta only after conditions are satisfied. Live beta data must not be sent until approval is recorded.

## 8. Evidence Gaps

- Executed customer-specific OpenAI agreement / order form.
- Executed DPA confirmation.
- Trust Portal SOC 2 report.
- ISO certificates or audit artifacts.
- Security whitepaper.
- Penetration test report.
- Internal endpoint inventory.
- Internal data minimisation matrix.
- Beta consent notice updated with OpenAI terms.
- Deletion workflow evidence.
- Embedding invalidation test evidence.
- Owner signatures.

## 9. Final Statement

NA-003 is not fully complete until the approval record is signed. This evidence pack supports owner review but does not approve OpenAI provider use, live beta user data processing, public MVP build, production readiness, or compliance claims.
