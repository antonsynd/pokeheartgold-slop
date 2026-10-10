#include "global.h"

typedef struct UnkStruct_ov01_021ECBB4_Particle {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov01_021ECBB4_Particle;

typedef struct UnkStruct_ov01_021ECBB4_Node {
    u8 filler_00[4];
    void *sprite;
    UnkStruct_ov01_021ECBB4_Particle *data;
} UnkStruct_ov01_021ECBB4_Node;

extern UnkStruct_ov01_021ECBB4_Node *ov01_021EC1F4(void *system, int size);
extern u32 MTRandom(void);
extern void Sprite_SetAnimationFrame(void *sprite, u16 frame);
extern void ov01_021EB5F4(void *sprite, VecFx32 *pos);

void ov01_021ECBB4(void *param0, int param1) {
    int i;
    UnkStruct_ov01_021ECBB4_Node *node;
    UnkStruct_ov01_021ECBB4_Particle *data;
    int v2;
    int v4;
    VecFx32 pos;
    u32 rand;

    for (i = 0; i < param1; i++) {
        node = ov01_021EC1F4(param0, 32);

        if (node == NULL) {
            break;
        }

        data = node->data;
        rand = MTRandom();

        data->unk_00 = 0;
        v4 = rand % 3;

        Sprite_SetAnimationFrame(node->sprite, v4);

        v2 = rand % 20;
        data->unk_08 = 10 * (v4 + 1) + v2;

        if (v4 == 2) {
            data->unk_08 += 10;
        }

        v2 /= -5;
        data->unk_10 = -5 * (v4 + 1) + v2;

        if (v4 == 2) {
            data->unk_10 += -5;
        }

        data->unk_0C = 0;
        data->unk_04 = 1 + (rand % 3);

        pos.x = ((v4 * 15) + (rand % 270)) << 12;
        pos.y = (fx32)0xFFFA0000;
        pos.z = 0;

        ov01_021EB5F4(node->sprite, &pos);
    }
}
