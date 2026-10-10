#include "global.h"

typedef struct UnkStruct_ov01_021ED31C_Particle {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov01_021ED31C_Particle;

typedef struct UnkStruct_ov01_021ED31C_Node {
    u8 filler_00[4];
    void *sprite;
    UnkStruct_ov01_021ED31C_Particle *data;
} UnkStruct_ov01_021ED31C_Node;

extern UnkStruct_ov01_021ED31C_Node *ov01_021EC1F4(void *system, int size);
extern u32 MTRandom(void);
extern void Sprite_SetAnimationFrame(void *sprite, u16 frame);
extern VecFx32 ov01_021EC304(UnkStruct_ov01_021ED31C_Node *node);
extern void ov01_021EB5F4(void *sprite, VecFx32 *pos);

void ov01_021ED31C(void *param0, int param1) {
    int i;
    UnkStruct_ov01_021ED31C_Node *node;
    UnkStruct_ov01_021ED31C_Particle *data;
    int v2;
    int v3;
    int v4;
    int v5;
    VecFx32 v6;

    for (i = 0; i < param1; i++) {
        node = ov01_021EC1F4(param0, 32);

        if (node == NULL) {
            break;
        }

        data = node->data;

        data->unk_00 = 0;
        data->unk_04 = 7 + (MTRandom() % 5);

        v2 = MTRandom() % 1000;

        if ((v2 % 2) == 0) {
            data->unk_08 = 1;
        } else {
            data->unk_08 = -1;
        }

        data->unk_0C = 1;
        data->unk_10 = 3 + (MTRandom() % 6);
        data->unk_14 = 4 + (MTRandom() % 5);

        v5 = MTRandom() % 20;

        v6 = ov01_021EC304(node);
        v6.x = -64 + (MTRandom() % 384);
        v6.y = -8 + (MTRandom() & 0xff);
        v6.x <<= 12;
        v6.y <<= 12;
        v6.z = 0;

        ov01_021EB5F4(node->sprite, &v6);

        v6.x >>= 12;
        v6.y >>= 12;

        v3 = 50 - (v6.x / 3);
        v2 = 206 - (v6.x / 3);

        if (v2 < 0) {
            v2 *= -1;
            v4 = v3 - (MTRandom() % v2);
        } else {
            v4 = v3 + (MTRandom() % v2);
        }

        if (v3 <= v6.y && v4 >= v6.y) {
            data->unk_04 *= 2;
        } else {
            v5 = MTRandom() & 3;
        }

        Sprite_SetAnimationFrame(node->sprite, v5);
    }
}
