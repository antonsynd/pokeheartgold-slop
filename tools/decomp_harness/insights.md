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

## Known Difficult Patterns

- Switch statements with fall-through: MWCC generates specific branch table patterns
- Nested struct initialization: may need exact field ordering to match
- Bitfield operations: bit packing order is compiler-specific
- Inline functions from headers: must match exactly as the compiler would expand them
- Functions with many local variables: register pressure causes spills to stack in specific order
