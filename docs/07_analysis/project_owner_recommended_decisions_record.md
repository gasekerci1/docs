# Project Owner Recommended Decisions Record

## Current Status

The project owner agrees with the recommended decisions from the P0 review process. These decisions are planning and control decisions only.

Most P0 deliverables remain conditional and require follow-up changes, specialist owner sign-off, or both before they can be used as accepted gate evidence. User Research is signed off for pre-MVP research planning only, not as completed user evidence.

MVP build remains blocked. The Integration Agent has not issued a documented go/no-go decision.

## Decision Summary Table

| Area | Decision | Evidence use | Still blocked | Required next action |
|---|---|---|---|---|
| A. Master Orchestrator | Use `docs/07_analysis/work_plan_orchestration_map.md` as the controlling orchestration artifact for orchestration only. Use `docs/07_analysis/workflow_coordination_plan.docx` as source/draft input. Treat `docs/07_analysis/work_plan_creation.docx` as historical planning context unless later changed. | Conditional P0 orchestration-control evidence only. | Downstream P0 evidence gates. | Continue P0 owner reviews and update blockers. |
| B. User Research | Sign off the User Research Plan for pre-MVP research planning only. | Yes, for existence of a reviewed research plan only. | Completed research findings, target segment validation, desirability, trust, privacy comfort, problem/solution fit. | Confirm recruitment materials, screener, consent, support-resource wording, data handling, then run research and create synthesis. |
| C. PRD | Keep the PRD as a draft requirements document only. Prototype scope remains low-fidelity validation of Module 0 and Module 1, with Module 2 only if explicitly approved. | Conditional draft PRD evidence only. | Prototype-vs-MVP scope, research-dependent claims, implementation-flavored gate wording. | Product owner to revise or sign off after changes. |
| D. Privacy and Consent | Keep the Privacy and Consent Pack as a draft privacy design artifact only. | Conditional planning evidence only. | Age/minor scope, controller/vendor identity, AI provider retention, cross-border assumptions, crisis text handling, deletion/export/retention, prototype consent copy. | Privacy/legal owner to confirm assumptions and required changes. |
| E. Legal Claims | Use the Legal Claims Review Pack as legal-claims preparation only. Allowed positioning is educational, reflective, structured, user-controlled, and non-clinical. Prohibited positioning includes therapy, diagnosis, treatment, crisis support, medical advice, legal advice, financial advice, professional replacement, guaranteed outcomes, and high-impact decision-making. | Conditional legal-claims planning evidence only. | Final copy review, launch jurisdiction, crisis/AI boundary language, marketing/onboarding/app store/research/support copy. | Legal owner to review final copy and sign off. |
| F. Non-Functional Requirements | Keep the NFR document as a draft quality-bar artifact. Classify NFRs by stage: P0 planning input, prototype validation check, MVP candidate gate, closed beta gate, production gate, later/out of scope. | Conditional quality-bar planning evidence only. | Stage-specific classification, product/platform/scale assumptions, implementation-language criteria, accessibility timing, dependency alignment. | Engineering/product owner to classify and reconcile NFRs. |
| G. Canonical Data Model | Keep the Canonical Data Model as conceptual planning only. | Conditional conceptual data-planning evidence only. | P0/prototype/MVP/later entity scope, memory lifecycle, deletion rules, rejected-memory exclusion, archived/deleted memory handling, embedding invalidation, exportability, crisis/safety data. | Data/privacy owner to confirm data scope and lifecycle rules. |
| H. AI Evaluation Harness | Keep the AI Evaluation Harness as draft safety and quality planning. | Conditional AI safety planning evidence only. | Threshold validation, confirm/edit/reject tests, context-minimisation tests, crisis-routing reconciliation, dataset governance. | AI safety owner to validate tests and thresholds. |
| I. Security Threat Model | Keep the Security Threat Model as pre-MVP security planning only. | Conditional security planning evidence only. | Architecture/vendor assumptions, residual-risk register, crisis/safety event handling, secure deletion proof, embedding invalidation proof, admin/support access controls. | Security owner to confirm assumptions and residual risks. |
| J. Crisis Localisation | Keep the Crisis Localisation Policy as crisis-boundary and localisation planning only. | Conditional crisis/safety planning evidence only. | Supported locales, crisis fallback copy, unsupported-locale fallback, resource ownership, raw crisis text handling, wording that avoids monitoring or emergency-support implication. | Safety/legal owner to verify locale/resource/copy/storage assumptions. |
| K. Accessibility QA | Keep the Accessibility QA Plan as an accessibility testing plan only. | Conditional accessibility planning evidence only. | WCAG scope, assistive-technology/browser/device matrix, test evidence format, severity/triage rules, release-blocking criteria. | Accessibility owner to confirm the test matrix and evidence format. |
| L. Prototype UX | Keep Prototype UX as a low-fidelity validation specification only. Prototype scope is Module 0 and Module 1 validation unless Design/Product owner explicitly includes Module 2. | Conditional prototype planning evidence only. | Prototype scope, research-evidence wording, privacy/consent copy, crisis fallback copy, accessibility scripts, curriculum mapping. | Design/product owner to revise or sign off before participant testing. |
| M. Curriculum and Question Bank | Keep Curriculum and Question Bank as a prototype curriculum planning artifact only. Use Module 0 and Module 1 for first validation by default. Treat Module 2 as draft unless Curriculum owner explicitly approves it. | Conditional curriculum planning evidence only. | Module 2 scope, line-level prompt safety, AI/memory confirmation rules, privacy copy, cognitive load, accessibility, legal/crisis/research alignment. | Curriculum owner to do line-level review and approve test content. |
| N. Market Validation | Keep Market Validation Report as P1 planning input only. | Conditional P1 planning evidence only. | No completed demand experiments, waitlist data, pricing evidence, or accepted go/no-go metrics. | Product/GTM owner to review report and run validation experiments later. |

## Explicit Decisions Not Made

These decisions were not made:

- No MVP build approval.
- No technical architecture approval.
- No backend/frontend/API/database/auth/CI/CD/deployment/monitoring/release approval.
- No beta approval.
- No production approval.
- No completed user research acceptance.
- No legal/privacy/security/safety compliance approval.
- No accessibility pass.
- No AI safety pass.
- No market demand validation.

## Register and Tracking Updates

The owner decision register should reflect this project-owner agreement for User Research, PRD, Privacy and Consent, Legal Claims Review, Non-Functional Requirements, Canonical Data Model, AI Evaluation Harness, Security Threat Model, Crisis Localisation, Accessibility QA, Prototype UX, Curriculum and Question Bank, and Market Validation.

The Master Orchestrator rows should continue to rely on `docs/07_analysis/product_lead_master_orchestrator_decision_record.md`, because that controlling-artifact decision was already recorded separately.

`docs/07_analysis/remaining_readiness_blockers.md` should continue to state that MVP build remains blocked, completed user research findings are still missing, most P0 deliverables remain conditional, and the Integration Agent has not issued a documented go/no-go decision.

`docs/09_agent_prompts/AGENT_OUTPUT_INDEX.md` should use cautious status wording that reflects planning-control decisions only and does not imply acceptance, build readiness, beta readiness, production readiness, or implementation readiness.

## Non-Build Rule

Do not start production implementation, backend, frontend, API, database, authentication, CI/CD, deployment, monitoring, or release work until P0 blockers are closed with evidence and the Integration Agent gives a documented go/no-go decision.
