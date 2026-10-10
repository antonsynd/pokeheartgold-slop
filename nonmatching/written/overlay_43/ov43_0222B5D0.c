#include "global.h"
#include "screen_fade.h"
#include "system.h"

typedef struct UnkStruct_ov43_0222B5D0_A {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    u8 padding_08[0xEC];
    int unk_F4;
} UnkStruct_ov43_0222B5D0_A;

typedef struct UnkStruct_ov43_0222B5D0_B {
    u8 unk_00[4];
    void *saveData;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    s8 unk_0B;
    u8 padding_0C[0xC];
    u8 unk_18[0x40];
    u32 unk_58;
} UnkStruct_ov43_0222B5D0_B;

extern u32 ov43_0222BFA4(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, void *c);
extern void ov43_0222C53C(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, int c);
extern void ov43_0222BFD4(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, void *c, u32 d);
extern int ov43_0222C024(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, void *c, u32 d);
extern u32 ov43_0222C620(UnkStruct_ov43_0222B5D0_A *a);
extern void ov43_0222A41C(UnkStruct_ov43_0222B5D0_B *a, u32 b);
extern void ov43_0222A414(UnkStruct_ov43_0222B5D0_B *a, void *b);
extern void ov43_0222A420(UnkStruct_ov43_0222B5D0_B *a);
extern void ov43_0222A318(UnkStruct_ov43_0222B5D0_B *a, int b, int c);
extern void ov43_0222C148(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, void *c, u32 d);
extern u8 ov43_0222C228(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, void *c, u32 d);
extern void ov43_0222BBB8(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, void *c);
extern void ov43_0222BB20(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, void *c, u32 d);
extern void *sub_0202C6F4(void *saveData);
extern void *sub_0202C254(void *a, u32 b);
extern void sub_0202C270(void *a, u32 b, u32 c);
extern void sub_0202C338(void *a, u32 b);
extern void *Save_Frontier_GetStatic(void *saveData);
extern void sub_020311AC(void *a, u32 b);
extern void ov43_0222C32C(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, void *c, u32 d);
extern int ov43_0222C358(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, void *c, u32 d);
extern int ov43_0222AE2C(UnkStruct_ov43_0222B5D0_B *a, void *b);
extern void ov43_0222C600(UnkStruct_ov43_0222B5D0_A *a);
extern void ov43_0222AD00(void *a, int b);
extern void ov43_0222C890(void *a, void *b, int c, int d);
extern void ov43_0222C65C(UnkStruct_ov43_0222B5D0_A *a, void *b);
extern int ov43_0222C714(UnkStruct_ov43_0222B5D0_A *a, void *b);
extern void ov43_0222C378(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, void *c, int d, int e, int f, u32 g);
extern void ov43_0222C750(UnkStruct_ov43_0222B5D0_A *a, void *b);
extern int ov43_0222C2B0(UnkStruct_ov43_0222B5D0_A *a, UnkStruct_ov43_0222B5D0_B *b, void *c, u32 d);
extern int ov43_0222C5D8(UnkStruct_ov43_0222B5D0_A *a);
extern int System_GetTouchNew(void);

