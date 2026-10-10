#include "global.h"
#include "sprite.h"

typedef struct UnkStruct_ov96_021FA34C_Item {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u8 unk8;
    u8 unk9;
    u8 filler_A[2];
    float unkC;
    float unk10;
    u8 filler_14[4];
    u8 unk18;
    u8 filler_19[0xB];
    void *unk24;
    s32 unk28;
    s32 unk2C;
    u8 unk30;
    u8 unk31;
    u8 unk32;
    u8 filler_33[9];
    s32 unk3C;
    u8 filler_40[4];
    void *unk44;
    u8 filler_48[4];
    void *unk4C;
    float unk50;
    float unk54;
    u8 unk58;
    u8 filler_59[7];
    u16 unk60;
    u16 unk62;
} UnkStruct_ov96_021FA34C_Item;

typedef struct UnkStruct_ov96_021FA34C_Ctx {
    u8 filler_0[4];
    void *unk4;
    u8 filler_8[0xD4];
    void *unkDC;
    u8 filler_E0[0x150];
    u32 unk230;
    u8 filler_234[0x190];
    u16 unk3C4;
} UnkStruct_ov96_021FA34C_Ctx;

typedef struct UnkStruct_ov96_021FA34C_Arg {
    u32 unk0;
    u32 unk4;
} UnkStruct_ov96_021FA34C_Arg;

extern u8 ov96_0221DC2C[];
extern s8 ov96_0221DC28[];

void ov96_021FA7BC(void *a, u32 b, u8 c, void *d);
void *ov96_021FA340(UnkStruct_ov96_021FA34C_Item *item, s32 index);
BOOL ov96_021FBEA0(void *obj);
void ov96_021FBF5C(void *obj, void *out);
s32 ov96_021EAF8C(void *obj);
s32 ov96_021EAF90(void *obj);
BOOL ov96_021FAB04(s32 a, void *b);
BOOL ov96_021FAAE0(s32 a, u8 b, void *c);
void ov96_021FBCB8(void *a, UnkStruct_ov96_021FA34C_Item *item);
void ov96_021FBEA4(void *obj);
Sprite *ov96_021EB5B8(void *obj);
void ov96_021FB6B4(UnkStruct_ov96_021FA34C_Ctx *ctx, u16 a, u8 b);
void ov96_021FB6C8(UnkStruct_ov96_021FA34C_Ctx *ctx, UnkStruct_ov96_021FA34C_Item *item);
void ov96_021FBEFC(void *obj, s32 a);
void ov96_021FC6EC(void *a, u8 b, s32 c);
void ov96_021FA83C(u8 a, void *b, void *c);
void ov96_021FAB24(void *a, UnkStruct_ov96_021FA34C_Item *item);
void ov96_021EAC0C(void *obj, u32 a);
BOOL ov96_021E5F24(void *data);
void ov96_021E8228(void *a, u8 b, u8 c, u32 d, u32 e);
void sub_0200606C(u32 a, u32 b);
void sub_020061D0(u32 a, s32 b);

// MWCC's float compare helpers return their result in the CPU flags, and the caller branches on them. These
// call the same ROM helpers and branch the same way: TRUE means the flag test (lo for _fls, hi for _fgr) held.
static BOOL ov96_021FA34C_FlsLo(float a, float b)
{
    register u32 ra __asm__("r0") = *(u32 *)&a;
    register u32 rb __asm__("r1") = *(u32 *)&b;
    __asm__ volatile("bl _fls\n\tbhs 1f\n\tmovs r0, #1\n\tb 2f\n1:\tmovs r0, #0\n2:" : "+r"(ra), "+r"(rb) : : "r2", "r3", "r12", "lr", "cc", "memory");
    return ra;
}

static BOOL ov96_021FA34C_FgrHi(float a, float b)
{
    register u32 ra __asm__("r0") = *(u32 *)&a;
    register u32 rb __asm__("r1") = *(u32 *)&b;
    __asm__ volatile("bl _fgr\n\tbls 1f\n\tmovs r0, #1\n\tb 2f\n1:\tmovs r0, #0\n2:" : "+r"(ra), "+r"(rb) : : "r2", "r3", "r12", "lr", "cc", "memory");
    return ra;
}

