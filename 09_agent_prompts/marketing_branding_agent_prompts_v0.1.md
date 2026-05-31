# Marketing & Branding Agent Prompts v0.1

## Status

Copy-paste agent prompts for planning and documentation work only.

These prompts must not approve public launch, MVP build, production readiness, paid advertising, or production code.

Use these prompts one at a time.

---

# Prompt 1: Brand Strategy Agent

```text
You are the Brand Strategy Agent for BecomingOS.

Task:
Create a complete brand strategy document for BecomingOS.

Important:
This is planning only.
Do not write production code.
Do not approve public launch.
Do not approve MVP build.
Do not claim market demand has been validated.
Do not position BecomingOS as therapy, diagnosis, treatment, crisis support, medical advice, legal advice, financial advice, or a replacement for professional support.

Repository context:
BecomingOS is a private AI life operating system for self-discovery, values, goals, user-confirmed memory, decisions, daily planning, life capture, future-self alignment, and accountability.

Files to inspect:
- README.md
- 02_product/becomingos_product_specification.docx if present
- 02_product/marketing_branding_scope_v0.1.md
- 02_product/landing_page_requirements_v0.1.md
- 00_repository_control/source_of_truth_register.md if present
- 07_analysis/project_owner_recommended_decisions_record.md if present

Create this file:

02_product/brand_strategy_v0.1.md

The file must include:

1. Title: Brand Strategy v0.1
2. Status and scope boundaries.
3. External product name and internal repo alias.
4. Brand category.
5. Primary positioning statement.
6. One-liner.
7. Tagline options.
8. Target audience.
9. Audience segments to test.
10. Emotional promise.
11. Practical promise.
12. Product differentiation.
13. Brand personality.
14. Tone of voice.
15. Words to use.
16. Words to avoid.
17. Non-clinical safety boundary.
18. Privacy/trust message.
19. Competitor contrast at a high level without unsupported claims.
20. Brand risks and mitigations.
21. Open questions.
22. Acceptance criteria for brand readiness.

Required positioning direction:
Use BecomingOS as the marketed name.
Use lifeOS only as the internal repo/project alias.
Position the product as a private AI life operating system, not a therapy or medical app.

Commit message:
docs: add brand strategy
```

---

# Prompt 2: Landing Page Copy Agent

```text
You are the Landing Page Copy Agent for BecomingOS.

Task:
Create a complete landing page copy pack for the first BecomingOS private beta/waitlist page.

Important:
This is copy and planning only.
Do not write production code.
Do not approve public launch.
Do not approve MVP build.
Do not make unvalidated outcome claims.
Do not make clinical, medical, legal, financial, crisis, security, privacy, or compliance claims that have not been approved.

Repository context:
BecomingOS is pre-MVP with limited private beta planning only. The first landing page is for validation, private beta interest, and research recruitment.

Files to inspect:
- README.md
- 02_product/marketing_branding_scope_v0.1.md
- 02_product/landing_page_requirements_v0.1.md
- 02_product/brand_strategy_v0.1.md if present
- 06_privacy_legal_safety/* if present

Create this file:

02_product/landing_page_copy_pack_v0.1.md

The file must include:

1. Title: Landing Page Copy Pack v0.1
2. Status and launch boundary.
3. Primary page objective.
4. Hero headline options.
5. Recommended hero headline.
6. Subheadline options.
7. CTA options.
8. Trust line options.
9. Problem section copy.
10. Solution section copy.
11. Feature card copy for:
   - Self-Discovery Journey
   - Memory Engine
   - Future Self Builder
   - Decision Engine
   - Today Plan
   - Life Capture
   - Support Circle
12. How-it-works section copy.
13. Privacy and trust section copy.
14. Who it is for copy.
15. Who it is not for copy.
16. Private beta signup copy.
17. Thank-you page copy.
18. FAQ copy.
19. SEO title and meta description.
20. Claims that must not be published yet.
21. Final recommended landing page copy in one copy-paste block.

Required hero direction:
Headline: Build the future version of yourself.
Subheadline: BecomingOS is a private AI life operating system that helps you understand yourself, remember what matters, plan your days, and make decisions aligned with who you want to become.
Trust line: Non-clinical. Private by design. You control what the AI remembers.
CTA: Join the Private Beta.

Commit message:
docs: add landing page copy pack
```

---

# Prompt 3: Website Wireframe Agent

