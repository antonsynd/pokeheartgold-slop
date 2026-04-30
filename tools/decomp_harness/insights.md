# Decomp Insights

Accumulated knowledge from decompilation attempts. Each insight should help future
attempts match MWCC output more reliably.

## Compiler: MWCC 2.0/sp2p2

- Target: ARM946E-S (ARMv5TE), primarily Thumb mode
- Flags: `-O4,p -enum int -lang c99 -char signed -inline on,noauto -interworking`
- `-O4,p` means level 4 optimization with peephole; this aggressively reorders code
- `-inline on,noauto` means inlining is allowed but only when explicitly requested (via `inline` keyword or `__attribute__((always_inline))`)

## General Patterns

### Register allocation
- MWCC allocates registers in order: r0-r3 for arguments, r4-r7 for locals (Thumb), r4-r11 for locals (ARM)
- Function arguments beyond 4 are passed on the stack
- Return values in r0 (or r0-r1 for 64-bit)

### Stack frame
- `push {r4-r7, lr}` / `pop {r4-r7, pc}` is typical Thumb prologue/epilogue
- `sub sp, #N` for local variables; `add sp, #N` before return
- Stack variables are accessed via `sp + offset`

### Control flow
- `if/else` compiles to `cmp + bCC` (conditional branch)
- `switch` compiles to branch table or cascading compares depending on density
- Loops: `for` and `while` typically compile to a test-at-top or test-at-bottom pattern
- MWCC often hoists loop-invariant loads outside the loop body

### Data access
- Global data accessed via `ldr rN, =address` (literal pool)
- Struct member access: `ldr rN, [rBase, #offset]`
- Array access: index * element_size + base

### Common MWCC idioms
- `mov r0, #0` for FALSE/NULL return
- `mov r0, #1` for TRUE return
- `add rN, rM, #0` is the same as `mov rN, rM` in Thumb
- `lsl r0, r0, #0` is a NOP (sometimes emitted by MWCC)
- MWCC sometimes emits `bx` to switch between ARM/Thumb for interworking

### Matching tricks
- Variable declaration order affects register allocation
- Using `u32` vs `int` can change sign extension instructions
- Casting to `(void)` suppresses unused-variable warnings without changing codegen
- Ternary operator `a ? b : c` can produce different code than `if/else`
- `do { } while (0)` and similar macro patterns can affect branch structure
- Assigning to a temp variable vs direct use can change register lifetimes
- `NELEMS(array)` macro (sizeof(a)/sizeof(*a)) matches constant folding

### Data sections
- `.rodata` = const arrays/tables; use `const` qualifier in C
- `.data` = initialized mutable globals; file-scope variables
- `.bss` = zero-initialized globals
- Data alignment: `.balign 4, 0` pads to 4-byte boundary (use struct padding or explicit alignment)

### Function types
- `thumb_func_start/end` = Thumb mode function (most common in this game)
- `arm_func_start/end` = ARM mode function (less common, used for performance-critical code)
- Functions starting with `_` prefix are often compiler-generated or SDK functions

## Data-Only Files

Some asm files contain only `.rodata` or `.data` sections with no executable code.
These need C files with `const` arrays matching the exact byte layout.

Pattern for data-only files:
```c
#include "global.h"

// Match exact byte layout from asm
const u8 sDataTable[] = {
    0x25, 0x00, 0x00, 0x00,
    // ...
};
```

## Overlay-Specific Notes

- Overlay functions are named `ovNN_XXXXXXXX` where NN = overlay number, XXXXXXXX = address
- Overlay code loads at specific VMA addresses (visible in function labels)
- Overlay dependencies are declared in main.lsf (`After` clauses)
- Each overlay has its own .sbin checked against a SHA1

## Build Workflow on macOS

- Always use `chiri pkg -- build` (or `chiri pkg -- compare`) instead of raw `make -C`.
  The symlink fixdep patch in common.mk depends on Wine resolving CWD correctly, and
  `chiri` sets this up properly. Raw `make -C <abs-path>` can cause make to spin at 100%
  CPU during dependency resolution if `.d` files have stale Wine `Z:` paths.
- For fast iteration: `chiri pkg -- build --target main --no-compare` compiles ARM9 only,
  skipping filesystem/ROM packing. Then `chiri pkg -- compare` for full ROM SHA1 check.
- If `.d` files get corrupted (e.g. missing `gsed` during first build), delete them:
  `find build -name "*.d" -delete` then `chiri pkg -- tidy` and rebuild.
