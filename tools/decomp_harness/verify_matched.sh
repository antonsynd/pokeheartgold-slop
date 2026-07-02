#!/usr/bin/env bash
#
# verify_matched.sh — regression guard for already-matched TUs.
#
# A matched TU is one linked from source: an `Object src/....o` line in
# main.lsf. This tool captures a fingerprint of every matched object and
# later recompiles each one standalone (via compile_one.sh) to prove the
# committed C still produces the same machine code — catching regressions
# introduced by header edits, shared-struct changes, or IPA cascades before
# they reach a full `chiri pkg -- compare`.
#
# CWD-INDEPENDENCE (the whole reason this isn't a plain SHA1 manifest):
# MWCC/Wine embed the shell's logical $PWD as the DWARF comp_dir, so the
# .debug_* sections of an object depend on which directory the build was
# driven from. The current retail baseline was built from a symlinked root
# (/Users/anton/github/...), while compile_one runs from the real root — so
# whole-file SHA1s would spuriously differ. We therefore fingerprint ONLY
# the SHF_ALLOC sections (.text/.rodata/.data/.bss), which never carry
# DWARF and are exactly the bytes that matter for matching. Proven identical
# across CWDs; debug sections are the only thing that moves.
#
# Sections are hashed BY INDEX (an ELF object legitimately has several
# same-named sections, e.g. two `.rodata`), so name collisions are handled.
#
# Usage:
#   verify_matched.sh capture [--game G]
#       Recapture the manifest from build/<game>.us/src/*.o for every
#       matched TU. Run after every green `chiri pkg -- compare`.
#
#   verify_matched.sh check [--game G] [--file src/foo.c] [--quick N]
#       Recompile matched TUs via compile_one.sh (serial) and diff their
#       allocatable-section fingerprint against the manifest.
#         (default)      check every matched TU
#         --file src/f.c check a single TU
#         --quick N      check a random sample of N TUs
#
#   Default game: heartgold. Manifest: tools/decomp_harness/matched_manifest.json
#
# Exit codes: 0 = clean (all checked TUs match manifest), 1 = drift or
# compile failure, 2 = usage / precondition error.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -L)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd -L)"
cd "$PROJECT_ROOT"

MANIFEST="$SCRIPT_DIR/matched_manifest.json"
LSF="main.lsf"
COMPILE_ONE="$SCRIPT_DIR/compile_one.sh"

# --- embedded ELF allocatable-section hasher / manifest engine ----------
# Written to a temp file so it can be called repeatedly without re-parsing.
PYHELP="$(mktemp "${TMPDIR:-/tmp}/verify_matched_py.XXXXXX")"
trap 'rm -f "$PYHELP"' EXIT
cat >"$PYHELP" <<'PYEOF'
import struct, hashlib, sys, json, os

SHF_ALLOC = 0x2
SHT_NOBITS = 8

def fingerprint(path):
    """Return (alloc_sha1, [ {name,type,size,sha1}, ... ]) over SHF_ALLOC
    sections, hashed by section order so duplicate names are unambiguous."""
    with open(path, 'rb') as f:
        data = f.read()
    if data[:4] != b'\x7fELF':
        raise ValueError("not an ELF: %s" % path)
    if data[4] != 1 or data[5] != 1:
        raise ValueError("expected ELF32-LE: %s" % path)
    (e_shoff,) = struct.unpack_from('<I', data, 0x20)
    (e_shentsize,) = struct.unpack_from('<H', data, 0x2e)
    (e_shnum,) = struct.unpack_from('<H', data, 0x30)
    (e_shstrndx,) = struct.unpack_from('<H', data, 0x32)
    secs = []
    for i in range(e_shnum):
        off = e_shoff + i * e_shentsize
        vals = struct.unpack_from('<10I', data, off)
        secs.append(dict(name=vals[0], type=vals[1], flags=vals[2],
                         offset=vals[4], size=vals[5]))
    stroff = secs[e_shstrndx]['offset']
    def nm(o):
        end = data.index(b'\x00', stroff + o)
        return data[stroff + o:end].decode('latin1')
    per = []
    for s in secs:
        if not (s['flags'] & SHF_ALLOC):
            continue
        name = nm(s['name'])
        content = b'' if s['type'] == SHT_NOBITS else data[s['offset']:s['offset'] + s['size']]
        h = hashlib.sha1()
        h.update(name.encode('latin1') + b'\0')
        h.update(struct.pack('<II', s['type'], s['size']))
        h.update(content)
        per.append(dict(name=name, type=s['type'], size=s['size'], sha1=h.hexdigest()))
    top = hashlib.sha1()
    for p in per:
        top.update(p['sha1'].encode())
    return top.hexdigest(), per