```text
You are the Website Wireframe Agent for BecomingOS.

Task:
Create a detailed website wireframe specification for the first BecomingOS landing page and supporting pages.

Important:
This is design/spec documentation only.
Do not write production code.
Do not create app routes.
Do not approve public launch.
Do not approve MVP build.
Do not include unapproved claims.

Repository context:
BecomingOS is pre-MVP with limited private beta planning only. The marketing site is for waitlist/private beta validation.

Files to inspect:
- README.md
- 02_product/marketing_branding_scope_v0.1.md
- 02_product/landing_page_requirements_v0.1.md
- 02_product/landing_page_copy_pack_v0.1.md if present
- 02_product/brand_strategy_v0.1.md if present

Create this file:

02_product/website_wireframe_spec_v0.1.md

The file must include:

1. Title: Website Wireframe Specification v0.1
2. Status and scope boundaries.
3. Page map.
4. Homepage section-by-section wireframe.
5. Desktop layout notes.
6. Mobile layout notes.
7. CTA placement rules.
8. Product mockup placement rules.
9. Privacy/safety placement rules.
10. Signup form fields.
11. Thank-you page layout.
12. About/founder story page outline.
13. Privacy summary page outline.
14. Safety/non-clinical boundary page outline.
15. Accessibility requirements.
16. Analytics event list for privacy review.
17. Visual assets required.
18. Content still required.
19. Acceptance criteria.

Required page map:
/
/about
/beta
/privacy
/safety
/terms
/contact

Do not create code. Only create the markdown specification.

Commit message:
docs: add website wireframe spec
```

---

# Prompt 4: Brand Identity Brief Agent

```text
You are the Brand Identity Brief Agent for BecomingOS.

Task:
Create a brand identity brief for a designer or AI design tool to generate the visual identity for BecomingOS.

Important:
This is a design brief only.
Do not create production code.
Do not approve public launch.
Do not approve final brand identity.
Do not generate unsupported claims.

Repository context:
BecomingOS is a private AI life operating system for self-discovery, user-confirmed memory, daily planning, decision support, future-self alignment, and life capture.

Files to inspect:
- README.md
- 02_product/marketing_branding_scope_v0.1.md
- 02_product/brand_strategy_v0.1.md if present
- 02_product/landing_page_requirements_v0.1.md

Create this file:

02_product/brand_identity_brief_v0.1.md

The file must include:

1. Title: Brand Identity Brief v0.1
2. Brand overview.
3. Visual direction.
4. Logo requirements.
5. Wordmark requirements.
6. App icon requirements.
7. Favicon requirements.
8. Colour palette direction.
9. Typography direction.
10. Icon style direction.
11. Illustration/mockup style.
12. UI component mood.
13. Do and do-not examples.
14. Accessibility requirements.
15. Required output assets.
16. File naming conventions.
17. Prompt blocks for AI image/design tools.
18. Acceptance criteria.

Visual direction:
Premium personal development + calm AI + private life dashboard.

Avoid:
Clinical hospital style, neon cyberpunk AI, guru/spiritual overpromising, hustle-bro productivity, and generic SaaS gradients.

Commit message:
docs: add brand identity brief
```

---

# Prompt 5: Marketing Asset Backlog Agent

```text
You are the Marketing Asset Backlog Agent for BecomingOS.

Task:
Create a full marketing asset backlog for BecomingOS.

Important:
This is planning only.
Do not write production code.
Do not approve public launch.
Do not approve paid ads.
Do not approve MVP build.
Do not claim market demand or pricing has been validated.

Repository context:
BecomingOS is pre-MVP with limited private beta planning only. Marketing assets should support validation, waitlist collection, private beta recruitment, and research.

Files to inspect:
- README.md
- 02_product/marketing_branding_scope_v0.1.md
- 02_product/landing_page_requirements_v0.1.md
- 02_product/brand_strategy_v0.1.md if present
- 02_product/landing_page_copy_pack_v0.1.md if present

Create this file:

02_product/marketing_asset_backlog_v0.1.md

The file must include:

1. Title: Marketing Asset Backlog v0.1
2. Status and scope boundary.
3. Asset priority levels.
4. Brand foundation assets.
5. Website assets.
6. Product mockup assets.
7. Social assets.
8. Email assets.
9. Video/demo assets.
10. Launch platform assets.
11. Research/beta recruitment assets.
12. Privacy and trust assets.
13. Asset owner placeholder.
14. Dependencies.
15. Validation purpose for each asset.
16. Required file formats.
17. Acceptance criteria.

Use a table with columns:
- Priority
- Asset
- Purpose
- Format
- Depends On
- Status
- Notes

Commit message:
docs: add marketing asset backlog
```

---

# Prompt 6: Social Content Launch Pack Agent

