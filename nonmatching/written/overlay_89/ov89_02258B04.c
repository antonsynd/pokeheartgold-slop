#include "global.h"
#include "bg_window.h"
#include "msgdata.h"
#include "options.h"
#include "overlay_manager.h"
#include "palette.h"
#include "player_data.h"
#include "render_window.h"
#include "screen_fade.h"
#include "system.h"
#include "text.h"
#include "unk_02005D10.h"
#include "yes_no_prompt.h"

typedef struct UnkStruct_ov89_02258B04_Entry {
    u8 filler_00[9];
    u8 unk_09;
    u8 unk_0A;
    u8 filler_0B;
} UnkStruct_ov89_02258B04_Entry; // size: 0xC

typedef struct UnkStruct_ov89_02258B04_Header {
    int unk_00;
    u8 unk_04;
} UnkStruct_ov89_02258B04_Header;

typedef struct UnkStruct_ov89_02258B04 {
    UnkStruct_ov89_02258B04_Header *unk_00;
    SaveData *unk_04;
    BgConfig *unk_08;
    PaletteData *unk_0C;
    u8 filler_10[0x14];
    YesNoPrompt *unk_24;
    u8 unk_28;
    u8 unk_29;
    u8 filler_2A[6];
    MsgData *unk_30;
    u8 filler_34[0x80];
    Window unk_B4;
    String *unk_C4;
    u8 unk_C8;
    u8 filler_C9[3];
    void *unk_CC;
    u8 filler_D0[0x98];
    int unk_168;
    int unk_16C;
    u8 filler_170[0x20];
    int unk_190;
    u8 unk_194[0x8D8 - 0x194];
    UnkStruct_ov89_02258B04_Entry unk_8D8[6];
    u8 unk_920;
    u8 unk_921;
    u8 filler_922[0x9BC - 0x922];
    int unk_9BC;
} UnkStruct_ov89_02258B04;

extern void ov89_0225A4F4(void *param0, void *param1, int param2, u8 param3);
extern void ov89_02259E28(UnkStruct_ov89_02258B04 *param0, void *param1);
extern int ov89_0225A41C(UnkStruct_ov89_02258B04 *param0, int param1);
extern void ov89_02259EC4(UnkStruct_ov89_02258B04 *param0, UnkStruct_ov89_02258B04_Entry *param1, int param2);
extern void ov89_0225C91C(UnkStruct_ov89_02258B04_Entry *param0);
extern int ov89_0225C84C(UnkStruct_ov89_02258B04_Entry *param0, int param1);
extern void ov89_0225A16C(UnkStruct_ov89_02258B04 *param0);
extern void ov89_0225C8DC(UnkStruct_ov89_02258B04 *param0);
extern void ov89_0225A21C(UnkStruct_ov89_02258B04 *param0);
extern void ov89_0225A398(UnkStruct_ov89_02258B04 *param0);
extern void ov89_02259F9C(UnkStruct_ov89_02258B04 *param0);
extern void ov89_0225A468(UnkStruct_ov89_02258B04 *param0);
extern void ov45_0222EEB8(void);
extern int ov45_0222D844(void);
extern int ov45_0222A330(int param0);
extern void ov45_0222A4A8(int param0);

