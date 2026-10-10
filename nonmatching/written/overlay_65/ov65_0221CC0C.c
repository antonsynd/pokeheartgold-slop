#include "global.h"
#include "sprite.h"

struct UnkStruct_ov65_0221CC0C;

typedef int (*UnkFunc_ov65_0221CC0C)(struct UnkStruct_ov65_0221CC0C *, void *, u32, u32);

typedef struct UnkStruct_ov65_0221CC0C {
    /* 0x000 */ u8 filler_000[0x94];
    /* 0x094 */ int selectedSlot[2];
    /* 0x09C */ u16 cursorGlowAngle;
    /* 0x09E */ u8 filler_09E[0x14C - 0x9E];
    /* 0x14C */ u32 subStepResult;
    /* 0x150 */ u8 filler_150[8];
    /* 0x158 */ int pendingDirection[2];
    /* 0x160 */ u8 filler_160[0x344 - 0x160];
    /* 0x344 */ Sprite *cursorSprites[2];
    /* 0x34C */ u8 filler_34C[0x69C - 0x34C];
    /* 0x69C */ u8 monDisplayData[0x10 * 13];
    /* 0x76C */ u8 filler_76C[0x2220 - 0x76C];
    /* 0x2220 */ UnkFunc_ov65_0221CC0C subStepCallback;
} UnkStruct_ov65_0221CC0C;

int ov65_0221DDC0(int *directionFlag, int *slotIdx, Sprite *sprite, void *displayData, int side);
void ov65_0221DCBC(u16 *angle);
void ov65_0221DE24(UnkStruct_ov65_0221CC0C *tr, int cmd, int value);
void ov65_0221CB5C(UnkStruct_ov65_0221CC0C *tr);

int ov65_0221CC0C(UnkStruct_ov65_0221CC0C *tr) {
    register u32 callerR2 __asm__("r2");
    register u32 callerR3 __asm__("r3");
    __asm__ volatile("" : "=r"(callerR2), "=r"(callerR3));
    if (tr->subStepCallback != NULL) {
        tr->subStepResult = tr->subStepCallback(tr, tr->subStepCallback, callerR2, callerR3);
    }
    switch (tr->subStepResult) {
    case 2:
        return 2;
    case 3:
        return 3;
    default:
        break;
    }
    if (ov65_0221DDC0(&tr->pendingDirection[0], &tr->selectedSlot[0], tr->cursorSprites[0], tr->monDisplayData, 0)) {
        ov65_0221CB5C(tr);
    }
    ov65_0221DDC0(&tr->pendingDirection[1], &tr->selectedSlot[1], tr->cursorSprites[1], tr->monDisplayData, 1);
    ov65_0221DCBC(&tr->cursorGlowAngle);
    ov65_0221DE24(tr, 0x17, tr->selectedSlot[0]);
    return 1;
}
