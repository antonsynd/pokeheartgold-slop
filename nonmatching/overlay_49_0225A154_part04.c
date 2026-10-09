#include "global.h"

#include "assert.h"
#include "bg_window.h"
#include "filesystem.h"
#include "gf_gfx_planes.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "player_data.h"
#include "render_window.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_ov49_0225B_Msg {
    MessageFormat *unk00;
    MsgData *unk04[4];
    String *unk14;
    String *unk18;
} UnkStruct_ov49_0225B_Msg;

typedef struct UnkStruct_ov49_0225B_Gfx {
    BgConfig *bgConfig;
    u8 unk04[0x2C];
} UnkStruct_ov49_0225B_Gfx;

typedef struct UnkStruct_ov49_0225B_Plaza {
    u8 unk00;
    u8 unk01;
    u8 unk02;
    u8 unk03;
    u16 unk04;
    u16 unk06;
    u8 unk08[0x114 - 0x08];
    u8 unk114[0x14C - 0x114];
    void *unk14C;
    u16 unk150;
    u8 unk152;
    u8 unk153;
} UnkStruct_ov49_0225B_Plaza;

typedef struct UnkStruct_ov49_0225B_Big {
    u8 unk00[0x34];
    void *unk34;
    u8 unk38[0x3C - 0x38];
    u8 unk3C[0x2DC - 0x3C];
    u8 unk2DC[0x318 - 0x2DC];
    u8 unk318[0x3D8 - 0x318];
    int unk3D8;
    void *unk3DC;
} UnkStruct_ov49_0225B_Big;

typedef struct UnkStruct_ov49_0225B_Hdr {
    u8 unk00[6];
    u16 unk06;
} UnkStruct_ov49_0225B_Hdr;

typedef struct UnkStruct_ov49_0225B_Win {
    Window window;
} UnkStruct_ov49_0225B_Win;

const u32 ov49_02269714[4] = { 776, 777, 800, 766 };

extern void ov49_0225B24C(UnkStruct_ov49_0225B_Win *param0, const String *param1);
extern void ov49_0225B444(UnkStruct_ov49_0225B_Big *param0);
extern void ov49_0225B99C(UnkStruct_ov49_0225B_Plaza *param0, void *param1, void *param2);
extern void ov49_0225B944(UnkStruct_ov49_0225B_Plaza *param0, void *param1, void *param2, void *param3, int param4, u32 heapID, void *param6, void *param7, int param8, int param9, void *param10, int param11);
extern void ov49_0225B9AC(UnkStruct_ov49_0225B_Plaza *param0, void *param1, void *param2, u32 heapID, void *param4);
extern void ov49_0225B9F0(UnkStruct_ov49_0225B_Plaza *param0, void *param1, u32 heapID, u32 param3);
extern void ov49_0225BA20(UnkStruct_ov49_0225B_Plaza *param0, void *param1);
extern void ov49_0225BABC(UnkStruct_ov49_0225B_Plaza *param0, void *param1, void *param2, u32 param3, u32 heapID);
extern void ov49_0225BB10(UnkStruct_ov49_0225B_Plaza *param0, void *param1);
extern void ov49_0225BB84(void *param0, void *param1, void *param2, u32 heapID);
extern void ov49_0225BBA8(void *param0, void *param1, void *param2);
extern void ov49_0225BBCC(void *param0, void *param1);
extern void ov49_0225BBD0(void *param0, void *param1, void *param2, void *param3, void *param4, int param5, void *param6, u32 param7, void *param8, void *param9, int param10, int param11, void *param12, int param13);
extern int ov49_0225BF80(void *param0, void *param1, void *param2);
extern void ov49_0225BFC4(void *param0, void *param1, void *param2, u32 param3, u32 param4);
extern int ov49_0225BFEC(void *param0);
extern int ov49_0225C844(void *param0, void *param1, void *param2, u32 param3);
extern void ov49_0225C8A8(void *param0);
extern int ov49_0225C8D4(void *param0, void *param1, void *param2, u32 heapID);
extern void ov49_0225CB68(void *param0);
extern int ov49_02268968(void *param0, u16 param1, u8 param2);
extern u32 ov45_0222A53C(void *a0);
extern void *ov45_0222A578(void *a0, int a1);
extern void *ov45_0222A5C0(void *a0);
extern void *ov45_0222AB58(void *a0, int a1);
extern int ov45_0222AB28(void *a0, int a1);
extern int ov45_0222AB48(void *a0, int a1);
extern void ov45_0222ADD8(void *a0, u32 a1);
extern void ov45_0222AE54(void *a0);
extern u32 ov45_0222ADA8(void *a0, u32 a1);
extern void ov45_0222AE08(u32 a0, u32 *a1, u32 *a2);
extern s32 ov45_0222E7FC(int a0);
String *ov49_0225B388(UnkStruct_ov49_0225B_Msg *param0, int param1, u32 param2);
void ov49_0225B3A8(UnkStruct_ov49_0225B_Msg *param0, u32 param1, u32 param2, u32 param3, int param4);

