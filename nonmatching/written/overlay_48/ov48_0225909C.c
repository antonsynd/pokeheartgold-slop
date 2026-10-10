#include "global.h"
#include "system.h"

typedef struct UnkStruct_ov48_0225909C_A {
    u8 padding_0000[0xC3E0];
    u32 unk_C3E0;
    u8 padding_C3E4[0x28];
    u8 unk_C40C[1];
} UnkStruct_ov48_0225909C_A;

typedef struct UnkStruct_ov48_0225909C_B {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
} UnkStruct_ov48_0225909C_B;

extern void ov48_02259DA0(void *a);
extern void PlaySE(u16 sndseq);
extern int ov48_02259188(UnkStruct_ov48_0225909C_A *a, UnkStruct_ov48_0225909C_B *b);
extern int ov48_0225A244(void *a, UnkStruct_ov48_0225909C_B *b);
extern int ov48_0225A20C(void *a, UnkStruct_ov48_0225909C_B *b);
extern void ov48_022593B4(UnkStruct_ov48_0225909C_A *a, u8 b, u8 c);
extern u32 ov48_02258D54(UnkStruct_ov48_0225909C_A *a, int keys, int heldKeys);

u32 ov48_0225909C(UnkStruct_ov48_0225909C_A *param0) {
    u32 callerR4;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    u32 v0 = callerR4;
    UnkStruct_ov48_0225909C_B v2;

    ov48_02259DA0(&param0->unk_C3E0);

    if (param0->unk_C3E0 & 2) {
        PlaySE(0x5dd);
        return 2;
    }

    if (gSystem.newKeys & 0x400) {
        if (ov48_02259188(param0, &v2) == 1) {
            if (ov48_0225A244(param0->unk_C40C, &v2) == 0) {
                if (ov48_0225A20C(param0->unk_C40C, &v2) != 0) {
                    ov48_022593B4(param0, v2.unk_04, v2.unk_08);
                    PlaySE(0x5d6);
                }
            }
        }
    } else {
        v0 = ov48_02258D54(param0, gSystem.newKeys, gSystem.heldKeys);
    }

    return v0;
}
