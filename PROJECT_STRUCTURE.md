# Project Structure

> **Historical evidence only.** This document may contain old MVP, build, production, launch, final, release, hardening, or readiness wording. It does not approve current public MVP, public build, production readiness, public launch, commercial release, legal compliance, privacy compliance, security readiness, accessibility compliance, or WCAG compliance. Current controlling status is limited trusted private beta only unless a later owner-approved decision record says otherwise.

This repository contains a small Next.js personal-alpha application plus a larger documentation corpus.

## Application

- `app/` - Next.js App Router pages, layout, global styles, and API routes.
- `app/api/` - Server routes for AI, memory lifecycle, export/delete, and authenticated user checks.
- `components/` - Client-facing React components.
- `lib/` - Shared TypeScript helpers for Supabase, OpenAI, auth, seed data, API utilities, and domain types.
- `supabase/migrations/` - SQL migrations required to provision the alpha database.

## Configuration

- `package.json` - npm scripts and pinned dependencies.
- `package-lock.json` - locked dependency tree for reproducible installs.
- `next.config.ts` - Next.js runtime configuration.
- `tsconfig.json` - TypeScript compiler configuration.
- `eslint.config.mjs` - ESLint flat config for Next.js and TypeScript.
- `.prettierrc.json` and `.prettierignore` - formatting defaults and generated-file exclusions.
- `.env.example` - committed environment variable template. Local values belong in `.env.local`.

## Documentation

- `docs/00_inbox/` - incoming or uncategorized source documents.
- `docs/01-source-documents/` - preserved source/original materials.
- `docs/01_product/` - product requirements, UX, and language documents.
- `docs/02_research_and_validation/` - research and validation documents.
- `docs/03_curriculum_and_questions/` - curriculum and question-bank documents.
- `docs/04_ai_memory_and_data/` - memory, data model, and AI evaluation documents.
- `docs/05_privacy_legal_safety/` - privacy, legal, safety, and threat-model documents.
- `docs/06_architecture_and_api/` - architecture, API, and non-functional requirements documents.
- `docs/07_analysis/` - review packets, decision records, and readiness analysis.
- `docs/08_final_outputs/` - final readiness and integration outputs.
- `docs/09_agent_prompts/` - agent prompts and prompt execution metadata.
- `docs/10_operations_testing_accessibility/` - testing, operations, analytics, and accessibility documents.

## Hygiene Notes

- `node_modules/`, `.next/`, `out/`, coverage, caches, local env files, and editor junk are ignored.
- Several document files are intentionally duplicated across inbox, originals, and categorized folders. Do not remove those without a separate documentation-retention decision.
- Empty documentation folders exist in the legacy dash-named tree. Treat them as candidates for archival cleanup after confirming the intended docs taxonomy.
