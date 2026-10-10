#include "global.h"
#include "heap.h"
#include "math_util.h"
#include "sprite_system.h"
#include "sys_task_api.h"
#include "unk_02005D10.h"
#include "screen_fade.h"

typedef struct UnkStruct_ov92_02260AE0_Entry {
    ManagedSprite *unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
    u8 unk_38;
    u8 unk_39;
    u8 unk_3A;
    u8 unk_3B;
    int unk_3C;
    s16 unk_40;
    s16 unk_42;
    s16 unk_44;
    s16 unk_46;
} UnkStruct_ov92_02260AE0_Entry; // size: 0x34

typedef struct UnkStruct_ov92_02260AE0_Outer {
    u8 filler_00[0x14];
    u8 *unk_14;
    u8 filler_18[0x28];
    ManagedSprite *unk_40[36];
} UnkStruct_ov92_02260AE0_Outer;

typedef struct UnkStruct_ov92_02260AE0 {
    UnkStruct_ov92_02260AE0_Outer *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int *unk_10;
    UnkStruct_ov92_02260AE0_Entry unk_14[36];
} UnkStruct_ov92_02260AE0;

extern const s16 ov92_02263E5C[10];

extern void ov92_0225DF0C(UnkStruct_ov92_02260AE0_Outer *param0, int param1, int param2);
extern void ov92_0225DF28(UnkStruct_ov92_02260AE0_Outer *param0);

// Reads the original's stack table (10 s16 copied from ov92_02263E5C at entry_sp - 0x2C) at a short index that is not
// bounds-checked: past the table are the registers it pushed, then the caller's stack.
#define READ_TABLE(dst, i)                                                                                              \
    do {                                                                                                                \
        int tableIdx = (i);                                                                                             \
        u32 tableAddr = entrySp - 0x2C + (u32)tableIdx * 2;                                                             \
        if ((u32)tableIdx < 10) {                                                                                       \
            (dst) = ov92_02263E5C[tableIdx];                                                                            \
        } else if ((u32)tableIdx < 18) {                                                                                \
            u32 reg = (tableIdx < 12) ? callerR3 : (tableIdx < 14) ? callerR4 : (tableIdx < 16) ? callerR5 : callerR6;  \
            (dst) = (tableIdx & 1) ? (s16)(reg >> 16) : (s16)reg;                                                       \
        } else if (tableAddr - (entrySp - 0x10000) < 0x10000 - 0x2C) {                                                 \
            (dst) = 0;                                                                                                  \
        } else {                                                                                                        \
            (dst) = *(s16 *)tableAddr;                                                                                  \
        }                                                                                                               \
    } while (0)

#define UPDATE_POSITION(entry, v42, v44, v40)                                                          \
    do {                                                                                               \
        fx32 fx;                                                                                       \
        fx = FX32_CONST((entry)->unk_42);                                                              \
        (entry)->unk_30 = FX_Mul(GF_SinDeg((entry)->unk_3C), fx);                                      \
        fx = FX32_CONST((entry)->unk_44);                                                              \
        (entry)->unk_34 = FX_Mul(GF_CosDeg((entry)->unk_3C), fx);                                      \
        fx = FX32_CONST((entry)->unk_40);                                                              \
        (entry)->unk_1C += fx;                                                                         \
        ManagedSprite_SetPositionFxXYWithSubscreenOffset((entry)->unk_14,                              \
                                                         (entry)->unk_18 + (entry)->unk_30 + (entry)->unk_28 + (entry)->unk_20, \
                                                         (entry)->unk_1C + (entry)->unk_34 + (entry)->unk_2C + (entry)->unk_24, \
                                                         (14 << 16));                                  \
    } while (0)

