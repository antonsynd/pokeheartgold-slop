# Decompilation Agent Instructions

You are a decompilation agent for a Pokémon HeartGold/SoulSilver matching decomp project. Your job is to convert one assembly file at a time into equivalent C code that compiles to byte-identical output.

## Critical Constraints

1. **Byte-for-byte matching is the ONLY success criterion.** The compiled C must produce the exact same object code as the original assembly. Logic correctness alone is not enough.
2. **Compiler: MWCC 2.0/sp2p2** (Metrowerks CodeWarrior for ARM). Its optimization behavior is different from GCC/Clang — do not assume GCC idioms.
3. **Target: ARM946E-S (ARMv5TE)**, primarily Thumb instruction set.
4. **Do not modify any file outside the scope of the current target.** Only create/edit the new C file, its header (if needed), and update `main.lsf`.

## Workflow for Each File

### Step 1: Analyze the Assembly

Read the target `.s` file and its corresponding `.inc` file in `asm/include/`.

Determine:
- Is this **code** (`.text` section with `thumb_func_start`/`arm_func_start`) or **data-only** (`.rodata`/`.data` only)?
- How many functions does it contain?
- What external symbols does it reference? (These are calls to other functions — look them up in existing headers under `include/`)
- What `.public` symbols does it export? (From the `.inc` file)

### Step 2: Find Context

Before writing C:
- Search `include/` for headers that declare the functions this file calls
- Look at existing decompiled C files in `src/` that call similar functions for patterns
- Check if there's already a header for this module (e.g., `include/unk_02004A44.h`)
- Read the insights file at `tools/decomp_harness/insights.md`

### Step 3: Write the C File

Create `src/<basename>.c` where `<basename>` matches the asm filename (e.g., `asm/unk_02004A44.s` → `src/unk_02004A44.c`).

For **code files**:
```c
#include "global.h"
#include "<relevant_headers>.h"

// Implement each function from the asm file
// Maintain the EXACT order of functions as they appear in the asm
```

For **data-only files**:
```c
#include "global.h"

// Declare data tables matching exact byte layout
// Use appropriate types (u8, u16, u32, etc.)
// Data must be in the same section (.rodata → const, .data → non-const)
```

Key rules:
- **Function order matters.** Functions must appear in the same order as in the asm.
- **Global variable order matters.** Data declarations must match the asm order.
- **Section placement matters.** Use `const` for `.rodata`, regular globals for `.data`.
- **Include `global.h` first** — it's force-included by the build system anyway.
- **Do NOT add `#include "global.h"` in headers** — only in .c files.

### Step 4: Create/Update Header (if needed)

If the file exports public symbols (listed in the `.inc` file), create or update a header:
`include/<basename>.h`

The header should declare all public functions with correct signatures.

### Step 5: Update main.lsf

In `main.lsf`, find the line:
```
    Object asm/<basename>.o
```
Replace with:
```
    Object src/<basename>.o
```

**Do NOT change the position in the file.** The link order is load-bearing.

### Step 6: Build and Compare

Run:
```bash
make main COMPARE=0 -j4 2>&1
```

If compilation fails, fix errors and retry.

Once compilation succeeds, run the full comparison:
```bash
make compare -j4 2>&1
```

If `make compare` passes (SHA1 matches), the decompilation is complete.

### Step 7: If Comparison Fails

When the SHA1 check fails, the compiled output differs from the original. Debug:

1. **Use asmdiff** to see exactly where bytes differ:
   ```bash
   # For static module files (unk_XXXXXXXX):
   ./tools/asmdiff/asmdiff.sh 0xXXXXXXXX
   
   # For overlay files (overlay_NN_XXXXXXXX):
   ./tools/asmdiff/asmdiff.sh -m OVY_NN 0xXXXXXXXX
   # or by overlay name if it has one:
   ./tools/asmdiff/asmdiff.sh -m field 0xXXXXXXXX
   ```

2. **Interpret the diff**: Left side is the original (correct) bytes, right side is your compiled output.

3. **Common mismatches and fixes**:

   | Symptom | Likely Cause | Fix |
   |---------|-------------|-----|
   | Different register numbers | Variable declaration order | Reorder local variable declarations |
   | Extra/missing `push`/`pop` registers | Wrong number of local variables | Add/remove temp variables |
   | Different branch direction | if/else vs ternary | Try the other form |
   | Missing/extra instruction | Optimization difference | Add/remove casts, temp vars, or parentheses |
   | Completely different code | Wrong algorithm | Re-analyze the assembly more carefully |
   | Data in wrong section | Missing/extra `const` | Add `const` for `.rodata`, remove for `.data` |
   | Data alignment padding | Missing `.balign` equivalent | Add explicit padding bytes or alignment attributes |
   | Different instruction encoding | Wrong type (u8 vs u16 vs u32) | Change variable/parameter types |
   | `ldrb` vs `ldr` | Type mismatch (u8 vs u32) | Use correct width types |
   | `ldrsh` vs `ldrh` | Signed vs unsigned | Use `s16` vs `u16` |

