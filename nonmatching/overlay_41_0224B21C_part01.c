#include "global.h"

#include "bg_window.h"
#include "error_handling.h"
#include "filesystem.h"
#include "heap.h"
#include "pokemon.h"
#include "sprite.h"
#include "sys_task_api.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_ov41_0224B31C {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov41_0224B31C;

typedef struct UnkStruct_ov41_0224B450 {
    int unk_00;
    Sprite *unk_04[2];
    VecFx32 unk_0C[2];
    UnkStruct_ov41_0224B31C unk_24;
    UnkStruct_ov41_0224B31C unk_38;
    UnkStruct_ov41_0224B31C unk_4C;
} UnkStruct_ov41_0224B450;

typedef struct UnkStruct_ov41_0224B21C {
    u8 unk_00[0x10];
    Sprite *unk_10[2];
    void *unk_18;
    int unk_1C;
    int unk_20;
    SysTask *unk_24;
    SysTask *unk_28;
    int *unk_2C;
    UnkStruct_ov41_0224B450 unk_30;
    int unk_90;
} UnkStruct_ov41_0224B21C;

typedef struct UnkStruct_ov41_0224B4E8_Src {
    u8 unk_00[0x48];
    u8 unk_48[0x2C];
    int unk_74;
} UnkStruct_ov41_0224B4E8_Src;

typedef struct UnkStruct_ov41_0224B4E8_Dst {
    const void *unk_00;
} UnkStruct_ov41_0224B4E8_Dst;

