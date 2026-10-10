#include "global.h"

extern u32 ov01_021EFE44(void *a);
extern void ov01_021F0960(u32 a, s16 b, s16 c, s16 d, s16 e, u8 f);

typedef struct UnkStruct_ov120_0225F08C {
    s32 unk0;
    u8 filler4[0x10];
    s32 unk14;
    u8 filler18[0x10];
    u32 unk28;
    s16 unk2C;
    s16 unk2E;
    u8 unk30;
    u8 unk31;
} UnkStruct_ov120_0225F08C;

u32 ov120_0225F08C(UnkStruct_ov120_0225F08C *p) {
    u32 r1, r2;
    s32 halfA, halfB;
    if (p->unk30 == 0) {
        return 1;
    }
    r1 = ov01_021EFE44(p);
    r2 = ov01_021EFE44((u8 *)p + 0x14);
    halfA = p->unk0 / 2;
    halfB = p->unk14 / 2;
    ov01_021F0960(p->unk28, (s16)(p->unk2E - halfB), (s16)(p->unk2E + halfB), (s16)(p->unk2C - halfA), (s16)(p->unk2C + halfA), p->unk31);
    return r1 | r2;
}
