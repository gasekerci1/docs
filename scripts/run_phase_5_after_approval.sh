#!/usr/bin/env bash
set -euo pipefail

cd "$HOME/Documents/github/docs"

if ! command -v codex >/dev/null 2>&1; then
  echo "Codex CLI is not installed."
  echo "Run: npm install -g @openai/codex"
  exit 1
fi

echo ""
echo "============================================================"
echo "WARNING: PHASE 5 rewrites final canonical documents."
echo "Only run this after you have reviewed and approved:"
echo "docs/00_repository_control/approval_packet.md"
echo "============================================================"
echo ""

read -r -p "Type APPROVED to continue: " approval

if [[ "$approval" != "APPROVED" ]]; then
  echo "Stopped. Phase 5 was not run."
  exit 1
fi

codex "$(cat docs/10_agent_prompts/document_consolidation/PHASE_5_FINAL_CANONICAL_DOCS_AFTER_APPROVAL.md)"

git status --short
git add -A

if git diff --cached --quiet; then
  echo "No staged changes for Phase 5."
else
  git commit -m "Create approved canonical planning documents"
  git push
fi

echo ""
echo "Phase 5 complete."