typedef struct UnkStruct_ov41_0224B4E8_Args {
    void *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_ov41_0224B4E8_Args;

typedef struct UnkStruct_ov41_0224B530_Args {
    void *unk_00;
    int unk_04;
    int unk_08;
    int heapID;
} UnkStruct_ov41_0224B530_Args;

typedef struct UnkStruct_ov41_0224B530 {
    void *unk_00;
    void *unk_04[20];
    int unk_54;
    void *unk_58;
    int unk_5C;
    int unk_60;
    int unk_64;
    int heapID;
} UnkStruct_ov41_0224B530;

typedef struct UnkStruct_ov41_B958 {
    void *unk_00;
    int unk_04;
    void *unk_08;
    int unk_0C;
    void *unk_10;
    void *unk_14;
} UnkStruct_ov41_B958;

typedef struct UnkStruct_ov41_B780_Arg {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    void *unk_1C;
    int unk_20;
} UnkStruct_ov41_B780_Arg;

typedef struct UnkStruct_ov41_Portrait {
    int unk_00;
    int unk_04;
    u8 unk_08[0x8];
    int unk_10;
    u8 unk_14[0xC];
    int unk_20;
    u8 unk_24[0xC];
    int unk_30;
    u8 unk_34[0xC];
    int unk_40;
    u8 unk_44[0x13C];
    void *unk_180;
    u8 unk_184[0x8];
    int unk_18C;
    u8 unk_190[0x88];
    u8 unk_218[0x1C];
    void *unk_234;
    int unk_238;
    int unk_23C;
    int unk_240;
    int unk_244;
    int unk_248;
    u16 unk_24C;
    u8 unk_24E[2];
    int unk_250;
    int unk_254;
    int unk_258;
    u16 unk_25C;
    u8 unk_25E[2];
    int unk_260;
    int unk_264;
} UnkStruct_ov41_Portrait;

extern s32 _s32_div_f(s32 a0, s32 a1);
extern s64 _ll_mul(s64 a0, s64 a1);
extern fx32 FX_Div(fx32 a0, fx32 a1);

void ov41_0224B084(void *a0, void *a1);
void ov41_0224AD84(void *a0);
void ov41_022465CC(void *a0);
void ov41_022465D8(void *a0, int a1, int a2, int a3, void *a4);
void ov41_02246518(void *a0, void *a1, int a2);
void ov41_0224B938(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_B958 *a1, const UnkStruct_ov41_0224B530 *a2, int heapID);
void ov41_02246250(void *a0, void *a1);
void ov41_022463D4(void *a0);
void ov41_02246544(void *a0, void *a1, int a2);
void ov41_022499B4(void *a0, int a1, int a2);
int ov41_02245EA0(int a0, int a1);
void ov41_02249CE0(void *a0, void *a1);
void ov41_02249CF8(void *a0, int a1);
void ov41_02249D60(void *a0);
void ov41_02245ECC(int a0);
void ov41_022499DC(void *a0);
void ov41_0224626C(void *a0);
void ov41_02246594(void *a0);
void ov41_022465C0(void *a0);
void ov41_0224825C(void *a0, int a1, int a2);
void ov41_022480E0(void *a0);
void ov41_02247F90(void *a0);
void ov41_022482A8(void *a0);
void ov41_02247FAC(void *a0, void *a1, void *a2, int a3, int a4, int a5, int a6);
void ov41_02247F3C(void *a0, void *a1);
void ov41_02248044(void *a0, int a1, int a2, int a3, int a4);
void ov41_02248120(void *a0, int a1, int a2, int a3, int a4);
void ov41_022464AC(void *a0, int a1);
void ov41_0224B958(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_B958 *a1, const UnkStruct_ov41_0224B530 *a2, int heapID);
void sub_0202BEF4(void *a0, void *a1);
int sub_0202BEE4(void *a0);
int sub_0202BEEC(void *a0);
int sub_0202BEDC(void *a0);
int sub_0202BEFC(void *a0);
int sub_0202BF00(void *a0);
int sub_0202BF04(void *a0);
int sub_0202BF08(void *a0);
void *sub_0202BE14(void *a0);
int sub_0202BDEC(void *a0, int a1);
void *sub_0202BE2C(void *a0, int a1);
int sub_0202BE80(void *a0);

void ov41_0224B250(UnkStruct_ov41_0224B21C *a0);
void ov41_0224B270(UnkStruct_ov41_0224B21C *a0);
void ov41_0224B298(UnkStruct_ov41_0224B21C *a0);
void ov41_0224B310(UnkStruct_ov41_0224B21C *a0);
void ov41_0224B31C(UnkStruct_ov41_0224B31C *a0, fx32 a1, fx32 a2, int a3);
BOOL ov41_0224B32C(UnkStruct_ov41_0224B31C *a0);
void ov41_0224B374(UnkStruct_ov41_0224B21C *a0, UnkStruct_ov41_0224B450 *a1);
void ov41_0224B450(UnkStruct_ov41_0224B450 *a0);
void ov41_0224B4E8(UnkStruct_ov41_0224B4E8_Dst *a0, UnkStruct_ov41_0224B4E8_Src *a1, int a2);
void ov41_0224B50C(void *a0);
void ov41_0224B518(void *a0);
UnkStruct_ov41_Portrait *ov41_0224B530(const UnkStruct_ov41_0224B530_Args *a0, void *a1);
void ov41_0224B554(UnkStruct_ov41_Portrait *a0);
void ov41_0224B57C(UnkStruct_ov41_Portrait *a0);
void ov41_0224B5C8(UnkStruct_ov41_Portrait *a0);
void ov41_0224B5D0(UnkStruct_ov41_Portrait *a0, int a1);
void ov41_0224B5D8(UnkStruct_ov41_Portrait *a0, int a1, int a2);
UnkStruct_ov41_Portrait *ov41_0224B630(UnkStruct_ov41_0224B530 *a0);
void ov41_0224B6CC(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_0224B530 *a1);
void ov41_0224B720(UnkStruct_ov41_Portrait *a0);
void ov41_0224B754(UnkStruct_ov41_Portrait *a0);
void ov41_0224B780(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_0224B530 *a1);
void ov41_0224B848(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_0224B530 *a1);
void ov41_0224B85C(UnkStruct_ov41_Portrait *a0);
void ov41_0224B878(UnkStruct_ov41_Portrait *a0);
void ov41_0224B888(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_0224B530 *a1);
void ov41_0224B8DC(UnkStruct_ov41_0224B530 *a0, const UnkStruct_ov41_0224B530_Args *a1);
void ov41_0224B8F0(UnkStruct_ov41_0224B530 *a0, void *a1);

void ov41_0224B21C(UnkStruct_ov41_0224B21C *a0, void *a1)
{
    if (a0->unk_24) {
        SysTask_Destroy(a0->unk_24);
    }

    if (a0->unk_28) {
        SysTask_Destroy(a0->unk_28);
    }

    ov41_0224B084(a0, a1);
    ov41_0224AD84(a0->unk_18);

    memset(a0, 0, 0x94);
}

void ov41_0224B250(UnkStruct_ov41_0224B21C *a0)
{
    ov41_0224B310(a0);
    ov41_0224B270(a0);
    ov41_0224B298(a0);
    ov41_0224B450(&a0->unk_30);
}

void ov41_0224B270(UnkStruct_ov41_0224B21C *a0)
{
    if (a0->unk_1C != *a0->unk_2C) {
        a0->unk_1C = *a0->unk_2C;

        if (a0->unk_1C <= 10) {
            ov41_0224B374(a0, &a0->unk_30);
            PlaySE(0x682);
        }
    }
}

void ov41_0224B298(UnkStruct_ov41_0224B21C *a0)
{
    int i;
    int v1;
    int v2 = a0->unk_1C;
    int v3 = 10;

    for (i = 0; i < 2; i++) {
        v1 = _s32_div_f(v2, v3);

        if (v1 > 10) {
            GF_AssertFail();
        }

        Sprite_SetAnimCtrlSeq(a0->unk_10[i], v1);

        v2 = v2 - v1 * v3;
        v3 = _s32_div_f(v3, 10);

        if (a0->unk_90 == 0) {
            if (a0->unk_1C <= 10) {
                Sprite_SetPalIndexRespectVramOffset(a0->unk_10[i], 1);

                if (i == 1) {
                    a0->unk_90 = 1;
                }
            }
        }
    }
}

void ov41_0224B310(UnkStruct_ov41_0224B21C *a0)
{
    if (a0->unk_20 - 1 >= 0) {
        a0->unk_20--;
    }
}

void ov41_0224B31C(UnkStruct_ov41_0224B31C *a0, fx32 a1, fx32 a2, int a3)
{
    a0->unk_00 = a1;
    a0->unk_04 = a1;
    a0->unk_08 = a2 - a1;
    a0->unk_10 = a3;
    a0->unk_0C = 0;
}

BOOL ov41_0224B32C(UnkStruct_ov41_0224B31C *a0)
{
    fx32 v0;

    v0 = (s32)((_ll_mul((s64)a0->unk_08, (s64)(a0->unk_0C << 12)) + 0x800) >> 12);
    v0 = FX_Div(v0, a0->unk_10 << 12);

    a0->unk_00 = v0 + a0->unk_04;

    if (a0->unk_0C + 1 > a0->unk_10) {
        a0->unk_0C = a0->unk_10;
        return 1;
    }

    a0->unk_0C = a0->unk_0C + 1;
    return 0;
}

void ov41_0224B374(UnkStruct_ov41_0224B21C *a0, UnkStruct_ov41_0224B450 *a1)
{
    int i;
    VecFx32 v4;
    fx32 v1;
    fx32 v2;
    int v5;

    v4.y = (58 << 12) + (512 << 12);

    for (i = 0; i < 2; i++) {
        a1->unk_04[i] = a0->unk_10[i];
        Sprite_SetAffineOverwriteMode(a1->unk_04[i], 2);
        v4.x = (103 + i * 24) << 12;
        a1->unk_0C[i] = v4;
    }

    v5 = 10 - a0->unk_1C;

    if (v5 > 0) {
        v1 = (s32)((_ll_mul((s64)(v5 << 12), (s64)0x266) + 0x800) >> 12) + 0x1000;
    } else {
        v1 = 0x1000;
    }

    ov41_0224B31C(&a1->unk_24, v1, 0x1000, 16);

    v2 = (s32)((_ll_mul((s64)v1, (s64)(24 << 12)) + 0x800) >> 12) - (24 << 12);

    ov41_0224B31C(&a1->unk_38, v2, 0, 16);
    ov41_0224B31C(&a1->unk_4C, v2, 0, 16);

    a1->unk_00 = 1;
}

void ov41_0224B450(UnkStruct_ov41_0224B450 *a0)
{
    VecFx32 scale;
    VecFx32 pos;
    BOOL done;

    if (a0->unk_00 == 0) {
        return;
    }

    done = ov41_0224B32C(&a0->unk_24);
    ov41_0224B32C(&a0->unk_38);
    ov41_0224B32C(&a0->unk_4C);

    scale.x = a0->unk_24.unk_00;
    scale.y = a0->unk_24.unk_00;
    scale.z = a0->unk_24.unk_00;

    Sprite_SetAffineScale(a0->unk_04[0], &scale);
    Sprite_SetAffineScale(a0->unk_04[1], &scale);

    pos = a0->unk_0C[0];
    pos.x -= a0->unk_38.unk_00;
    pos.y -= a0->unk_4C.unk_00;

    Sprite_SetMatrix(a0->unk_04[0], &pos);

    pos = a0->unk_0C[1];
    pos.y -= a0->unk_4C.unk_00;

    Sprite_SetMatrix(a0->unk_04[1], &pos);

    if (done) {
        a0->unk_00 = 0;
    }
}

void ov41_0224B4E8(UnkStruct_ov41_0224B4E8_Dst *a0, UnkStruct_ov41_0224B4E8_Src *a1, int a2)
{
    UnkStruct_ov41_0224B4E8_Args args;

    a0->unk_00 = a1;
    args.unk_00 = a1->unk_48;
    args.unk_04 = (a1->unk_74 << 2) + 0x89;
    args.unk_08 = 0x10;
    args.unk_0C = a2;

    ov41_02249CE0((u8 *)a0 + 4, &args);
}

void ov41_0224B50C(void *a0)
{
    ov41_02249CF8((u8 *)a0 + 4, 1);
}

void ov41_0224B518(void *a0)
{
    u8 *p = a0;
    int n = 0x1c;

    ov41_02249D60((u8 *)a0 + 4);

    do {
        *p = 0;
        p++;
        n--;
    } while (n != 0);
}

UnkStruct_ov41_Portrait *ov41_0224B530(const UnkStruct_ov41_0224B530_Args *a0, void *a1)
{
    UnkStruct_ov41_0224B530 local;

    ov41_0224B8DC(&local, a0);
    ov41_0224B8F0(&local, a1);
    return ov41_0224B630(&local);
}

void ov41_0224B554(UnkStruct_ov41_Portrait *a0)
{
    if (a0->unk_260 == 1) {
        ov41_0224B50C(&a0->unk_218);
    }

    if (a0->unk_264 == 1) {
        ov41_0224B720(a0);
    }
}

void ov41_0224B57C(UnkStruct_ov41_Portrait *a0)
{
    if (a0->unk_260 != 0) {
        ov41_0224B878(a0);
    }

    ov41_0224B85C(a0);
    ov41_02245ECC(a0->unk_18C);
    a0->unk_18C = 0;
    ov41_022499DC(a0->unk_184);
    ov41_0224B754(a0);
    Heap_Free(a0->unk_234);
    Heap_Free(a0);
}

void ov41_0224B5C8(UnkStruct_ov41_Portrait *a0)
{
    ov41_022465CC(a0);
}

void ov41_0224B5D0(UnkStruct_ov41_Portrait *a0, int a1)
{
    a0->unk_264 = a1;
}

void ov41_0224B5D8(UnkStruct_ov41_Portrait *a0, int a1, int a2)
{
    ov41_02248120(a0->unk_190, a0->unk_23C, a0->unk_240, a1, a2);

    if (a0->unk_260) {
        BgSetPosTextAndCommit(a0->unk_40, 2, 0, 0x88 - a1);
        BgSetPosTextAndCommit(a0->unk_40, 2, 3, 0x10 - a2);
    }

    a0->unk_23C = a1;
    a0->unk_240 = a2;
}

UnkStruct_ov41_Portrait *ov41_0224B630(UnkStruct_ov41_0224B530 *a0)
{
    UnkStruct_ov41_Portrait *r4;

    r4 = Heap_Alloc(a0->heapID, sizeof(UnkStruct_ov41_Portrait));
    memset(r4, 0, sizeof(UnkStruct_ov41_Portrait));

    r4->unk_238 = a0->heapID;
    r4->unk_234 = AllocMonZeroed(a0->heapID);

    sub_0202BEF4(a0->unk_00, r4->unk_234);

    ov41_0224B6CC(r4, a0);
    ov41_02246544(r4, a0->unk_58, a0->heapID);
    ov41_022499B4(r4->unk_184, 0x15, a0->heapID);
    r4->unk_18C = ov41_02245EA0(0x14, a0->heapID);
    ov41_0224B780(r4, a0);
    ov41_0224B848(r4, a0);
    ov41_0224B4E8((UnkStruct_ov41_0224B4E8_Dst *)r4->unk_218, (UnkStruct_ov41_0224B4E8_Src *)r4->unk_190, a0->heapID);
    r4->unk_260 = 1;
    r4->unk_264 = 1;
    ov41_0224B888(r4, a0);

    return r4;
}

void ov41_0224B6CC(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_0224B530 *a1)
{
    int args[4];
    UnkStruct_ov41_B958 obj;

    a0->unk_180 = NARC_New(0x1a, a1->heapID);

    args[0] = 0x2CE;
    args[1] = 0x76;
    args[2] = 0x13;
    args[3] = a1->heapID;

    ov41_02246518(a0, args, a1->heapID);
    ov41_0224B938(a0, &obj, a1, a1->heapID);
    ov41_02246250(a0, &obj);
    ov41_022463D4(&obj);
}

void ov41_0224B720(UnkStruct_ov41_Portrait *a0)
{
    ov41_022465D8(a0, a0->unk_23C + a0->unk_244, a0->unk_240 + a0->unk_248, a0->unk_24C, &a0->unk_250);
}

void ov41_0224B754(UnkStruct_ov41_Portrait *a0)
{
    ov41_0224626C(a0);
    ov41_02246594(a0);

    if (a0->unk_260 != 0) {
        ov41_022465C0(a0);
    }

    NARC_Delete(a0->unk_180);
}

void ov41_0224B780(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_0224B530 *a1)
{
    UnkStruct_ov41_B780_Arg v0;
    int xPos;
    int yPos;
    int priority;
    int i;
    int v8;
    int v6;
    int v7;
    int v9;
    int out[4];

    v0.unk_00 = a0->unk_00;
    v0.unk_04 = a0->unk_04;
    v0.unk_08 = a0->unk_10;
    v0.unk_0C = a0->unk_30;
    v0.unk_10 = a0->unk_20;
    v0.unk_14 = a0->unk_40;
    v0.unk_18 = a0->unk_18C;
    v0.unk_1C = a0->unk_184;
    v0.unk_20 = 0x15;

    ov41_02247F3C(a0->unk_190, &v0);

    xPos = sub_0202BEE4(a1->unk_00);
    yPos = sub_0202BEEC(a1->unk_00);
    priority = sub_0202BEDC(a1->unk_00);

    ov41_02247FAC(a0->unk_190, a0->unk_234, out, xPos, yPos, priority, a1->heapID);

    for (i = 0; i < a1->unk_54; i++) {
        v8 = sub_0202BEFC(a1->unk_04[i]);
        v6 = sub_0202BF00(a1->unk_04[i]);
        v7 = sub_0202BF04(a1->unk_04[i]);
        v9 = sub_0202BF08(a1->unk_04[i]);

        ov41_02248044(a0->unk_190, v8, v6, v7, v9);
    }
}

void ov41_0224B848(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_0224B530 *a1)
{
    ov41_0224825C(a0->unk_190, a1->unk_5C, a1->heapID);
}

void ov41_0224B85C(UnkStruct_ov41_Portrait *a0)
{
    ov41_022480E0(a0->unk_190);
    ov41_02247F90(a0->unk_190);
}

void ov41_0224B878(UnkStruct_ov41_Portrait *a0)
{
    ov41_022482A8(a0->unk_190);
}

void ov41_0224B888(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_0224B530 *a1)
{
    a0->unk_23C = 0x48;
    a0->unk_240 = 0x38;
    a0->unk_244 = 0x38;
    a0->unk_248 = 0x40;
    a0->unk_250 = 0x1000;
    a0->unk_254 = 0x1000;
    a0->unk_258 = 0x1000;
    a0->unk_24C = 0;
    ov41_0224B5D8(a0, a1->unk_60, a1->unk_64);
    a0->unk_25C = 0x7FFF;
}

void ov41_0224B8DC(UnkStruct_ov41_0224B530 *a0, const UnkStruct_ov41_0224B530_Args *a1)
{
    a0->unk_58 = a1->unk_00;
    a0->unk_60 = a1->unk_04;
    a0->unk_64 = a1->unk_08;
    a0->heapID = a1->heapID;
}

void ov41_0224B8F0(UnkStruct_ov41_0224B530 *a0, void *a1)
{
    int i;

    a0->unk_00 = sub_0202BE14(a1);
    a0->unk_54 = 0;

    for (i = 0; i < 10; i++) {
        if (sub_0202BDEC(a1, i)) {
            a0->unk_04[a0->unk_54] = sub_0202BE2C(a1, i);
            a0->unk_54++;
        }
    }

    a0->unk_5C = sub_0202BE80(a1);
}

void ov41_0224B938(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_B958 *a1, const UnkStruct_ov41_0224B530 *a2, int heapID)
{
    ov41_022464AC(a1, heapID);
    ov41_0224B958(a0, a1, a2, heapID);
}
