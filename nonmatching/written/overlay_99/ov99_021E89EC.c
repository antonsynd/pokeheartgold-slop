#include "global.h"

extern void *ov98_0221EEFC(void *textSys);
extern void BufferPokeathlonEventName(void *messageFormat, u32 fieldno, u32 eventId);
extern void BufferIntegerAsString(void *messageFormat, u32 idx, s32 num, u32 numDigits, int strconvmode, BOOL whichCharset);
extern void ov98_0221EBD8(void *textSys, u32 windowIdx, u32 msgId, BOOL center);
extern void ov98_0221EBEC(void *textSys, u32 windowIdx, u32 msgId, BOOL center, u8 y, u32 fontId);
extern void ov98_0221EC08(void *textSys, u32 windowIdx, u32 msgId, u8 x, u8 y);
extern void ov98_0221ECD0(void *textSys, u32 windowIdx, u32 msgId, s32 value, u32 numDigits, u32 bufIdx);
extern void ov98_0221EDC4(void *textSys, u32 windowIdx, u32 msgId, u32 bufIdx, void *profile);
extern void ov98_0221EE84(void *textSys, u32 windowIdx);
extern void ov98_0221EE9C(void *textSys, u32 windowIdx, void *string, u32 x, u8 y);
extern s32 ov99_021E94FC(void *a, u8 event, u32 b);
extern BOOL ov99_021E8544(u8 *data, u8 idx);
extern s32 ov99_021E94CC(void *a, s8 event, u8 idx, u32 b);
extern void ov99_021E88EC(u8 *data, s32 value, u32 windowIdx, u32 unused, u32 y);
extern void ov99_021E9020(u8 *data);
extern void *ov99_021E9518(void *a, u8 event, u8 idx);
extern s32 ov99_021E82E4(void *a, u8 event);
extern BOOL ov99_021E945C(void *a);
extern void *ov99_021E9508(void *a);
extern BOOL ov99_021E84EC(u8 *data, s8 event);

#define TEXTSYS(d) (*(void **)((d) + 0x10))
#define MODE(d) (*(s8 *)((d) + 0xac))
#define LINKED(d) (*(u32 *)((d) + 0xb0))

void ov99_021E89EC(u8 *data) {
    int i;
    BOOL flag;
    void *msgFmt;

    BufferPokeathlonEventName(ov98_0221EEFC(TEXTSYS(data)), 0, *(u8 *)(data + 0xac));
    ov98_0221EC08(TEXTSYS(data), 2, 0x3e, 1, 1);
    ov98_0221EBEC(TEXTSYS(data), 5, MODE(data) + 0x41, 0, 1, 0);
    msgFmt = ov98_0221EEFC(TEXTSYS(data));
    BufferIntegerAsString(msgFmt, 0, ov99_021E94FC(*(void **)data, *(u8 *)(data + 0xac), LINKED(data)), 7, 1, 1);
    ov98_0221EC08(TEXTSYS(data), 3, 0x36, 1, 0);
    for (i = 0; i < 5; i++) {
        if (i == 0 && LINKED(data) == 0) {
            flag = TRUE;
        } else {
            flag = FALSE;
        }
        if (!ov99_021E8544(data, (u8)i)) {
            s32 value = ov99_021E94CC(*(void **)data, MODE(data), (u8)i, LINKED(data));
            ov99_021E88EC(data, value, i + 7, MODE(data) + 0x56, flag);
        } else {
            ov98_0221EBEC(TEXTSYS(data), i + 7, MODE(data) + 0x60, 0, (u8)flag, 0);
        }
    }
    if (LINKED(data) != 0) {
        ov98_0221EBD8(TEXTSYS(data), 6, 0x4b, 0);
        ov99_021E9020(data);
        for (i = 0; i < 5; i++) {
            if (!ov99_021E8544(data, (u8)i)) {
                void *string = ov99_021E9518(*(void **)data, *(u8 *)(data + 0xac), (u8)i);
                ov98_0221EE9C(TEXTSYS(data), i + 0xc, string, 0, 1);
            }
        }
        return;
    }
    if (*(u32 *)(data + 0xbc + MODE(data) * 4) != 0) {
        ov98_0221EE84(TEXTSYS(data), 0x11);
        ov98_0221EE84(TEXTSYS(data), 0x12);
    } else {
        s32 value = ov99_021E82E4(*(void **)data, (u8)MODE(data));
        ov98_0221ECD0(TEXTSYS(data), 0x11, 0x6b, value, 3, 0);
        ov98_0221EBD8(TEXTSYS(data), 0x12, 0x6a, 0);
    }
    if (MODE(data) < 0) {
        ov98_0221EE84(TEXTSYS(data), 6);
    }
    if (!ov99_021E945C(*(void **)data)) {
        if (*(u32 *)(data + 0xbc + MODE(data) * 4) != 0) {
            ov98_0221EBD8(TEXTSYS(data), 6, 0x6d, 0);
        } else {
            ov98_0221EDC4(TEXTSYS(data), 6, 0x6c, 0, ov99_021E9508(*(void **)data));
        }
        return;
    }
    if (ov99_021E84EC(data, MODE(data))) {
        ov98_0221EDC4(TEXTSYS(data), 6, 0x6c, 0, ov99_021E9508(*(void **)data));
        return;
    }
    ov98_0221EBD8(TEXTSYS(data), 6, MODE(data) + 0x4c, 0);
}
