#include "global.h"
#include "system.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_v1 {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_v1;

typedef struct UnkStruct_v0 {
    s16 unk_00;
    u16 unk_02;
    u8 unk_04;
    s8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u16 unk_08;
    u16 unk_0A;
    s32 unk_0C;
    s32 unk_10;
    s32 unk_14;
    u8 unk_18[0x20];
    u32 unk_38;
    u8 unk_3C[0x40];
} UnkStruct_v0;

typedef struct String String;

typedef struct {
    u8 unk_00[4];
} UnkStruct_ov66_0222E294;

int ov45_0222A2C8();
int ov45_0222A394();
int ov45_0222A404();
int ov45_0222A414();
int ov45_0222A43C();
int ov45_0222A450();
int ov45_0222A480();
int ov45_0222A498();
int ov45_0222A548();
int ov45_0222A5E8();
int ov45_0222AB1C();
int ov45_0222AC14();
int ov45_0222EC68();
int ov49_0225A2F8();
int ov45_0222F1BC();
int ov45_0222F218();
int ov45_0222F274();
int ov45_0222F294();
int ov45_0222F2D4();
unsigned int ov45_0222F314();
int ov45_0222F3E8();
int ov45_0222F430();
int ov45_0222F464();
void *ov49_02259FE8();
int ov49_0225A08C();
int ov49_0225A09C();
int ov49_0225A0AC();
int ov49_0225A0BC();
int ov49_0225A0CC();
int ov49_0225A0EC();
int ov49_0225A174();
int ov49_0225A1D4();
int ov49_0225A1E4();
int ov49_0225A294();
int ov49_0225A2C4();
int ov49_0225A2F8();
String *ov49_0225A30C();
int ov49_0225A37C();
UnkStruct_v1 *ov49_0225EF3C();
UnkStruct_v0 *ov49_0225EF40();
int ov49_0225EF68();
UnkStruct_v0 *ov49_0225EF84();
int ov49_0225EF88();
int ov49_0225EF8C();
int ov49_0225EF90();
int ov49_02262BF8();
int ov49_02262C20();
int ov49_02262C38();
int ov49_02262CA8();
int ov49_02262CB4();
int ov49_02262D70();
int ov49_02262DB8();
int ov49_02262DD4();
int ov49_02262DF8();
int ov49_02262E04();
int sub_020398D4();
int sub_02034354();
int sub_020343E4();
int sub_02034434();
int sub_0203476C();
int sub_02034780();
int sub_020347A0();
int sub_02034B00();
int sub_02037454();
int sub_0203769C();
int sub_020378E4();
int sub_02037AC0();
int sub_02037B38();
int sub_02037BEC();
int sub_02037C0C();
int sub_02037C44();
int sub_020390C4();
int sub_0203981C();
int sub_0203986C();
int sub_0203988C();
int sub_02039B38();