def matched_tus(lsf):
    tus = []
    with open(lsf) as f:
        for line in f:
            line = line.strip()
            if line.startswith('Object src/') and line.endswith('.o'):
                obj = line[len('Object '):]
                tus.append(obj[:-2] + '.c')  # src/x.o -> src/x.c
    return tus

def cmd_capture(game, lsf, out):
    build = "build/%s/src" % game
    tus = matched_tus(lsf)
    entry = {}
    missing = []
    for c in tus:
        rel = c[len('src/'):-2]           # strip src/ and .c
        obj = os.path.join(build, rel + '.o')
        if not os.path.isfile(obj):
            missing.append(c)
            continue
        top, per = fingerprint(obj)
        entry[c] = dict(object=obj, alloc_sha1=top, sections=per)
    if missing:
        sys.stderr.write("capture: %d matched TU(s) have no baseline object "
                         "(run a full build first):\n" % len(missing))
        for m in missing[:20]:
            sys.stderr.write("  %s\n" % m)
        if len(missing) > 20:
            sys.stderr.write("  ... (%d more)\n" % (len(missing) - 20))
        sys.exit(2)
    manifest = dict(schema=1, game=game, count=len(entry), tus=entry)
    with open(out, 'w') as f:
        json.dump(manifest, f, indent=1, sort_keys=True)
        f.write('\n')
    print("capture: wrote %d matched TU fingerprints -> %s" % (len(entry), out))

def cmd_compare(manifest_path, game):
    """Read TU list (one src/x.c per line) from stdin; compare compile_one
    output fingerprints to the manifest. Prints drift; exits 1 on any."""
    with open(manifest_path) as f:
        manifest = json.load(f)
    tus = manifest['tus']
    drift = 0
    checked = 0
    for line in sys.stdin:
        c = line.strip()
        if not c:
            continue
        checked += 1
        if c not in tus:
            print("DRIFT %s : not in manifest (recapture needed)" % c)
            drift += 1
            continue
        rel = c[len('src/'):-2]
        co = "build/%s/compile_one/%s.o" % (game, rel)
        if not os.path.isfile(co):
            print("FAIL  %s : compile_one produced no object (%s)" % (c, co))
            drift += 1
            continue
        top, per = fingerprint(co)
        want = tus[c]['alloc_sha1']
        if top == want:
            continue
        drift += 1
        # locate which section(s) moved
        base = {(p['name'], i): p for i, p in enumerate(tus[c]['sections'])}
        now = {(p['name'], i): p for i, p in enumerate(per)}
        diffs = []
        keys = sorted(set(base) | set(now))
        for k in keys:
            b = base.get(k); n = now.get(k)
            if b is None:
                diffs.append("+%s(new)" % k[0])
            elif n is None:
                diffs.append("-%s(gone)" % k[0])
            elif b['sha1'] != n['sha1']:
                diffs.append("%s(%d->%d bytes)" % (k[0], b['size'], n['size']))
        print("DRIFT %s : %s" % (c, ", ".join(diffs) if diffs else "alloc hash differs"))
    print("compare: %d checked, %d drift" % (checked, drift))
    sys.exit(1 if drift else 0)

if __name__ == '__main__':
    op = sys.argv[1]
    if op == 'capture':
        cmd_capture(sys.argv[2], sys.argv[3], sys.argv[4])
    elif op == 'compare':
        cmd_compare(sys.argv[2], sys.argv[3])
    elif op == 'tus':
        for t in matched_tus(sys.argv[2]):
            print(t)
    else:
        sys.stderr.write("unknown op %r\n" % op)
        sys.exit(2)
PYEOF

