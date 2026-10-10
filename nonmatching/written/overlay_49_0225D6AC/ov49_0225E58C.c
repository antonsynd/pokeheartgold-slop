#include "global.h"

typedef struct UnkStruct_ov49_0225E58C {
    u8 padding_00[8];
    void *unk_08[0x180];
    u8 padding_608[9];
    u8 unk_611;
    u8 unk_612;
} UnkStruct_ov49_0225E58C;

_Static_assert(offsetof(UnkStruct_ov49_0225E58C, unk_611) == 0x611, "");

extern int ov49_0225E9D0(void *a, u32 b, u32 c);
extern u32 ov49_0225D1C0(void *a);
extern void ov49_0225EAB4(UnkStruct_ov49_0225E58C *a, void *b);
extern void ov49_0225EA70(UnkStruct_ov49_0225E58C *a, void *b);

void ov49_0225E58C(UnkStruct_ov49_0225E58C *param0, u32 param1, u32 param2) {
    int v0;
    int v1[2];
    u32 v2;
    u32 minusX = (u8)(param1 - 1);
    u32 minusY = (u8)(param2 - 1);

    for (v0 = 0; v0 < param0->unk_612; v0++) {
        v1[0] = ov49_0225E9D0(param0->unk_08[v0], minusX, minusY);
        v1[1] = ov49_0225E9D0(param0->unk_08[v0], param1, minusY);

        if (v1[0] == 1 || v1[1] == 1) {
            v2 = ov49_0225D1C0(param0->unk_08[v0]);

            switch (v2) {
            case 1:
            case 2:
            case 3:
            case 4:
                if (param0->unk_611 == 4) {
                    ov49_0225EAB4(param0, param0->unk_08[v0]);
                } else {
                    ov49_0225EA70(param0, param0->unk_08[v0]);
                }
                break;
            default:
                break;
            }
        }
    }
}