int ov89_02258B04(OverlayManager *param0, int *param1) {
    UnkStruct_ov89_02258B04 *v0 = OverlayManager_GetData(param0);

    ov89_0225A4F4(v0->unk_194, v0->unk_CC, v0->unk_9BC, v0->unk_00->unk_04);

    switch (*param1) {
    case 0:
        v0->unk_168 = 1;
        ov89_0225C8DC(v0);

        {
            u8 v1[12];
            ov89_02259E28(v0, v1);
        }
        (*param1)++;
        break;
    case 1:
        if (IsPaletteFadeFinished() == TRUE) {
            v0->unk_9BC = 1;
            (*param1)++;
        }
        break;
    case 2:
        if (gSystem.touchNew && (gSystem.touchY < 160)) {
            if (ov89_0225A41C(v0, (32 << 8) / 6) == 1) {
                v0->unk_8D8[v0->unk_920].unk_09 = gSystem.touchX;
                v0->unk_8D8[v0->unk_920].unk_0A = gSystem.touchY;

                ov89_02259EC4(v0, &v0->unk_8D8[v0->unk_920], v0->unk_16C);
                ov89_0225C91C(&v0->unk_8D8[v0->unk_920]);
            }
        }

        {
            int v2;
            v2 = ov89_0225C84C(v0->unk_8D8, v0->unk_920);

            if (v2 < 6) {
                v0->unk_920 = v2;
                ov89_0225A16C(v0);
            } else if (((*param1) == 2) && (v2 == 0xfe)) {
                PlaySE(0x5E5);
                PaletteData_BlendPalette(v0->unk_0C, 0, 0 * 16 + 9, 1, 8, 0x0);
                PaletteData_BlendPalette(v0->unk_0C, 2, v0->unk_921 * 16, 16, 8, 0x0);
                *param1 = 3;
            }
        }
        break;
    case 3:
        FillWindowPixelBuffer(&v0->unk_B4, 0xf);
        DrawFrameAndWindow2(&v0->unk_B4, 0, 1, 14);
        ReadMsgDataIntoString(v0->unk_30, 2, v0->unk_C4);
        v0->unk_C8 = AddTextPrinterParameterized(&v0->unk_B4, 1, v0->unk_C4, 0, 0, Options_GetTextFrameDelay(Save_PlayerData_GetOptionsAddr(v0->unk_04)), NULL);
        (*param1)++;
        break;
    case 4:
        if (TextPrinterCheckActive(v0->unk_C8) == 0) {
            YesNoPromptTemplate v3;

            v3.bgConfig = v0->unk_08;
            v3.bgId = 1;
            v3.tileStart = 31;
            v3.plttSlot = 11;
            v3.x = 25;
            v3.y = 6;
            v3.shapeParam = 0;

            YesNoPrompt_InitFromTemplate(v0->unk_24, &v3);

            v0->unk_28 = 1;
            (*param1)++;
        }

        break;
    case 5:
        PaletteData_LoadPaletteSlotFromHardware(v0->unk_0C, 0, 0xb0, 0x40);
        {
            u32 v4 = YesNoPrompt_HandleInput(v0->unk_24);

            switch (v4) {
            case 1:
                YesNoPrompt_Reset(v0->unk_24);
                v0->unk_28 = 0;
                ClearFrameAndWindow2(&v0->unk_B4, 0);
                v0->unk_168 = 0;
                v0->unk_9BC = 3;
                *param1 = 9;
                break;
            case 2:
                YesNoPrompt_Reset(v0->unk_24);
                v0->unk_28 = 0;
                ClearFrameAndWindow2(&v0->unk_B4, 0);
                PaletteData_BlendPalette(v0->unk_0C, 0, 0 * 16 + 9, 1, 0, 0x0);
                PaletteData_BlendPalette(v0->unk_0C, 2, v0->unk_921 * 16, 16, 0, 0x0);
                *param1 = 2;
                break;
            }
        }
        break;
    case 6:
        FillWindowPixelBuffer(&v0->unk_B4, 0xf);
        DrawFrameAndWindow2(&v0->unk_B4, 0, 1, 14);
        ReadMsgDataIntoString(v0->unk_30, 3, v0->unk_C4);
        v0->unk_C8 = AddTextPrinterParameterized(&v0->unk_B4, 1, v0->unk_C4, 0, 0, Options_GetTextFrameDelay(Save_PlayerData_GetOptionsAddr(v0->unk_04)), NULL);
        (*param1)++;
        break;
    case 7:
        if (TextPrinterCheckActive(v0->unk_C8) == 0) {
            (*param1)++;
        }
        break;
    case 8:
        v0->unk_29++;

        if (v0->unk_29 > 90) {
            *param1 = 9;
        }
        break;
    case 9:
        if (IsPaletteFadeFinished() == FALSE) {
            sub_0200FB70();
        }

        BeginNormalPaletteFade(0, 0, 0, 0, 6, 1, 125);
        (*param1)++;
        break;
    case 10:
        if (IsPaletteFadeFinished() == TRUE) {
            (*param1)++;
        }
        break;
    default:
        ov45_0222EEB8();
        return 1;
    }

    ov89_0225A21C(v0);
    ov89_0225A398(v0);

    if (v0->unk_9BC == 1) {
        v0->unk_190++;

        if (v0->unk_190 > 30) {
            v0->unk_190 = 0;
            ov89_02259F9C(v0);
        }

        if (((ov45_0222D844() == 1) || (ov45_0222A330(v0->unk_00->unk_00) == 1)) && ((*param1) != 4)) {
            if (v0->unk_28 == 1) {
                YesNoPrompt_Reset(v0->unk_24);
            }

            v0->unk_168 = 0;
            v0->unk_9BC = 3;

            if (ov45_0222D844() == 1) {
                (*param1) = 9;
            } else {
                PlaySE(0x5F1);
                ov45_0222A4A8(v0->unk_00->unk_00);
                (*param1) = 6;
            }
        }
    }

    ov89_0225A468(v0);

    return 0;
}