- Prerequisites: `brew install gnu-sed arm-gcc-bin` (via `osx-cross/homebrew-arm` tap).

## Task Callback Pattern

Many field system functions follow this pattern:
1. A public `sub_XXXX` allocates a work struct via `Heap_AllocAtEnd`, fills it, and
   calls `TaskManager_Call(man, callback, env)`.
2. A static callback uses `TaskManager_GetFieldSystem` + `TaskManager_GetEnvironment`,
   implements a state machine (switch on `env->state`), and returns TRUE when done
   (after freeing the env with `Heap_Free`).
- The callback is referenced by literal pool (`_XXXX: .word sub_YYYY`) in the caller.
- The work struct fields can be inferred from how the caller stores arguments and how
  the callback reads them at specific offsets.

## Save Chunk Pattern

Save data chunks follow this pattern:
1. `sub_XXXX_sizeof(void)` returns `sizeof(StructType)` — always a trivial function.
2. `sub_XXXX_init(StructType *a0)` clears the struct with `MI_CpuClear32` or `MI_CpuClear8`
   then sets default field values.
3. A getter calls `SaveArray_Get(saveData, SAVE_INDEX)` and returns the pointer.
4. Field getters/setters are trivial `return a0->fieldN` / `a0->fieldN = a1`.
- `save_arrays.c` registers these via `DECL_CHUNK_EX` macros. When decompiling, replace
  the macro with an `#include` of the new header and remove the `DECL_CHUNK_EX` line.
- Check the save index constant in `include/constants/save_arrays.h`.

## MWCC Codegen Details (from unk_02004A44 decomp)

### Register allocation and variable declaration order
- MWCC assigns callee-saved registers (r4-r7 in Thumb) based on variable declaration
  order in the function. Reordering declarations can swap registers and break matching.
- When the asm uses r6 for variable A and r7 for variable B, try declaring B before A
  (MWCC sometimes allocates in reverse declaration order).
- Moving a declaration from block scope to function scope (required for C89) changes
  register lifetime and can affect allocation — match the original variable scoping as
  closely as C89 allows.

### Parameter types and narrowing
- If a function takes `u16` but the asm shows no `lsls r0, r0, #16; lsrs r0, r0, #16`
  at function entry, the original parameter was likely `int`. MWCC inserts narrowing
  for `u16` params; `int` params skip it.
- When calling a function declared with `u16` param and passing an `int`, MWCC inserts
  narrowing at the call site. If the asm has no narrowing, either the callee's prototype
  used `int`, or MWCC optimized it away.
- Tail call functions must forward argument types exactly — a wrapper that changes
  `int` → `u16` will insert unwanted narrowing before the tail call.

### Switch case ordering
- MWCC emits switch case code blocks in **source order**, not numeric order. The jump
  table entries are always in numeric order, but the code they point to follows source
  layout. If the asm's code blocks appear in a specific order, reorder the C cases to
  match.

### Branch patterns: || vs &&
- `if (a || b) { body }` generates: `cmp a; bne body; cmp b; beq skip`
- `if (a && b) { body }` generates: `cmp a; beq skip; cmp b; beq skip`
- The asm branch direction (beq vs bne after comparisons) tells you which logical
  operator was used. Getting this wrong produces same-size code with different branch
  instructions.

### if/else direction and GF_ASSERT
- `GF_ASSERT(cond)` expands to `if (!cond) GF_AssertFail()` — the assert-fail path is
  the `else` branch. When asm shows a pattern like `cmp; beq over_assert; bl AssertFail`,
  the C is `if (flag == 0) { GF_AssertFail(); }` not `GF_ASSERT(flag != 0)` — both work
  logically but can produce different branch directions.
- Swapping if/else direction (putting the common path first vs the assert path first)
  changes the branch polarity and instruction encoding.

### Bitfield access patterns
- `lsls rN, rN, #K; lsrs rN, rN, #K` is a bitfield mask extracting the low (32-K) bits.
  In C, use a bitfield struct member (e.g. `u32 fileId : 24`) rather than `& 0x00FFFFFF`
  — the latter may generate `ldr + and` with a literal pool constant instead.
- `(x << 8) >> 8` can also produce the lsls/lsrs pattern but may not match depending
  on optimization level.

### MWCC IPA and header changes
- MWCC with `-ipa file` performs inter-procedural analysis at file scope. Changing a
  function's return type or parameter types in a shared header can cause cascading codegen
  changes in ALL functions within the same compilation unit that call it — even if the
  callers discard the return value or pass fitting literals.
