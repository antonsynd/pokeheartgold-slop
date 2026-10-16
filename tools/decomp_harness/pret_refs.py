#!/usr/bin/env python3
"""Find and neutralise references to pret issues/PRs (issue #36).

GitHub cross-links `pret#123`, `pret/pokeheartgold#123` and pret PR/issue URLs,
which notifies the upstream maintainers. This fork must not do that.

  PR/issue text   wrap the reference in backticks (inline code does not link)
  commit messages drop the number entirely (--strict): GitHub may record a
                  commit cross-reference from the raw message even in backticks

    pret_refs.py check [--strict] [FILE]   exit 1 and list offenders if FILE
                                           (default stdin) has a reference;
                                           backticked ones pass unless --strict
    pret_refs.py fix [--in-place] [FILE]   escape references in backticks
    pret_refs.py strip [--in-place] [FILE] remove the numbers/URLs (commit
                                           messages); text after a git
                                           "------ >8 ------" scissors line is left alone
"""
import re
import sys

REF = re.compile(
    r"(?:https?://|\b)(?:(?:www|api)\.)?github\.com/(?:repos/)?pret/[\w.-]+/(?:pulls?|issues|discussions)/\d+(?:[^\s)>\]]*[^\s)>\].,;:!?])?"
    r"|(?<![\w/])pret/[\w.-]+/(?:pulls?|issues)/\d+"
    r"|\b(?:pret|upstream)(?:/[\w.-]+)?#\d+"
    r"|\bMerge pull request #\d+ from pret/\S+",
    re.IGNORECASE,
)
# Fenced blocks and inline code spans are already safe from autolinking.
CODE = re.compile(r"```.*?```|`[^`\n]*`", re.DOTALL)
SCISSORS = re.compile(r"^# -+ >8 -+$", re.MULTILINE)


def _segments(text):
    pos = 0
    for m in CODE.finditer(text):
        yield text[pos:m.start()], False
        yield m.group(0), True
        pos = m.end()
    yield text[pos:], False


def find(text, strict=False):
    if strict:
        return [m.group(0) for m in REF.finditer(text)]
    return [m.group(0) for seg, code in _segments(text) if not code for m in REF.finditer(seg)]


def fix(text):
    return "".join(seg if code else REF.sub(lambda m: f"`{m.group(0)}`", seg) for seg, code in _segments(text))


def _strip_one(m):
    s = m.group(0)
    if "/" in s and "#" not in s and not s.lower().startswith("merge"):
        return "an upstream issue/PR"
    if s.lower().startswith("merge"):
        return "Merge upstream pull request"
    return re.split(r"[/#]", s, 1)[0]


def strip(text):
    m = SCISSORS.search(text)
    head, tail = (text[:m.start()], text[m.start():]) if m else (text, "")
    return REF.sub(_strip_one, head) + tail


def main(argv):
    if len(argv) < 2 or argv[1] not in ("check", "fix", "strip"):
        print(__doc__, file=sys.stderr)
        return 2
    cmd, args = argv[1], argv[2:]
    flags = {a for a in args if a.startswith("--")}
    args = [a for a in args if not a.startswith("--")]
    text = open(args[0], encoding="utf-8", errors="surrogateescape").read() if args else sys.stdin.read()
    if cmd == "check":
        bad = find(text, "--strict" in flags)
        for b in bad:
            print(f"pret reference: {b}", file=sys.stderr)
        if bad:
            print("Remove the number or wrap it in backticks (`pret#123`); see CONTRIBUTING.md.", file=sys.stderr)
        return 1 if bad else 0
    out = fix(text) if cmd == "fix" else strip(text)
    if "--in-place" in flags and args:
        if out != text:
            open(args[0], "w", encoding="utf-8", errors="surrogateescape").write(out)
    else:
        sys.stdout.write(out)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
