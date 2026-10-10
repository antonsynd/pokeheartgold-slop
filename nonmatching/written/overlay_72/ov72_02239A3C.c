#include "global.h"

extern u32 sub_0202D568(void *a0);
extern void sub_0202D7F0(void *a0, u8 *out);
extern void sub_02069528(void *a0, int a1, void *a2);
extern void ov72_02237C30(int a0, int a1, u32 a2, void *a3);

typedef struct UnkStruct_ov72_02239A3C_Inner {
    void *unk_00;
    void *unk_04;
    u8 filler_08[4];
    void *unk_0C;
} UnkStruct_ov72_02239A3C_Inner;

typedef struct UnkStruct_ov72_02239A3C {
    UnkStruct_ov72_02239A3C_Inner *unk_00;
    u8 filler_04[0x18];
    int unk_1C;
} UnkStruct_ov72_02239A3C;

int ov72_02239A3C(UnkStruct_ov72_02239A3C *work) {
    u32 callerR3;
    u8 buf[2];
    u32 r4;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    buf[0] = (u8)callerR3;
    buf[1] = (u8)(callerR3 >> 8);
    r4 = sub_0202D568(work->unk_00->unk_00);
    sub_0202D7F0(work->unk_00->unk_04, buf);
    sub_02069528(work->unk_00->unk_0C, 1, (u8 *)work + 0xAD8);
    ov72_02237C30(buf[0], buf[1], r4, (u8 *)work + 0xAD8);
    work->unk_1C = 0x1b;
    *(int *)((u8 *)work + 0xFD4) = 0;
    return 3;
}
