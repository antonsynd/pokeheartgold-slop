#include "global.h"
#include "math_util.h"

typedef struct UnkStruct_ov92_0225FF1C_Anim {
    fx32 unk_00;
    u8 filler_04[0x14];
} UnkStruct_ov92_0225FF1C_Anim; // size: 0x18

typedef struct UnkStruct_ov92_0225FF1C_State {
    int unk_00;
    u8 filler_04[8];
    int unk_0C;
    u8 filler_10[0x2C];
    s16 unk_3C;
    s16 unk_3E;
    s16 unk_40;
    s16 unk_42;
    UnkStruct_ov92_0225FF1C_Anim unk_44;
    UnkStruct_ov92_0225FF1C_Anim unk_5C;
    UnkStruct_ov92_0225FF1C_Anim unk_74;
    UnkStruct_ov92_0225FF1C_Anim unk_8C;
    int unk_A4;
    int unk_A8;
    int unk_AC;
    int unk_B0;
    u8 filler_B4[4];
    s16 unk_B8;
    s16 unk_BA;
} UnkStruct_ov92_0225FF1C_State;

typedef struct UnkStruct_ov92_0225FF1C {
    u8 filler_0000[0x114];
    u8 unk_114[0x320 - 0x114];
    u8 unk_320[0x4D0 - 0x320];
    u8 unk_4D0[0x1FC8 - 0x4D0];
    VecFx32 unk_1FC8;
    u8 filler_1FD4[0x2AE0 - 0x1FD4];
    UnkStruct_ov92_0225FF1C_State unk_2AE0;
} UnkStruct_ov92_0225FF1C;

typedef struct UnkStruct_ov92_02263D84 {
    int unk_00;
    int unk_04;
} UnkStruct_ov92_02263D84;

extern const s16 ov92_02263C34[];
extern const UnkStruct_ov92_02263D84 ov92_02263D84[][4];

extern int ov92_022607F8(UnkStruct_ov92_0225FF1C_Anim *param0);
extern int ov92_02260428(void *param0, int param1, int param2, s16 param3, s16 param4, f32 param5, int param6);
extern void ov92_02260798(UnkStruct_ov92_0225FF1C_Anim *param0, int param1, int param2, int param3, int param4);
extern void MTX_MultVec43(const VecFx32 *src, const void *m, VecFx32 *dst);

