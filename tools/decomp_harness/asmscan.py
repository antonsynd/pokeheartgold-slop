"""Shared parsing helpers for the decomp harness ledger/triage tools.

Parses main.lsf object order, asm/*.s function and section structure, and
asm/include/*.inc public lists. Pure stdlib, read-only.
"""

import re
from pathlib import Path

FUNC_START_RE = re.compile(r"^\s*(thumb|arm)_func_start\s+(\w+)")
FUNC_END_RE = re.compile(r"^\s*(?:thumb|arm)_func_end\s+(\w+)")
LSF_OBJ_RE = re.compile(r"^\s*Object\s+(asm|src)/(.+)\.o\s*$")
BL_RE = re.compile(r"\bblx?\s+(\w+)")
LITERAL_RE = re.compile(r"^\s*\.word\s+(.+)$")
SECTION_RE = re.compile(r"^\s*\.(text|rodata|data|bss)\b\s*$")
CUSTOM_SECTION_RE = re.compile(r"^\s*\.section\s+([.\w]+)")
STRING_RE = re.compile(r'^\s*\.(asciz|ascii|string)\s+"(.*)"')
PUBLIC_RE = re.compile(r"^\s*\.public\s+(\w+)")
LOCAL_LABEL_RE = re.compile(r"^_[0-9A-Fa-f]{8}$")
# param-copyprop-cmp blocker idiom: at function entry, a parameter copy is
# compared instead of r0 itself ("add r4, r0, #0" immediately followed by
# "cmp r4, #imm") — MWCC always substitutes back to r0, so this shape is
# unreachable from C and the function needs the NONMATCHING fallback.
COPYPROP_ADD_RE = re.compile(r"^adds?\s+(r[4-7]),\s*r0,\s*#0$")

DATA_DIRECTIVES = {
    ".word": 4,
    ".short": 2,
    ".halfword": 2,
    ".hword": 2,
    ".byte": 1,
}


def project_root():
    return Path(__file__).resolve().parents[2]


def parse_lsf(root=None):
    """Return ordered list of {'kind': 'asm'|'src', 'name': basename} from main.lsf."""
    root = Path(root) if root else project_root()
    objects = []
    for line in (root / "main.lsf").read_text().splitlines():
        m = LSF_OBJ_RE.match(line)
        if m:
            objects.append({"kind": m.group(1), "name": m.group(2)})
    return objects


def _data_line_bytes(line):
    stripped = line.strip()
    s = STRING_RE.match(stripped)
    if s:
        # rough: escaped chars count as one byte each; .asciz adds a NUL
        body = re.sub(r"\\.", "?", s.group(2))
        return len(body) + (1 if s.group(1) in ("asciz", "string") else 0)
    for directive, width in DATA_DIRECTIVES.items():
        if stripped.startswith(directive + " ") or stripped == directive:
            payload = stripped[len(directive):].strip()
            if not payload:
                return width
            # strings in .byte lines are rare here; count comma-separated values
            return width * (payload.count(",") + 1)
    for directive in (".space", ".skip"):
        if stripped.startswith(directive):
            try:
                return int(stripped.split()[1], 0)
            except (IndexError, ValueError):
                return 0
    return 0


