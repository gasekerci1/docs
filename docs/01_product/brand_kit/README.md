# LifeOS Brand Asset Kit

This folder documents the generated LifeOS brand asset package now installed in the app. The canonical brand direction remains `docs/01_product/lifeos_brand_kit.md`; this folder is the implementation reference for concrete files.

## Asset Inventory

All image assets live in `public/assets/brand/`.

- `logo-primary-light.png`
- `logo-primary-light.svg`
- `logo-primary-dark.png`
- `logo-primary-dark.svg`
- `submark-icon.png`
- `submark-icon.svg`
- `wordmark.png`
- `wordmark.svg`
- `app-icon.png`
- `app-icon.svg`
- `colour-palette.png`
- `typography.png`
- `iconography.png`
- `ui-elements.png`
- `app-screen-style.png`
- `brand-values.png`
- `brand-values.md`

Documentation copy:

- `docs/01_product/brand_kit/brand-values.md`

## Recommended Asset Usage

- Use `wordmark.svg` for desktop header, sidebar, and brand/marketing contexts.
- Use `submark-icon.svg` for compact app shell marks, small nav contexts, and favicon-like UI moments.
- Use `logo-primary-light.svg` on light backgrounds.
- Use `logo-primary-dark.svg` on dark backgrounds.
- Use `app-icon.png` or `app-icon.svg` for metadata, PWA, and app-icon contexts.
- Use PNG board files only for documentation previews, social previews, or places where SVG is not appropriate.

## Colour Palette

Primary:

- Deep Ink: `#17201B`
- Warm Bone: `#F7F3EA`
- Soft Sand: `#EFE6D8`
- Olive Black: `#26352B`
- Sage: `#8FA98B`
- Muted Gold: `#C5A45D`

Secondary:

- Mist Green: `#DCE8D8`
- Clay: `#B8795B`
- Dust Blue: `#A9B8C8`
- Soft Charcoal: `#4B554E`
- Line Sand: `#DDD1C0`

## Typography

- UI/body: Inter.
- Display/brand headings: Fraunces or Cormorant Garamond.
- Safe fallback: Inter everywhere.

The app currently uses CSS font-family fallbacks rather than adding new font dependencies.

## Iconography

Use `lucide-react`, which is already installed.

- Today: `Sun`
- Calendar: `CalendarDays`
- Ask AI: `Sparkles`
- Goals: `Target`
- My OS: `CircleUserRound` or `Network`
- Review: `BarChart3`
- Support: `HeartHandshake`
- Settings: `Settings`

## UI Usage Rules

- Warm Bone for app background.
- Soft Sand and Warm Bone for cards and panels.
- Deep Ink for primary text.
- Olive Black for primary buttons.
- Sage for calm active states.
- Muted Gold for restrained highlights or progress.
- Line Sand for borders.

Keep surfaces calm, structured, private, premium, warm, and practical. Avoid clinical dashboard styling, generic blue SaaS, cartoon graphics, motivational hype, and hustle-productivity language.

## Logo Usage Rules

- Prefer the OS Stack / layered system mark.
- Keep clear space around the mark.
- Use SVG assets in app UI where possible.
- Use PNG assets for app icons, generated previews, or image-only documentation.
- Do not distort, recolour casually, add shadows to the mark itself, or place it on noisy backgrounds.

## Do-Not-Use Rules

Do not position LifeOS as therapy, diagnosis, medical treatment, crisis support, legal advice, financial advice, mortgage advice, investment advice, or a replacement for professional help.

Avoid copy such as:

- “The AI knows.”
- “This is a diagnosis.”
- “Follow this treatment plan.”
- “Unlock your potential.”
- “Crush your goals.”

Use copy such as:

- “You stay in control.”
- “Suggested insight.”
- “Save this to My OS?”
- “Confirm, edit, or reject this suggestion.”
- “Review, adjust, continue.”

## Implementation Notes

- App logo rendering is centralized through `components/brand/LifeOSLogo.tsx`.
- The legacy `components/Logo.tsx` wrapper now uses the generated SVG submark.
- Global LifeOS CSS variables are defined in `app/globals.css`.
- Tailwind brand aliases are defined in `tailwind.config.ts`.
- Next metadata points to `/assets/brand/app-icon.png`.

## Favicon / PWA Notes

The app metadata uses `public/assets/brand/app-icon.png`. If a future deployment requires a physical `public/favicon.ico`, convert `app-icon.png` to ICO in a dedicated asset step. Do not hand-create a fake ICO file.
