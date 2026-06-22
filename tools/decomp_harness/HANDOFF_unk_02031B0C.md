# Handoff: `asm/unk_02031B0C.s` (ApricornBox save module)

**Status: 16/39 functions matched (WIP).** `main.lsf` is on `asm/unk_02031B0C.o` so the full ROM
still matches (`chiri pkg -- compare` = EXIT 0). `src/unk_02031B0C.c` is committed but NOT in the
build. The file now **COMPILES** (the hard part — see the include fix below). Remaining work is
the function-matching grind.

```
cp build/heartgold.us/asm/unk_02031B0C.o /tmp/unk_02031B0C_asm.o   # after a build with asm
gsed -i 's|Object asm/unk_02031B0C.o|Object src/unk_02031B0C.o|' main.lsf
chiri pkg -- build --target main --no-compare   # NOTE: single-object build also works once it compiles
python3 tools/decomp_harness/objdiff.py /tmp/unk_02031B0C_asm.o build/heartgold.us/src/unk_02031B0C.o --summary
```

## CRITICAL — the include-order fix (took most of the effort)
`unk_02031B0C.h` is NOT self-contained: it uses `String *` but only `#include "save.h"`, and its
chain (`save.h` → `pm_string.h`) needs `enum HeapID` (heap.h) and `String` (pm_string.h) defined
FIRST. clang-format forces the file's own header (`unk_02031B0C.h`) to line 1, before `global.h`,
breaking everything. The fix (KEEP IT) is a locked include block at the top of the .c:
```c
// clang-format off
#include "global.h"
#include "heap.h"
#include "pm_string.h"
#include "unk_02031B0C.h"
// clang-format on
#include "constants/items.h"
#include "msgdata.h"
#include "player_data.h"
#include "string_util.h"
```
Without this, every header cascades "declaration syntax error" / "object 'BOOL' redefined". This
is a general pattern for own-headers that use `String`/`SaveData` without including their deps.

## Struct layout (in the .c; verify against asm but looks right):
```c
typedef struct ApricornBoxSlot { u32 trainerID; u8 gender,language,version,pad; u16 name[8];
    UnkStruct_02031CEC unkStruct; } ApricornBoxSlot;   // 0x20
struct SaveApricornBox { u8 apricornCount[7]; u8 kurtQuantity; u8 kurtBallType; u8 unk09;
    u16 unk0A; UnkStruct_02031CEC kurtBallStruct; u32 unk14,unk18,unk1C;
    ApricornBoxSlot slots[3]; };   // 0x80
```
Save_ApricornBox_Get = `SaveArray_Get(saveData, 0x26)`; sizeof = 0x80.

## SOLVED pattern: u32-param signed comparison
`ApricornBox_CountApricorn(box, u32 a1)`: asm `cmp r1,#7; blt` (SIGNED) but `if (a1 >= 7)` with
u32 gives `bcc` (unsigned). Fix: `if ((int)a1 >= 7)`. Apply the same `(int)` cast to other u32
params compared to small constants where the asm uses blt/bge (likely sub_02031C30's apricornId,
ApricornBox_SetKurtApricorn, etc.). u16/u8 params promote to int and already give blt.

## REMAINING 23 (objdiff at last build): mostly small —
ApricornBox_GiveApricorn (SIZE 32v26), ApricornBox_TakeApricorn (1), ApricornBox_SetKurtApricorn
(SIZE 24v32), ApricornBox_GetKurtBall (6), sub_02031BEC (5), sub_02031C08 (SIZE 38v40),
sub_02031C30 (49 — recipe/bitfield, complex), sub_02031CA0 (SIZE 42v44), sub_02031CCC (1),
sub_02031CEC (SIZE 124v128 — kurtBallStruct u16-copy: the asm copies via ldrh/strh not strb, the
drafter flagged this), sub_02031D80 (11), sub_02031DA0 (SIZE 568v600 — big sort/dispatch, drafter
flagged the switch case-0 early-return), sub_02031FE8 (3), sub_02032004(OK), sub_02032024 (3),
sub_02032058 (SIZE 132v128), sub_020321A0 (SIZE 266v274 — slot-shift pointer arith), sub_020322AC
(2), sub_02032308 (SIZE 56v58), sub_02032340 (1), sub_02032354 (SIZE 412v460 — biggest, recipe
sort + modifier table _020F68DE + clamp, drafter flagged), sub_02032504 (SIZE 130v142), sub_02032588 (SIZE 64v66).
Rodata: sBallItems[7], _020F68DE[36] (s8 modifier table), _020F6902[40] (recipe data) — all in the .c.
