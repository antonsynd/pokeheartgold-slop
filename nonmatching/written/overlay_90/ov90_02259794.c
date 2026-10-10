#include "global.h"
#include "bg_window.h"
#include "screen_fade.h"
#include "unk_02035900.h"
#include "unk_020379A0.h"
#include "overlay_00_thumb.h"

typedef struct UnkStruct_ov90_02259794_Entry {
    u8 filler_00[0x38];
} UnkStruct_ov90_02259794_Entry;

typedef struct UnkStruct_ov90_02259794 {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    u16 unk_04;
    u8 filler_06;
    u8 unk_07;
    u8 unk_08[8];
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 filler_13[5];
    u8 unk_18[4];
    u8 unk_1C[4];
    int unk_20[4];
    BgConfig *unk_30;
    u8 filler_34[8];
    u8 unk_3C[0x10];
    u8 unk_4C[0x38];
    u8 unk_84[0x1C8 - 0x84];
    int unk_1C8;
    u8 unk_1CC[0x200 - 0x1CC];
    int unk_200;
    UnkStruct_ov90_02259794_Entry unk_204[4];
    u8 unk_2E4[0x40];
} UnkStruct_ov90_02259794;

extern const u8 ov90_0225C1E8[];
extern const u8 _0225C1E0[];
extern const u8 ov90_0225C1E4[];

extern void ov90_0225A350(void *param0, void *param1, int heapID);
extern int ov90_0225A428(void *param0, void *param1);
extern void ov90_02259464(void *param0, void *param1, int param2, int param3);
extern int ov90_02259538(void *param0, int param1);
extern void ov90_022594FC(void *param0, int param1);
extern void ov90_0225A3E0(void *param0, void *param1);
extern int ov90_0225A544(void *param0, void *param1);
extern void ov90_0225A088(void *param0, void *param1, int heapID);
extern int ov90_0225A258(void *param0, void *param1);
extern void ov90_02259BCC(UnkStruct_ov90_02259794_Entry *param0, int param1, int param2, int param3, void *param4, int param5, int param6, void *param7, int param8, int param9);
extern int ov90_0225888C(void *param0, int param1);
extern int ov90_022588A4(void *param0, int param1);
extern void ov90_02259D50(UnkStruct_ov90_02259794_Entry *param0, void *param1, int param2, int param3, int param4, int param5);
extern void ov90_02259DAC(UnkStruct_ov90_02259794_Entry *param0, void *param1, int param2, int param3, int param4, int param5);
extern void ov90_02259EE0(UnkStruct_ov90_02259794_Entry *param0, int param1, s16 param2);
extern void ov90_02259E8C(UnkStruct_ov90_02259794_Entry *param0, void *param1);
extern void ov90_02259EA0(UnkStruct_ov90_02259794_Entry *param0);
extern int ov90_02259B68(UnkStruct_ov90_02259794 *param0);
extern void ov90_02259F44(UnkStruct_ov90_02259794_Entry *param0, s16 param1);
extern u32 ov90_02259B38(const u8 *param0, int param1);
extern void ov90_0225A108(void *param0);
extern void ov90_02259170(void *param0);

