#include "global.h"

#include "error_handling.h"
#include "sprite.h"
#include "touchscreen.h"
#include "unk_02032844.h"
#include "unk_02035900.h"
#include "unk_02037C94.h"
#include "unk_0205A44C.h"
#include "yes_no_prompt.h"

typedef struct UnkStruct_ov37p3 {
    u8 unk_000[0x268];
    Sprite *unk_268;
    u8 unk_26C[0x304 - 0x26C];
    s32 unk_304;
    s32 unk_308;
    u8 unk_30C[0x314 - 0x30C];
    s32 unk_314;
    s32 unk_318;
    s32 unk_31C;
    u8 unk_320[0x93F0 - 0x320];
    YesNoPrompt *unk_93F0;
    s32 unk_93F4;
    s32 unk_93F8;
    u8 unk_93FC[0x9400 - 0x93FC];
    s32 unk_9400;
    s32 unk_9404;
    u32 unk_9408;
} UnkStruct_ov37p3;

typedef struct UnkStruct_ov37p3_State {
    u32 fn;
    u32 flag;
} UnkStruct_ov37p3_State;

typedef struct UnkStruct_ov37p3_Touch {
    u8 unk_00[2];
    u8 unk_02[2];
    u8 unk_04[2];
    u8 unk_06[2];
    u8 unk_08;
} UnkStruct_ov37p3_Touch;

typedef struct UnkStruct_ov37p3_TouchEntry {
    u16 unk_00;
    u16 x;
    u16 y;
    u16 unk_06;
} UnkStruct_ov37p3_TouchEntry;

static const u8 _021E7968[8] = { 0x30, 0x70, 0xC8, 0xF8, 0xFF, 0x00, 0x00, 0x00 };

int ov37_021E75C4(void);
void ov37_021E76D0(UnkStruct_ov37p3 *param0, int param1);
void ov37_021E78A4(UnkStruct_ov37p3 *param0);

static const UnkStruct_ov37p3_State ov37_021E7D20[24] = {
    { NULL, 1 },
    { 0x021E68D1, 0 },
    { 0x021E6929, 0 },
    { 0x021E694D, 0 },
    { 0x021E6861, 0 },
    { 0x021E6981, 1 },
    { 0x021E69DD, 1 },
    { 0x021E6B41, 1 },
    { 0x021E6B65, 1 },
    { 0x021E6BFD, 1 },
    { 0x021E6C39, 1 },
    { 0x021E6C59, 1 },
    { 0x021E6C85, 1 },
    { 0x021E6CC1, 1 },
    { 0x021E6D15, 1 },
    { 0x021E6DD1, 1 },
    { 0x021E6E05, 1 },
    { 0x021E6E2D, 1 },
    { 0x021E6E6D, 1 },
    { 0x021E6E71, 1 },
    { 0x021E6E91, 1 },
    { 0x021E6EB5, 1 },
    { 0x021E6F15, 1 },
    { 0x021E6F5D, 1 }
};


int ov37_021E76F0(UnkStruct_ov37p3 *param0)
{
    int v0 = ov37_021E75C4();

    switch (v0) {
    case 1:
        if (param0->unk_304 <= 14) {
            if (sub_02033250() != 1) {
                param0->unk_9400 = 1;
            }

            param0->unk_308 = 19;
            sub_02038C1C(1);

            if (param0->unk_93F8) {
                ov37_021E78A4(param0);
                Sprite_SetAnimCtrlSeq(param0->unk_268, 21);
            }

            return 2;
        }
        break;
    case 2:
    case 3:
    case 4:
        sub_0205A904(1);

        if (v0 < param0->unk_314) {
            if (param0->unk_93F4 == 2) {
                ov37_021E76D0(param0, 0);
            } else {
                ov37_021E76D0(param0, 1);
            }
        }
        break;
    case 5:
        sub_0205A904(8);
        break;
    }

    if (v0 < param0->unk_314) {
        param0->unk_318 = sub_02037454();
        param0->unk_31C = sub_02033250();

        if (param0->unk_9404) {
            if (!(param0->unk_31C & param0->unk_9408)) {
                ov37_021E76D0(param0, 1);

                param0->unk_93F4 = 1;
                param0->unk_9404 = 0;
                param0->unk_9408 = 0;
            }
        }
    }

    param0->unk_314 = ov37_021E75C4();

    if (param0->unk_318 < sub_02037454()) {
        param0->unk_93F4 = 2;
        param0->unk_9404 = 1;
        param0->unk_9408 = sub_02033250() ^ param0->unk_31C;

        if (!((param0->unk_9408 == 2) || (param0->unk_9408 == 4) || (param0->unk_9408 == 8) || (param0->unk_9408 == 16))) {
            GF_AssertFail();
        }
    }

    return 1;
}

void ov37_021E7844(UnkStruct_ov37p3 *param0, int param1)
{
    param0->unk_308 = param1;
}

void ov37_021E784C(UnkStruct_ov37p3 *param0, int param1)
{
    if (param0->unk_304 != param0->unk_308) {
        if (param1 != 2) {
            param0->unk_304 = param0->unk_308;
        } else {
            if (ov37_021E7D20[param0->unk_308].flag) {
                param0->unk_304 = param0->unk_308;
            }
        }
    }
}

BOOL ov37_021E7880(UnkStruct_ov37p3 *param0, YesNoPromptTemplate *param1)
{
    if (!param0->unk_93F8) {
        YesNoPrompt_InitFromTemplate(param0->unk_93F0, param1);
        param0->unk_93F8 = 1;
        return 1;
    } else {
        return 0;
    }
}

void ov37_021E78A4(UnkStruct_ov37p3 *param0)
{
    if (param0->unk_93F8) {
        YesNoPrompt_Reset(param0->unk_93F0);
        param0->unk_93F8 = 0;
    }
}

int ov37_021E78C4(UnkStruct_ov37p3 *param0)
{
    int v0 = TouchscreenHitbox_FindRectAtTouchNew((const TouchscreenHitbox *)_021E7968);

    if (v0 != 0xffffffff) {
        return 1;
    }

    return 0;
}

void ov37_021E78E0(UnkStruct_ov37p3_Touch *param0, UnkStruct_ov37p3_TouchEntry *param1, int param2, int param3)
{
    int v0, v1;

    if (param1[0].unk_00 != 0) {
        param0->unk_00[0] = param1[0].x;
        param0->unk_04[0] = param1[0].y;

        v1 = param1[0].unk_00 - 1;

        param0->unk_00[1] = param1[v1].x;
        param0->unk_04[1] = param1[v1].y;

        for (v0 = 0; v0 < 2; v0++) {
            if ((param0->unk_00[v0] + param0->unk_04[v0]) == 0) {
                param1[0].unk_00 = 0;
            }
        }
    }

    if (param1[0].unk_00 >= 2) {
        param0->unk_08 = (u8)((param0->unk_08 & ~0x38) | 0x10);
    } else {
        param0->unk_08 = (u8)((param0->unk_08 & ~0x38) | ((param1[0].unk_00 & 7) << 3));
    }

    param0->unk_08 = (u8)((param0->unk_08 & ~7) | ((u8)param2 & 7));
    param0->unk_08 = (u8)((param0->unk_08 & ~0xC0) | (((u8)param3 & 3) << 6));
}
