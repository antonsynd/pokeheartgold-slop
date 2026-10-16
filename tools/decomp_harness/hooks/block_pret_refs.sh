#!/usr/bin/env bash
# PreToolUse hook: see block_pret_refs.py (issue #36).
exec python3 "$(dirname "$0")/block_pret_refs.py"
