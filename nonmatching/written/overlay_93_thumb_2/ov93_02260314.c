#include "global.h"
#include "math_util.h"
#include "sprite_system.h"

typedef struct UnkStruct_ov93_02260314_Inner {
    u8 filler_00[0x2C];
    u8 unk_2C[4];
    u8 unk_30;
} UnkStruct_ov93_02260314_Inner;

typedef struct UnkStruct_ov93_02260314 {
    UnkStruct_ov93_02260314_Inner *unk_00;
    u8 filler_04[0x20];
    SpriteSystem *unk_24;
    SpriteManager *unk_28;
} UnkStruct_ov93_02260314;

typedef struct UnkStruct_ov93_02260314_Param2 {
    u8 filler_00[4];
    int unk_04;
    int unk_08;
    u8 filler_0C[4];
    int unk_10;
    u8 filler_14[4];
    int unk_18[4];
} UnkStruct_ov93_02260314_Param2;

typedef struct UnkStruct_ov93_02260314_Entry {
    ManagedSprite *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    u16 unk_14;
    u16 filler_16;
} UnkStruct_ov93_02260314_Entry; // size: 0x18

extern const ManagedSpriteTemplate ov93_02262E00;
extern const u16 ov93_02262D7C[][4];
extern const u16 _02262C6C[];

extern int ov93_0225E3C4(UnkStruct_ov93_02260314 *param0, int param1);

#define FILL_ENTRY(entry, v10add)                               \
    do {                                                        \
        (entry)->unk_04 = LCRandom() % 0x2000 + 0x2000;         \
        (entry)->unk_08 = LCRandom() % 0x4000 + 0x2000;         \
        (entry)->unk_0C = (LCRandom() % 360) << FX32_SHIFT;     \
        (entry)->unk_10 = LCRandom() % 0x14000 + (v10add);      \
        (entry)->unk_14 = LCRandom() % 15 + 20;                 \
    } while (0)

void ov93_02260314(UnkStruct_ov93_02260314 *param0, u8 *param1, UnkStruct_ov93_02260314_Param2 *param2) {
    ManagedSpriteTemplate v0;
    ManagedSprite *v1;
    int v2;
    // The original keeps 4 entries here, then the template and the pushed registers; up to 22 entries overflow harmlessly.
    int v3[22];
    int v7 = 0;
    int v8, v9;
    int v6;
    int v4, v5;
    UnkStruct_ov93_02260314_Entry *entry;
    UnkStruct_ov93_02260314_Entry *first = (UnkStruct_ov93_02260314_Entry *)(param1 + 4);
    UnkStruct_ov93_02260314_Entry *second = (UnkStruct_ov93_02260314_Entry *)(param1 + 0x364);
    UnkStruct_ov93_02260314_Entry *third = (UnkStruct_ov93_02260314_Entry *)(param1 + 0x424);

    v0 = ov93_02262E00;
    v4 = param2->unk_08;
    v5 = param2->unk_10;

    for (v8 = 0; v8 < param0->unk_00->unk_30; v8++) {
        v2 = ov93_0225E3C4(param0, param0->unk_00->unk_2C[v8]);
        v3[v8] = param2->unk_18[v2] * 36 / (v4 + v5);
        v6 = ov93_02262D7C[param0->unk_00->unk_30][v2];

        for (v9 = 0; v9 < v3[v8]; v9++) {
            entry = &first[v7];

            v1 = SpriteSystem_NewSprite(param0->unk_24, param0->unk_28, &v0);

            if (v1 == NULL) {
                break;
            }

            ManagedSprite_SetPositionXYWithSubscreenOffset(v1, 128, 96, ((192 + 160) << FX32_SHIFT));
            ManagedSprite_SetAnim(v1, v6);
            Sprite_TickFrame(v1->sprite);

            FILL_ENTRY(entry, 0xA000);

            first[v7].unk_00 = v1;
            v7++;
        }
    }

    v0.drawPriority = 14;
    v0.pal = 0;

    for (v8 = 0; v8 < 8; v8++) {
        entry = &second[v8];

        v1 = SpriteSystem_NewSprite(param0->unk_24, param0->unk_28, &v0);

        if (v1 == NULL) {
            break;
        }

        ManagedSprite_SetPositionXYWithSubscreenOffset(v1, 128, 96, ((192 + 160) << FX32_SHIFT));
        ManagedSprite_SetAnim(v1, 28 + LCRandom() % 3);
        Sprite_TickFrame(v1->sprite);

        FILL_ENTRY(entry, 0x10000);

        second[v8].unk_00 = v1;
    }

    v0.drawPriority = 13;
    v0.pal = _02262C6C[param2->unk_04];

    for (v8 = 0; v8 < 3; v8++) {
        entry = &third[v8];

        v1 = SpriteSystem_NewSprite(param0->unk_24, param0->unk_28, &v0);

        if (v1 == NULL) {
            break;
        }

        ManagedSprite_SetPositionXYWithSubscreenOffset(v1, 128, 96, ((192 + 160) << FX32_SHIFT));
        ManagedSprite_SetAnim(v1, 11);
        Sprite_TickFrame(v1->sprite);

        FILL_ENTRY(entry, 0x10000);

        third[v8].unk_00 = v1;
    }
}
