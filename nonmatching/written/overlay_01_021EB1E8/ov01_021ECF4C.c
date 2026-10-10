#include "global.h"

typedef struct UnkStruct_ov01_021ECF4C_Particle {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov01_021ECF4C_Particle;

typedef struct UnkStruct_ov01_021ECF4C_Node {
    u8 filler_00[4];
    void *sprite;
    UnkStruct_ov01_021ECF4C_Particle *data;
} UnkStruct_ov01_021ECF4C_Node;

typedef struct UnkStruct_ov01_021ECF4C_Data {
    u8 filler_00[0xb8];
    int unk_B8;
} UnkStruct_ov01_021ECF4C_Data;

typedef struct UnkStruct_ov01_021ECF4C {
    u8 filler_00[0xf58];
    UnkStruct_ov01_021ECF4C_Data *unk_F58;
} UnkStruct_ov01_021ECF4C;

extern const int ov01_0220673C[4];
extern const int ov01_0220674C[4];

extern UnkStruct_ov01_021ECF4C_Node *ov01_021EC1F4(void *system, int size);
extern u32 MTRandom(void);
extern void Sprite_SetAnimationFrame(void *sprite, u16 frame);
extern VecFx32 ov01_021EC304(UnkStruct_ov01_021ECF4C_Node *node);
extern void ov01_021EB5F4(void *sprite, VecFx32 *pos);

void ov01_021ECF4C(UnkStruct_ov01_021ECF4C *param0, int param1) {
    int i;
    UnkStruct_ov01_021ECF4C_Node *node;
    UnkStruct_ov01_021ECF4C_Particle *data;
    UnkStruct_ov01_021ECF4C_Data *v3;
    int v2;
    int v7;
    int v4;
    int v5;
    int v6;
    u32 entrySp;

    // The original copies the two tables onto its stack, v5 at entry_sp - 0x28 and v6 at entry_sp - 0x38, and indexes
    // them with counter / 200 without a bounds check. clang's frame pointer is entry_sp - 8.
    entrySp = (u32)__builtin_frame_address(0) + 8;

    v3 = param0->unk_F58;

    for (i = 0; i < param1; i++) {
        node = ov01_021EC1F4(param0, 32);

        if (node == NULL) {
            break;
        }

        data = node->data;
        v3->unk_B8++;

        if (v3->unk_B8 >= 800) {
            v3->unk_B8 = 0;
        }

        v2 = v3->unk_B8 / 200;

        if (v2 >= 0 && v2 < 4) {
            v5 = ov01_0220673C[v2];
            v6 = ov01_0220674C[v2];
        } else {
            v5 = *(int *)(entrySp - 0x28 + v2 * 4);
            v6 = *(int *)(entrySp - 0x38 + v2 * 4);
        }

        data->unk_14 = v5;
        data->unk_00 = 0;
        v4 = 4 + (MTRandom() % 42);
        data->unk_04 = v4;

        v7 = (v4 - 4) / 15;
        Sprite_SetAnimationFrame(node->sprite, v7);

        data->unk_10 = -1 * (v7 + 1);
        data->unk_08 = v6 * (v7 + 1);
        data->unk_0C = 0;

        {
            VecFx32 v8 = ov01_021EC304(node);

            v8.x = -20 + (v7 * 20) + (MTRandom() % 420);
            v8.y = -8;
            v8.z = 0;
            v8.x <<= 12;
            v8.y <<= 12;

            ov01_021EB5F4(node->sprite, &v8);
        }
    }
}
