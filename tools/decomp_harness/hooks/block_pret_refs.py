#!/usr/bin/env python3
"""PreToolUse hook: block pret issue/PR references in outgoing text (issue #36).

Runs on every Bash call and every GitHub MCP write; only `git commit|merge|tag`
and writing `gh` commands (and the -F/--file/--body-file files they name) are
inspected. Git messages are checked strictly (no number at all); other text
passes if the reference is in backticks. Exit 2 blocks.
"""
import json
import os
import re
import shlex
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
import pret_refs  # noqa: E402

GH_WRITE = re.compile(
    r"^gh\s+(?:(?:pr|issue)\s+(?:create|edit|comment|review|close|reopen|merge|ready)"
    r"|release\s+(?:create|edit)|discussion\s+(?:create|edit|comment)|gist\s+(?:create|edit))\b"
    r"|^gh\s+api\b.*(?:\s-X\s*(?:POST|PUT|PATCH|DELETE)|\s--method[= ]\s*(?:POST|PUT|PATCH|DELETE)"
    r"|\s-[fF]\s|\s--(?:raw-)?field\b|\s--input\b)",
    re.IGNORECASE | re.DOTALL,
)
GIT_MSG = re.compile(r"\bgit\b[^\n;&|]*\b(?:commit|merge|tag)\b")
FILE_FLAGS = {"-F", "--file", "--body-file"}
OPS = {";", "&&", "||", "|", "&", "(", ")"}


def strings(v):
    if isinstance(v, str):
        yield v
    elif isinstance(v, dict):
        for x in v.values():
            yield from strings(x)
    elif isinstance(v, list):
        for x in v:
            yield from strings(x)


def read(path):
    try:
        return open(path, encoding="utf-8", errors="replace").read()
    except OSError:
        return ""


def bash_checks(cmd, cwd):
    """Yield (text, strict) pairs to scan for a Bash command line."""
    lex = shlex.shlex(cmd, posix=True, punctuation_chars=True)
    lex.whitespace_split = True
    lex.commenters = ""
    try:
        toks = list(lex)
    except ValueError:
        # Unparseable (e.g. an apostrophe in a heredoc): scan the raw text.
        if GIT_MSG.search(cmd):
            yield cmd, True
        elif re.search(r"\bgh\s", cmd) and GH_WRITE.search(cmd[cmd.find("gh"):]):
            yield cmd, False
        return
    # Split into simple commands at operators, tracking `cd` for relative paths.
    segs, cur = [], []
    for t in toks:
        if t in OPS or set(t) <= set(";&|()"):
            segs.append(cur)
            cur = []
        else:
            cur.append(t)
    segs.append(cur)
    for seg in segs:
        if seg and seg[0] == "cd" and len(seg) > 1:
            cwd = os.path.join(cwd, os.path.expanduser(seg[1]))
            continue
        for i, t in enumerate(seg):
            if t not in ("git", "gh"):
                continue
            rest = seg[i:]
            line = " ".join(rest)
            if t == "git":
                strict = True
                if not any(w in ("commit", "merge", "tag") for w in rest[1:8]):
                    continue
            else:
                strict = False
                if not GH_WRITE.search(line):
                    continue
            yield line, strict
            for j, w in enumerate(rest):
                path = None
                if w in FILE_FLAGS and j + 1 < len(rest):
                    path = rest[j + 1]
                elif w.startswith(("--file=", "--body-file=")):
                    path = w.split("=", 1)[1]
                if path and path != "-":
                    yield read(os.path.join(cwd, os.path.expanduser(path))), strict
            break


def main():
    try:
        data = json.load(sys.stdin)
    except Exception:
        return 0
    ti = data.get("tool_input", {})
    if data.get("tool_name") == "Bash":
        cwd = data.get("cwd") or os.getcwd()
        checks = list(bash_checks(ti.get("command", ""), cwd))
    else:
        # MCP writes: only free-text fields, not file contents/paths/branches.
        skip = {"content", "files", "path", "branch", "owner", "repo", "sha", "head", "base"}
        checks = [(s, False) for k, v in ti.items() if k not in skip for s in strings(v)]
    bad = [b for t, strict in checks for b in pret_refs.find(t, strict)]
    if not bad:
        return 0
    print("BLOCKED: pret issue/PR reference(s): " + ", ".join(bad), file=sys.stderr)
    print("GitHub notifies pret's maintainers about these. Remove the number (git commit/merge/tag "
          "messages: no backticks either); in PR/issue text you may wrap it in backticks, e.g. "
          "`pret#123`. -F/--body-file files are scanned too. "
          "`python3 tools/decomp_harness/pret_refs.py strip|fix FILE --in-place` rewrites a file.",
          file=sys.stderr)
    return 2


if __name__ == "__main__":
    sys.exit(main())