void ov49_0225B2C0(UnkStruct_ov49_0225B_Win *param0, UnkStruct_ov49_0225B_Msg *param1, int param2) {
    u32 v0;
    s32 v1;
    String *v2;

    v1 = ov45_0222E7FC(param2);
    ov49_0225B3A8(param1, v1, 5, 0, 2);
    v2 = ov49_0225B388(param1, 2, 32);

    ov49_0225B24C(param0, v2);
}

void ov49_0225B2F0(UnkStruct_ov49_0225B_Win *param0, UnkStruct_ov49_0225B_Msg *param1, int param2) {
    String *v0 = ov49_0225B388(param1, 2, 14);
    ov49_0225B24C(param0, v0);
}

void ov49_0225B308(UnkStruct_ov49_0225B_Msg *param0, u32 heapID) {
    int v0;

    param0->unk00 = MessageFormat_New_Custom(8, 64, heapID);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk04[v0] = NewMsgDataFromNarc(1, 0x1B, ov49_02269714[v0], heapID);
    }

    param0->unk14 = String_New(480, heapID);
    param0->unk18 = String_New(480, heapID);
}

void ov49_0225B35C(UnkStruct_ov49_0225B_Msg *param0) {
    int v0;

    MessageFormat_Delete(param0->unk00);

    for (v0 = 0; v0 < 4; v0++) {
        DestroyMsgData(param0->unk04[v0]);
    }

    String_Delete(param0->unk14);
    String_Delete(param0->unk18);
}

String *ov49_0225B388(UnkStruct_ov49_0225B_Msg *param0, int param1, u32 param2) {
    ReadMsgDataIntoString(param0->unk04[param1], param2, param0->unk18);
    StringExpandPlaceholders(param0->unk00, param0->unk14, param0->unk18);
    return param0->unk14;
}

void ov49_0225B3A8(UnkStruct_ov49_0225B_Msg *param0, u32 param1, u32 param2, u32 param3, int param4) {
    BufferIntegerAsString(param0->unk00, param3, param1, param2, param4, 1);
}

void ov49_0225B3C8(UnkStruct_ov49_0225B_Msg *param0, const PlayerProfile *param1, u32 param2) {
    BufferPlayersName(param0->unk00, param2, param1);
}

void ov49_0225B3D8(UnkStruct_ov49_0225B_Msg *param0, int param1, u32 param2) {
    BufferWiFiPlazaActivityName(param0->unk00, param2, param1);
}

void ov49_0225B3E8(UnkStruct_ov49_0225B_Msg *param0, int param1, u32 param2) {
    BufferWiFiPlazaEventName(param0->unk00, param2, param1);
}

void ov49_0225B3F8(UnkStruct_ov49_0225B_Msg *param0, u32 param1, u32 param2) {
    BufferWiFiPlazaInstrumentName(param0->unk00, param2, param1);
}

void ov49_0225B408(UnkStruct_ov49_0225B_Msg *param0, u32 param1, u32 param2) {
    BufferCountryName(param0->unk00, param2, param1);
}

void ov49_0225B418(UnkStruct_ov49_0225B_Msg *param0, u32 param1, u32 param2, u32 param3) {
    BufferCityName(param0->unk00, param3, param1, param2);
}

void ov49_0225B42C(UnkStruct_ov49_0225B_Msg *param0, u32 param1, u16 param2) {
    BufferECWord(param0->unk00, param1, param2);
}

void ov49_0225B438(UnkStruct_ov49_0225B_Msg *param0) {
    MessageFormat_ResetBuffers(param0->unk00);
}

void ov49_0225B444(UnkStruct_ov49_0225B_Big *param0) {
    param0->unk3D8 = 1;
}

