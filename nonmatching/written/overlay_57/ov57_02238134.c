#include "global.h"

#include "sprite_system.h"

typedef struct UnkStruct_ov57_02238134_Seal {
    u8 type;
    u8 x;
    u8 y;
    u8 padding_03;
    ManagedSprite *sprite;
    u8 padding_08[8];
} UnkStruct_ov57_02238134_Seal;

typedef struct UnkStruct_ov57_02238134 {
    u8 padding_000[0x288];
    int unk_288;
    u8 padding_28C[0x350 - 0x28C];
    UnkStruct_ov57_02238134_Seal unk_350[8];
} UnkStruct_ov57_02238134;

void ov57_02238134(UnkStruct_ov57_02238134 *param0) {
    int i;
    int j;
    int dummy;
    int priorities[8];
    int indices[8];
    int tmp1;
    int tmp2;
    u8 capsule[24];
    u8 capsuleDupe[24];

    if (param0->unk_288 == 0) {
        return;
    }
    param0->unk_288 = 0;

    dummy = 0;
    for (i = 0; i < 8; i++) {
        priorities[i] = 0xFF;
        indices[i] = 0xFF;
        if (param0->unk_350[i].sprite != NULL) {
            priorities[i] = ManagedSprite_GetDrawPriority(param0->unk_350[i].sprite);
            indices[i] = i;
            dummy++;
        }
    }

    for (i = 0; i < 7; i++) {
        for (j = 7; j > i; j--) {
            if (priorities[j - 1] >= priorities[j]) {
                tmp1 = priorities[j];
                tmp2 = indices[j];
                priorities[j] = priorities[j - 1];
                indices[j] = indices[j - 1];
                priorities[j - 1] = tmp1;
                indices[j - 1] = tmp2;
            }
        }
    }

    for (i = 0; i < 8; i++) {
        capsule[i * 3 + 0] = param0->unk_350[i].type;
        capsule[i * 3 + 1] = param0->unk_350[i].x;
        capsule[i * 3 + 2] = param0->unk_350[i].y;
    }
    for (i = 0; i < 24; i++) {
        capsuleDupe[i] = capsule[i];
    }

    for (i = 0; i < 8; i++) {
        if (indices[i] == 0xFF) {
            param0->unk_350[i].type = 0;
            param0->unk_350[i].x = 0;
            param0->unk_350[i].y = 0;
            continue;
        }
        param0->unk_350[i].type = capsuleDupe[indices[i] * 3 + 0];
        param0->unk_350[i].x = capsuleDupe[indices[i] * 3 + 1];
        param0->unk_350[i].y = capsuleDupe[indices[i] * 3 + 2];
        if (param0->unk_350[indices[i]].sprite == NULL) {
            continue;
        }
        ManagedSprite_SetDrawPriority(param0->unk_350[indices[i]].sprite, i);
    }
}
