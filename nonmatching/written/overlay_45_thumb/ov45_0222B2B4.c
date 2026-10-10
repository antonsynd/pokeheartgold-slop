#include "global.h"

typedef struct UnkStruct_ov45_0222B2B4 {
    void *saveData;           // 0x000
    void *unk_04;             // 0x004
    u8 padding_08[0xF0];      // 0x008
    u32 unk_F8;               // 0x0F8
    u8 padding_FC[0xC];       // 0x0FC
    u8 unk_108[0x20];         // 0x108
    int unk_128;              // 0x128
    u8 padding_12C[0x14];     // 0x12C
    u32 unk_140;              // 0x140
    u8 unk_144[4];            // 0x144
    u8 padding_148[0x18];     // 0x148
    u8 unk_160;               // 0x160
    u8 padding_161[0x26B];    // 0x161
    u8 unk_3CC[0x18];         // 0x3CC
    u8 unk_3E4[0xD8];         // 0x3E4
    u8 unk_4BC[0x4C];         // 0x4BC
    u8 unk_508[0x20];         // 0x508
    u32 unk_528;              // 0x528
    u32 unk_52C;              // 0x52C
} UnkStruct_ov45_0222B2B4;

_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_F8) == 0xF8, "");
_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_108) == 0x108, "");
_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_128) == 0x128, "");
_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_140) == 0x140, "");
_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_144) == 0x144, "");
_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_160) == 0x160, "");
_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_3CC) == 0x3CC, "");
_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_3E4) == 0x3E4, "");
_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_4BC) == 0x4BC, "");
_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_508) == 0x508, "");
_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_528) == 0x528, "");
_Static_assert(offsetof(UnkStruct_ov45_0222B2B4, unk_52C) == 0x52C, "");

extern void ov45_0222BCE4(void *a, void *b, u32 heapId);
extern int ov45_0222BADC(void *a, void *saveData);
extern u32 ov45_0222EC68(int a);
extern void ov45_0222D8C8(void *a, u32 b, u32 c, u32 d);
extern void ov45_0222EA4C(int a, void *b);
extern void ov45_0222D500(void *a, void *b);
extern u32 ov45_0222AA84(void *a);
extern u32 ov45_0222AAA8(void *a);
extern int ov45_0222AA28(void *a);
extern u32 ov45_02230F94(u16 a, u8 b, u32 c, u32 d);
extern void ov45_0222BAC4(void *a, void *saveData);
extern void ov45_0222BA3C(void *a);
extern int ov45_0222EA78(void);
extern u32 ov45_0222A9CC(const void *a);
extern void ov45_0222D8F0(void *a, u32 b);
extern int ov45_0222CBD0(void *a, int b, int c);
extern int ov45_0222F484(int a);
extern void ov45_0222C944(void *a, u32 b, u32 c);
extern void ov45_0222DC08(void *a, void *b, void *c);
extern u32 ov45_0222F4AC(int a);
extern void ov45_0222C9A0(void *a, u32 b, u32 c, u32 d);

void ov45_0222B2B4(int param0, const void *param1, UnkStruct_ov45_0222B2B4 *param2, int param3) {
    u32 v1;
    int v3;

    if (param3 != 0) {
        u8 v5[8];
        u32 v6, v7;
        int v8;

        ov45_0222BCE4(param2->unk_508, param2->unk_108, param2->unk_528);
        if (ov45_0222BADC(param2->unk_108, param2->saveData) == 0) {
            param2->unk_52C = 1;
        }

        v1 = ov45_0222EC68(param0);
        ov45_0222D8C8(param2->unk_04, v1, param2->unk_160, 3);
        param2->unk_128 = param0;

        ov45_0222EA4C(param0, v5);
        ov45_0222D500(&param2->unk_140, v5);

        v6 = ov45_0222AA84(&param2->unk_128);
        v7 = ov45_0222AAA8(&param2->unk_128);
        v8 = ov45_0222AA28(&param2->unk_128);

        if (v6 != 0 && v8 == 1) {
            *(u32 *)param2->unk_144 = ov45_02230F94(v6, v7, param2->unk_140, param2->unk_528);
        } else {
            param2->unk_144[0] = 0xc;
            param2->unk_144[1] = 0;
            param2->unk_144[2] = 0;
        }

        ov45_0222BAC4(param2->unk_108, param2->saveData);
        ov45_0222BA3C(param2);
    } else {
        v3 = ov45_0222EA78();
        v1 = ov45_0222EC68(param0);
        ov45_0222D8C8(param2->unk_04, v1, ov45_0222A9CC(param1), 0);
        if (v3 == param0) {
            ov45_0222D8F0(param2->unk_04, v1);
        }
        if (ov45_0222CBD0(param2->unk_4BC, param0, -1) != 0) {
            ov45_0222BA3C(param2);
        }
    }

    v1 = ov45_0222EC68(param0);
    param2->unk_F8 |= 1 << (v1 & 0xff);

    if (ov45_0222F484(param0) == 1) {
        u32 v9;
        u32 v10;

        ov45_0222C944(param2->unk_3CC, v1, 1);
        v10 = v1;
        ov45_0222DC08(param2->unk_04, &v10, param2->unk_3CC);
        v9 = ov45_0222F4AC(param0);
        if (v9 != 0) {
            ov45_0222C9A0(param2->unk_3E4, v1, 1, v9);
        } else {
            ov45_0222C9A0(param2->unk_3E4, v1, 0, v9);
        }
    } else {
        ov45_0222C944(param2->unk_3CC, v1, 0);
        ov45_0222C9A0(param2->unk_3E4, v1, 0, 0);
    }
}
