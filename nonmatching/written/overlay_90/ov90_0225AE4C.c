#include "global.h"

#include "bg_window.h"
#include "screen_fade.h"

typedef struct UnkStruct_ov90_0225AE4C_0C {
    u8 unk_00[8];
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u32 *unk_0C;
} UnkStruct_ov90_0225AE4C_0C;

typedef struct UnkStruct_ov90_0225AE4C_1C {
    u8 unk_00[0x14];
    u32 unk_14;
} UnkStruct_ov90_0225AE4C_1C;

typedef struct UnkStruct_ov90_0225AE4C_34 {
    u8 unk_00[4];
    u8 unk_04[4];
    u32 unk_08[4];
} UnkStruct_ov90_0225AE4C_34;

typedef struct UnkStruct_ov90_0225AE4C_4C {
    BgConfig *unk_00;
    u8 unk_04[8];
} UnkStruct_ov90_0225AE4C_4C;

typedef struct UnkStruct_ov90_0225AE4C_25C {
    u8 unk_00[0x38];
} UnkStruct_ov90_0225AE4C_25C;

typedef struct UnkStruct_ov90_0225AE4C {
    u16 unk_00;
    u16 heapID;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A[2];
    UnkStruct_ov90_0225AE4C_0C unk_0C;
    UnkStruct_ov90_0225AE4C_1C unk_1C;
    UnkStruct_ov90_0225AE4C_34 unk_34;
    UnkStruct_ov90_0225AE4C_4C unk_4C;
    u8 unk_58[0x10];
    u8 unk_68[0x38];
    u8 unk_A0[0x144];
    u32 unk_1E4;
    u8 unk_1E8[0x20];
    u8 unk_208[0x50];
    u32 unk_258;
    UnkStruct_ov90_0225AE4C_25C unk_25C[4];
    u8 unk_33C[0x314];
    u16 unk_650;
} UnkStruct_ov90_0225AE4C;

extern u32 ov90_0225A28C(u32 param0);
extern void ov90_0225BAA0(UnkStruct_ov90_0225AE4C *param0);
extern void ov90_02259464(void *param0, void *param1, u32 param2, u32 param3);
extern BOOL ov90_02259538(void *param0, u32 param1);
extern void ov90_022594FC(void *param0, u32 param1);
extern void ov90_0225A088(void *param0, void *param1, u32 param2);
extern void ov90_02259BCC(void *param0, u32 param1, u32 param2, u32 param3, void *param4, u32 param5, u32 param6, void *param7, u32 param8, u32 param9);
extern u32 ov90_0225888C(void *param0, int param1);
extern BOOL ov90_022588A4(void *param0, u32 param1);
extern void ov90_02259D50(void *param0, void *param1, u32 param2, u32 param3, u32 param4, u32 param5);
extern void ov90_02259DAC(void *param0, void *param1, u32 param2, u32 param3, u32 param4, u32 param5);
extern void ov90_02259E8C(void *param0, void *param1);
extern void ov90_02259EA0(void *param0);
extern void ov90_02259EE0(void *param0, int param1, s16 param2);
extern int ov90_0225B8F0(UnkStruct_ov90_0225AE4C *param0);
extern void ov90_0225B6B0(void *param0, u32 param1);
extern int ov90_0225B6C4(void *param0, void *param1);
extern void ov90_0225B954(UnkStruct_ov90_0225AE4C *param0);
extern void ov90_02259250(void *param0, u32 param1);
extern int ov90_0225B978(UnkStruct_ov90_0225AE4C *param0);
extern void ov00_021E6A4C(void);
extern void sub_02037AC0(u8 a0);
extern BOOL sub_02037B38(u8 a0);
extern void ov90_0225B9A8(UnkStruct_ov90_0225AE4C *param0);
extern int ov90_0225B38C(void *param0, void *param1, void *param2, u32 param3, u32 param4);
extern u32 ov90_0225B538(void *param0);
extern void ov90_0225A108(void *param0);
extern void ov90_0225B2A8(UnkStruct_ov90_0225AE4C *param0);
extern void ov90_02259170(void *param0);