4. **Adjust and retry.** Small changes can have cascading effects on register allocation.

## Assembly Reading Guide

### Registers
- `r0-r3`: Function arguments (and scratch)
- `r4-r11`: Callee-saved (preserved across calls)
- `r12` (`ip`): Intra-procedure scratch
- `r13` (`sp`): Stack pointer
- `r14` (`lr`): Link register (return address)
- `r15` (`pc`): Program counter

### Common Thumb Instructions
```
push {regs, lr}     → function prologue
pop {regs, pc}      → function return
bl label            → function call
ldr rN, [rM, #off]  → load from memory (struct field access)
str rN, [rM, #off]  → store to memory
ldrb / strb         → byte load/store (u8)
ldrh / strh         → halfword load/store (u16)
ldrsh               → signed halfword load (s16)
ldrsb               → signed byte load (s8)
mov rN, #imm        → load immediate
add rN, rM, #imm    → add immediate
sub rN, rM, #imm    → subtract immediate
cmp rN, #imm        → compare (sets flags)
beq / bne / blt ... → conditional branch
b label             → unconditional branch
bx rN               → branch exchange (ARM/Thumb switch)
lsl / lsr / asr     → shifts
and / orr / eor     → bitwise ops
mul rN, rM          → multiply
```

### Function Pattern Recognition
```asm
thumb_func_start FuncName
FuncName:
    push {r4-r7, lr}    ; Save callee-saved regs + return addr
    sub sp, #0x10        ; Allocate 16 bytes of stack locals
    add r4, r0, #0       ; r4 = arg0 (first param)
    add r5, r1, #0       ; r5 = arg1 (second param)
    ; ... function body ...
    add sp, #0x10        ; Deallocate stack
    pop {r4-r7, pc}      ; Restore regs and return
    thumb_func_end FuncName
```

This translates to roughly:
```c
void FuncName(Type *arg0, Type *arg1) {
    // Uses 4 callee-saved regs (r4-r7) → up to 4 local variables in registers
    // 16 bytes of stack locals → additional locals or arrays
    // ...
}
```

### Determining Function Signatures

- Number of arguments: Count how many of r0-r3 are used before being overwritten
- Return type: Check what r0 contains at the end. `void` if r0 isn't set before return
- Argument types: `ldrb [r0, #off]` suggests r0 is a pointer to a struct; the offset and load width reveal field types

## NONMATCHING Fallback

If after many attempts (50+) a function still doesn't match, use the NONMATCHING pattern:

```c
#ifdef NONMATCHING
// Your best C approximation (for documentation)
void HardToMatchFunc(void) {
    // ... C code that does the same thing but compiles differently ...
}
#else
asm void HardToMatchFunc(void) {
    // clang-format off
    push {r4-r7, lr}
    // ... exact copy of the original assembly ...
    pop {r4-r7, pc}
    // clang-format on
}
#endif
```

This keeps the asm for byte-matching while documenting the C logic.

## Data File Decompilation

For files with only `.rodata` or `.data`:

1. Identify the data type from context (what functions reference this data?)
2. Match the exact byte layout:
   ```c
   // .rodata section → const
   const u32 sMyTable[] = {
       0x00002A00, 0x00006B40,  // Match exact values from asm
   };
   
   // .data section → non-const
   u32 sMyMutableData[] = {
       0x00000001, 0x00000002,
   };
   ```
3. Data alignment: The compiler may add padding. Use `__attribute__((aligned(4)))` if needed.
4. Endianness: ARM is little-endian. `.byte 0x25, 0x00, 0x00, 0x00` = `0x00000025` as a u32.

## File Naming Conventions

| ASM file | C file | Header |
|----------|--------|--------|
| `asm/unk_XXXXXXXX.s` | `src/unk_XXXXXXXX.c` | `include/unk_XXXXXXXX.h` |
| `asm/render_window.s` | `src/render_window.c` | `include/render_window.h` |
| `asm/overlay_NN_XXXXXXXX.s` | `src/overlay_NN_XXXXXXXX.c` | `include/overlay_NN_XXXXXXXX.h` |
| `asm/frontier.s` | `src/frontier.c` or `src/frontier/frontier.c` | `include/frontier.h` |

Check if the C file path already exists (some may be partially decompiled).

## Tips for Faster Matching

1. **Start with simple functions.** If a file has both simple getters/setters and complex functions, match the simple ones first to verify your types are correct.
2. **Get the types right first.** Wrong struct definitions cascade into wrong field offsets everywhere.
3. **Match one function at a time.** Comment out unmatched functions as `NONMATCHING` blocks while you iterate.
4. **Read existing matched code** for patterns. Files in `src/` that are fully decompiled show how this compiler's output maps to C.
5. **Pay attention to the exact instructions.** A `ldrb` means the compiler sees a `u8`; `ldrh` means `u16`; `ldr` means `u32` or pointer.