void ov96_021FA34C(void *param_1, UnkStruct_ov96_021FA34C_Ctx *param_2, UnkStruct_ov96_021FA34C_Item *item, UnkStruct_ov96_021FA34C_Arg *param_4)
{
    s32 i;
    s32 whole;
    float sum;
    BOOL found;
    void *obj;
    void *owner;
    s32 owner90;
    Sprite *sprite;
    u32 vec1C[2];
    u32 vec14[2];
    s32 t;

    if (item->unk8 != 1 && item->unk28 != 2 && item->unk9 == 0 && ov96_021FA34C_FlsLo(item->unkC, item->unk50)) {
        item->unkC = item->unkC + item->unk54;
        if (ov96_021FA34C_FgrHi(item->unkC, item->unk50)) {
            item->unkC = item->unk50;
        }
    }

    if (param_4 != NULL && item->unk28 == 0) {
        ov96_021FA7BC(param_1, param_4->unk4, item->unk18, &item->unk24);
        found = FALSE;
        if (item->unk58 != 0) {
            i = 0;
            do {
                obj = ov96_021FA340(item, i);
                if (ov96_021FBEA0(obj) != 0) {
                    ov96_021FBF5C(obj, vec1C);
                    if (ov96_021FAB04(item->unk3C + 0x110 - ov96_021EAF8C(item->unk24), vec1C) != 0) {
                        found = TRUE;
                        ov96_021FBCB8(param_1, item);
                        break;
                    }
                }
                i++;
            } while (i < 4);
        }
        sprite = ov96_021EB5B8(item->unk44);
        Sprite_SetDrawFlag(sprite, 1);
        if (found) {
            Sprite_SetAnimCtrlSeq(sprite, 0);
        } else {
            Sprite_SetAnimCtrlSeq(sprite, 1);
        }
    } else if (param_4 != NULL && item->unk28 == 1 && item->unk2C == 3 && item->unk58 != 0) {
        item->unk60 = 1;
        item->unk62 = item->unk62 + 1;
    }

    sum = item->unkC + item->unk10;
    whole = (s32)sum;
    item->unk10 = sum - (float)whole;
    item->unk0 = item->unk0 + whole;
    ov96_021FB6B4(param_2, item->unk0, item->unk18);
    ov96_021FB6C8(param_2, item);
    item->unk4 = item->unk4 - whole;
    t = item->unk4 + 0x200;
    if (t <= 0) {
        item->unk4 = t;
    }
    item->unk6 = item->unk4 + 0x110;
    t = item->unk6 + 0x200;
    if (t <= 0) {
        item->unk6 = t;
    }
    for (i = 0; i < 4; i++) {
        ov96_021FBEFC(ov96_021FA340(item, i), whole);
    }
    ov96_021FC6EC(param_2->unkDC, item->unk18, whole);
    ov96_021FA83C(item->unk18, &item->unk24, &item->unkC);

    if (item->unk8 == 1) {
        if (item->unk28 == 0) {
            item->unk28 = 3;
        } else if (item->unk28 == 3 || item->unk28 == 1) {
            if (item->unk0 >= 0x1080) {
                if (item->unk3C == 0x78) {
                    item->unk28 = 4;
                    item->unkC = 0;
                    item->unk10 = 0;
                }
            } else if (item->unk0 >= 0x1000) {
                item->unkC = 1.0f;
                item->unk10 = 0;
                ov96_021EAC0C(item->unk24, 1);
                Sprite_SetAnimCtrlSeq(ov96_021EB5B8(item->unk4C), 0);
            }
        }
        ov96_021FAB24(param_2->unk4, item);
        return;
    }

    t = item->unk28 != 1;
    if (item->unk60 == 1 && item->unk62 == 1) {
        t = 1;
    }
    if (t != 0) {
        i = 0;
        do {
            obj = ov96_021FA340(item, i);
            if (ov96_021FBEA0(obj) != 0) {
                owner = item->unk24;
                ov96_021FBF5C(obj, vec14);
                owner90 = ov96_021EAF90(owner);
                if (ov96_021FAAE0(item->unk3C + 0x110 - owner90, (u8)ov96_021EAF8C(owner), vec14) != 0) {
                    ov96_021FBEA4(obj);
                    sub_0200606C(0x8A5, ov96_0221DC2C[item->unk18]);
                    sub_020061D0(ov96_0221DC2C[item->unk18], ov96_0221DC28[item->unk18]);
                    if (item->unk60 == 1 && item->unk62 == 1) {
                        ov96_021E8228(param_1, (u8)ov96_021E5F24(param_1), item->unk18, 2, 1);
                        item->unk30 = 3;
                        item->unk2C = 1;
                        ov96_021FBCB8(param_1, item);
                    } else {
                        item->unkC = 0.5f;
                        item->unk9 = 0;
                        item->unk28 = 2;
                        item->unk31 = 0;
                        item->unk32 = 1;
                        item->unk2C = 4;
                        Sprite_SetAnimCtrlSeq(ov96_021EB5B8(item->unk4C), 0);
                        ov96_021E8228(param_1, (u8)ov96_021E5F24(param_1), item->unk18, 1, 1);
                    }
                    item->unk60 = 0;
                    item->unk62 = 0;
                }
            }
            i++;
        } while (i < 4);
    }

    if (item->unk8 != 1 && item->unk0 >= 0x1000) {
        item->unk8 = 1;
        item->unk2 = param_2->unk230;
        sub_0200606C(0x8AB, ov96_0221DC2C[item->unk18]);
        param_2->unk3C4 = 0x1e;
    }
    ov96_021FAB24(param_2->unk4, item);
}
