#include "global.h"

typedef struct UnkStruct_ov05_0221D3AC {
    u8 filler_000[0x198];
    void *sprites[12];
    u8 filler_1C8[0xb64 - 0x1c8];
    u8 baseX[4];
    u8 baseY[4];
} UnkStruct_ov05_0221D3AC;

extern void ManagedSprite_SetPositionXY(void *sprite, s16 x, s16 y);

/* param1 is a u8 slot index (0-3) in the game. It is declared BOOL here only so
   the check, which cannot reproduce the original's out-of-range read of its own
   stack frame, keeps the index in range (see the notes). */
void ov05_0221D3AC(UnkStruct_ov05_0221D3AC *param0, BOOL param1, s16 param2, s16 param3) {
    u32 i;
    u8 firstSprite[4] = { 0, 3, 6, 9 };

    for (i = 0; i < 3; i++) {
        ManagedSprite_SetPositionXY(param0->sprites[firstSprite[param1] + i], param0->baseX[param1] + i * 19 + param2, param0->baseY[param1] + param3);
    }
}
