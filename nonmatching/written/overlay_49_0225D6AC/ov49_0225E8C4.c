#include "global.h"

typedef struct UnkStruct_ov49_0225E8C4 {
    u8 padding_00[4];
    void *unk_04;
    u8 padding_08[0x224];
    void *unk_22C[3];
    void *unk_238[3];
    u8 padding_244[0x3C8];
    u32 unk_60C;
} UnkStruct_ov49_0225E8C4;

_Static_assert(offsetof(UnkStruct_ov49_0225E8C4, unk_238) == 0x238, "");
_Static_assert(offsetof(UnkStruct_ov49_0225E8C4, unk_60C) == 0x60C, "");

extern int ov49_0225D450(void *a, int b);
extern void ov49_0225D214(void *a, void *b, int c, int d);
extern void ov49_0225D3F8(void *a, void *b, int c, fx32 d);
extern void ov49_0225D394(void *a, void *b);
extern void ov49_0225D4A0(void *a, void *b, int c);
extern void ov49_0225D328(void *a, void *b, int c);

void ov49_0225E8C4(UnkStruct_ov49_0225E8C4 *param0, u32 param1, u32 param2, int param3, int param4, int param5) {
    void *v1;
    void *v2;
    u32 x;

    v2 = param0->unk_22C[param1];
    v1 = param0->unk_238[param1];

    if (param4 == 1 || param3 == 1) {
        if (ov49_0225D450(v2, 1) == 0) {
            ov49_0225D214(param0->unk_04, v2, 1, 0);
        }

        if (param4 == 1) {
            x = (5 + param2 - 1) * 4;
            ov49_0225D3F8(param0->unk_04, v1, 0, FX32_CONST(x));
        } else {
            param0->unk_60C = (param0->unk_60C + 1) % 28;

            if (param0->unk_60C < 14) {
                x = (1 + param2 - 1) * 4;
                ov49_0225D3F8(param0->unk_04, v1, 0, FX32_CONST(x));
            } else {
                ov49_0225D3F8(param0->unk_04, v1, 0, 0);
            }
        }
    } else {
        if (param5 != 0) {
            ov49_0225D394(param0->unk_04, v2);
            ov49_0225D394(param0->unk_04, v1);
            ov49_0225D4A0(param0->unk_04, v2, 1);
        } else {
            ov49_0225D328(param0->unk_04, v2, 1);
            ov49_0225D3F8(param0->unk_04, v1, 0, 0);
        }
    }
}
