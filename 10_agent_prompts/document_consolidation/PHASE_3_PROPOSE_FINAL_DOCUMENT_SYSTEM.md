# PHASE 3 — Proposed Final Clean Document System

You are working in repository:

gasekerci1/docs

Local working directory:

~/Documents/github/docs

Before starting:
Read:
- docs/00_repository_control/file_inventory.md
- docs/00_repository_control/duplicate_file_map.md
- docs/00_repository_control/contradiction_register.md
- docs/00_repository_control/gap_register.md

Important rules:
- Do NOT write app code.
- Do NOT approve MVP build.
- Do NOT claim production readiness.
- Do NOT delete files.
- Do NOT move files.
- Do NOT archive files yet.
- Do NOT rewrite final canonical documents yet.
- This phase proposes structure only.

Task:
Create:

docs/00_repository_control/proposed_final_document_set.md
docs/00_repository_control/canonical_document_map.md
docs/00_repository_control/archive_plan.md

Use this target final structure unless there is a clearly better structure:

docs/
  00_repository_control/
    file_inventory.md
    duplicate_file_map.md
    contradiction_register.md
    gap_register.md
    approval_packet.md
    canonical_document_map.md
    archive_plan.md

  01_owner_decisions/
    owner_decision_register.md
    approved_scope_boundaries.md
    unresolved_decisions.md

  02_product/
    product_brief.md
    product_requirements.md
    prototype_scope.md
    mvp_scope.md
    non_goals.md
    terminology_and_naming.md

  03_research_validation/
    research_summary.md
    market_validation.md
    user_research_plan.md
    validation_round_1_pack.md
    evidence_and_assumption_register.md

  04_curriculum_question_system/
    curriculum_model.md
    onboarding_modules.md
    question_bank.md
    behaviour_change_model.md
    motivation_needs_desire_avoidance_model.md

  05_ai_memory_data/
    ai_interpretation_policy.md
    memory_model.md
    canonical_data_model.md
    ai_evaluation_harness.md
    retrieval_and_embedding_rules.md

  06_privacy_legal_safety/
    safety_boundaries.md
    crisis_localisation_policy.md
    privacy_consent_data_governance.md
    legal_claims_policy.md
    security_threat_model.md

  07_architecture_api/
    non_functional_requirements.md
    conceptual_architecture.md
    api_contracts.md
    technical_architecture_decision_record.md

  08_operations_testing_accessibility/
    operations_support_playbook.md
    analytics_event_taxonomy.md
    testing_strategy.md
    accessibility_qa_plan.md
    release_readiness_checklist.md

  09_brand_experience/
    brand_kit.md
    tone_and_language_guide.md
    product_experience_recommendations.md

  10_agent_prompts/
    README.md
    agent_execution_order.md
    agent_readiness_checklist.md
    specialist_agent_prompts.md

  99_archive/
    README.md
    originals/
    duplicates/
    superseded/
    old_reviews/

For each final document, specify:
1. Document purpose.
2. Source files to merge.
3. Claims that need approval.
4. Contradictions resolved.
5. Remaining assumptions.
6. Recommended status:
   - draft
   - owner review required
   - approved
   - archived
   - superseded

canonical_document_map.md must map:
- final canonical document path
- source files used
- source files superseded
- approval required
- unresolved issues

archive_plan.md must map:
- file/folder to archive
- destination under docs/99_archive/
- reason
- risk
- owner approval required

At the end:
- Summarise files created.
- Summarise recommended final document structure.
- Summarise archive plan.
- List owner decisions needed.
- Stop.