void ov90_0225AE4C(void *param0, UnkStruct_ov90_0225AE4C *param1) {
    UnkStruct_ov90_0225AE4C *v0 = param1;
    BOOL v1;

    switch (v0->unk_04) {
    case 0:
        if (v0->unk_0C.unk_0B == 1) {
            v0->unk_09 = 0;
        } else {
            if (v0->unk_1C.unk_14 >= 10) {
                v0->unk_0C.unk_0C[0] = ov90_0225A28C(v0->unk_0C.unk_0C[0]);
                v0->unk_09 = 1;
            } else {
                v0->unk_09 = 0;
            }

            if (v0->unk_0C.unk_09 == 0) {
                ov90_0225BAA0(v0);
            }
        }

        BeginNormalPaletteFade(3, 1, 1, 0xffff, 6, 1, v0->heapID);
        v0->unk_04++;
        break;
    case 1:
        v1 = IsPaletteFadeFinished();

        if (v1) {
            v0->unk_04++;

            v0->unk_650 = 4;
        }
        break;
    case 2:
        ov90_02259464(&v0->unk_68, &v0->unk_58, 1, 0);
        v0->unk_04++;
        break;
    case 3:
        v1 = ov90_02259538(&v0->unk_68, 0);

        if (v1) {
            v0->unk_00 = 102;
            v0->unk_04++;
        }
        break;
    case 4:
        if (v0->unk_00 > 0) {
            v0->unk_00--;

            if (v0->unk_00 == 0) {
                ov90_022594FC(&v0->unk_68, 0);
                v0->unk_04++;
            }
        }
        break;
    case 5: {
        int v2;
        BOOL v3;
        u32 v4;

        ov90_0225A088(&v0->unk_33C, &v0->unk_4C, v0->heapID);

        for (v2 = 0; v2 < v0->unk_0C.unk_08; v2++) {
            ov90_02259BCC(&v0->unk_25C[v2], v0->unk_0C.unk_08, v0->unk_07, v0->unk_258, &v0->unk_4C, v2, v0->unk_0C.unk_09, &v0->unk_A0, v0->unk_1E4, v0->heapID);

            v4 = ov90_0225888C(&v0->unk_0C, v2);
            v3 = ov90_022588A4(&v0->unk_0C, v4);

            ov90_02259D50(&v0->unk_25C[v2], &v0->unk_58, v0->unk_34.unk_08[v2], 8, 0, v3);
            ov90_02259DAC(&v0->unk_25C[v2], &v0->unk_58, v0->unk_05, v0->unk_34.unk_00[v2], v0->unk_34.unk_04[v2], 8);
            ov90_02259E8C(&v0->unk_25C[v2], &v0->unk_4C);
            ov90_02259EA0(&v0->unk_25C[v2]);
            ov90_02259EE0(&v0->unk_25C[v2], -8, 3 * v2);
        }
    }
        v0->unk_04++;
        v0->unk_00 = 16;
        break;
    case 6:
        v1 = ov90_0225B8F0(v0);

        if (v1 == 1) {
            v0->unk_00--;

            if (v0->unk_00 == 0) {
                ov90_0225B6B0(&v0->unk_208, v0->unk_1C.unk_14);
                v0->unk_04++;
            }
        }
        break;
    case 7:
        v1 = ov90_0225B6C4(&v0->unk_208, &v0->unk_4C);

        if (v1 == 1) {
            if (v0->unk_09 == 1) {
                ov90_0225B954(v0);
            }

            v0->unk_04++;
        }
        break;
    case 8:
        ov90_02259250(&v0->unk_58, v0->unk_1C.unk_14);
        ov90_02259464(&v0->unk_68, &v0->unk_58, 7, 0);
        v0->unk_00 = 102;
        v0->unk_04++;
        break;
    case 9:
        v1 = ov90_02259538(&v0->unk_68, 0);

        if (v1 == 1) {
            if (v0->unk_00 == 0) {
                if (ov90_0225B978(v0) == 1) {
                    if (v0->unk_0C.unk_0B == 1) {
                        v0->unk_00 = 102;
                        v0->unk_04 = 12;
                    } else {
                        v0->unk_04++;
                    }
                }
            } else {
                v0->unk_00--;
            }
        }
        break;
    case 10: {
        u32 v5;

        if (v0->unk_09) {
            v5 = 8;
        } else {
            v5 = 9;
        }

        ov90_02259464(&v0->unk_68, &v0->unk_58, v5, 0);
    }
        v0->unk_04++;
        break;
    case 11:
        v1 = ov90_02259538(&v0->unk_68, 0);

        if (v1) {
            v0->unk_00 = 102;

            if (v0->unk_09) {
                v0->unk_04 = 13;
            } else {
                v0->unk_04++;
            }
        }
        break;
    case 12:
        if (v0->unk_00 > 0) {
            v0->unk_00--;

            if (v0->unk_00 == 0) {
                v0->unk_04 = 14;
            }
        }
        break;
    case 13:
        if (v0->unk_00 > 0) {
            v0->unk_00--;
        }

        if (v0->unk_00 == 0) {
            v0->unk_04 = 14;
        }
        break;
    case 14:
        if (v0->unk_0C.unk_0A) {
            ov00_021E6A4C();
        }

        sub_02037AC0(130);
        v0->unk_04++;
        break;
    case 15:
        if (sub_02037B38(130)) {
            if (v0->unk_0C.unk_0B) {
                v0->unk_04 = 18;
            } else {
                v0->unk_04++;
            }
        }
        break;
    case 16:
        BeginNormalPaletteFade(3, 0, 0, 0, 6, 1, v0->heapID);
        v0->unk_04++;
        break;
    case 17:
        v1 = IsPaletteFadeFinished();

        if (v1) {
            v0->unk_04 = 20;
        }
        break;
    case 18:
        ov90_0225B9A8(v0);
        v0->unk_04++;
        break;
    case 19:
        v1 = ov90_0225B38C(&v0->unk_1E8, &v0->unk_68, &v0->unk_58, v0->unk_07, v0->heapID);

        if (v1) {
            v0->unk_08 = ov90_0225B538(&v0->unk_1E8);
            v0->unk_04++;
        }
        break;
    case 20:
        ov90_0225A108(&v0->unk_33C);
        v0->unk_06 = 1;
        break;
    }

    ov90_0225B2A8(v0);
    ov90_02259170(&v0->unk_A0);

    ScheduleSetBgPosText(v0->unk_4C.unk_00, 3, 4, 2);
    ScheduleSetBgPosText(v0->unk_4C.unk_00, 5, 4, 2);
}