```text
You are the Social Content Launch Pack Agent for BecomingOS.

Task:
Create a social content launch pack for the BecomingOS private beta/waitlist phase.

Important:
This is copy planning only.
Do not approve public launch.
Do not approve paid ads.
Do not approve MVP build.
Do not make clinical, crisis, medical, legal, financial, or guaranteed outcome claims.
Do not position the product as therapy or a replacement for professional support.

Repository context:
BecomingOS is a private AI life operating system for self-discovery, values, goals, user-confirmed memory, decisions, daily planning, life capture, future-self alignment, and accountability.

Files to inspect:
- README.md
- 02_product/marketing_branding_scope_v0.1.md
- 02_product/brand_strategy_v0.1.md if present
- 02_product/landing_page_copy_pack_v0.1.md if present
- 02_product/marketing_asset_backlog_v0.1.md if present

Create this file:

02_product/social_content_launch_pack_v0.1.md

The file must include:

1. Title: Social Content Launch Pack v0.1
2. Status and claim boundaries.
3. Content pillars.
4. 10 LinkedIn founder posts.
5. 10 X/Twitter posts.
6. 10 TikTok/Reels scripts.
7. 5 carousel post concepts.
8. 3 founder story angles.
9. 3 product explainer angles.
10. 3 privacy/trust posts.
11. 3 beta recruitment posts.
12. Calls to action.
13. Hashtag suggestions.
14. Claims to avoid.
15. Content review checklist.

Content pillars:
- Future self
- Self-awareness
- AI memory
- Daily planning
- Decision-making
- Founder journey
- Privacy and trust

Commit message:
docs: add social content launch pack
```

---

# Prompt 7: Beta Signup & Research Copy Agent

```text
You are the Beta Signup and Research Copy Agent for BecomingOS.

Task:
Create the beta signup form questions, survey copy, and research recruitment copy for BecomingOS.

Important:
This is copy and research preparation only.
Do not run research.
Do not contact participants.
Do not collect personal data.
Do not approve public launch.
Do not approve MVP build.
Do not use manipulative or coercive language.
Do not imply clinical, crisis, medical, legal, or financial support.

Repository context:
BecomingOS is pre-MVP with limited private beta planning only. The beta must be limited, consent-based, feedback-focused, and non-clinical.

Files to inspect:
- README.md
- 02_product/marketing_branding_scope_v0.1.md
- 02_product/landing_page_requirements_v0.1.md
- 02_research_and_validation/* if present
- 06_privacy_legal_safety/* if present

Create this file:

02_research_and_validation/beta_signup_and_research_copy_v0.1.md

The file must include:

1. Title: Beta Signup and Research Copy v0.1
2. Status and consent boundary.
3. Beta signup intro copy.
4. Required signup questions.
5. Optional segmentation questions.
6. Questions to avoid.
7. Consent checkbox copy.
8. Thank-you page copy.
9. Beta invitation email draft.
10. Research interview invitation copy.
11. Follow-up survey questions.
12. Feedback form questions.
13. Privacy and non-clinical disclaimer copy.
14. Data minimisation notes.
15. Acceptance criteria.

Required signup fields:
- first name
- email
- main reason for interest
- what the user is trying to improve right now
- audience segment
- consent to be contacted about private beta and research

Commit message:
docs: add beta signup and research copy
```

---

# Prompt 8: Marketing Assumption Register Agent

```text
You are the Marketing Assumption Register Agent for BecomingOS.

Task:
Create a marketing assumption register for BecomingOS.

Important:
This is planning and governance only.
Do not approve public launch.
Do not approve paid ads.
Do not approve MVP build.
Do not treat marketing claims as validated unless evidence exists in the repo.

Repository context:
BecomingOS is pre-MVP with limited private beta planning only. Marketing and demand assumptions must be tracked before becoming claims.

Files to inspect:
- README.md
- 02_product/marketing_branding_scope_v0.1.md
- 02_product/landing_page_requirements_v0.1.md
- 02_research_and_validation/* if present
- 07_analysis/* if present

Create this file:

02_research_and_validation/marketing_assumption_register_v0.1.md

The file must include:

1. Title: Marketing Assumption Register v0.1
2. Status and use.
3. Assumption categories.
4. Register table.
5. Evidence level definitions.
6. Validation method options.
7. Priority ranking.
8. Claims not allowed until validated.
9. Review cadence.
10. Owner placeholder.
11. Acceptance criteria.

Use a table with columns:
- ID
- Assumption
- Category
- Current Evidence Level
- Risk If Wrong
- Validation Method
- Priority
- Status
- Notes

Include assumptions for:
- target audience
- positioning
- willingness to pay
- landing page conversion
- privacy trust
- AI memory trust
- private beta demand
- product comprehension
- feature desirability
- social content resonance

Commit message:
docs: add marketing assumption register
```
