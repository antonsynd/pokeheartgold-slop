#include "global.h"
#include "unk_02005D10.h"

extern u8 ov96_0221DC18[];

BOOL sub_0200606C(u16 seqNo, int playerNo);

void ov96_021F6088(u8 *param0, int param1, s32 *param2) {
    u8 *entry;
    s32 value;
    s32 scaled;
    s32 clamped;
    u8 *slot;

    value = param2[1];
    if (value > 0) {
        entry = param0 + 0xfac + param1 * 0x1c;
        if (*(s32 *)(entry + 0x14) == 0) {
            scaled = (s32)((double)(value / 64) / 2.5);
            clamped = -param2[0] / 4;
            if (clamped < 0) {
                if (clamped < -0xA000) {
                    clamped = -0xA000;
                }
            } else if (clamped > 0xA000) {
                clamped = 0xA000;
            }
            slot = param0 + 0xa8 + param1 * 0x38;
            *(s32 *)slot = clamped;
            *(s32 *)slot = (*(s32 *)(param0 + param1 * 0x38 + 0xc4) * *(s32 *)slot) / 0xc;
            *(s32 *)entry = -scaled;
            *(s32 *)(entry + 0x18) = -scaled;
            *(s32 *)(entry + 0x14) = 1;
            sub_0200606C(0x8C2, ov96_0221DC18[param1]);
        }
    }
}
