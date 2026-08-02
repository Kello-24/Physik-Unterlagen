#!/bin/bash
# .claude/hooks/compile-on-save.sh
#
# PostToolUse hook: after Claude Code edits or writes a .tex file, auto-compile it
# so compile errors surface immediately instead of waiting for /compile.
#
# NOTE: Claude Code passes hook input as JSON on stdin. The exact field names
# (tool_input.file_path vs tool_input.path, etc.) can vary slightly by version —
# if this doesn't fire correctly, run `claude --debug` on a test edit and check
# what the actual JSON payload looks like, then adjust the jq filter below.
# This is a best-effort starting point, not verified against your exact version.

input=$(cat)
file_path=$(echo "$input" | jq -r '.tool_input.file_path // .tool_input.path // empty' 2>/dev/null)

if [[ -z "$file_path" || "$file_path" != *.tex ]]; then
  exit 0
fi

dir=$(dirname "$file_path")
base=$(basename "$file_path")

cd "$dir" || exit 0
pdflatex -interaction=nonstopmode -halt-on-error "$base" > /tmp/claude-tex-compile.log 2>&1
status=$?

if [[ $status -ne 0 ]]; then
  echo "⚠️  pdflatex failed compiling $base (exit $status) — see /tmp/claude-tex-compile.log" >&2
fi

exit 0
