#include "global.h"

#include "system.h"

typedef struct UnkStruct_ov91_0225EC7C_Touch {
    u16 x;
    u16 y;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_ov91_0225EC7C_Touch;

typedef struct UnkStruct_ov91_0225EC7C {
    u8 unk_00[0x20];
    int unk_20;
    u8 unk_24[0x2184];
    u8 unk_21A8[0x639C];
    u8 unk_8544[0x1A8];
    u16 unk_86EC;
    UnkStruct_ov91_0225EC7C_Touch unk_86EE[1];
} UnkStruct_ov91_0225EC7C;

extern BOOL ov91_0225ED6C(UnkStruct_ov91_0225EC7C *param0);
extern void ov91_02260CB4(void *param0);
extern void ov91_022614D4(void *param0);
extern void ov91_0225EDC8(void *param0, NNSG2dSVec2 param1);

void ov91_0225EC7C(UnkStruct_ov91_0225EC7C *param0) {
    NNSG2dSVec2 v0;
    BOOL v1;

    if (param0->unk_20 == 0) {
        v1 = ov91_0225ED6C(param0);

        if (v1 == 1) {
            param0->unk_20 = 1;

            ov91_02260CB4(&param0->unk_8544);
            ov91_022614D4(&param0->unk_21A8);
        }
    }

    if (param0->unk_20 == 1) {
        if (param0->unk_86EC == 1) {
            v0.x = param0->unk_86EE[0].x;
            v0.y = param0->unk_86EE[0].y;
            ov91_0225EDC8(&param0->unk_20, v0);
        } else if (param0->unk_86EC >= 2) {
            v0.x = param0->unk_86EE[0].x;
            v0.y = param0->unk_86EE[0].y;
            ov91_0225EDC8(&param0->unk_20, v0);
            v0.x = param0->unk_86EE[param0->unk_86EC - 1].x;
            v0.y = param0->unk_86EE[param0->unk_86EC - 1].y;
            ov91_0225EDC8(&param0->unk_20, v0);
        } else {
            v0.x = gSystem.touchX;
            v0.y = gSystem.touchY;
            ov91_0225EDC8(&param0->unk_20, v0);
        }
    }
}
