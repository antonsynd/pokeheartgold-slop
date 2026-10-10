#include "global.h"

#include "system.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_ov49_0225F518 {
    u16 unk_00;
    u16 unk_02;
    s32 unk_04;
    u8 unk_08[0x20];
    u16 unk_28;
    u16 unk_2A;
} UnkStruct_ov49_0225F518;

extern u8 ov49_02269B38[];

u32 ov49_02259FE8(void *param0);
u32 ov49_02259FF0(void *param0);
u32 ov49_02258DAC(void);
void *ov49_0225EF84(void *param0);
u32 ov49_0225EF88(void *param0);
void *ov49_0225EF40(void *param0, u32 size);
void ov49_022614CC(void *param0, void *param1);
void ov45_0222A4D0(u32 param0);
u16 ov45_0222B1B4(u32 param0);
void ov45_0222A72C(u32 param0, u32 param1);
u32 ov49_0225F2FC(void *param0, u32 param1);
void ov49_02258EEC(u32 param0, u32 param1, u32 param2);
void ov49_0225EF90(void *param0);
int ov49_0225A030(void *param0);
int ov49_02258F38(u32 param0);
u32 ov49_0225A008(void *param0);
void ov49_0225CC40(u32 param0, u32 param1);
void ov49_0225A018(void *param0, u32 param1);
void ov49_02258E7C(u32 param0, u32 param1, u32 param2, u32 param3);
void ov49_0225EF8C(void *param0, u32 param1);
int ov49_02258E60(u32 param0, u32 param1);
u32 ov49_0225A30C(void *param0, u32 param1, u32 param2);
void ov49_0225A08C(void *param0, u32 param1);
void ov49_0225A09C(void *param0, u32 param1);
void ov49_0225A174(void *param0, void *param1, u32 param2, u32 param3);
void ov49_0225A1F4(void *param0, u32 param1);
u32 ov49_0225A1D4(void *param0);
void ov49_0225A40C(void *param0, u32 param1, u32 param2);
void ov49_0225A1E4(void *param0, u32 param1, u32 param2);
void ov49_0225A264(void *param0);
int ov49_0225A2C4(void *param0);
void ov49_0225A2F8(void *param0);
void ov45_0222A770(u32 param0, u32 param1, u32 param2);
void ov49_0225A490(void *param0);
void ov49_0225A530(void *param0);
void ov49_0225A334(void *param0, u32 param1, u32 param2);
void ov49_0225A39C(void *param0, u32 param1, u32 param2);
int ov45_0222AB28(u32 param0, u32 param1);
void ov49_0225A428(void *param0, u32 param1, u32 param2);
int ov49_0225A0AC(void *param0);
void ov49_0225A0EC(void *param0);
void ov49_02261540(void *param0, void *param1);
void ov49_0225EF68(void *param0);
u32 ov49_0225A010(void *param0);
u32 ov49_0225A02C(void *param0);
void ov49_0225EF98(u32 param0, u32 param1, void *param2, u32 param3);

