#include "global.h"

typedef struct UnkStruct_ov01_021ED070_Data {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov01_021ED070_Data;

typedef struct UnkStruct_ov01_021ED070 {
    u8 filler_00[4];
    void *unk_04;
    UnkStruct_ov01_021ED070_Data *unk_08;
} UnkStruct_ov01_021ED070;

extern VecFx32 ov01_021EC304(UnkStruct_ov01_021ED070 *node);
extern void ov01_021EB5F4(void *sprite, VecFx32 *pos);
extern void ov01_021EC29C(UnkStruct_ov01_021ED070 *node);

void ov01_021ED070(UnkStruct_ov01_021ED070 *param0) {
    UnkStruct_ov01_021ED070_Data *v1 = param0->unk_08;
    VecFx32 v2 = ov01_021EC304(param0);

    switch (v1->unk_0C) {
    case 0:
        v2.x += v1->unk_10 << 12;
        v2.y += v1->unk_08 << 12;

        if (v1->unk_00++ > v1->unk_04) {
            v1->unk_0C = 1;
        }

        if ((v1->unk_00 % v1->unk_14) == 0) {
            v1->unk_10 -= 1;

            if (v1->unk_08 > 1) {
                v1->unk_08--;
            }
        }

        ov01_021EB5F4(param0->unk_04, &v2);
        break;
    case 1:
        ov01_021EC29C(param0);
        break;
    }
}