void ov90_02259794(void *param0, UnkStruct_ov90_02259794 *param1) {
    UnkStruct_ov90_02259794 *v0 = param1;
    int v1;

    switch (v0->unk_00) {
    case 0:
        BeginNormalPaletteFade(3, 1, 1, 0xFFFF, 6, 1, v0->unk_02);
        ov90_0225A350(v0->unk_1CC, &v0->unk_30, v0->unk_02);
        v0->unk_00++;
        break;
    case 1:
        ov90_0225A428(v0->unk_1CC, &v0->unk_30);
        v1 = IsPaletteFadeFinished();

        if (v1 == 1) {
            v0->unk_00++;
        }
        break;
    case 2:
        v1 = ov90_0225A428(v0->unk_1CC, &v0->unk_30);

        if (v1 == 1) {
            v0->unk_00++;
        }
        break;
    case 3:
        ov90_02259464(v0->unk_4C, v0->unk_3C, 0, 0);
        v0->unk_00++;
        break;
    case 4:
        v1 = ov90_02259538(v0->unk_4C, 0);

        if (v1) {
            v0->unk_00++;
            v0->unk_01 = 64;
        }
        break;
    case 5:
        if (v0->unk_01 > 0) {
            v0->unk_01--;

            if (v0->unk_01 == 0) {
                ov90_022594FC(v0->unk_4C, 0);
                ov90_0225A3E0(v0->unk_1CC, &v0->unk_30);
                v0->unk_00++;
            }
        }
        break;
    case 6:
        v1 = ov90_0225A544(v0->unk_1CC, &v0->unk_30);

        if (v1 == 1) {
            v0->unk_00++;
        }
        break;
    case 7: {
        int v2;
        int v3;
        int v4;
        int v5;

        ov90_0225A088(v0->unk_2E4, &v0->unk_30, v0->unk_02);

        v3 = ov90_0225A258(v0->unk_08, v0->unk_18);

        for (v2 = 0; v2 < v0->unk_10; v2++) {
            ov90_02259BCC(&v0->unk_204[v2], v0->unk_10, v0->unk_04, v0->unk_200, &v0->unk_30, v2, v0->unk_11, v0->unk_84, v0->unk_1C8, v0->unk_02);

            v5 = ov90_0225888C(v0->unk_08, v2);
            v4 = ov90_022588A4(v0->unk_08, v5);

            ov90_02259D50(&v0->unk_204[v2], v0->unk_3C, v0->unk_20[v2], 8, 0, v4);
            ov90_02259DAC(&v0->unk_204[v2], v0->unk_3C, v3, v0->unk_18[v2], v0->unk_1C[v2], 8);
            ov90_02259EE0(&v0->unk_204[v2], -8, 3 * v2);
        }

        for (v2 = 0; v2 < v0->unk_10; v2++) {
            ov90_02259E8C(&v0->unk_204[v2], &v0->unk_30);
            ov90_02259EA0(&v0->unk_204[v2]);
        }

        v0->unk_01 = 92;
        v0->unk_00++;
        break;
    }
    case 8:
        if (ov90_02259B68(v0) == 1) {
            v0->unk_00++;
        }
        break;
    case 9:
        v0->unk_01--;

        if (v0->unk_01 == 0) {
            v0->unk_00++;
            sub_02037AC0(129);

            if (v0->unk_12) {
                ov00_021E6A4C();
            }
        }
        break;
    case 10:
        if (sub_02037B38(129)) {
            v0->unk_00++;
        }
        break;
    case 11: {
        int v7;

        for (v7 = 0; v7 < v0->unk_10; v7++) {
            ov90_02259F44(&v0->unk_204[v7], v7 * 3);
        }

        v0->unk_00++;
        v0->unk_01 = 8;
        break;
    }
    case 12:
        v0->unk_01--;
        ov90_02259B68(v0);

        if (v0->unk_01 == 0) {
            v0->unk_00++;
        }
        break;
    case 13:
        BeginNormalPaletteFade(3, 0, 1, 0, 6, 1, v0->unk_02);
        ov90_02259B68(v0);

        if (v0->unk_11 == 0) {
            u32 v8;

            switch (v0->unk_04) {
            case 0:
                v8 = ov90_02259B38(ov90_0225C1E8, 3);
                break;
            case 1:
                v8 = ov90_02259B38(_0225C1E0, 2);
                break;
            case 2:
                v8 = ov90_02259B38(ov90_0225C1E4, 3);
                break;
            }

            sub_02037030(26, &v8, sizeof(u32));
        }

        v0->unk_00++;
        break;
    case 14:
        ov90_02259B68(v0);
        v1 = IsPaletteFadeFinished();

        if (v1 == 1) {
            ov90_0225A108(v0->unk_2E4);
            v0->unk_00++;
        }
        break;
    case 15:
        if (v0->unk_07 == 1) {
            v0->unk_00++;
        }
        break;
    case 16:
        break;
    }

    ov90_02259170(v0->unk_84);

    ScheduleSetBgPosText(v0->unk_30, 3, 4, 2);
    ScheduleSetBgPosText(v0->unk_30, 5, 4, 2);
}