# --- arg parse ----------------------------------------------------------
MODE="${1:-}"
shift || true
GAME="heartgold"
ONE_FILE=""
QUICK=""
while [[ $# -gt 0 ]]; do
    case "$1" in
        --game) GAME="${2:-}"; shift 2 ;;
        --game=*) GAME="${1#*=}"; shift ;;
        --file) ONE_FILE="${2:-}"; shift 2 ;;
        --file=*) ONE_FILE="${1#*=}"; shift ;;
        --quick) QUICK="${2:-}"; shift 2 ;;
        --quick=*) QUICK="${1#*=}"; shift ;;
        -h|--help) sed -n '2,45p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
        *) echo "verify_matched: unknown argument '$1'" >&2; exit 2 ;;
    esac
done

case "$GAME" in
    heartgold|HEARTGOLD) BUILDNAME="heartgold.us" ;;
    soulsilver|SOULSILVER) BUILDNAME="soulsilver.us" ;;
    *) echo "verify_matched: unsupported --game '$GAME'" >&2; exit 2 ;;
esac

# --- capture mode -------------------------------------------------------
if [[ "$MODE" == "capture" ]]; then
    python3 "$PYHELP" capture "$BUILDNAME" "$LSF" "$MANIFEST"
    exit $?
fi

# --- check mode ---------------------------------------------------------
if [[ "$MODE" != "check" ]]; then
    echo "usage: verify_matched.sh {capture|check} [--game G] [--file src/f.c] [--quick N]" >&2
    exit 2
fi

if [[ ! -f "$MANIFEST" ]]; then
    echo "verify_matched: no manifest at $MANIFEST — run 'verify_matched.sh capture' first" >&2
    exit 2
fi

# Build the TU list to check.
declare -a ALL_TUS=()
while IFS= read -r _t; do [[ -n "$_t" ]] && ALL_TUS+=("$_t"); done < <(python3 "$PYHELP" tus "$LSF")
declare -a TUS=()
if [[ -n "$ONE_FILE" ]]; then
    # normalise (accept src/foo.c)
    found=0
    for t in "${ALL_TUS[@]}"; do [[ "$t" == "$ONE_FILE" ]] && found=1 && break; done
    if [[ "$found" -ne 1 ]]; then
        echo "verify_matched: '$ONE_FILE' is not a matched TU (no 'Object $ONE_FILE'->.o in $LSF)" >&2
        exit 2
    fi
    TUS=("$ONE_FILE")
elif [[ -n "$QUICK" ]]; then
    if ! [[ "$QUICK" =~ ^[0-9]+$ ]]; then echo "verify_matched: --quick needs an integer" >&2; exit 2; fi
    while IFS= read -r _t; do [[ -n "$_t" ]] && TUS+=("$_t"); done < <(printf '%s\n' "${ALL_TUS[@]}" | awk 'BEGIN{srand()} {print rand()"\t"$0}' | sort | head -n "$QUICK" | cut -f2-)
else
    TUS=("${ALL_TUS[@]}")
fi

total="${#TUS[@]}"
echo "verify_matched: check mode — game=$BUILDNAME, $total TU(s), manifest=$MANIFEST"
start=$(date +%s)

# Compile each TU serially (compile_one invokes wine mwccarm). A PreToolUse
# guard may already have handled stale processes; we never kill anything.
compile_fail=0
declare -a OK_TUS=()
i=0
for tu in "${TUS[@]}"; do
    i=$((i+1))
    printf '[%d/%d] %s ... ' "$i" "$total" "$tu"
    if bash "$COMPILE_ONE" "$tu" --game "$GAME" --no-objdiff >/dev/null 2>&1; then
        echo "compiled"
        OK_TUS+=("$tu")
    else
        echo "COMPILE FAILED"
        compile_fail=$((compile_fail+1))
    fi
done

# One comparison pass over everything that compiled.
rc=0
if [[ "${#OK_TUS[@]}" -gt 0 ]]; then
    printf '%s\n' "${OK_TUS[@]}" | python3 "$PYHELP" compare "$MANIFEST" "$BUILDNAME" || rc=$?
fi

end=$(date +%s)
echo "verify_matched: done in $((end-start))s — $total checked, $compile_fail compile failure(s)"
if [[ "$compile_fail" -ne 0 ]]; then
    exit 1
fi
exit "$rc"
