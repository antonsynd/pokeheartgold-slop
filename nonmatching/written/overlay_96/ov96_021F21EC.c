#include "global.h"

typedef struct UnkStruct_ov96_021F21EC_Entry {
    s32 unk_00;
    s32 unk_04;
    u8 *unk_08;
    s32 unk_0C;
} UnkStruct_ov96_021F21EC_Entry;

extern UnkStruct_ov96_021F21EC_Entry _0221DCA0[12][12];

BOOL ov96_021F218C(u8 *a, u8 *b);

void ov96_021F21EC(u8 *param0) {
    u8 i;
    u8 j;
    u8 *objA;
    u8 *objB;

    for (i = 0; i < 12; i++) {
        objA = param0 + 0x20 + (i / 3) * 0x1b0 + (i % 3) * 0x90;
        for (j = 0; j < 12; j++) {
            if (i == j) {
                _0221DCA0[i][j].unk_00 = 0;
                _0221DCA0[i][j].unk_08 = NULL;
            } else if (j >= i) {
                objB = param0 + 0x20 + (j / 3) * 0x1b0 + (j % 3) * 0x90;
                if (*(s32 *)(objA + 0x18) == 1 && *(s32 *)(objB + 0x18) == 1) {
                    if (ov96_021F218C(objA, objB) != 0) {
                        _0221DCA0[i][j].unk_00 = 1;
                        _0221DCA0[j][i].unk_00 = 1;
                        _0221DCA0[i][j].unk_08 = objB;
                        _0221DCA0[j][i].unk_08 = objA;
                    } else {
                        _0221DCA0[i][j].unk_00 = 0;
                        _0221DCA0[j][i].unk_00 = 0;
                        _0221DCA0[i][j].unk_08 = NULL;
                        _0221DCA0[j][i].unk_08 = NULL;
                    }
                } else {
                    _0221DCA0[i][j].unk_00 = 0;
                    _0221DCA0[j][i].unk_00 = 0;
                    _0221DCA0[i][j].unk_08 = NULL;
                    _0221DCA0[j][i].unk_08 = NULL;
                }
            }
        }
    }
}
