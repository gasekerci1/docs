# PHASE 1 — Repository Inventory and Duplicate Audit

You are working in repository:

gasekerci1/docs

Local working directory:

~/Documents/github/docs

This is a documentation-only planning repository for BecomingOS / lifeOS.

Important rules:
- Do NOT write app code.
- Do NOT create frontend, backend, database, API, auth, Vercel, Supabase, OpenAI, or implementation code.
- Do NOT approve MVP build.
- Do NOT claim production readiness.
- Do NOT delete files.
- Do NOT move files.
- Do NOT archive files yet.
- Do NOT rewrite final canonical documents yet.
- Do NOT silently remove information.
- Do NOT invent evidence.

Task:
Inspect every file in the repository.

Create these files:

docs/00_repository_control/file_inventory.md
docs/00_repository_control/duplicate_file_map.md

file_inventory.md must include:
1. Every file path.
2. File type.
3. Short purpose summary.
4. Whether it is:
   - original source
   - duplicate
   - canonical candidate
   - outdated
   - supporting evidence
   - agent prompt
   - review document
   - final output
   - archive candidate
5. Recommended action:
   - retain
   - merge
   - archive later
   - rewrite later
   - delete later
6. Notes on duplicate or overlapping files.

duplicate_file_map.md must include:
1. Exact duplicates.
2. Near duplicates.
3. Same-topic duplicates.
4. Duplicate folder structures.
5. Which file should become canonical.
6. Which files should be archived later.
7. Why.

Special attention:
- This repo may contain duplicate top-level folders and nested docs/ folders.
- Identify duplicated folder structures.
- Do not remove them yet.

At the end:
- Summarise files created.
- Summarise key duplicate groups.
- Summarise risks.
- List owner decisions needed.
- Stop.