void ov49_0225B450(UnkStruct_ov49_0225B_Plaza *param0, UnkStruct_ov49_0225B_Hdr *param1, UnkStruct_ov49_0225B_Gfx *param2, const PlayerProfile *param3, u32 heapID) {
    u32 v0 = PlayerProfile_GetTrainerGender(param3);

    param0->unk14C = NARC_New(0xD1, heapID);

    ov49_0225BABC(param0, param2, param0->unk14C, v0, heapID);
    ov49_0225BB84(&param0->unk08, param2, param0->unk14C, heapID);
    ov49_0225C844(&param0->unk114, param2, param0->unk14C, heapID);

    param0->unk02 = 0;
    param0->unk01 = 0;

    if (param1->unk06 == 0) {
        param0->unk00 = 0;

        BG_SetMaskColor(4, 0);
        GfGfx_EngineBTogglePlanes(1, 0);
        GfGfx_EngineBTogglePlanes(2, 0);
        GfGfx_EngineBTogglePlanes(4, 0);
        GfGfx_EngineBTogglePlanes(8, 0);
    } else {
        param0->unk00 = 5;
    }
}

void ov49_0225B4E4(UnkStruct_ov49_0225B_Plaza *param0, void *param1, void *param2) {
    ov49_0225C8A8(&param0->unk114);
    ov49_0225BBA8(&param0->unk08, param1, param2);
    ov49_0225BB10(param0, param2);

    NARC_Delete(param0->unk14C);
}

void ov49_0225B518(UnkStruct_ov49_0225B_Plaza *param0, UnkStruct_ov49_0225B_Big *param1, BOOL param2, u32 heapID) {
    void *v0 = param1->unk34;
    void *v1 = &param1->unk3C;
    void *v2;
    int off = 0x2DC;

    switch (param0->unk00) {
    case 0:
        if (param0->unk06 == 1) {
            param0->unk00++;
        }
        break;
    case 1:
        BeginNormalPaletteFade(4, 0, 0, 0x7FFF, 4, 1, heapID);
        param0->unk00++;
        break;
    case 2:
        if (IsPaletteFadeFinished() == 1) {
            {
                void *v4;

                v4 = ov45_0222A5C0(v0);
                ov49_0225B9AC(param0, v1, &param1->unk2DC, heapID, v4);
                param0->unk01 = 4;
            }

            GfGfx_EngineBTogglePlanes(1, 1);
            GfGfx_EngineBTogglePlanes(2, 1);
            GfGfx_EngineBTogglePlanes(4, 1);
            GfGfx_EngineBTogglePlanes(0x10, 1);
            param0->unk00++;
        }
        break;
    case 3:
        BeginNormalPaletteFade(4, 1, 1, 0x7FFF, 6, 1, heapID);
        param0->unk00++;
        break;
    case 4:
        if (IsPaletteFadeFinished() == 1) {
            param0->unk00++;
        }
        break;
    case 5:
        if (param2 == 1) {
            break;
        }

        switch (param0->unk01) {
        case 1: {
            int v3 = ov49_0225C8D4(&param0->unk114, v1, param0->unk14C, heapID);

            if (v3 == 1) {
                ov49_0225B444(param1);
            }
        } break;
        case 4:
            break;
        case 3:
            if (param0->unk153) {
                if (ov49_02268968(param1->unk3DC, param0->unk150, param0->unk152) == 0) {
                    param0->unk153 = 0;
                    ov49_0225CB68(&param0->unk114);
                }
            }

            {
                int v3 = ov49_0225C8D4(&param0->unk114, v1, param0->unk14C, heapID);

                if (v3 == 1) {
                    u32 v5, v6, v7;

                    ov45_0222ADD8(v0, ov45_0222A53C(v0));
                    ov45_0222AE54(v0);

                    v5 = ov45_0222ADA8(v0, ov45_0222A53C(v0));
                    ov45_0222AE08(v5, &v6, &v7);

                    param0->unk153 = 1;
                    param0->unk150 = v6;
                    param0->unk152 = v7;
                }
            }
            break;
        case 2:
            off += 0x3C;
            ov49_0225BBCC(&param0->unk08, (u8 *)param1 + off);
            break;
        default:
            break;
        }

        if (param0->unk02 != 0) {
            param0->unk00++;
        }
        break;
    case 6:
        BeginNormalPaletteFade(4, 1, 0, 0, 3, 1, heapID);
        param0->unk00++;
        break;
    case 7:
        if (IsPaletteFadeFinished() == 1) {
            switch (param0->unk01) {
            case 1:
            case 4:
            case 3:
                ov49_0225BA20(param0, v1);
                break;
            case 2:
                ov49_0225B99C(param0, (u8 *)param1 + 0x318, v1);
                break;
            }

            param0->unk00++;
        }
        break;
    case 8: {
        void *v8;
        int v9;
        int v10;
        void *v11;

        switch (param0->unk02) {
        case 1:
        case 4:
            v8 = ov45_0222A5C0(v0);
            v2 = (u8 *)param1 + 0x2DC;
            ov49_0225B9AC(param0, v1, v2, heapID, v8);
            break;
        case 2: {
            int v12;
            void *v13;

            v13 = ov45_0222A5C0(v0);

            if (param0->unk03 == ov45_0222A53C(v0)) {
                v8 = ov45_0222A5C0(v0);
                v12 = 1;
            } else {
                v8 = ov45_0222A578(v0, param0->unk03);
                v12 = 0;
            }

            v9 = ov45_0222AB28(v0, param0->unk03);

            if (param0->unk04 == 1) {
                v10 = ov45_0222AB48(v0, param0->unk03);
                v11 = ov45_0222AB58(v0, param0->unk03);

                if (v11 == NULL) {
                    v10 = 0;
                }
            } else {
                v10 = 0;
                v11 = NULL;
            }

            ov49_0225B944(param0, (u8 *)param1 + 0x318, v1, (u8 *)param1 + off, v12, heapID, v8, v13, v9, v10, v11, 1);
        } break;
        case 3: {
            u32 v14;
            u32 v15;
            u32 v16;

            v14 = ov45_0222ADA8(v0, ov45_0222A53C(v0));

            if (v14 == 0xffffffff) {
                GF_ASSERT(FALSE);

                v14 = 0;
            }

            ov45_0222AE08(v14, &v15, &v16);
            ov49_0225B9F0(param0, v1, heapID, v16);
        } break;
        }

        param0->unk02 = 0;
        param0->unk00++;
    } break;
    case 9:
        BeginNormalPaletteFade(4, 1, 1, 0, 3, 1, heapID);

        if (param0->unk01 == 2) {
            ov49_0225BBCC(&param0->unk08, (u8 *)param1 + 0x318);
        }

        param0->unk00++;
        break;
    case 10:
        if (IsPaletteFadeFinished() == 1) {
            param0->unk00 = 5;
        }
        break;
    }
}

