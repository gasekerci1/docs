#!/usr/bin/env bash
set -euo pipefail

cd "$HOME/Documents/github/docs"

if ! command -v codex >/dev/null 2>&1; then
  echo "Codex CLI is not installed."
  echo "Run: npm install -g @openai/codex"
  exit 1
fi

run_phase() {
  local phase_name="$1"
  local prompt_file="$2"
  local commit_message="$3"

  echo ""
  echo "============================================================"
  echo "RUNNING: $phase_name"
  echo "PROMPT: $prompt_file"
  echo "============================================================"
  echo ""

  codex "$(cat "$prompt_file")"

  echo ""
  echo "============================================================"
  echo "GIT STATUS AFTER: $phase_name"
  echo "============================================================"
  git status --short

  echo ""
  echo "Adding changes..."
  git add -A

  if git diff --cached --quiet; then
    echo "No staged changes for $phase_name"
  else
    git commit -m "$commit_message"
    git push
  fi

  echo ""
  echo "Completed: $phase_name"
}

run_phase \
  "PHASE 1 — Inventory and duplicates" \
  "docs/10_agent_prompts/document_consolidation/PHASE_1_INVENTORY_AND_DUPLICATES.md" \
  "Audit documentation inventory and duplicates"

run_phase \
  "PHASE 2 — Contradictions and gaps" \
  "docs/10_agent_prompts/document_consolidation/PHASE_2_CONTRADICTIONS_AND_GAPS.md" \
  "Add contradiction and gap registers"

run_phase \
  "PHASE 3 — Proposed final document system" \
  "docs/10_agent_prompts/document_consolidation/PHASE_3_PROPOSE_FINAL_DOCUMENT_SYSTEM.md" \
  "Propose canonical documentation structure"

run_phase \
  "PHASE 4 — Owner approval packet" \
  "docs/10_agent_prompts/document_consolidation/PHASE_4_OWNER_APPROVAL_PACKET.md" \
  "Add owner approval packet"

echo ""
echo "============================================================"
echo "STOPPING BEFORE PHASE 5"
echo "============================================================"
echo ""
echo "Review this file before final rewriting:"
echo "docs/00_repository_control/approval_packet.md"
echo ""
echo "If you approve, run:"
echo "scripts/run_phase_5_after_approval.sh"
echo ""
