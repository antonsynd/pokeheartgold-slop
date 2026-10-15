#!/usr/bin/env python3
"""Write an objdiff progress report (report.json, format version 2) for one game's build.

bytematch.dev (and decomp.dev) read this report from the CI artifact <version>_report. We have no
objdiff.json or reference objects. Our ROM sha1 tests already prove every linked byte, so the
question for each function is only whether its source is decompiled C:

  matched    defined in a C object, and not as an MWCC `asm` function
  unmatched  defined in an asm object, or as an `asm` function in a C file: a NONMATCHING
             fallback (`#else` branch) or a generated function marked "no matching C"

Data follows its object: data in a C object is matched, data in an asm object is not.

Units are named after the original asm file, not the object. A file keeps its name while it moves
from asm/foo.s to src/foo.c, and every piece hgify split it into (src/hgify/<base>/<base>_s03.c,
asm/<base>_v04.s, asm/<base>_sdata.s, ...) is folded into one unit <base>. Pieces are renamed on
every integration round, so naming units after objects would show each round as units removed and
added, and bytematch would lose their history.

Only game objects from main.lsf are counted. The libraries (NitroSDK, NitroSystem, ...) are
upstream Meson subprojects and are left out.

Usage: python3 tools/objdiff_report.py --build-dir build/heartgold.us -o build/heartgold.us/report.json
"""

import argparse
import json
import re
import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools" / "decomp_harness"))
import hgify_marks  # noqa: E402
from meson_names import GAME_OBJ_RE, source_of  # noqa: E402

REPORT_VERSION = 2

HEADER_RE = re.compile(r"^(Static|Autoload|Overlay)\s+(\S+)\s*$")
OBJECT_RE = re.compile(r"^\s*Object\s+(\S+)")
# An MWCC asm function: `asm void f(`, `static asm int f(`, `asm static void f(`.
ASM_FUNC_RE = re.compile(r"^[ \t]*(?:static[ \t]+)?asm[ \t]+(?:static[ \t]+)?[\w \t*]*?\b(\w+)[ \t]*\(", re.M)

CATEGORIES = [("main", "ARM9 static"), ("overlays", "Overlays")]

# ELF constants
SHT_SYMTAB, SHT_NOBITS = 2, 8
SHF_ALLOC, SHF_EXECINSTR = 0x2, 0x4
STT_FUNC = 2
SHN_UNDEF, SHN_LORESERVE = 0, 0xFF00


def lsf_objects(lsf_path):
    """[(block kind, block name, object)] for every game object in main.lsf, in link order."""
    out, kind, block = [], None, None
    for line in lsf_path.read_text().splitlines():
        s = line.split("#", 1)[0].strip()
        m = HEADER_RE.match(s)
        if m:
            kind, block = m.groups()
            continue
        m = OBJECT_RE.match(s)
        if m and GAME_OBJ_RE.match(m.group(1)):
            out.append((kind, block, m.group(1)))
    return out


def read_elf(path):
    """Code and data of a 32-bit little-endian ELF object.

    Returns (functions, data): functions is [(name, size)] in section order, data is
    [(section name, size)] for the allocated non-code sections (bss included, as objdiff does).
    A function symbol with no size (our asm macros emit no .size) runs to the next function
    symbol in its section, or to the section's end.
    """
    b = path.read_bytes()
    if b[:4] != b"\x7fELF" or b[4] != 1 or b[5] != 1:
        raise SystemExit(f"{path}: not a 32-bit little-endian ELF")
    shoff, = struct.unpack_from("<I", b, 0x20)
    shentsize, shnum, shstrndx = struct.unpack_from("<HHH", b, 0x2E)
    secs = [struct.unpack_from("<IIIIIIIIII", b, shoff + i * shentsize) for i in range(shnum)]

    def cstr(off):
        return b[off:b.index(b"\0", off)].decode()

    shstr = secs[shstrndx][4]
    names = [cstr(shstr + s[0]) for s in secs]

    starts = {}  # section index -> [(offset, name, size)]
    for s in secs:
        if s[1] != SHT_SYMTAB:
            continue
        strtab = secs[s[6]][4]
        for off in range(s[4], s[4] + s[5], s[9]):
            st_name, value, size, info, _, shndx = struct.unpack_from("<IIIBBH", b, off)
            if info & 0xF != STT_FUNC or shndx == SHN_UNDEF or shndx >= SHN_LORESERVE:
                continue
            name = cstr(strtab + st_name)
            if name.startswith("$"):  # ARM mapping symbols ($a, $t, $d), which MWCC types as FUNC
                continue
            starts.setdefault(shndx, []).append((value & ~1, name, size))

    functions, data = [], []
    for i, s in enumerate(secs):
        flags, size = s[2], s[5]
        if not flags & SHF_ALLOC or not size:
            continue
        if not flags & SHF_EXECINSTR:
            data.append((names[i], size))
            continue
        syms = sorted(starts.get(i, []))
        for j, (off, name, sz) in enumerate(syms):
            end = syms[j + 1][0] if j + 1 < len(syms) else size
            functions.append((name, sz or end - off))
    return functions, data