BOOL ov49_0225F518(void *param0, void *param1, u32 param2) {
    UnkStruct_ov49_0225F518 *v0;
    u32 v1;
    u32 v2;
    u32 v3;
    u32 v4;

    v3 = ov49_02259FE8(param1);
    v2 = ov49_02259FF0(param1);
    v1 = ov49_02258DAC();
    v0 = ov49_0225EF84(param0);

    switch (ov49_0225EF88(param0)) {
    case 0:
        v0 = ov49_0225EF40(param0, 0x2C);
        ov49_022614CC(v0, param1);
        ov45_0222A4D0(v3);
        v0->unk_02 = ov45_0222B1B4(v3);
        ov45_0222A72C(v3, v0->unk_02);
        v1 = ov49_0225F2FC(param1, param2);
        ov49_02258EEC(v2, v1, 4);
        ov49_0225EF90(param0);
        break;
    case 1:
        if (ov49_0225A030(param1) == 0 && ov49_02258F38(v1) == 1) {
            ov49_02258EEC(v2, v1, 0);
            ov49_0225CC40(ov49_0225A008(param1), v1);
            v0->unk_04 = 16;
            ov49_0225EF90(param0);
        }
        break;
    case 2:
        v0->unk_04--;
        if (v0->unk_04 == 0) {
            ov49_0225A018(param1, 1);
            ov49_0225EF90(param0);
        }
        break;
    case 3:
        ov49_02258E7C(v2, v1, 2, 0);
        v0->unk_00 = 4;
        ov49_0225EF8C(param0, 7);
        break;
    case 4:
        ov49_02258E7C(v2, v1, 2, 0);
        v0->unk_00 = 5;
        ov49_0225EF8C(param0, 7);
        break;
    case 5:
        ov49_02258E7C(v2, v1, 1, 3);
        v0->unk_00 = 6;
        ov49_0225EF8C(param0, 7);
        break;
    case 6:
        ov49_02258E7C(v2, v1, 2, 3);
        v0->unk_00 = 8;
        ov49_0225EF8C(param0, 7);
        break;
    case 7:
        if (ov49_02258E60(v1, 5) == 0) {
            ov49_0225EF8C(param0, v0->unk_00);
        }
        break;
    case 8:
        v4 = ov49_0225A30C(param1, 1, 0);
        ov49_0225A08C(param1, v4);
        v0->unk_00 = 16;
        ov49_0225EF8C(param0, 21);
        break;
    case 9:
        v4 = ov49_0225A30C(param1, 1, 5);
        ov49_0225A09C(param1, v4);
        ov49_0225A174(param1, &v0->unk_08, 0, 0);
        ov49_0225A1F4(param1, 1);
        ov49_0225EF8C(param0, 10);
        break;
    case 10: {
        u32 v6;
        BOOL v8 = FALSE;

        v6 = ov49_0225A1D4(param1);
        if (v6 == 0) {
            v0->unk_28 = 0;
            v8 = TRUE;
        } else if (v6 == 0xFFFFFFFE) {
            PlaySE(0x5DC);
            v0->unk_28 = 0;
            v8 = TRUE;
        } else if (v6 != 0xFFFFFFFF) {
            v0->unk_28 = v6;
            v8 = TRUE;
            ov49_0225A40C(param1, 0, v6);
        }
        if (v8 == TRUE) {
            ov49_0225A1E4(param1, 0, 0);
            if (v0->unk_28 != 0) {
                v4 = ov49_0225A30C(param1, 1, 8);
                ov49_0225A09C(param1, v4);
                ov49_0225A264(param1);
                ov49_0225EF8C(param0, 11);
            } else {
                ov49_0225EF8C(param0, 17);
            }
        }
    } break;
    case 11: {
        int v9 = ov49_0225A2C4(param1);

        if (v9 == 0) {
            ov49_0225A2F8(param1);
            ov49_0225EF8C(param0, 12);
            ov45_0222A770(v3, v0->unk_28, v0->unk_2A);
            ov49_0225A490(param1);
            PlaySE(0x5E5);
        } else if (v9 == 1) {
            ov49_0225A2F8(param1);
            ov49_0225EF8C(param0, 9);
        }
    } break;
    case 12:
        v4 = ov49_0225A30C(param1, 1, 10);
        ov49_0225A09C(param1, v4);
        ov49_0225A174(param1, &v0->unk_08, 0, 0);
        ov49_0225A1F4(param1, 1);
        ov49_0225EF8C(param0, 13);
        break;
    case 13: {
        u32 v10;
        BOOL v12 = FALSE;

        v10 = ov49_0225A1D4(param1);
        if (v10 == 0) {
            v0->unk_2A = 0;
            v12 = TRUE;
        } else if (v10 == 0xFFFFFFFE) {
            PlaySE(0x5DC);
            v0->unk_2A = 0;
            v12 = TRUE;
        } else if (v10 != 0xFFFFFFFF) {
            v0->unk_2A = v10;
            v12 = TRUE;
            ov49_0225A40C(param1, 0, v10);
        }
        if (v12 == TRUE) {
            ov49_0225A1E4(param1, 0, 0);
            if (v0->unk_2A != 0) {
                v4 = ov49_0225A30C(param1, 1, 8);
                ov49_0225A09C(param1, v4);
                ov49_0225A264(param1);
                ov49_0225EF8C(param0, 15);
            } else {
                ov49_0225EF8C(param0, 19);
            }
        }
    } break;
    case 15: {
        int v13 = ov49_0225A2C4(param1);

        if (v13 == 0) {
            ov49_0225A2F8(param1);
            ov49_0225EF8C(param0, 20);
            ov45_0222A770(v3, v0->unk_28, v0->unk_2A);
            ov49_0225A490(param1);
            PlaySE(0x5E5);
        } else if (v13 == 1) {
            ov49_0225A2F8(param1);
            ov49_0225EF8C(param0, 12);
        }
    } break;
    case 16:
        PlaySE(0x5BF);
        ov49_0225A530(param1);
        ov49_0225A334(param1, param2, 0);
        ov49_0225A39C(param1, v0->unk_02, 1);
        if (ov45_0222AB28(v3, param2) == 0) {
            v4 = ov49_0225A30C(param1, 1, 1);
        } else {
            v4 = ov49_0225A30C(param1, 1, 124);
        }
        ov49_0225A08C(param1, v4);
        v0->unk_00 = 18;
        ov49_0225EF8C(param0, 21);
        break;
    case 17:
        v4 = ov49_0225A30C(param1, 1, 2);
        ov49_0225A08C(param1, v4);
        v0->unk_00 = 22;
        ov49_0225EF8C(param0, 21);
        break;
    case 18:
        if (IsSEPlaying(0x5BF) == 0 && (gSystem.newKeys & 3)) {
            PlaySE(0x5DC);
            v4 = ov49_0225A30C(param1, 1, 4);
            ov49_0225A08C(param1, v4);
            v0->unk_00 = 9;
            ov49_0225EF8C(param0, 21);
            ov45_0222A770(v3, v0->unk_28, v0->unk_2A);
            ov49_0225A428(param1, param2, 0);
        }
        break;
    case 19:
        ov49_0225A40C(param1, 0, v0->unk_28);
        v4 = ov49_0225A30C(param1, 1, 12);
        ov49_0225A08C(param1, v4);
        v0->unk_00 = 17;
        ov49_0225EF8C(param0, 21);
        break;
    case 20:
        ov49_0225A40C(param1, 0, v0->unk_28);
        ov49_0225A40C(param1, 1, v0->unk_2A);
        v4 = ov49_0225A30C(param1, 1, 11);
        ov49_0225A08C(param1, v4);
        v0->unk_00 = 17;
        ov49_0225EF8C(param0, 21);
        break;
    case 21:
        if (ov49_0225A0AC(param1) == 1) {
            ov49_0225EF8C(param0, v0->unk_00);
        }
        break;
    case 22: {
        u32 v15;
        u32 v16;

        ov49_02258EEC(v2, v1, 1);
        ov49_0225A0EC(param1);
        ov49_02261540(v0, param1);
        ov49_0225EF68(param0);
        v15 = ov49_0225A010(param1);
        v16 = ov49_0225A02C(param1);
        ov49_0225EF98(v15, v16, ov49_02269B38, 0);
    } break;
    }
    return FALSE;
}
