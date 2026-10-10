#include "global.h"
#include "math_util.h"
#include "sprite_system.h"

typedef struct UnkStruct_ov93_02260660_Entry {
    ManagedSprite *unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    s16 unk_14;
    u16 filler_16;
} UnkStruct_ov93_02260660_Entry; // size: 0x18

typedef struct UnkStruct_ov93_02260660_Group {
    int unk_00;
    UnkStruct_ov93_02260660_Entry unk_04[36];
    UnkStruct_ov93_02260660_Entry unk_364[8];
    UnkStruct_ov93_02260660_Entry unk_424[3];
} UnkStruct_ov93_02260660_Group;

typedef struct UnkStruct_ov93_02260660 {
    u8 filler_0000[0x339C];
    UnkStruct_ov93_02260660_Group unk_339C;
} UnkStruct_ov93_02260660;

#define UPDATE_ENTRY(entry)                                                                                          \
    do {                                                                                                             \
        if ((entry)->unk_00 != NULL) {                                                                               \
            if ((entry)->unk_14 == 0) {                                                                              \
                Sprite_DeleteAndFreeResources((entry)->unk_00);                                                      \
                (entry)->unk_00 = NULL;                                                                              \
            } else {                                                                                                 \
                (entry)->unk_0C += (entry)->unk_10;                                                                  \
                (entry)->unk_04 += (entry)->unk_08;                                                                  \
                if ((entry)->unk_04 >= (128 + 32) << FX32_SHIFT) {                                                   \
                    (entry)->unk_04 = (128 + 32) << FX32_SHIFT;                                                      \
                }                                                                                                    \
                v4 = 128 + (FX_Mul(GF_SinDegFX32((entry)->unk_0C), (entry)->unk_04)) / FX32_ONE;                     \
                v5 = 96 + (-FX_Mul(GF_CosDegFX32((entry)->unk_0C), (entry)->unk_04)) / FX32_ONE;                     \
                ManagedSprite_SetPositionXYWithSubscreenOffset((entry)->unk_00, v4, v5, ((192 + 160) << FX32_SHIFT)); \
                (entry)->unk_14--;                                                                                   \
                v6++;                                                                                                \
            }                                                                                                        \
        }                                                                                                            \
    } while (0)

BOOL ov93_02260660(UnkStruct_ov93_02260660 *param0) {
    UnkStruct_ov93_02260660_Group *v0 = &param0->unk_339C;
    UnkStruct_ov93_02260660_Entry *v1;
    s16 v4, v5;
    int v6 = 0;
    int v7;

    if (v0->unk_00 == 0) {
        return 0;
    }

    for (v7 = 0; v7 < 36; v7++) {
        v1 = &v0->unk_04[v7];
        UPDATE_ENTRY(v1);
    }

    for (v7 = 0; v7 < 8; v7++) {
        v1 = &v0->unk_364[v7];
        UPDATE_ENTRY(v1);
    }

    for (v7 = 0; v7 < 3; v7++) {
        v1 = &v0->unk_424[v7];
        UPDATE_ENTRY(v1);
    }

    if (v6 == 0) {
        v0->unk_00 = 0;
    }

    return 1;
}
