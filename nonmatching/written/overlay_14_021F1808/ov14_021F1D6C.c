#include "global.h"

u16 ov14_021E6070(void *a, u8 b, u32 c, u32 d);
int ov14_021E8544(void *a);
void ov14_021E83F4(void *a);
void ov14_021E8314(void *a);
void ov14_021F5FBC(void *a, u16 b);
void ov14_021F2A18(void *a, u32 b, u32 c);
int ov14_021F2A44(void *a, u32 b);
void ov14_021F396C(void *a, u8 b, u32 c);
void ov14_021F3844(void *a, u16 b);
void ov14_021F39D0(void *a);
void ov14_021F34C8(void *a, u8 b, u32 c);
void ov14_021E88BC(void *a);
BOOL ItemIdIsMail(u16 itemId);
void ov14_021F6928(void *a, u32 b, u32 c);
void ov14_021F40DC(void *a);
void ov14_021F2F88(u8 a, s16 *b, s16 *c, u32 d);
void ov14_021F1F24(void *a);
void ov14_021F0234(void *a, void *func, u32 c);
extern void ov14_021EACD4(void);

#define DATA(p) (*(u8 **)((p) + 0x34))
#define ITEM(p) (*(u16 *)(DATA(p) + 0x88C8))
#define OBJ(p) (*(void **)(DATA(p) + 0x2F0))

void ov14_021F1D6C(u8 *param0, u8 param1) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; s16 h[2]; } pos;
    u16 prev;
    pos.w = callerR3;

    param0[0x21] = param1;
    prev = ITEM(param0);
    ITEM(param0) = ov14_021E6070(param0, param0[0x21], 6, 0);
    if (ov14_021E8544(OBJ(param0)) == 1) {
        if (prev != 0 || ITEM(param0) != 0) {
            ov14_021E83F4(OBJ(param0));
        }
    } else {
        ov14_021E8314(OBJ(param0));
    }
    ov14_021F5FBC(param0, ITEM(param0));
    if (ITEM(param0) != 0) {
        ov14_021F2A18(DATA(param0), 0xB, 0);
        ov14_021F396C(DATA(param0), param0[0x21], 1);
        ov14_021F3844(DATA(param0), ITEM(param0));
        ov14_021F39D0(DATA(param0));
        ov14_021F34C8(DATA(param0), param0[0x21], 1);
        ov14_021E88BC(OBJ(param0));
        if (ItemIdIsMail(ITEM(param0)) == 1) {
            ov14_021F6928(param0, 0x28, 9);
        } else {
            ov14_021F6928(param0, 0x28, 10);
        }
    } else {
        if (ov14_021F2A44(DATA(param0), 0xB) == 1) {
            ov14_021F2A18(DATA(param0), 0xB, 0);
            ov14_021F40DC(param0);
        }
    }
    ov14_021F2F88(param0[0x21], &pos.h[1], &pos.h[0], 1);
    *(s32 *)(DATA(param0) + 0x40B8) = pos.h[1] + 8;
    *(s32 *)(DATA(param0) + 0x40BC) = pos.h[0] + 8;
    ov14_021F1F24(param0);
    ov14_021F0234(param0, (void *)ov14_021EACD4, 0x8D);
}
