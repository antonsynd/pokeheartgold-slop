#include "global.h"

typedef struct UnkStruct_ov48_0225A43C {
    u8 padding_00[0x3C];
    u16 unk_3C;
    u16 unk_3E;
    u8 padding_40[0x178];
    u8 unk_1B8[0x12C];
    u8 unk_2E4[1];
} UnkStruct_ov48_0225A43C;

extern void ov48_0225A4B4(UnkStruct_ov48_0225A43C *a, int b);
extern int ov48_0225A4C0(UnkStruct_ov48_0225A43C *a, int b, void *c);
extern void ov48_0225AD38(void *a);
extern void ov48_0225A668(void *a, int b, int c);

int ov48_0225A43C(UnkStruct_ov48_0225A43C *param0, void *param1, int param2) {
    int v0;
    int v1;
    int v3 = 1;

    if ((param0->unk_3C % param2) == 0) {
        v0 = param0->unk_3C / param2;
        ov48_0225A4B4(param0, v0);
    }

    if (param0->unk_3C + 1 < 0x12 * param2) {
        param0->unk_3C = param0->unk_3C + 1;
    }

    for (v1 = 0; v1 < param0->unk_3E; v1++) {
        if (ov48_0225A4C0(param0, v1, param1) == 0) {
            v3 = 0;
        }
    }

    if (v3 == 1) {
        ov48_0225AD38(param0->unk_1B8);
        ov48_0225A668(param0->unk_2E4, 0, 0);
    }

    return v3;
}