def unit_name(src):
    """The original asm file a source belongs to, as a unit name: src/foo.c and asm/foo_s03.s -> foo."""
    rel = Path(src).relative_to(Path(src).parts[0]).with_suffix("")
    m = hgify_marks.PIECE_RE.match(rel.name)
    if m and (ROOT / "asm" / f"{m.group(1)}.s").exists():
        return m.group(1)
    if (ROOT / "asm" / f"{rel.name}.s").exists():  # decompiled into a subdirectory of src/
        return rel.name
    return rel.as_posix()


def asm_functions(src):
    """Functions a C file defines as MWCC asm functions."""
    return set(ASM_FUNC_RE.findall((ROOT / src).read_text(errors="replace")))


def new_measures():
    return dict(fuzzy=0.0, total_code=0, matched_code=0, total_data=0, matched_data=0,
                total_functions=0, matched_functions=0, complete_code=0, complete_data=0,
                total_units=0, complete_units=0)


def add(into, m):
    for k, v in m.items():
        into[k] += v


def finish(m):
    """objdiff's Measures as JSON: 64-bit fields as strings, percents with 0/0 = 100."""
    def pct(n, d):
        return n / d * 100 if d else 100.0
    return {
        "fuzzy_match_percent": pct(m["fuzzy"], m["total_code"] * 100) if m["total_code"] else 100.0,
        "total_code": str(m["total_code"]),
        "matched_code": str(m["matched_code"]),
        "matched_code_percent": pct(m["matched_code"], m["total_code"]),
        "total_data": str(m["total_data"]),
        "matched_data": str(m["matched_data"]),
        "matched_data_percent": pct(m["matched_data"], m["total_data"]),
        "total_functions": m["total_functions"],
        "matched_functions": m["matched_functions"],
        "matched_functions_percent": pct(m["matched_functions"], m["total_functions"]),
        "complete_code": str(m["complete_code"]),
        "complete_code_percent": pct(m["complete_code"], m["total_code"]),
        "complete_data": str(m["complete_data"]),
        "complete_data_percent": pct(m["complete_data"], m["total_data"]),
        "total_units": m["total_units"],
        "complete_units": m["complete_units"],
    }


def build_report(build_dir, allow_missing=False):
    units = {}  # name -> unit being collected, in link order of first piece
    missing = []
    for kind, block, obj in lsf_objects(ROOT / "main.lsf"):
        src = source_of(obj, ROOT)
        if src is None:
            raise SystemExit(f"main.lsf: no source for {obj}")
        path = build_dir / obj
        if not path.exists():
            missing.append(obj)
            continue
        is_c = src.endswith(".c")
        asm_fns = asm_functions(src) if is_c else set()
        functions, data = read_elf(path)

        name = unit_name(src)
        u = units.setdefault(name, {
            "module": block,
            "category": "overlays" if kind == "Overlay" else "main",
            "sources": [],
            "functions": [],
            "m": new_measures(),
        })
        u["sources"].append(src)
        m = u["m"]
        for fn, size in functions:
            ok = is_c and fn not in asm_fns
            u["functions"].append({"name": fn, "size": str(size), "fuzzy_match_percent": 100.0 if ok else 0.0})
            m["total_code"] += size
            m["total_functions"] += 1
            if ok:
                m["matched_code"] += size
                m["matched_functions"] += 1
                m["fuzzy"] += 100.0 * size
        for _, size in data:
            m["total_data"] += size
            if is_c:
                m["matched_data"] += size
    if missing and not allow_missing:
        raise SystemExit(f"{len(missing)} objects in main.lsf are not built, e.g. {missing[:3]}")

    total = new_measures()
    cats = {cid: new_measures() for cid, _ in CATEGORIES}
    out_units = []
    for name, u in units.items():
        m = u["m"]
        m["total_units"] = 1
        complete = m["matched_code"] == m["total_code"] and m["matched_data"] == m["total_data"]
        if complete:
            m["complete_code"], m["complete_data"], m["complete_units"] = m["total_code"], m["total_data"], 1
        category = u["category"]
        add(total, m)
        add(cats[category], m)
        orig = f"asm/{name}.s"
        out_units.append({
            "name": name,
            "measures": finish(m),
            "functions": u["functions"],
            "metadata": {
                "complete": complete,
                "module_name": u["module"],
                "source_path": u["sources"][0] if len(u["sources"]) == 1 else orig,
                "progress_categories": [category],
            },
        })
    return {
        "measures": finish(total),
        "units": out_units,
        "version": REPORT_VERSION,
        "categories": [{"id": cid, "name": cname, "measures": finish(cats[cid])} for cid, cname in CATEGORIES],
    }, missing


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    ap.add_argument("--build-dir", type=Path, required=True, help="Meson build dir, e.g. build/heartgold.us")
    ap.add_argument("-o", "--output", type=Path, required=True)
    ap.add_argument("--allow-missing", action="store_true",
                    help="skip objects that aren't built (a partial build); counts will be low")
    args = ap.parse_args()

    report, missing = build_report(args.build_dir.resolve(), args.allow_missing)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, separators=(",", ":")) + "\n")
    m = report["measures"]
    print(f"{args.output}: {len(report['units'])} units, functions {m['matched_functions']}/{m['total_functions']} "
          f"({m['matched_functions_percent']:.2f}%), code {m['matched_code']}/{m['total_code']} bytes "
          f"({m['matched_code_percent']:.2f}%)" + (f"; {len(missing)} objects not built" if missing else ""))


if __name__ == "__main__":
    main()
