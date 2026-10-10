#!/usr/bin/env python3
"""Claim asm files for decompilation, so two contributors don't convert the same file.

A claim is an open GitHub issue titled `Claim asm/<name>.s` (CONTRIBUTING.md,
"Submitting changes"). Claims are advisory: they can go stale, so a file someone
else has claimed only gets a warning, never a refusal.

  claim.py check asm/<name>.s           warn (stderr) about other people's claims or
                                        open PRs touching the file; always exits 0
  claim.py open  asm/<name>.s           check, then open a claim issue (or reuse your
                                        own open one); prints the issue number
  claim.py close asm/<name>.s [--note]  close your open claim, e.g. after giving up

The decomp commit closes the claim with `Closes #N` in its message. Needs an
authenticated `gh`; if it is missing or offline, `check` stays quiet and `open`
and `close` fail.
"""

import argparse
import json
import re
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path


def repo():
    """OWNER/REPO of the origin remote (gh can't pick one when there are several)."""
    url = subprocess.run(["git", "remote", "get-url", "origin"], capture_output=True,
                         text=True, check=True).stdout.strip()
    m = re.search(r"github\.com[:/]([^/]+/[^/]+?)(?:\.git)?$", url)
    if not m:
        sys.exit(f"claim.py: origin is not a GitHub remote: {url}")
    return m.group(1)


def gh(*args) -> str:
    return subprocess.run(["gh", *args], capture_output=True, text=True, check=True).stdout.strip()


def gh_list(*args) -> list[dict]:
    return json.loads(gh(*args))


def title(asm):
    return f"Claim {asm}"


def age(iso):
    days = (datetime.now(timezone.utc) - datetime.fromisoformat(iso.replace("Z", "+00:00"))).days
    return "today" if days == 0 else f"{days} day{'s' * (days != 1)} ago"


def claims(r, asm):
    issues = gh_list("issue", "list", "-R", r, "--state", "open", "--search", f'"{title(asm)}" in:title',
                "--json", "number,title,author,createdAt")
    return [i for i in issues if i["title"].strip() == title(asm)]


def touching_prs(r, asm):
    """Open PRs that change the file's C or name it in the title."""
    stem = Path(asm).stem
    prs = gh_list("pr", "list", "-R", r, "--state", "open", "--json", "number,title,author,createdAt,files")
    return [p for p in prs
            if stem in p["title"]
            or any(Path(f["path"]).stem == stem and f["path"].startswith(("src/", "include/"))
                   for f in p.get("files") or [])]


def normalize(asm):
    asm = asm if asm.startswith("asm/") else f"asm/{asm}"
    return asm if asm.endswith(".s") else f"{asm}.s"


def warn_others(r, asm, me):
    """Print a warning per claim or PR by someone else; return your own open claims."""
    mine = []
    for i in claims(r, asm):
        if i["author"]["login"] == me:
            mine.append(i)
        else:
            print(f"WARNING: {asm} is claimed by @{i['author']['login']} ({age(i['createdAt'])}, "
                  f"#{i['number']}). Claims can go stale; check before duplicating work.",
                  file=sys.stderr)
    for p in touching_prs(r, asm):
        if p["author"]["login"] != me:
            print(f"WARNING: open PR #{p['number']} by @{p['author']['login']} touches {asm} "
                  f"({age(p['createdAt'])}): {p['title']}", file=sys.stderr)
    return mine


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("cmd", choices=["check", "open", "close"])
    ap.add_argument("asm", help="asm/<name>.s")
    ap.add_argument("--note", default="", help="close: comment to leave on the issue")
    a = ap.parse_args()
    asm = normalize(a.asm)

    try:
        r = repo()
        me = gh("api", "user", "--jq", ".login")
        mine = warn_others(r, asm, me)
    except (subprocess.CalledProcessError, FileNotFoundError) as e:
        if a.cmd == "check":
            return  # advisory only: no gh / offline must not block next_target.sh
        sys.exit(f"claim.py: gh failed: {getattr(e, 'stderr', '') or e}")

    if a.cmd == "open":
        if mine:
            print(mine[0]["number"])
            return
        url = gh("issue", "create", "-R", r, "--title", title(asm), "--body",
                 f"Working on converting `{asm}` to matching C. The decomp commit will close this "
                 f"issue; if I give up I'll close it so the file is free again.")
        print(url.rstrip("/").rsplit("/", 1)[-1])
    elif a.cmd == "close":
        if not mine:
            sys.exit(f"claim.py: you have no open claim on {asm}")
        for i in mine:
            args = ["issue", "close", str(i["number"]), "-R", r, "--reason", "not planned"]
            if a.note:
                args += ["--comment", a.note]
            gh(*args)
            print(f"closed #{i['number']}")


if __name__ == "__main__":
    main()
