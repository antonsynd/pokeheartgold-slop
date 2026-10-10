#include "global.h"

typedef struct UnkStruct_ov91_0225EDC8 {
    u8 unk_00[4];
    NNSG2dSVec2 unk_04[8];
    u8 unk_24_pad[0];
    u16 unk_24;
    u16 unk_26;
} UnkStruct_ov91_0225EDC8;

extern BOOL ov91_0225EE18(UnkStruct_ov91_0225EDC8 *param0, NNSG2dSVec2 *param1);

void ov91_0225EDC8(UnkStruct_ov91_0225EDC8 *param0, NNSG2dSVec2 param1) {
    if (((param0->unk_26 + 1) % 8) == param0->unk_24) {
        NNSG2dSVec2 v0;

        ov91_0225EE18(param0, &v0);
    }

    param0->unk_04[param0->unk_26].x = param1.x;
    param0->unk_04[param0->unk_26].y = param1.y;
    param0->unk_26 = (param0->unk_26 + 1) % 8;
}