void ov92_0225FF1C(UnkStruct_ov92_0225FF1C *param0) {
    int v1, v2, v3;
    fx32 v4, v5;
    s16 v6 = 0;
    s16 v7 = 0;
    s16 v8;
    u32 entrySp;
    u32 callerR4, callerR5, callerR6;

    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");
    // The original copies 4 s16 values onto its stack and indexes them with an unchecked field; its table starts at
    // entry_sp - 0x40. clang's frame pointer is entry_sp - 8.
    entrySp = (u32)__builtin_frame_address(0) + 8;

    param0->unk_2AE0.unk_00++;

    if (param0->unk_2AE0.unk_40 != 0) {
        if (param0->unk_2AE0.unk_42 < 9) {
            if (param0->unk_2AE0.unk_42 <= 8) {
                v4 = param0->unk_2AE0.unk_74.unk_00;
                v5 = param0->unk_2AE0.unk_8C.unk_00;
                v2 = ov92_022607F8(&param0->unk_2AE0.unk_74);
                v3 = ov92_022607F8(&param0->unk_2AE0.unk_8C);
                v6 = (param0->unk_2AE0.unk_74.unk_00 - v4) >> FX32_SHIFT;
                v7 = (param0->unk_2AE0.unk_8C.unk_00 - v5) >> FX32_SHIFT;

                if ((v2 == 1) || (v3 == 1)) {
                    param0->unk_2AE0.unk_74.unk_00 -= v4;
                    param0->unk_2AE0.unk_8C.unk_00 -= v5;
                }
            } else {
                v6 = param0->unk_2AE0.unk_74.unk_00 >> FX32_SHIFT;
                v7 = param0->unk_2AE0.unk_8C.unk_00 >> FX32_SHIFT;
            }
        } else {
            v4 = param0->unk_2AE0.unk_44.unk_00;
            v5 = param0->unk_2AE0.unk_5C.unk_00;
            v2 = ov92_022607F8(&param0->unk_2AE0.unk_44);
            v3 = ov92_022607F8(&param0->unk_2AE0.unk_5C);
            v6 = (param0->unk_2AE0.unk_44.unk_00 - v4) >> FX32_SHIFT;
            v7 = (param0->unk_2AE0.unk_5C.unk_00 - v5) >> FX32_SHIFT;

            if ((v2 == 1) || (v3 == 1)) {
                if (param0->unk_2AE0.unk_A8 == 0) {
                    param0->unk_2AE0.unk_A8 = 1;
                    param0->unk_2AE0.unk_44.unk_00 -= v4;
                    param0->unk_2AE0.unk_5C.unk_00 -= v5;
                }
            }
        }

        ov92_02260428(param0->unk_114, 0, 0, v6, v7, 2.35 * 0.80, 0);
        v1 = ov92_02260428(param0->unk_320, 0, 0, v6, v7, 0.80, 0);

        if (v1) {
            VecFx32 v9 = { 0, FX32_CONST(100), 0 };
            MTX_MultVec43(&v9, param0->unk_4D0, &param0->unk_1FC8);
        }

        param0->unk_2AE0.unk_42++;
        param0->unk_2AE0.unk_40--;
    } else {
        int idx = param0->unk_2AE0.unk_0C;
        u32 addr = entrySp - 0x40 + idx * 2;

        if ((u32)idx < 4) {
            v8 = ov92_02263C34[16 + idx];
        } else if (addr - (entrySp - 0x10000) < 0x10000 - 0x14) {
            v8 = 0;
        } else if ((u32)idx >= 22 && (u32)idx < 28) {
            u32 reg = (idx < 24) ? callerR4 : (idx < 26) ? callerR5 : callerR6;
            v8 = (idx & 1) ? (s16)(reg >> 16) : (s16)reg;
        } else {
            v8 = *(s16 *)addr;
        }

        if ((param0->unk_2AE0.unk_00 % v8) == 0) {
            param0->unk_2AE0.unk_00 = 0;
            param0->unk_2AE0.unk_AC = 1;
        }

        if ((param0->unk_2AE0.unk_A4 == 0) && (param0->unk_2AE0.unk_A8 == 1)) {
            v6 = param0->unk_2AE0.unk_44.unk_00 >> FX32_SHIFT;
            v7 = param0->unk_2AE0.unk_5C.unk_00 >> FX32_SHIFT;
            ov92_02260428(param0->unk_114, 0, 0, v6, v7, 2.35 * 0.80, 0);
            v1 = ov92_02260428(param0->unk_320, 0, 0, v6, v7, 0.80, 0);

            if (v1) {
                VecFx32 v11 = { 0, FX32_CONST(100), 0 };
                MTX_MultVec43(&v11, param0->unk_4D0, &param0->unk_1FC8);
            }
        } else if ((param0->unk_2AE0.unk_A4 == 1) && (param0->unk_2AE0.unk_A8 == 1)) {
            v6 = param0->unk_2AE0.unk_44.unk_00 >> FX32_SHIFT;
            v7 = param0->unk_2AE0.unk_5C.unk_00 >> FX32_SHIFT;
            ov92_02260428(param0->unk_114, 0, 0, v6, v7, 2.35 * 0.80, 0);
            v1 = ov92_02260428(param0->unk_320, 0, 0, v6, v7, 0.80, 0);

            if (v1) {
                VecFx32 v13 = { 0, FX32_CONST(100), 0 };
                MTX_MultVec43(&v13, param0->unk_4D0, &param0->unk_1FC8);
            }
        }

        if ((param0->unk_2AE0.unk_B0 == 0) || ((param0->unk_2AE0.unk_AC == 1) && (param0->unk_2AE0.unk_A8 == 1))) {
            u32 seed = GetLCRNGSeed();
            u16 rnd = LCRandom();
            int v15;
            int v16;
            int v17;
            int v18;
            s16 v19, v20;
            s16 v21, v22;
            s16 v23, v24;

            SetLCRNGSeed(seed);
            v15 = (u32)rnd % 100;

            v17 = 0;
            v18 = ov92_02263D84[param0->unk_2AE0.unk_0C][0].unk_04;

            for (v17 = 0; v17 < 3; v17++) {
                if (v15 < v18) {
                    break;
                }

                v18 += ov92_02263D84[param0->unk_2AE0.unk_0C][v17 + 1].unk_04;
            }

            v16 = ov92_02263D84[param0->unk_2AE0.unk_0C][v17].unk_00;

            v23 = param0->unk_1FC8.x >> FX32_SHIFT;
            v24 = param0->unk_1FC8.z >> FX32_SHIFT;

            if (param0->unk_1FC8.z == 0) {
                v24 = (LCRandom() % 2) ? 1 : -1;
            } else {
                v24 = -((v24 < 0) ? -1 : 1);
            }

            if (param0->unk_1FC8.x == 0) {
                v23 = (LCRandom() % 2) ? 1 : -1;
            } else {
                v23 = (v23 < 0) ? -1 : 1;

                if (v24 < 0) {
                    v23 = v23 * -1;
                }
            }

            if (param0->unk_2AE0.unk_0C == 0) {
                v23 = 0;
            }

            v19 = v16 * v23;
            v20 = v16 * v24;
            v21 = 20 * v23;
            v22 = 20 * v24;

            param0->unk_2AE0.unk_B8 = v19;
            param0->unk_2AE0.unk_BA = v20;

            ov92_02260798(&param0->unk_2AE0.unk_74, 0, FX32_CONST(v21), 0, 8);
            ov92_02260798(&param0->unk_2AE0.unk_8C, 0, FX32_CONST(v22), 0, 8);
            ov92_02260798(&param0->unk_2AE0.unk_44, 0, FX32_CONST(v19), 0, 12);
            ov92_02260798(&param0->unk_2AE0.unk_5C, 0, FX32_CONST(v20), 0, 12);

            param0->unk_2AE0.unk_40 = 22;
            param0->unk_2AE0.unk_42 = 0;
            param0->unk_2AE0.unk_3C = v19;
            param0->unk_2AE0.unk_3E = v20;
            param0->unk_2AE0.unk_A4 = 0;
            param0->unk_2AE0.unk_AC = 0;
            param0->unk_2AE0.unk_A8 = 0;
            param0->unk_2AE0.unk_B0 = 1;
        }
    }
}
