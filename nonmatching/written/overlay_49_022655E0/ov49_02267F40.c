#include "global.h"

#include "unk_02018000.h"

typedef struct UnkStruct_ov49_02267F40 {
    s16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u8 unk_06;
    u8 padding_07[0xD1];
    UnkStruct_020181B0 *unk_D8[1];
} UnkStruct_ov49_02267F40;

typedef int (*UnkFunc_ov49_02267F40)(UnkStruct_ov49_02267F40 *, u32, u32, u32);

extern UnkFunc_ov49_02267F40 ov49_0226A484[];

BOOL ov49_02267F40(UnkStruct_ov49_02267F40 *param0) {
    u32 callerR3;
    int v0;
    int v1;
    UnkFunc_ov49_02267F40 v2;

    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");

    if (param0->unk_06 == 0) {
        return TRUE;
    }

    v2 = ov49_0226A484[param0->unk_02];
    v1 = v2(param0, (u32)v2, param0->unk_02 << 2, callerR3);
    param0->unk_00 = param0->unk_00 + 1;

    if (v1 == 1) {
        for (v0 = 0; v0 < param0->unk_04; v0++) {
            sub_020182A0(param0->unk_D8[v0], 0);
        }
        param0->unk_06 = 0;
    }
    return v1;
}