BOOL ov49_02262028(void *param0, void *param1, u32 param2)
{
    UnkStruct_v0 *v0;
    UnkStruct_v1 *v1;
    void *v2;

    v1 = ov49_0225EF3C(param0);
    v0 = ov49_0225EF84(param0);
    v2 = ov49_02259FE8(param1);

    switch (ov49_0225EF88(param0)) {
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 26:
    case 27:
        if (v0->unk_08 > ov45_0222F314(v1->unk_01)) {
            v1->unk_00 = 4;
            ov49_0225EF8C(param0, 23);
            break;
        }

        if (v0->unk_08 > sub_02037454()) {
            v1->unk_00 = 4;
            ov49_0225EF8C(param0, 23);
            break;
        }

        if (sub_0203988C() == 0) {
            v1->unk_00 = 4;
            ov49_0225EF8C(param0, 23);
            break;
        }
    case 8:
        if (ov45_0222F464() == 1) {
            if (ov45_0222F314(v1->unk_01) <= 1) {
                v1->unk_00 = 4;
                ov49_0225EF8C(param0, 23);
                break;
            }
        }

        v0->unk_10--;

        if (v0->unk_10 < 0) {
            v1->unk_00 = 4;
            ov49_0225EF8C(param0, 23);
            break;
        }
    case 7:
    case 18:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
        switch (sub_020390C4()) {
        case 2:
        case 3:
        case 4:
        case 5:
            v1->unk_00 = 4;
            ov49_0225EF8C(param0, 23);
            break;
        default:
            break;
        }
        break;
    default:
        break;
    }

    switch (ov49_0225EF88(param0)) {
    case 0:
        v0 = ov49_0225EF40(param0, sizeof(UnkStruct_v0));
        ov49_0225EF90(param0);
        break;
    case 1:
        if (ov45_0222A414(v2)) {
            v1->unk_00 = 7;
            ov49_0225EF8C(param0, 28);
            break;
        }

        if (ov45_0222A394(v2)) {
            v1->unk_00 = 2;
            ov49_0225EF8C(param0, 28);
            break;
        }

        PlaySE(0x5DD);
        ov49_0225EF90(param0);
        break;
    case 2:
        ov49_0225A37C(param1, v1->unk_02, 0);
        ov49_02262BF8(v0, param0, param1, 0, 3);
        break;
    case 3:
        ov49_02262C38(v0, param1, 3, 1);
        ov49_0225A174(param1, &v0->unk_18, 0, 0);
        ov49_0225EF8C(param0, 4);
        break;
    case 4: {
        u32 v3;
        BOOL v4 = 0;

        v3 = ov49_0225A1D4(param1);

        switch (v3) {
        case 0xfffffffe:
        case 2:
            v1->unk_00 = 5;
            ov49_0225EF8C(param0, 28);
            v4 = 1;
            break;
        case 1:
            ov49_0225EF8C(param0, 5);
            v4 = 1;
            break;
        case 0:
            ov49_0225EF8C(param0, 6);
            v4 = 1;
            break;
        default:
            break;
        }

        if (v4 == 1) {
            ov49_0225A1E4(param1, 0, 0);
            ov49_02262CA8(v0, param1);
        }
    } break;
    case 5:
        ov49_0225A37C(param1, v1->unk_02, 0);
        ov49_02262BF8(v0, param0, param1, v1->unk_02 + 34, 2);
        break;
    case 6:
        if (ov45_0222A394(v2)) {
            v1->unk_00 = 2;
            ov49_0225EF8C(param0, 28);
            break;
        }

        if (ov45_0222F274(v1->unk_01) == 1) {
            if ((ov45_0222F2D4(v1->unk_01) == 0) || (ov45_0222F294(v1->unk_01) == 0)) {
                v1->unk_00 = 1;
                ov49_0225EF8C(param0, 28);
                break;
            }

            if (ov45_0222F3E8(v1->unk_01) == 0) {
                v1->unk_00 = 7;
                ov49_0225EF8C(param0, 28);
                break;
            }
        }

        v0->unk_00 = ov45_0222F3E8(v1->unk_01);
        v0->unk_10 = (30 * 30);

        {
            String *v5;

            if (v0->unk_00 > (11 * 30)) {
                v5 = ov49_0225A30C(param1, 0, 10);
            } else {
                v0->unk_14 = 1;
                v5 = ov49_0225A30C(param1, 0, 11);
            }

            ov49_0225A09C(param1, v5);
            ov49_0225A0BC(param1);
        }

        sub_0203981C(v1->unk_01);

        if (ov45_0222F464() == 1) {
            ov45_0222AC14(v2, v1->unk_02, 1, param2, 0, 0, 0, 0);
            v0->unk_07 = 1;
        }

        ov49_02262D70(&v0->unk_3C, param1, v1->unk_02, 1, v0->unk_00);
        ov49_02262E04(&v0->unk_3C, param1, 1);
        ov49_0225EF8C(param0, 7);
        break;
    case 7: {
        u32 v6;
        u32 v7;

        v6 = sub_0203988C();
        v7 = ov45_0222F314(v1->unk_01);
        v0->unk_00 = ov45_0222F3E8(v1->unk_01);

        ov49_02262DD4(&v0->unk_3C, v0->unk_00);

        if ((v0->unk_00 <= (11 * 30)) && (v0->unk_14 == 0)) {
            String *v8;

            ov49_0225A0CC(param1);

            v0->unk_14 = 1;
            v8 = ov49_0225A30C(param1, 0, 11);

            ov49_0225A09C(param1, v8);
            ov49_0225A0BC(param1);
        }

        ov49_02262DF8(&v0->unk_3C, param1, 0);

        if (v6 == 0) {
            v1->unk_00 = 4;
            ov49_0225EF8C(param0, 23);
            break;
        }

        if (v6 == 2) {
            v1->unk_00 = 8;

            {
                u32 v9;
                String *v10;

                if (v7 == 4) {
                    v9 = 16;
                } else {
                    v9 = 18;
                }

                ov49_0225A0CC(param1);

                v10 = ov49_0225A30C(param1, 0, v9);

                ov49_0225A09C(param1, v10);
                ov49_0225A0BC(param1);
                ov49_0225EF8C(param0, 9);

                v0->unk_08 = v7;
            }

            ov49_02262DD4(&v0->unk_3C, 0);
            ov49_02262DF8(&v0->unk_3C, param1, 0);
            break;
        }

        if (v0->unk_14 == 0) {
            if (gSystem.newKeys & PAD_BUTTON_B) {
                PlaySE(0x5DC);

                if (ov45_0222F464() == 0) {
                    v1->unk_00 = 6;
                    ov49_0225A0CC(param1);
                    ov49_0225EF8C(param0, 23);
                } else {
                    v1->unk_00 = 6;
                    ov49_0225A0CC(param1);
                    ov49_0225EF8C(param0, 16);
                }
                break;
            }
        }

        if (ov45_0222F464() == 1) {
            if (v0->unk_07 != v7) {
                v0->unk_07 = v7;

                if (v7 != 4) {
                    ov45_0222AC14(v2, v1->unk_02, v7, param2, 0, 0, 0, 0);
                }
            }

            if (v0->unk_00 == 0) {
                if (ov45_0222F314(v1->unk_01) <= 1) {
                    v1->unk_00 = 3;
                    ov49_0225EF8C(param0, 23);
                    break;
                }
            }
        }

        if ((ov45_0222F274(v1->unk_01) == 1) && (ov45_0222F294(v1->unk_01) == 0)) {
            v1->unk_00 = 0;
            ov49_0225EF8C(param0, 23);
            break;
        }

        if (v0->unk_00 == 0) {
            ov49_0225EF8C(param0, 8);
            {
                String *v11;

                ov49_0225A0CC(param1);
                v11 = ov49_0225A30C(param1, 0, 18);
                ov49_0225A09C(param1, v11);
                ov49_0225A0BC(param1);
            }
            break;
        }
    } break;

    case 8: {
        u32 v12;
        u32 v13;

        ov49_02262DD4(&v0->unk_3C, 0);
        ov49_02262DF8(&v0->unk_3C, param1, 0);

        v12 = sub_0203988C();
        v13 = ov45_0222F314(v1->unk_01);

        switch (sub_020390C4()) {
        case 3:
        case 4:
            v1->unk_00 = 4;
            ov49_0225EF8C(param0, 23);
            break;
        default:
            break;
        }

        if (v12 == 0) {
            v1->unk_00 = 4;
            ov49_0225EF8C(param0, 23);
            break;
        }

        if (v12 == 2) {
            v1->unk_00 = 8;
            ov49_0225EF8C(param0, 9);
            v0->unk_08 = v13;
            break;
        }

        if ((ov45_0222F274(v1->unk_01) == 1) && (ov45_0222F294(v1->unk_01) == 0)) {
            v1->unk_00 = 0;
            ov49_0225EF8C(param0, 23);
            break;
        }
    } break;
    case 9:
        ov49_02262DD4(&v0->unk_3C, 0);
        ov49_02262DF8(&v0->unk_3C, param1, 0);
        ov45_0222A5E8(ov49_02259FE8(param1), v1->unk_03);

        sub_02039B38();
        sub_02034354(ov45_0222A2C8(ov49_02259FE8(param1)), 0);
        sub_02034B00(ov45_0222AB1C(v2));
        sub_020378E4(0);
        ov49_02262C20(v0, param0, 10, 17);
        break;
    case 10:
        ov49_02262DD4(&v0->unk_3C, 0);
        ov49_02262DF8(&v0->unk_3C, param1, 0);

        sub_02034434();
        sub_0203476C(sub_0203769C());

        ov49_0225EF8C(param0, 11);
        break;
    case 11:

        ov49_02262DD4(&v0->unk_3C, 0);
        ov49_02262DF8(&v0->unk_3C, param1, 0);

        {
            int v14;

            while ((v14 = sub_02034780()) != 0xff) {
                sub_0203476C(v14);
            }
        }

        if (sub_020347A0() >= ov45_0222F314(v1->unk_01)) {
            if (ov45_0222F464() == 1) {
                if (v0->unk_02 == 0) {
                    ov45_0222F1BC();
                    v0->unk_02 = 1;
                }
            }

            if (ov45_0222F218() == 1) {
                ov49_0225EF8C(param0, 12);
            }
        } else {
            if (ov45_0222F218() == 1) {
                v1->unk_00 = 4;
                ov49_0225EF8C(param0, 23);
            }
        }
        break;
    case 12:
        ov49_02262DD4(&v0->unk_3C, 0);
        ov49_02262DF8(&v0->unk_3C, param1, 0);

        sub_02037BEC();

        ov45_0222A43C(v2);
        ov49_02262C20(v0, param0, 13, 14);
        break;
    case 13: {
        BOOL v15;

        ov49_02262DD4(&v0->unk_3C, 0);
        ov49_02262DF8(&v0->unk_3C, param1, 0);

        v0->unk_0C = ov45_0222A548(v2);
        v15 = sub_02037C0C(sub_0203769C(), &v0->unk_0C);

        if (v15 == 1) {
            ov49_0225EF8C(param0, 14);
        }
    } break;
    case 14:
        ov49_02262DD4(&v0->unk_3C, 0);
        ov49_02262DF8(&v0->unk_3C, param1, 0);

        {
            int v16;
            int v17;
            int v18;
            const s32 *v19;
            int v20;
            BOOL v21;
            s32 v22;
            BOOL vAbort = 0;

            v17 = sub_020347A0();
            v18 = sub_0203769C();
            v20 = 0;
            v21 = 0;
            v22 = ov45_0222F430();

            for (v16 = 0; v16 < v17; v16++) {
                if (v18 != v16) {
                    v19 = sub_02037C44(v16);

                    if (v19 != 0) {
                        if (ov45_0222EC68(v19[0]) == -1) {
                            vAbort = 1;
                            v1->unk_00 = 4;
                            ov49_0225EF8C(param0, 23);
                            break;
                        }

                        ov45_0222A450(v2, v19[0], v16);

                        if (v19[0] == v22) {
                            v21 = 1;
                        }

                        v20++;
                    }
                } else {
                    ov45_0222A480(v2, v16);

                    if (ov45_0222F464() == 1) {
                        v21 = 1;
                    }

                    v20++;
                }
            }

            if (vAbort == 0 && v20 == v17) {
                if (v21 == 1) {
                    ov49_0225EF8C(param0, 15);
                } else {
                    v1->unk_00 = 4;
                    ov49_0225EF8C(param0, 23);
                }
            }
        }
        break;
    case 15:
        sub_020398D4(0, 1);

        if (ov45_0222F464() == 1) {
            int v23;
            UnkStruct_ov66_0222E294 v24;

            ov45_0222A498(v2, &v24);
            v23 = ov45_0222F314(v1->unk_01);
            ov45_0222AC14(v2, v1->unk_02, v23, v24.unk_00[0], v24.unk_00[1], v24.unk_00[2], v24.unk_00[3], 1);
        }

        ov49_0225A0CC(param1);
        ov49_02262C20(v0, param0, 28, 18);
        break;
    case 16: {
        String *v25;

        v25 = ov49_0225A30C(param1, 0, 26);
        ov49_0225A08C(param1, v25);
    }

        ov49_0225EF8C(param0, 17);
        ov49_02262DB8(&v0->unk_3C, param1);
        break;
    case 17: {
        BOOL v26;

        v26 = ov49_02262CB4(v0, param1, v1, param0, param2);

        if (v26 == 0) {
            if (ov49_0225A0AC(param1) == 1) {
                ov49_0225EF8C(param0, 18);
            }
        }
    } break;
    case 18:
        ov49_0225A294(param1);
        ov49_0225EF8C(param0, 19);
        break;
    case 19: {
        int v27;

        v27 = ov49_0225A2C4(param1);

        switch (v27) {
        case 0:
            ov49_0225A2F8(param1);
            ov49_0225EF8C(param0, 23);
            ov45_0222A404(v2);
            break;
        case 1:
            ov49_0225A2F8(param1);
            ov49_0225EF8C(param0, 20);
            break;
        case 2: {
            BOOL v28;

            v28 = ov49_02262CB4(v0, param1, v1, param0, param2);

            if (v28 == 1) {
                ov49_0225A2F8(param1);
            }
        } break;
        }
    } break;
    case 20:
        v0->unk_00 = ov45_0222F3E8(v1->unk_01);

        ov49_02262D70(&v0->unk_3C, param1, v1->unk_02, 1, v0->unk_00);
        ov49_02262E04(&v0->unk_3C, param1, 1);

        {
            String *v29;

            if (v0->unk_00 > (11 * 30)) {
                v29 = ov49_0225A30C(param1, 0, 10);
            } else {
                v0->unk_14 = 1;
                v29 = ov49_0225A30C(param1, 0, 11);
            }

            ov49_0225A09C(param1, v29);
            ov49_0225A0BC(param1);
        }
        ov49_0225EF8C(param0, 7);
        break;
    case 21: {
        u32 v30;

        v30 = ov45_0222F314(v1->unk_01);
        v1->unk_00 = 8;

        {
            u32 v31;
            String *v32;

            if (v30 == 4) {
                v31 = 16;
            } else {
                v31 = 18;
            }

            v32 = ov49_0225A30C(param1, 0, v31);

            ov49_0225A09C(param1, v32);
            ov49_0225A0BC(param1);
            ov49_0225EF8C(param0, 9);
        }

        ov49_02262D70(&v0->unk_3C, param1, v1->unk_02, 1, 0);
        ov49_02262E04(&v0->unk_3C, param1, 1);
    } break;
    case 22: {
        String *v33;

        v33 = ov49_0225A30C(param1, 0, 18);

        ov49_0225A09C(param1, v33);
        ov49_0225A0BC(param1);
        ov49_02262D70(&v0->unk_3C, param1, v1->unk_02, 1, 0);
        ov49_02262DD4(&v0->unk_3C, 0);
        ov49_02262DF8(&v0->unk_3C, param1, 1);
        ov49_0225EF8C(param0, 8);
    } break;
    case 23:
        sub_020343E4();
        sub_0203986C();
        ov49_0225EF8C(param0, 24);
        break;
    case 24: {
        u32 v34;

        v34 = sub_0203988C();

        if (v34 == 0) {
            ov49_0225EF8C(param0, 28);
        }
    } break;
    case 25:
        if (ov49_0225A0AC(param1) == 1) {
            ov49_0225EF8C(param0, v0->unk_04);
        }
        break;
    case 26:
        if (v0->unk_05 > 0) {
            v0->unk_05--;
        }

        if (v0->unk_05 == 0) {
            sub_02037AC0(v0->unk_06);
            ov49_0225EF8C(param0, 27);
        }
        break;
    case 27:
        v0->unk_0A++;

        if (v0->unk_0A >= (5 * 30)) {
            sub_02037AC0(v0->unk_06);
            v0->unk_0A = 0;
        }

        if (sub_02037B38(v0->unk_06)) {
            ov49_0225EF8C(param0, v0->unk_04);
        }
        break;
    case 28: {
        ov49_0225A0EC(param1);
        ov49_02262CA8(v0, param1);
        ov49_02262DB8(&v0->unk_3C, param1);
        ov49_0225A2F8(param1);
    }

        ov49_0225EF68(param0);
        return 1;
    }

    return 0;
}
