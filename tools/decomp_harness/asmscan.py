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
      bl_targets: set of non-local call targets
      literal_syms: set of symbols referenced via .word in .text (callbacks/data)
      sections:  {rodata_bytes, data_bytes, bss_bytes, text_pool_words}
      jumptable_words: count of .word local-label entries inside .text
      lines: total line count
    """
    functions = []
    defined = set()
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
        if stripped.endswith(":"):
            continue
        if current_func is not None:
            current_func["insns"] += 1
            mnemonic_width = 4 if current_func["mode"] == "arm" else 2
            if stripped.startswith(("bl ", "blx ")):
                mnemonic_width = 4
            current_func["size_est"] = current_func.get("size_est", 0) + mnemonic_width
            b = BL_RE.match(stripped)
            if b and not LOCAL_LABEL_RE.match(b.group(1)):
                bl_targets.add(b.group(1))

    for fn in functions:
        fn.setdefault("size_est", 0)

    return {
        "functions": functions,
        "defined": defined,
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
