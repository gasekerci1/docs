# Private Beta Build Export Manifest

## 1. Purpose

This manifest identifies the minimum approved documents to copy into a separate private beta build repository for a limited trusted BecomingOS private beta.

This manifest:

- Does not move or delete files from this documentation repository.
- Does not approve public MVP/build.
- Does not approve production readiness.
- Does not approve public launch or commercial release.
- Does not approve legal, privacy, security, accessibility, WCAG, regulatory, clinical, or other compliance claims.
- Does not broaden AI/data scope.
- Does not approve copying archived files, `00_inbox/` files, source DOCX originals, near duplicates, superseded drafts, or old MVP/build/production/final/hardening files.

Current controlling status comes from `00_repository_control/current_status_dashboard.md` and `00_repository_control/owner_approval_decision_record.md`: limited trusted private beta is GO; public MVP/build, production readiness, public launch/commercial release, and compliance claims remain NO-GO.

## 2. Build Repo Recommendation

Recommended new repository:

```text
gasekerci1/becomingos-private-beta
```

Repo visibility:

```text
Private
```

Purpose:

```text
Limited trusted private beta build only.
```

## 3. Approved Build Boundary

The build repository should stay within this approved private beta boundary:

- Text-only private beta.
- Trusted participants only.
- Consent required before tester use.
- No public users.
- No file, image, audio, or video upload.
- No vector stores unless separately approved.
- No wearables or passive monitoring.
- No crisis monitoring.
- No therapy, medical, legal, financial, addiction treatment, emergency, or professional advice.
- No legal, privacy, security, accessibility, WCAG, regulatory, clinical, production-readiness, public-launch, or commercial-readiness compliance claims.
- OpenAI use remains narrow private-beta text-only unless separately approved.
- Support Circle remains opt-in only and is not crisis response.

## 4. Required Documents To Copy

Path resolution note: some requested files were not present under the older requested folder names. Where an equivalent current canonical root file exists, this manifest uses the present canonical path. Missing requested candidates are listed after the table and are not copied by the command plan.