int ov43_0222B5D0(UnkStruct_ov43_0222B5D0_A *param0, UnkStruct_ov43_0222B5D0_B *param1, void *param2, u32 heapID) {
    u32 v0;
    void *v1;
    u32 v2;

    switch (param1->unk_08) {
    case 0:
        param0->unk_00 = 0;
        param0->unk_02 = 0;
        param0->unk_04 = 0;
        param0->unk_06 = 0;
    case 1:
        ov43_0222A420(param1);
        ov43_0222BB20(param0, param1, param2, heapID);
        param1->unk_08 = 2;
        break;
    case 2:
        v0 = ov43_0222BFA4(param0, param1, param2);
        switch (v0) {
        case 0:
            break;
        case 1:
            ov43_0222C53C(param0, param1, 2);
            break;
        case 2:
            ov43_0222C53C(param0, param1, 3);
            break;
        case 3:
            param1->unk_08 = 0x17;
            break;
        case 4:
            param0->unk_F4 = 4;
            param1->unk_08 = 5;
            break;
        }
        break;
    case 3:
        ov43_0222BFD4(param0, param1, param2, heapID);
        param1->unk_08 = 4;
        break;
    case 4:
        if (ov43_0222C024(param0, param1, param2, heapID) == 1) {
            param1->unk_08 = 2;
        }
        break;
    case 5: {
        int v3 = param0->unk_F4;
        param0->unk_F4 = v3 - 1;
        if (v3 <= 0) {
            param0->unk_F4 = 0;
            v2 = ov43_0222C620(param0);
            ov43_0222A41C(param1, v2);
            ov43_0222C148(param0, param1, param2, heapID);
            param1->unk_08 = 6;
        }
        break;
    }
    case 6:
        param1->unk_08 = ov43_0222C228(param0, param1, param2, heapID);
        break;
    case 7:
        param0->unk_F4 = 4;
        param1->unk_08 = 8;
        break;
    case 8:
        param0->unk_F4--;
        if (param0->unk_F4 <= 0) {
            ov43_0222BBB8(param0, param1, param2);
            ov43_0222A318(param1, 4, 0);
            return 1;
        }
        break;
    case 9:
        param0->unk_00 = param1->unk_0B / 8;
        param0->unk_04 = param1->unk_0B % 8;
        param1->unk_08 = 1;
        break;
    case 10:
        BeginNormalPaletteFade(0, 0x10, 0x10, 0, 6, 1, heapID);
        v2 = ov43_0222C620(param0);
        v1 = sub_0202C6F4(param1->saveData);
        ov43_0222A414(param1, sub_0202C254(v1, param1->unk_18[v2]));
        param1->unk_08 = 0xb;
        break;
    case 11:
        if (IsPaletteFadeFinished()) {
            ov43_0222BBB8(param0, param1, param2);
            ov43_0222A318(param1, 2, 4);
            return 1;
        }
        break;
    case 12:
        v2 = ov43_0222C620(param0);
        v1 = sub_0202C6F4(param1->saveData);
        sub_0202C270(v1, param1->unk_18[v2], param1->unk_58);
    case 13:
        ov43_0222BB20(param0, param1, param2, heapID);
        BeginNormalPaletteFade(0, 0x11, 0x11, 0, 6, 1, heapID);
        param1->unk_08 = 0xe;
        break;
    case 14:
        if (IsPaletteFadeFinished()) {
            param1->unk_08 = 2;
        }
        break;
    case 15:
        ov43_0222C32C(param0, param1, param2, heapID);
        param1->unk_08 = 0x10;
        break;
    case 16:
        if (ov43_0222C358(param0, param1, param2, heapID) == 1) {
            param1->unk_08 = 0x11;
        }
        break;
    case 17:
        v0 = ov43_0222AE2C(param1, param2);
        if (v0 == 1) {
            ov43_0222C600(param0);
            param1->unk_08 = 0x12;
        } else if (v0 == 2) {
            ov43_0222C600(param0);
            ov43_0222AD00(param2, 1);
            ov43_0222C890((u8 *)param0 + 8, param2, param0->unk_04, 0);
            param1->unk_08 = 2;
        }
        break;
    case 18:
        ov43_0222C65C(param0, param2);
        param1->unk_08 = 0x13;
        break;
    case 19:
        if (ov43_0222C714(param0, param2) == 1) {
            v1 = sub_0202C6F4(param1->saveData);
            v2 = ov43_0222C620(param0);
            sub_0202C338(v1, param1->unk_18[v2]);
            sub_020311AC(Save_Frontier_GetStatic(param1->saveData), param1->unk_18[v2]);
            ov43_0222A420(param1);
            ov43_0222C378(param0, param1, param2, param0->unk_00, param0->unk_04, 0, heapID);
            ov43_0222AD00(param2, 1);
            param1->unk_08 = 0x14;
        }
        break;
    case 20:
        ov43_0222C750(param0, param2);
        param1->unk_08 = 2;
        break;
    case 21:
        if (ov43_0222C2B0(param0, param1, param2, heapID) == 1) {
            param1->unk_08 = 0x16;
        } else {
            ov43_0222AD00(param2, 1);
            param1->unk_08 = 2;
        }
        break;
    case 22:
        if (ov43_0222C5D8(param0) == 0) {
            break;
        }
        {
            int keys = gSystem.newKeys;
            if (keys == 0 && System_GetTouchNew() == 0) {
                break;
            }
        }
        ov43_0222AD00(param2, 1);
        ov43_0222C890((u8 *)param0 + 8, param2, param0->unk_04, 0);
        param1->unk_08 = 2;
        ov43_0222C600(param0);
        break;
    case 23:
        ov43_0222BBB8(param0, param1, param2);
        ov43_0222A318(param1, 0, 2);
        return 1;
    }
    return 0;
}
