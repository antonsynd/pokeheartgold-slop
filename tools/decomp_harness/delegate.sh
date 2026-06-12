#!/usr/bin/env bash
# Delegate a prompt to a local Ollama model and print its response.
# The orchestrating Claude session prepares the context (asm, signatures from
# knowledge.json, relevant patterns), calls this, and treats the output as an
# UNTRUSTED DRAFT to be verified by build + objdiff. See DELEGATION.md.
#
# Usage:
#   tools/decomp_harness/delegate.sh [-m model] [-s system_prompt] "prompt"
#   ... | tools/decomp_harness/delegate.sh [-m model] [-s system_prompt]   # prompt on stdin
#
# Env:
#   OLLAMA_URL      (default http://localhost:11434)
#   DELEGATE_MODEL  (default qwen3-coder:30b)

set -euo pipefail

OLLAMA_URL="${OLLAMA_URL:-http://localhost:11434}"
MODEL="${DELEGATE_MODEL:-qwen3-coder:30b}"
SYSTEM=""

while getopts "m:s:" opt; do
    case "$opt" in
        m) MODEL="$OPTARG" ;;
        s) SYSTEM="$OPTARG" ;;
        *) echo "usage: delegate.sh [-m model] [-s system_prompt] [prompt]" >&2; exit 1 ;;
    esac
done
shift $((OPTIND - 1))

if [ $# -ge 1 ]; then
    PROMPT="$1"
else
    PROMPT="$(cat)"
fi
[ -z "$PROMPT" ] && { echo "delegate.sh: empty prompt" >&2; exit 1; }

export DELEGATE_PROMPT="$PROMPT" DELEGATE_SYSTEM="$SYSTEM" DELEGATE_MODEL_NAME="$MODEL"
payload=$(python3 -c "
import json, os
model = os.environ['DELEGATE_MODEL_NAME']
system = os.environ['DELEGATE_SYSTEM']
# qwen3 models use thinking mode by default; /no_think disables it so content is non-empty.
if model.startswith('qwen3') and not system.startswith('/no_think'):
    system = '/no_think ' + system if system else '/no_think'
msgs = []
if system:
    msgs.append({'role': 'system', 'content': system})
msgs.append({'role': 'user', 'content': os.environ['DELEGATE_PROMPT']})
print(json.dumps({'model': model, 'messages': msgs, 'stream': False}))
")

response=$(curl -s --max-time 600 "$OLLAMA_URL/api/chat" -d "$payload") || {
    echo "delegate.sh: cannot reach Ollama at $OLLAMA_URL (is 'ollama serve' running?)" >&2
    exit 1
}

printf '%s' "$response" | python3 -c "
import json, sys
d = json.load(sys.stdin)
if 'error' in d:
    sys.stderr.write('delegate.sh: ollama error: ' + d['error'] + '\n')
    sys.exit(1)
print(d['message']['content'])
"