- This means: if file A.c is already matched and includes header H.h, you CANNOT change
  any declaration in H.h that A.c uses without risking breaking A.c's matching. Even
  changing `void PlayBGM(u16)` to `BOOL PlayBGM(u16)` will break callers due to IPA.
- When decompiling file B.c that defines functions with different actual signatures than
  what the shared header says (e.g., header says `void` but function returns `BOOL`),
  you're stuck: the C definition must match the header, but that produces wrong codegen.
- Workaround: either fix both files simultaneously (decompile them together), or use
  NONMATCHING for the conflicting functions.
- Files that share many function declarations through common headers (like sound.h,
  sound_chatot.h) are best decompiled as a group rather than individually.

### BSS sizing
- When asm BSS symbols have sizes that don't match `sizeof(StructType)`, use a raw
  `u8 array[0xNN]` and cast at usage sites: `*(StructType *)array`. This preserves the
  exact BSS byte count.
- Multiple BSS variables in the C file become separate `.bss` sections in the object,
  but the linker merges them. The total size must match.

### Loop patterns
- `for (i = 0; i < N; i++)` may compile differently than `do { ... i++; } while (i < N)`
  — MWCC sometimes uses test-at-bottom (do/while) even for for loops with `-O4`, but
  if the loop count can be zero, there's an early-exit check.
- `size / 2` and `size >> 1` can produce different instructions at `-O4` — try both if
  one doesn't match.

## Object File Comparison

Use `tools/decomp_harness/objdiff.py` for function-by-function comparison:
```bash
# Save ASM reference, switch main.lsf to C, build, compare
cp build/heartgold.us/asm/foo.o /tmp/foo_asm.o
# (edit main.lsf, build C version)
python3 tools/decomp_harness/objdiff.py /tmp/foo_asm.o build/heartgold.us/src/foo.o
python3 tools/decomp_harness/objdiff.py /tmp/foo_asm.o build/heartgold.us/src/foo.o --summary
python3 tools/decomp_harness/objdiff.py /tmp/foo_asm.o build/heartgold.us/src/foo.o --bytes sub_XXXX
```

### Parameter copy-propagation: cmp r4 vs cmp r0
- When a function parameter (r0) is copied to a callee-saved register (`adds r4, r0, #0`),
  MWCC performs copy propagation: comparisons on the copy (r4) are substituted back to the
  original (r0). So `int diff = param; if (diff < N)` generates `adds r4, r0, #0; cmp r0, #N`.
- `adds r4, r0, #0; cmp r4, #N` (using r4) ONLY occurs when r0 is a **function return value**
  that was saved before a subsequent function call would clobber it. MWCC does not do this
  substitution for return values — only for parameters.
- If the target asm shows `adds r4, r0, #0; cmp r4, #N` at function entry (no preceding bl),
  this is likely unexplainable via pure C — may require NONMATCHING. The pattern in
  unk_0200B150.s OamManager_Create is such a case.
- **objdiff.py --summary is buggy**: it reports OK for functions that differ by 1 byte when
  the byte difference is in a `cmp rN` instruction. Always use `--disasm FN` or compare
  the final binaries directly with `cmp -l` to confirm byte-exact matching.

## Enum Casts Required by -W noimplicitconv

MWCC with `-W noimplicitconv` rejects implicit int→enum conversions. Common patterns:
- `NarcId`: `GfGfxLoader_LoadCharData(0x26, ...)` → `GfGfxLoader_LoadCharData((NarcId)0x26, ...)`
- `GFPalSlotOffset`: `palette_num << 5` passed to `GfGfxLoader_GXLoadPal(... palSlotOffset ...)` → cast to `(enum GFPalSlotOffset)(palette_num << 5)`
- Any computed integer expression passed to an `enum` parameter needs an explicit cast.

## Public vs Static Function Visibility

Always check `asm/include/<file>.inc` for `.public` declarations before marking functions `static`.
- Functions in the `.public` list must NOT be `static` in C.
- Functions referenced by other translation units (overlays call static-module functions by name) will cause linker `Undefined` errors if incorrectly marked `static`.
- Add all public functions to `include/<file>.h` as well.

## Known Difficult Patterns

- Switch statements with fall-through: MWCC generates specific branch table patterns; case order matters (see above)
- Nested struct initialization: may need exact field ordering to match
- Bitfield operations: bit packing order is compiler-specific; use bitfield structs not masks
- Inline functions from headers: must match exactly as the compiler would expand them
- Functions with many local variables: register pressure causes spills to stack in specific order; declaration order is load-bearing
