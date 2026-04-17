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

## Known Difficult Patterns

- Switch statements with fall-through: MWCC generates specific branch table patterns
- Nested struct initialization: may need exact field ordering to match
- Bitfield operations: bit packing order is compiler-specific
- Inline functions from headers: must match exactly as the compiler would expand them
- Functions with many local variables: register pressure causes spills to stack in specific order
