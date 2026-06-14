# Model Delegation

The decomp loop has two distinct workloads: **judgment** (choosing C shapes
that match MWCC codegen, diagnosing byte diffs, IPA reasoning) and **bulk
drafting/checking** (first-pass C from asm, mechanical verification,
pre-analysis). The expensive frontier model (Fable/Opus) should do the first
and delegate the second. Two tiers are available:

## Tier 1: Sonnet via the Agent tool (built in, no setup)

Subagents accept a model override — either in the agent definition's
frontmatter (`model: sonnet`, as `decomp-verifier` does) or per-call via the
Agent tool's `model` parameter, which takes precedence.

| Workload | Agent | Model guidance |
|---|---|---|
| First-pass C draft (`/decomp-sonnet`) | `decomp-drafter` | `sonnet` (frontmatter default) |
| Post-match verification (checklist) | `decomp-verifier` | `sonnet` (frontmatter default) |
| Sweep pre-analysis (`/decomp-sweep`) | `asm-analyzer` | inherit (analysis quality drives later match rates); drop to `sonnet` for bulk waves over easy files |
| Anything mechanical with a structured output | any | `sonnet`, or `haiku` for pure lookups |

The orchestrator stays on the session model; only the spawned worker runs on
the cheaper tier.

### Sonnet drafter vs Qwen drafter

The `decomp-drafter` agent (Sonnet, Tier 1) and `delegate.sh` (Qwen, Tier 2)
serve the same role — first-pass C — but differ in capability and cost:

- **Sonnet** has tool access (Read/Grep/Glob): it reads the asm, inc, and
  headers itself, producing higher-quality drafts that need less orchestrator
  surgery. Use `/decomp-sonnet` or `/decomp-sonnet-loop`.
- **Qwen** is text-in/text-out: the orchestrator must assemble all context
  into a prompt file. Free (local), but drafts need more review. Use
  `/decomp-delegate` or `/decomp-delegate-loop`.

Both produce untrusted drafts; the orchestrator owns review, integration,
and the build-compare judgment loop in all cases.

## Tier 2: Local Ollama via `delegate.sh`

`tools/decomp_harness/delegate.sh` sends a prompt to a local Ollama server
and prints the response. Default model `qwen3-coder:30b`; override with
`-m <model>` or `DELEGATE_MODEL`. Server URL via `OLLAMA_URL` (default
`http://localhost:11434`).

```bash
# one-shot
tools/decomp_harness/delegate.sh -s "<system prompt>" "<prompt>"

# prompt from a file (the usual case: asm + context assembled by the orchestrator)
cat /tmp/draft_prompt.txt | tools/decomp_harness/delegate.sh
```

### The orchestration contract

Local-model output is an **untrusted draft**, never a result. The pattern:

1. **Orchestrator prepares a tight prompt**: the function's asm, the
   signature/struct hypotheses for it from `knowledge.json`, the relevant
   entries from `patterns.py query`, and the project's type conventions
   (u8/u16/u32, BOOL, HeapID...). Garbage context in → garbage draft out.
2. **Worker drafts** the C function (or a batch of trivial
   getters/setters — it is most useful on the long tail of mechanical
   functions, not the regalloc puzzles).
3. **Orchestrator reviews against the patterns DB** (declaration order,
   narrowing, struct-field access vs raw pointer math — local models reliably
   get these wrong), integrates into the C file, builds, and objdiffs.
4. **Attribution of failures**: if a delegated draft burns build-compare
   cycles on a known-bad shape, log it to `attempts_log.jsonl` like any other
   attempt — the dead-end log is model-agnostic.

### What NOT to delegate to the local model

- IPA / shared-header decisions (cross-file blast radius)
- Byte-diff diagnosis and the matching tricks (the judgment loop)
- Anything that edits files — `delegate.sh` is text-in/text-out only; the
  orchestrator owns every write

## Notes on full-session alternatives

Running an entire Claude Code session on a third-party model (e.g. via an
Anthropic-API-compatible proxy such as LiteLLM/claude-code-router pointed at
Ollama) replaces the orchestrator rather than delegating from it, and the
harness's judgment-heavy loop is exactly where the frontier model earns its
cost. If a fully-local grind pass is ever wanted (e.g. overnight drafting of
trivial save-chunk files), prefer driving `delegate.sh` from `run.sh` and
leaving verification to the next orchestrated session.