| Source path in docs repo | Destination path in build repo | Why required | Build use | Risk note |
|---|---|---|---|---|
| `README.md` | `docs/governance/docs_repo_README.md` | Repository context and canonical-folder warning. | Governance reference only. | The docs README has older private-beta wording; build repo root README must use the current dashboard status instead. |
| `00_repository_control/current_status_dashboard.md` | `docs/governance/current_status_dashboard.md` | Current controlling status for beta/public/production/compliance gates. | Build boundary reference. | Does not approve implementation beyond limited trusted private beta. |
| `00_repository_control/owner_approval_decision_record.md` | `docs/governance/owner_approval_decision_record.md` | Owner decisions for naming, stage, AI/data, cleanup, analytics, safety, and beta rules. | Build governance reference. | Does not approve public MVP/build, production, broad AI, or compliance claims. |
| `00_repository_control/source_of_truth_register.md` | `docs/governance/source_of_truth_register.md` | Product source hierarchy and conflict rule. | Source authority reference. | Source DOCX itself is not copied. |
| `00_repository_control/source_traceability_map.md` | `docs/governance/source_traceability_map.md` | Traceability and canonical root-structure guidance. | Prevents accidental use of old/nested/archived evidence. | Does not approve archive, deletion, move, or public build. |
| `02_product/landing_page_requirements_v0.1.md` | `docs/product/landing_page_requirements_v0.1.md` | Private beta/waitlist validation-page requirements. | Landing page planning. | Planning only; does not approve public launch or commercial release. |
| `02_product/marketing_branding_scope_v0.1.md` | `docs/product/marketing_branding_scope_v0.1.md` | Marketing/branding scope boundaries. | Copy and brand guardrails. | Must not imply public launch or validated market claims. |
| `06_privacy_legal_safety/private_beta_final_consent_notice.md` | `docs/privacy_safety/private_beta_final_consent_notice.md` | Participant-facing consent notice approved for limited private beta. | Consent flow and tester acknowledgement. | Does not approve public MVP/build, production readiness, commercial launch, or compliance claims. |
| `06_privacy_legal_safety/private_beta_consent_requirements.md` | `docs/privacy_safety/private_beta_consent_requirements.md` | Consent notice requirements and data-category optionality. | Consent implementation checklist. | Legal review still required before broad release or compliance claims. |
| `06_privacy_legal_safety/privacy_consent_data_governance.md` | `docs/privacy_safety/privacy_consent_data_governance.md` | Data minimisation, retention, deletion, and AI provider disclosure rules. | Privacy/data governance reference. | Limited private beta only; no production reuse without renewed consent. |
| `06_privacy_legal_safety/private_beta_data_deletion_workflow.md` | `docs/privacy_safety/private_beta_data_deletion_workflow.md` | Deletion, anonymisation, provider deletion, and embedding invalidation workflow. | Data deletion process. | Must avoid sensitive free text in logs and must not imply production readiness. |
| `06_privacy_legal_safety/private_beta_withdrawal_export_access_workflow.md` | `docs/privacy_safety/private_beta_withdrawal_export_access_workflow.md` | Withdrawal, access, export, correction, and deletion workflow. | Data-rights operations. | Use only within approved private beta scope. |
| `06_privacy_legal_safety/private_beta_safety_logging_policy.md` | `docs/privacy_safety/private_beta_safety_logging_policy.md` | Safety logging boundaries and minimisation rules. | Safety-log decision support. | Draft policy; safety logs require review and must stay segregated/excluded from memory, analytics, and AI outputs. |
| `06_privacy_legal_safety/ai_provider_due_diligence_checklist.md` | `docs/privacy_safety/ai_provider_due_diligence_checklist.md` | AI provider due-diligence checklist and approval gate. | AI provider governance. | Checklist text is draft/gate evidence; live provider use must follow later approved provider records and consent notice. |
| `07_architecture_api/private_beta_environment_requirements.md` | `docs/architecture/private_beta_environment_requirements.md` | Separate beta environment requirements. | Environment planning. | Conceptual only; does not approve deployment, config, infrastructure, or implementation. |
| `06_privacy_legal_safety/security_threat_model.md` | `docs/architecture/security_threat_model.md` | Approved private-beta security threat model. | Security planning. | Does not approve production architecture, public MVP/build, or security compliance claims. |
| `05_ai_memory_data/retrieval_and_embedding_rules.md` | `docs/architecture/retrieval_and_embedding_rules.md` | Approved private-beta memory retrieval and embedding lifecycle rules. | AI/memory implementation guardrails. | Vector stores remain excluded unless separately approved. |
| `10_operations_testing_accessibility/private_beta_execution_pack.md` | `docs/beta_ops/private_beta_execution_pack.md` | Operational pack for limited trusted private beta. | Beta operator checklist. | Text-only and trusted tester scope only. |
| `10_operations_testing_accessibility/private_beta_participant_tracker.md` | `docs/beta_ops/private_beta_participant_tracker.md` | Participant tracking template. | Tester administration. | Use participant IDs/minimal metadata only. |
| `10_operations_testing_accessibility/private_beta_test_script.md` | `docs/testing/private_beta_test_script.md` | Private beta test script. | Tester session execution. | Must stay within consented private beta tasks. |
| `10_operations_testing_accessibility/private_beta_feedback_form.md` | `docs/testing/private_beta_feedback_form.md` | Feedback form for beta participants. | Feedback collection. | Do not collect crisis text or sensitive free text in analytics. |
| `10_operations_testing_accessibility/private_beta_issue_log.md` | `docs/testing/private_beta_issue_log.md` | Issue-log template. | Bug/risk/issue tracking. | Keep logs minimal and avoid sensitive content. |
| `10_operations_testing_accessibility/private_beta_stop_criteria_checklist.md` | `docs/testing/private_beta_stop_criteria_checklist.md` | Stop criteria checklist. | Beta pause/stop decisions. | Stop criteria do not approve public MVP/build or production. |
| `08_operations_testing_accessibility/support_operations_stage_plan.md` | `docs/support/support_operations_stage_plan.md` | Support owner, boundary, channels, and escalation plan. | Support operations planning. | Support is asynchronous, not crisis response, therapy, or professional advice. |
| `08_operations_testing_accessibility/incident_response_plan.md` | `docs/support/incident_response_plan.md` | Incident classes, severity, owners, and logging boundaries. | Incident planning. | Planning only; does not approve operational readiness or compliance claims. |
| `08_operations_testing_accessibility/release_readiness_checklist.md` | `docs/testing/release_readiness_checklist.md` | Stage gates for private beta, public MVP, and production. | Readiness gate reference. | Private beta is GO only within signed limits; public MVP and production remain NO-GO. |

Requested candidates not present under the requested exact paths and not copied as those paths:

- `02_product/brand_strategy_v0.1.md`
- `02_product/landing_page_copy_pack_v0.1.md`
- `02_product/website_wireframe_spec_v0.1.md`
- `07_architecture_and_api/private_beta_environment_requirements.md`
- `07_architecture_and_api/security_threat_model.md`
- `07_architecture_and_api/retrieval_and_embedding_rules.md`
- `10_operations_testing_accessibility/support_operations_stage_plan.md`
- `10_operations_testing_accessibility/incident_response_plan.md`
- `10_operations_testing_accessibility/release_readiness_checklist.md`

## 5. Files Not To Copy

Do not copy:

- `99_archive/`
- `00_inbox/`
- `01-source-documents/originals/`
- Source DOCX files.
- Near duplicates.
- Superseded drafts.
- Old MVP/build/production/final/hardening files unless separately approved as labelled historical evidence.
- Anything missing source traceability.
- Anything implying production, public launch, public MVP/build, commercial release, legal compliance, privacy compliance, security readiness, accessibility/WCAG compliance, clinical readiness, or regulatory readiness.

## 6. Build Repo Starter Structure

Recommended starter structure:

```text
README.md
.env.example
docs/
docs/governance/
docs/product/
docs/privacy_safety/
docs/architecture/
docs/beta_ops/
docs/support/
docs/testing/
app/
config/
scripts/
tests/
```

