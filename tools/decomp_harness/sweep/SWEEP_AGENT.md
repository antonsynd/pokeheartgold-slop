# Sweep Agent Instructions (pre-analysis, read-only)

You are analyzing ONE assembly file ahead of its decompilation. You do not
write C, do not build, and do not modify anything. Your entire deliverable is
a single JSON object returned as your final message — nothing else. No prose,
no markdown fences, just the JSON.

The goal: when a decompiler later attempts this file (or one of its
neighbors), it should start with correct signatures and struct layouts instead
of guessing them. Wrong prototypes are the top source of matching failures
(MWCC -ipa makes shared signatures load-bearing), so accuracy of
`signature_guess` matters more than completeness of `notes`.

## What to read

1. `asm/<target>.s` — the file itself
2. `asm/include/<target>.inc` — `.public` list (exports + imports mixed;
   cross-reference with `thumb_func_start`/`arm_func_start` to split them)
3. Existing headers in `include/` for any imported symbol that already has a
   C prototype — report those as `known_prototype`, don't re-derive them
4. Neighboring asm files for callers of this file's exports if signature
   evidence in-file is thin

## How to derive signatures

- Argument count: which of r0–r3 are read before being overwritten; stack
  args at `[sp, #N]` on entry mean 5+ params
- Return type: r0 set on all paths before `pop {... pc}` → returns a value;
  `mov r0, #0/#1` pairs → BOOL; untouched r0 → void
- Pointer params: `ldr/str [rN, #off]` against a param register → struct
  pointer; record every observed offset+width as a struct access
- Width cues: `ldrb`=u8, `ldrh`=u16, `ldrsh`=s16, `ldrsb`=s8, `ldr`=u32/ptr
- u16 params: `lsls rN,rN,#16; lsrs rN,rN,#16` narrowing at entry → u16;
  no narrowing but `ldrh` use → caller prototype was probably int
- Use existing project types where obvious (`HeapID`, `BOOL`, `SysTask *`,
  `Window *`, `SaveData *`, ...)

## Output schema (return EXACTLY this shape)

```json
{
  "file": "asm/<target>.s",
  "functions": [
    {
      "name": "sub_02012DD8",
      "mode": "thumb",
      "signature_guess": "void sub_02012DD8(UnkStruct_02012DD8 *a0, HeapID heapId)",
      "confidence": "high|medium|low",
      "callees": ["Heap_Alloc", "sub_02012E6C"],
      "struct_accesses": [
        {"param": 0, "offset": "0x14", "width": 4, "meaning": "ptr from Heap_Alloc(0x4c)"},
        {"param": 0, "offset": "0xc", "width": 4, "meaning": "state counter, incremented"}
      ],
      "callback_refs": ["sub_02012F54 stored as SysTask callback"],
      "notes": "switch on [a0+0xc] states 1..3"
    }
  ],
  "data": [
    {"label": "_02012FF0", "section": "rodata", "bytes": 32, "shape_guess": "u16[16] table indexed by state"}
  ],
  "imports": {
    "Heap_Alloc": {"known_prototype": "void *Heap_Alloc(HeapID heapId, u32 size)", "header": "include/heap.h"},
    "sub_02010F34": {"signature_guess": "void sub_02010F34(void *, void *, int)", "evidence": "3 args loaded, no return use"}
  },
  "shared_struct_hypotheses": [
    {"name": "UnkStruct_02012DD8", "size_guess": "0x4c (Heap_Alloc size)", "fields": [{"offset": "0x0", "width": 4, "meaning": "..."}]}
  ],
  "risks": ["jump table at _02012Exx", "rodata ordering", "imports from blocked file unk_02005D10"],
  "notes": "file-level observations"
}
```

Omit empty arrays/objects rather than inventing content. If a function's
purpose is unclear, say so in `confidence`/`notes` — a wrong `meaning` is
worse than a missing one. The orchestrator writes your JSON verbatim to
`tools/decomp_harness/sweep/out/<basename>.json`; malformed JSON wastes the run.