def parse_asm(path):
    """Parse one asm/*.s file.

    Returns dict with:
      functions: [{name, mode, insns, size_est}]   (size_est = bytes, rough)
      defined:   set of function names defined here
      data_labels: set of labels defined in rodata/data/bss sections (needed to
                 split a data file's .inc publics into imports vs exports —
                 .public lists mix both, and data symbols have no func_start)
      bl_targets: set of non-local call targets
      literal_syms: set of symbols referenced via .word in .text (callbacks/data)
      sections:  {rodata_bytes, data_bytes, bss_bytes, text_pool_words}
      jumptable_words: count of .word local-label entries inside .text
      lines: total line count
    """
    functions = []
    defined = set()
    data_labels = set()
    bl_targets = set()
    literal_syms = set()
    sections = {"rodata_bytes": 0, "data_bytes": 0, "bss_bytes": 0, "other_bytes": 0}
    other_sections = []
    jumptable_words = 0
    current_section = "text"
    current_func = None
    lines = 0

    for line in Path(path).read_text(errors="replace").splitlines():
        lines += 1
        sec = SECTION_RE.match(line)
        if sec:
            current_section = sec.group(1)
            continue
        custom = CUSTOM_SECTION_RE.match(line)
        if custom:
            current_section = "other"
            other_sections.append(custom.group(1))
            continue

        m = FUNC_START_RE.match(line)
        if m:
            current_func = {"name": m.group(2), "mode": m.group(1), "insns": 0}
            defined.add(m.group(2))
            functions.append(current_func)
            continue
        if FUNC_END_RE.match(line):
            current_func = None
            continue

        if current_section in ("rodata", "data", "bss", "other"):
            lbl = re.match(r"^\s*(\w+):", line)
            if lbl:
                data_labels.add(lbl.group(1))
            sections[current_section + "_bytes"] += _data_line_bytes(line)
            continue

        # .text section
        lit = LITERAL_RE.match(line)
        if lit:
            for value in lit.group(1).split(","):
                value = value.strip()
                if LOCAL_LABEL_RE.match(value):
                    jumptable_words += 1
                elif re.fullmatch(r"[A-Za-z_]\w*", value):
                    literal_syms.add(value)
            continue

        stripped = line.strip()
        if not stripped or stripped.startswith((";", "@", ".")):
            continue
        # drop trailing "; ..." comments (e.g. "FuncName: ; 0xADDR" labels)
        code = stripped.split(";", 1)[0].strip()
        if not code or code.endswith(":"):
            continue
        if current_func is not None:
            current_func["insns"] += 1
            if current_func["insns"] <= 4 and not current_func.get("copyprop_entry"):
                copy_reg = current_func.pop("_copy_reg", None)
                if copy_reg and re.match(rf"^cmp\s+{copy_reg},\s*#", code):
                    current_func["copyprop_entry"] = True
                else:
                    mcopy = COPYPROP_ADD_RE.match(code)
                    if mcopy:
                        current_func["_copy_reg"] = mcopy.group(1)
            mnemonic_width = 4 if current_func["mode"] == "arm" else 2
            if code.startswith(("bl ", "blx ")):
                mnemonic_width = 4
            current_func["size_est"] = current_func.get("size_est", 0) + mnemonic_width
            b = BL_RE.match(code)
            if b and not LOCAL_LABEL_RE.match(b.group(1)):
                bl_targets.add(b.group(1))

    for fn in functions:
        fn.setdefault("size_est", 0)
        fn.pop("_copy_reg", None)

    return {
        "functions": functions,
        "defined": defined,
        "data_labels": data_labels,
        "bl_targets": bl_targets,
        "literal_syms": literal_syms,
        "sections": sections,
        "other_sections": other_sections,
        "jumptable_words": jumptable_words,
        "lines": lines,
    }


def parse_inc(path):
    """Return list of .public symbols from an asm/include/*.inc file."""
    path = Path(path)
    if not path.exists():
        return []
    publics = []
    for line in path.read_text(errors="replace").splitlines():
        m = PUBLIC_RE.match(line)
        if m:
            publics.append(m.group(1))
    return publics


def blocker_gates(blocker, files):
    """Pending files a blocker predictively gates, honoring the blocker's
    gate_mode (blockers.json):

      "imports"  (default) — pending file imports a symbol exported by one of
                 the blocker's files_blocked. Known to over-count badly for
                 blockers whose files export ubiquitous APIs (see patterns
                 false-ipa-gate-shared-imports): call-only consumers do NOT
                 hit header-cascade walls.
      "none"     — no predictive gating; the blocker only blocks its own files.
      "copyprop_entry" — pending file contains >=1 function with the
                 param-copyprop-cmp entry idiom (detected by parse_asm).
      "data_only_multi_public" — pending data-only file exporting more than
                 one symbol (shape that hits ext-data-section-split).
    """
    mode = blocker.get("gate_mode", "imports")
    pending = [r for r in files if r["status"] == "pending"]
    if mode == "none":
        return []
    if mode == "copyprop_entry":
        return sorted(
            r["file"] for r in pending
            if any(f.get("copyprop_entry") for f in r.get("functions", []))
        )
    if mode == "data_only_multi_public":
        return sorted(
            r["file"] for r in pending
            if r.get("data_only") and len(r.get("exports", [])) > 1
        )
    # default: legacy import-based gating
    by_file = {r["file"]: r for r in files}
    exported = set()
    for f in blocker.get("files_blocked", []):
        exported.update(by_file.get(f, {}).get("exports", []))
    if not exported:
        return []
    return sorted(
        r["file"] for r in pending if exported & set(r.get("imports", []))
    )
