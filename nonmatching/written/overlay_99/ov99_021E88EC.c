#include "global.h"

extern void GF_AssertFail(void);
extern void ov98_0221ED48(void *textSys, u32 windowIdx, u32 msgId, u32 x, u8 y);
extern void ov98_0221EDA4(void *textSys, s32 value, u32 numDigits, u32 bufIdx);

void ov99_021E88EC(u8 *data, s32 value, u32 windowIdx, u32 unused, u32 y) {
    s8 mode;

    if (value == 0xFFFF) {
        GF_AssertFail();
    }
    mode = *(s8 *)(data + 0xac);
    if (mode == 0) {
        ov98_0221EDA4(*(void **)(data + 0x10), (u8)(value / 30), 3, 0);
        ov98_0221EDA4(*(void **)(data + 0x10), (u8)(((value % 30) * 10) / 30), 1, 1);
    } else if (mode == 6) {
        ov98_0221EDA4(*(void **)(data + 0x10), (s32)((u32)value >> 10), 3, 0);
        ov98_0221EDA4(*(void **)(data + 0x10), ((value % 1024) * 10) / 1024, 1, 1);
    } else {
        ov98_0221EDA4(*(void **)(data + 0x10), value, 3, 0);
    }
    ov98_0221ED48(*(void **)(data + 0x10), windowIdx, *(s8 *)(data + 0xac) + 0x56, 0, (u8)y);
}
