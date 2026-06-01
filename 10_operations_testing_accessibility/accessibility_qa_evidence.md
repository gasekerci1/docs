# Accessibility QA Evidence

Current status: approved accessibility QA evidence record for reviewed BecomingOS prototype flows only.

This document records accessibility QA evidence for prototype review scope. It does not approve private beta start, public MVP build, production readiness, public launch, implementation work, legal/privacy/security/accessibility/regulatory compliance claims, or a claim that BecomingOS conforms to WCAG. Any later beta, public MVP, or production release requires separate stage-specific evidence and owner approval.

## Scope

Reviewed prototype flows:

- Consent and onboarding comprehension.
- Reflection and planning task entry.
- AI-drafted summary/recommendation review.
- Memory candidate confirm, edit, reject, and skip controls.
- Today Directive planning.
- Bad Day Mode.
- Life Capture input.
- Optional Support Circle permission language.
- Deletion, access/export, correction, and withdrawal request copy.
- Crisis and emergency boundary copy.

Out of scope:

- Production application code.
- Public MVP implementation.
- Native mobile builds.
- Authentication, payment, or account recovery flows.
- Live AI provider calls.
- Live analytics tooling.
- Live user data collection.
- Formal third-party accessibility audit.
- Legal or regulatory accessibility compliance certification.

## Reference Baseline

The review used WCAG 2.2 AA as the planning baseline for applicable prototype flows, supplemented by cognitive accessibility and emotional-safety checks suitable for a non-clinical reflection and planning product.

This baseline was used as a QA lens only. It does not create a claim of WCAG conformance or public accessibility compliance.

## Methodology

The accessibility QA review used the following methods:

- Keyboard navigation review for visible controls and expected focus order.
- Screen-reader-oriented content review for headings, labels, instructions, and error recovery language.
- Color, contrast, and visual hierarchy review at the prototype level.
- Cognitive-load review for dense or emotionally sensitive flows.
- Plain-language review for consent, AI-draft, memory, withdrawal, and crisis-boundary copy.
- Review of optional data-category language to confirm participants can understand and decline optional categories where practical.
- Review of non-clinical, non-emergency, and professional-help boundary warnings.
- Review of confirmation, edit, reject, skip, pause, and withdrawal affordances.

No automated scan, third-party audit, or production assistive-technology test run is claimed by this evidence record unless separately documented.

## Findings

| Area | Finding | Severity | Status |
|---|---|---|---|
| Consent and data categories | Participant-facing consent copy describes optionality and the right to decline optional categories. | Medium | Pass with monitoring |
| AI draft review | AI outputs are described as drafts requiring user review, edit, reject, or confirmation. | High | Pass |
| Memory confirmation | Durable memory requires explicit confirmation and rejected/unconfirmed items are excluded from memory use. | High | Pass |
| Deletion and withdrawal | Request pathways for deletion, access/export, correction, and withdrawal are documented in the consent notice and data workflows. | High | Pass with owner review |
| Crisis boundary | The prototype copy states BecomingOS is not an emergency service and does not monitor users in real time. | High | Pass |
| Cognitive load | Some flows combine consent, sensitive data, AI processing, and memory concepts; staged disclosure and plain-language summaries remain important for later implementation. | Medium | Remediation tracked |
| Keyboard and focus expectations | Prototype controls require implementation-level validation for focus order, visible focus, modal handling, and skip/pause controls. | Medium | Remediation tracked |
| Screen-reader expectations | Headings, labels, checkbox language, table semantics, and status messages require implementation-level verification. | Medium | Remediation tracked |
| Visual contrast | Prototype-level contrast intent appears reviewable, but production contrast measurements must be run against implemented UI. | Medium | Remediation tracked |
| Media inputs | Documents, photos, audio, and video are sensitive optional categories and require clear provider/storage/deletion explanation before live use. | High | Remediation tracked |
| Support Circle permissions | Support Circle language remains optional and should not imply automatic crisis response or alerting. | High | Pass with monitoring |

## Remediation Steps

Before private beta or any public MVP/build approval, owners should ensure:

- Implemented flows receive keyboard-only testing for every interactive control.
- Implemented flows receive screen-reader testing for headings, labels, form controls, status messages, tables, and error states.
- Visible focus states are checked in all supported browsers and viewports.
- Contrast measurements are run on implemented colors, including disabled, error, warning, and success states.
- Consent and AI-provider disclosures are reviewed with participants for comprehension.
- Sensitive optional data flows include clear skip, decline, edit, delete, and withdrawal paths.
- Bad Day Mode and crisis-boundary copy remain non-clinical and do not imply monitoring, diagnosis, treatment, or emergency response.
- Support Circle flows require prior explicit consent and clear rules before any contact sharing or alerts.
- Accessibility issues are triaged with severity, owner, target resolution date, and retest evidence.

## Evidence Limitations

This evidence supports documentation and prototype-flow readiness decisions only.

It does not prove that an implemented application:

- Meets WCAG 2.2 AA.
- Meets any legal or regulatory accessibility obligation.
- Is ready for public MVP/build.
- Is ready for production.
- Has been tested with real participants using assistive technology.
- Has completed a third-party accessibility audit.

## Owner Approval

- [x] Accessibility/testing owner approved this evidence record.
- [x] Product owner approved this evidence record for prototype-flow planning.
- [x] Safety owner approved the non-clinical and crisis-boundary treatment in this evidence record.
- [x] Privacy/legal owner approved this evidence record as documentation evidence only, without legal or regulatory compliance claims.

Owner notes:

Approved on 2026-06-01 for prototype-flow accessibility QA evidence only. This approval does not approve private beta start, public MVP build, production readiness, public launch, implementation work, or accessibility compliance claims.
