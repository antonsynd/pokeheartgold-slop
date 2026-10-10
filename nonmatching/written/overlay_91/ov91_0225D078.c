#include "global.h"

#include "brightness.h"

typedef struct UnkStruct_ov91_0225D078_19CC {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04[0xE4];
} UnkStruct_ov91_0225D078_19CC;

typedef struct UnkStruct_ov91_0225D078 {
    u32 unk_00;
    u8 unk_04[0x19C8];
    UnkStruct_ov91_0225D078_19CC unk_19CC;
    u8 unk_1AB4[0x4A0];
    u32 unk_1F54;
    u32 unk_1F58;
    u8 unk_1F5C[0x18];
    u8 unk_1F74[0x230];
    void *unk_21A4;
    u8 unk_21A8[0x6484];
    u8 unk_862C[0x159];
    u8 unk_8785;
    u8 unk_8786[0x5E];
    u8 unk_87E4[4];
} UnkStruct_ov91_0225D078;

extern void ov91_0225E6B0(UnkStruct_ov91_0225D078 *param0);
extern void ov91_0225EE9C(UnkStruct_ov91_0225D078 *param0);
extern void ov91_0225DBE4(void *param0);
extern void ov90_02258CB0(void *param0);
extern void ov91_02261B10(void *param0);
extern void ov91_02261890(void *param0);
extern int ov91_0225DBF4(void *param0);
extern void ov91_0225E40C(UnkStruct_ov91_0225D078 *param0);
extern void ov91_0225E648(UnkStruct_ov91_0225D078 *param0);
extern int ov91_0225E6D0(UnkStruct_ov91_0225D078 *param0);
extern int ov91_0225DC24(void *param0);
extern void ov91_0225DD50(void *param0, u16 param1);
extern void ov91_022601C8(void *param0, void *param1);
extern void ov91_022601F4(void *param0, void *param1);
extern void ov91_022601AC(void *param0, void *param1, u32 param2);
extern void ov91_0225F7A8(UnkStruct_ov91_0225D078 *param0, void *param1);
extern void ov91_02261928(void *param0);

BOOL ov91_0225D078(UnkStruct_ov91_0225D078 *param0, u32 param1) {
    BOOL v0;
    BOOL v1 = 1;
    s32 v2;

    switch (param0->unk_1F54) {
    case 0:
        ov91_0225E6B0(param0);
        ov91_0225EE9C(param0);

        StartBrightnessTransition(24, -14, 0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 2);

        ov91_0225DBE4(param0->unk_1AB4);
        ov90_02258CB0(param0->unk_21A4);
        ov91_02261B10(param0->unk_87E4);
        ov91_02261890(param0->unk_862C);

        param0->unk_1F54++;
        break;
    case 1:
        v0 = 1;

        if (ov91_0225DBF4(param0->unk_1AB4) == 0) {
            v0 = 0;
        }

        ov91_0225E40C(param0);
        ov91_0225E648(param0);

        if (ov91_0225E6D0(param0) == 1) {
            v0 = 0;
        }

        if (ov91_0225DC24(param0->unk_1AB4) == 0) {
            v0 = 0;
        }

        if (IsBrightnessTransitionActive(2) == FALSE) {
            v0 = 0;
        }

        if ((v0 == 1) && (param1 == 1)) {
            param0->unk_1F58 = 0;
            param0->unk_1F54++;
        }
        break;
    case 2:
        param0->unk_1F58++;

        if (param0->unk_1F58 >= 64) {
            param0->unk_1F54++;
        }
        break;
    case 3:
        v1 = 0;
        break;
    }

    if (param0->unk_8785) {
        v2 = -120;
    } else {
        v2 = 120;
    }

    ov91_0225DD50(&param0->unk_19CC, param0->unk_19CC.unk_02 + v2);
    ov91_022601C8(param0->unk_1F74, &param0->unk_19CC);
    ov91_022601F4(param0->unk_1F74, &param0->unk_19CC);
    ov91_022601AC(param0->unk_1F74, &param0->unk_19CC, param0->unk_00);
    ov91_0225F7A8(param0, param0->unk_1AB4);
    ov91_02261928(param0->unk_862C);

    return v1;
}