u8 ov49_0225B898(const UnkStruct_ov49_0225B_Plaza *param0) {
    return param0->unk00;
}

void ov49_0225B89C(UnkStruct_ov49_0225B_Plaza *param0, u32 param1, BOOL param2) {
    param0->unk02 = 2;
    param0->unk03 = param1;
    param0->unk04 = param2;
}

void ov49_0225B8A8(UnkStruct_ov49_0225B_Plaza *param0, UnkStruct_ov49_0225B_Gfx *param1, u32 param2, u32 heapID) {
    GF_ASSERT(param2 < 27);
    GF_ASSERT(param0->unk01 == 2);

    if (param0->unk01 == 2) {
        ov49_0225BFC4(&param0->unk08, param1, param0->unk14C, heapID, param2);
    }
}

void ov49_0225B8E0(UnkStruct_ov49_0225B_Plaza *param0) {
    if (param0->unk01 != 1) {
        param0->unk02 = 1;
    }
}

void ov49_0225B8EC(UnkStruct_ov49_0225B_Plaza *param0) {
    if (param0->unk01 != 3) {
        param0->unk02 = 3;
    }
}

u8 ov49_0225B8F8(const UnkStruct_ov49_0225B_Plaza *param0) {
    return param0->unk03;
}

BOOL ov49_0225B8FC(const UnkStruct_ov49_0225B_Plaza *param0) {
    if (param0->unk02 == 2) {
        return 1;
    }

    if (param0->unk01 == 2) {
        return 1;
    }

    return 0;
}

BOOL ov49_0225B914(const UnkStruct_ov49_0225B_Plaza *param0) {
    if ((param0->unk02 == 0) && (param0->unk01 == 2)) {
        return 1;
    }

    return 0;
}

BOOL ov49_0225B928(UnkStruct_ov49_0225B_Plaza *param0) {
    return ov49_0225BFEC(&param0->unk08);
}

BOOL ov49_0225B934(const UnkStruct_ov49_0225B_Plaza *param0) {
    if (param0->unk02 != 0) {
        return 1;
    }

    return 0;
}

void ov49_0225B944(UnkStruct_ov49_0225B_Plaza *param0, void *param1, void *param2, void *param3, int param4, u32 heapID, void *param6, void *param7, int param8, int param9, void *param10, int param11) {
    if (param0->unk01 == 2) {
        ov49_0225B99C(param0, param1, param2);
    }

    ov49_0225BBD0(param0, param1, &param0->unk08, param2, param3, param4, param0->unk14C, heapID, param6, param7, param8, param9, param10, param11);
    param0->unk01 = 2;
}

void ov49_0225B99C(UnkStruct_ov49_0225B_Plaza *param0, void *param1, void *param2) {
    ov49_0225BF80(&param0->unk08, param1, param2);
    param0->unk01 = 0;
}