void ov92_02260AE0(SysTask *param0, UnkStruct_ov92_02260AE0 *param1) {
    u8 *v0;
    int v1, v2;
    int state;
    u32 entrySp;
    u32 callerR3, callerR4, callerR5, callerR6;
    UnkStruct_ov92_02260AE0_Entry *entry;

    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");
    entrySp = (u32)__builtin_frame_address(0) + 8;

    v0 = param1->unk_00->unk_14;

    if (IsPaletteFadeFinished() == 0 || v0[0x34] == 1) {
        *param1->unk_10 = 0;
        SysTask_Destroy(param0);
        Heap_Free(param1);
        return;
    }

    state = param1->unk_04;

    if (state == 0) {
        param1->unk_0C = 0;
        param1->unk_04++;
        state = 1;
    }

    if (state == 1) {
        s16 va, vb;
        u32 a, b;
        int k;

        READ_TABLE(va, param1->unk_0C * 2);
        a = va;
        READ_TABLE(vb, param1->unk_0C * 2 + 1);
        b = vb;
        param1->unk_08 = 0;

        for (k = 0; k < 36; k++) {
            entry = &param1->unk_14[k];

            entry->unk_3A = k % 2;
            v1 = k % 3;
            entry->unk_42 = 6 - v1;
            entry->unk_44 = 6 - v1;
            entry->unk_14 = param1->unk_00->unk_40[k];
            entry->unk_3C = (k / 3) * 30;
            entry->unk_3C = entry->unk_3C % 360;
            entry->unk_40 = 0;
            entry->unk_46 = -(v1 * 2);
            entry->unk_20 = FX32_CONST(a);
            entry->unk_24 = FX32_CONST(b);
            entry->unk_30 = 0;
            entry->unk_34 = 0;
            entry->unk_18 = 0;
            entry->unk_1C = 0;
            entry->unk_28 = 0;
            entry->unk_2C = 0;
            entry->unk_38 = 0;
            entry->unk_39 = 1;
            entry->unk_3B = 0;

            if (entry->unk_3C == 180) {
                entry->unk_38 = 2;
            }

            if (entry->unk_3C >= 270 && entry->unk_3C <= 90) {
                entry->unk_38 = 1;
            }

            UPDATE_POSITION(entry, 0, 0, 0);
        }

        param1->unk_04++;
    } else if (state == 2) {
        if (param1->unk_08 == 0) {
            param1->unk_08 = 1;
            ov92_0225DF0C(param1->unk_00, 1, 0);
            PlaySE(0x58B);
        }

        if (param1->unk_08 > 30) {
            param1->unk_04 = 1;
            param1->unk_0C = param1->unk_0C + 1;
            param1->unk_0C = param1->unk_0C % 5;
            ov92_0225DF0C(param1->unk_00, 0, 1);
        } else {
            int k;

            param1->unk_08 = param1->unk_08 + 1;

            for (k = 0; k < 36; k++) {
                entry = &param1->unk_14[k];

                entry->unk_46 = entry->unk_46 + 1;

                if (entry->unk_46 < 0) {
                    continue;
                }

                if (entry->unk_46 >= entry->unk_3A + 10) {
                    if (entry->unk_46 == entry->unk_3A + 10) {
                        ManagedSprite_SetAnim(entry->unk_14, 0);
                    }

                    if (entry->unk_46 == entry->unk_3A + 0x12) {
                        entry->unk_39 = 0;
                    } else {
                        if (entry->unk_46 % 2 != 0) {
                            entry->unk_39 ^= 1;
                        }
                    }

                    ManagedSprite_SetDrawFlag(entry->unk_14, entry->unk_39);

                    switch (entry->unk_3B) {
                    case 0:
                        entry->unk_28 = -0x1000;
                        break;
                    case 1:
                        entry->unk_28 = 0;
                        break;
                    case 2:
                        entry->unk_28 = 0x1000;
                        break;
                    }

                    entry->unk_3B = entry->unk_3B + 1;
                    entry->unk_3B = entry->unk_3B % 3;
                }

                if (entry->unk_46 > 5) {
                    switch (entry->unk_38) {
                    case 0:
                        entry->unk_40 = (entry->unk_46 + 5) / 7;
                        break;
                    case 1:
                        entry->unk_40 = (entry->unk_46 + 5) / 6;
                        break;
                    case 2:
                        entry->unk_40 = (entry->unk_46 + 5) / 6;
                        break;
                    }
                }

                {
                    s16 dx, dy;

                    switch (entry->unk_38) {
                    case 0:
                        dx = (30 - (entry->unk_46 + 5)) / 8;
                        dy = (30 - (entry->unk_46 + 4)) / 8;
                        break;
                    case 2:
                        dx = (30 - (entry->unk_46 + 5)) / 8;
                        dy = (30 - (entry->unk_46 + 7)) / 8;
                        break;
                    case 1:
                    default:
                        dx = (30 - (entry->unk_46 + 5)) / 8;
                        dy = (30 - (entry->unk_46 + 6)) / 8;
                        break;
                    }

                    if (dx > 0) {
                        entry->unk_42 = entry->unk_42 + dx;
                    } else {
                        entry->unk_42 = entry->unk_42 + 1;
                    }

                    if (dy > 0) {
                        entry->unk_44 = entry->unk_44 + dy;
                    } else {
                        entry->unk_44 = entry->unk_44 + 1;
                    }
                }

                UPDATE_POSITION(entry, 0, 0, 0);
            }

            if (*param1->unk_10 != 0) {
                param1->unk_04++;
            }
            ov92_0225DF28(param1->unk_00);
            return;
        }

        if (*param1->unk_10 != 0) {
            param1->unk_04++;
        }
    } else {
        ov92_0225DF0C(param1->unk_00, 0, 0);
        Heap_Free(param1);
        SysTask_Destroy(param0);
    }

    ov92_0225DF28(param1->unk_00);
}