The build repo may contain app/config/script/test directories later, but this manifest does not create implementation files and does not approve app/source code in this documentation repository.

## 7. Required Build Repo README Rules

The build repo README must say:

- BecomingOS is limited trusted private beta only.
- It is not public MVP.
- It is not production.
- It is not clinical.
- It is not an emergency or crisis service.
- AI scope is text-only unless separately approved.
- Consent is required before tester use.
- No legal, privacy, security, accessibility, WCAG, regulatory, clinical, production-readiness, public-launch, or commercial-readiness compliance claims are approved.

## 8. Copy Command Plan

Run these commands from the docs repo root after owner review. These commands create folders, copy only files listed in this manifest, skip missing files without failing, and do not move or delete anything from the docs repo.

```bash
DEST="../becomingos-private-beta"

mkdir -p "$DEST/docs/governance" \
  "$DEST/docs/product" \
  "$DEST/docs/privacy_safety" \
  "$DEST/docs/architecture" \
  "$DEST/docs/beta_ops" \
  "$DEST/docs/support" \
  "$DEST/docs/testing"

copy_if_present() {
  src="$1"
  dest="$2"
  if [ -f "$src" ]; then
    mkdir -p "$(dirname "$DEST/$dest")"
    cp "$src" "$DEST/$dest"
    printf 'copied %s -> %s\n' "$src" "$DEST/$dest"
  else
    printf 'skipped missing %s\n' "$src"
  fi
}

copy_if_present "README.md" "docs/governance/docs_repo_README.md"
copy_if_present "00_repository_control/current_status_dashboard.md" "docs/governance/current_status_dashboard.md"
copy_if_present "00_repository_control/owner_approval_decision_record.md" "docs/governance/owner_approval_decision_record.md"
copy_if_present "00_repository_control/source_of_truth_register.md" "docs/governance/source_of_truth_register.md"
copy_if_present "00_repository_control/source_traceability_map.md" "docs/governance/source_traceability_map.md"

copy_if_present "02_product/landing_page_requirements_v0.1.md" "docs/product/landing_page_requirements_v0.1.md"
copy_if_present "02_product/marketing_branding_scope_v0.1.md" "docs/product/marketing_branding_scope_v0.1.md"

copy_if_present "06_privacy_legal_safety/private_beta_final_consent_notice.md" "docs/privacy_safety/private_beta_final_consent_notice.md"
copy_if_present "06_privacy_legal_safety/private_beta_consent_requirements.md" "docs/privacy_safety/private_beta_consent_requirements.md"
copy_if_present "06_privacy_legal_safety/privacy_consent_data_governance.md" "docs/privacy_safety/privacy_consent_data_governance.md"
copy_if_present "06_privacy_legal_safety/private_beta_data_deletion_workflow.md" "docs/privacy_safety/private_beta_data_deletion_workflow.md"
copy_if_present "06_privacy_legal_safety/private_beta_withdrawal_export_access_workflow.md" "docs/privacy_safety/private_beta_withdrawal_export_access_workflow.md"
copy_if_present "06_privacy_legal_safety/private_beta_safety_logging_policy.md" "docs/privacy_safety/private_beta_safety_logging_policy.md"
copy_if_present "06_privacy_legal_safety/ai_provider_due_diligence_checklist.md" "docs/privacy_safety/ai_provider_due_diligence_checklist.md"

copy_if_present "07_architecture_api/private_beta_environment_requirements.md" "docs/architecture/private_beta_environment_requirements.md"
copy_if_present "06_privacy_legal_safety/security_threat_model.md" "docs/architecture/security_threat_model.md"
copy_if_present "05_ai_memory_data/retrieval_and_embedding_rules.md" "docs/architecture/retrieval_and_embedding_rules.md"

copy_if_present "10_operations_testing_accessibility/private_beta_execution_pack.md" "docs/beta_ops/private_beta_execution_pack.md"
copy_if_present "10_operations_testing_accessibility/private_beta_participant_tracker.md" "docs/beta_ops/private_beta_participant_tracker.md"
copy_if_present "10_operations_testing_accessibility/private_beta_test_script.md" "docs/testing/private_beta_test_script.md"
copy_if_present "10_operations_testing_accessibility/private_beta_feedback_form.md" "docs/testing/private_beta_feedback_form.md"
copy_if_present "10_operations_testing_accessibility/private_beta_issue_log.md" "docs/testing/private_beta_issue_log.md"
copy_if_present "10_operations_testing_accessibility/private_beta_stop_criteria_checklist.md" "docs/testing/private_beta_stop_criteria_checklist.md"

copy_if_present "08_operations_testing_accessibility/support_operations_stage_plan.md" "docs/support/support_operations_stage_plan.md"
copy_if_present "08_operations_testing_accessibility/incident_response_plan.md" "docs/support/incident_response_plan.md"
copy_if_present "08_operations_testing_accessibility/release_readiness_checklist.md" "docs/testing/release_readiness_checklist.md"
```

## 9. Next Step

After owner review, run the copy command from the docs repo root, then commit the copied docs in the build repo.

## 10. Recommended Commit Message

```text
docs: add private beta build export manifest
```
