#include "global.h"

#include "filesystem.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "error_handling.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_ov49p1_Model {
    void *data;
    void *set;
    void *model;
    void *texture;
} UnkStruct_ov49p1_Model;

typedef struct UnkStruct_ov49p1_Anim {
    void *data;
    u8 unk_04[0x10];
} UnkStruct_ov49p1_Anim;

typedef struct UnkStruct_ov49p1_Idx {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02[2];
} UnkStruct_ov49p1_Idx;

typedef struct UnkStruct_ov49p1_Elem {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    u32 unk_04;
    void *unk_08;
    u8 unk_0C[18][0x78];
    const UnkStruct_ov49p1_Idx *unk_87C[18];
    fx32 unk_8C4[18][2];
    u8 unk_954[0xD10 - 0x954];
} UnkStruct_ov49p1_Elem;

typedef struct UnkStruct_ov49p1_Work {
    void *unk_00;
    void *unk_04;
    void *unk_08;
    void *unk_0C;
    UnkStruct_ov49p1_Elem unk_10[20];
    UnkStruct_ov49p1_Model unk_10550[15];
    void *unk_10640[39];
    UnkStruct_ov49p1_Anim unk_106DC[16];
    NNSFndAllocator unk_1081C;
} UnkStruct_ov49p1_Work;

typedef struct UnkStruct_ov49p1_Ang {
    u16 unk_00;
    u16 unk_02;
    fx32 unk_04;
    fx32 unk_08;
} UnkStruct_ov49p1_Ang;

typedef struct UnkStruct_ov49p1_Vec {
    s32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
} UnkStruct_ov49p1_Vec;

extern const s16 FX_SinCosTable_[];

s64 _ll_mul(s64 a, s64 b);
u32 ov49_02258DAC(void *param0);
u32 ov49_02258F70(void *param0);
int ov49_02258E60(const void *param0, int param1);
void ov49_02258830(void *param0, NARC *narc, int param2, enum HeapID heapID);
void sub_0200606C(u16 seqID, int param1);
void sub_020180BC(void *param0, void *param1, NARC *narc, int member, u32 param4, void *param5);
void sub_020180F8(void *param0, void *param1);
void sub_020181B0(void *param0, void *param1, void *param2, const void *param3);
void ov49_02267A84(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, int param2);
void ov49_02267C20(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, int param2);
BOOL ov49_02266AF0(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_0226639C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_022663EC(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_0226643C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_0226648C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_022664DC(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_0226652C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_0226657C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_022665D0(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02266624(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02265CA4(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02265CB0(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02265D10(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02265E54(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02266088(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02266354(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02266360(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_0226636C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02266378(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02266384(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02266390(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
BOOL ov49_02266A88(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
BOOL ov49_02266AB0(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
BOOL ov49_02266678(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
BOOL ov49_02266748(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
BOOL ov49_02266754(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
BOOL ov49_02266760(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
BOOL ov49_0226676C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
BOOL ov49_02266820(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
BOOL ov49_022669B0(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
BOOL ov49_02266978(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);

void ov49_02265B3C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2, u32 param3, fx32 param4);
BOOL ov49_02265B94(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2, u32 param3, fx32 param4);
void ov49_02265C68(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02265C74(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02265C80(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02265C8C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02265C98(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
void ov49_02265948(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1);
BOOL ov49_02265958(UnkStruct_ov49p1_Elem *param0);
BOOL ov49_02265968(UnkStruct_ov49p1_Elem *param0, u32 param1);
void ov49_02265668(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 seqID);
void ov49_02265980(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2, const UnkStruct_ov49p1_Idx *param3);

int sub_020181A4(void *param0);
u32 sub_020181A0(void *param0);
void sub_020181D4(void *param0, void *param1);
void sub_02018198(void *param0, fx32 param1);
void sub_020181E0(void *param0, void *param1);
void sub_020181EC(void *param0);
BOOL sub_020182A4(void *param0);
void ov49_02265B3C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2, u32 param3, fx32 param4);
static void (*const ov49_0226A5A4[27])(UnkStruct_ov49p1_Work *, UnkStruct_ov49p1_Elem *) = {
    ov49_0226639C, ov49_022663EC, ov49_0226643C, ov49_0226648C, ov49_022664DC, ov49_0226652C, ov49_0226657C, ov49_022665D0,
    ov49_02266624, ov49_02265C68, ov49_02265C74, ov49_02265C80, ov49_02265CB0, ov49_02265CB0, ov49_02265CB0, ov49_02265C8C,
    ov49_02265C98, ov49_02265CA4, ov49_02265D10, ov49_02265E54, ov49_02266088, ov49_02266378, ov49_02266384, ov49_02266390,
    ov49_02266354, ov49_02266360, ov49_0226636C
};

static BOOL (*const ov49_0226A538[27])(UnkStruct_ov49p1_Work *, UnkStruct_ov49p1_Elem *) = {
    ov49_02266A88, ov49_02266A88, ov49_02266A88, ov49_02266A88, ov49_02266A88, ov49_02266A88, ov49_02266AB0, ov49_02266AB0,
    ov49_02266AB0, ov49_02266678, ov49_02266678, ov49_02266678, ov49_02266748, ov49_02266754, ov49_02266760, ov49_0226676C,
    ov49_0226676C, ov49_0226676C, ov49_02266820, ov49_02266820, ov49_02266820, ov49_022669B0, ov49_022669B0, ov49_022669B0,
    ov49_02266978, ov49_02266978, ov49_02266978
};

static const u32 ov49_0226A610[27] = {
    0x59C, 0x59D, 0x59E, 0x5A2, 0x5A3, 0x5A4, 0x59F, 0x5A0, 0x5A1, 0x5AA, 0x5AB, 0x5AC, 0x5B0, 0x5B1, 0x5B2, 0x5A5, 0x5A6, 0x5A7, 0x5B6, 0x5B7, 0x5B8, 0x5B9, 0x5BA, 0x5BB, 0x5A9, 0x5A9, 0x5A9
};


static const UnkStruct_ov49p1_Idx ov49_0226A70C[39] = {
    { 0x00, 0x00, { 0x00, 0x11 } },
    { 0x00, 0x01, { 0x00, 0x11 } },
    { 0x00, 0x02, { 0x00, 0x11 } },
    { 0x01, 0x03, { 0x01, 0x02 } },
    { 0x01, 0x04, { 0x01, 0x02 } },
    { 0x01, 0x05, { 0x01, 0x02 } },
    { 0x01, 0x06, { 0x03, 0x11 } },
    { 0x01, 0x07, { 0x03, 0x11 } },
    { 0x01, 0x08, { 0x03, 0x11 } },
    { 0x05, 0x0B, { 0x06, 0x11 } },
    { 0x03, 0x09, { 0x04, 0x11 } },
    { 0x04, 0x0A, { 0x05, 0x11 } },
    { 0x06, 0x0C, { 0x07, 0x11 } },
    { 0x07, 0x0D, { 0x08, 0x11 } },
    { 0x08, 0x0E, { 0x09, 0x11 } },
    { 0x09, 0x0F, { 0x0A, 0x11 } },
    { 0x0A, 0x10, { 0x0B, 0x11 } },
    { 0x0B, 0x11, { 0x0C, 0x11 } },
    { 0x0C, 0x12, { 0x0D, 0x11 } },
    { 0x02, 0x13, { 0x11, 0x11 } },
    { 0x02, 0x14, { 0x11, 0x11 } },
    { 0x02, 0x15, { 0x11, 0x11 } },
    { 0x02, 0x16, { 0x11, 0x11 } },
    { 0x02, 0x17, { 0x11, 0x11 } },
    { 0x02, 0x18, { 0x11, 0x11 } },
    { 0x02, 0x19, { 0x11, 0x11 } },
    { 0x02, 0x1A, { 0x11, 0x11 } },
    { 0x02, 0x1B, { 0x11, 0x11 } },
    { 0x02, 0x1C, { 0x11, 0x11 } },
    { 0x02, 0x1D, { 0x11, 0x11 } },
    { 0x02, 0x1E, { 0x11, 0x11 } },
    { 0x02, 0x1F, { 0x11, 0x11 } },
    { 0x02, 0x20, { 0x11, 0x11 } },
    { 0x02, 0x21, { 0x11, 0x11 } },
    { 0x02, 0x22, { 0x11, 0x11 } },
    { 0x02, 0x23, { 0x11, 0x11 } },
    { 0x02, 0x24, { 0x11, 0x11 } },
    { 0x0D, 0x25, { 0x0E, 0x11 } },
    { 0x0E, 0x26, { 0x0F, 0x11 } }
};

void ov49_022655E0(const UnkStruct_ov49p1_Vec *param0, fx32 *param1, fx32 *param2, fx32 *param3)
{
    *param1 = param0->unk_04;
    *param2 = param0->unk_08;
    *param3 = param0->unk_0C;
}

void ov49_022655F4(UnkStruct_ov49p1_Ang *param0, u16 param1, u16 param2, fx32 param3)
{
    param0->unk_00 = param1;
    param0->unk_02 = param2;
    param0->unk_04 = param3;
    param0->unk_08 = (fx32)((_ll_mul((s64)FX_SinCosTable_[(param1 >> 4) * 2], (s64)param3) + 0x800) >> 12);
}

void ov49_02265628(UnkStruct_ov49p1_Ang *param0)
{
    param0->unk_00 += param0->unk_02;
    param0->unk_08 = (fx32)((_ll_mul((s64)FX_SinCosTable_[(param0->unk_00 >> 4) * 2], (s64)param0->unk_04) + 0x800) >> 12);
}

void ov49_02265660(const UnkStruct_ov49p1_Ang *param0, fx32 *param1)
{
    *param1 = param0->unk_08;
}

void ov49_02265668(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 seqID)
{
    if (param1->unk_08 == (void *)ov49_02258DAC(param0->unk_04)) {
        sub_0200606C((u16)seqID, 5);
    } else {
        if (ov49_02258F70(param1->unk_08) == 0) {
            PlaySE((u16)seqID);
        }
    }
}

void ov49_02265698(UnkStruct_ov49p1_Work *param0, NARC *param1, enum HeapID heapID)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        param0->unk_10550[v0].data = GfGfxLoader_LoadFromOpenNarc(param1, 129 + v0, 0, heapID, 0);
        param0->unk_10550[v0].set = NNS_G3dGetMdlSet(param0->unk_10550[v0].data);

        {
            u8 *set = (u8 *)param0->unk_10550[v0].set;
            u8 *c = NULL;
            u8 *mdl = NULL;
            u8 *a = set + 8;

            if (set != NULL) {
                if (a != NULL && set[9] != 0) {
                    c = a + *(u16 *)(set + 0xE) + 4;
                }
                if (c != NULL) {
                    mdl = set + *(u32 *)c;
                }
            }
            param0->unk_10550[v0].model = mdl;
        }

        param0->unk_10550[v0].texture = NULL;

        NNS_G3dMdlSetMdlEmiAll(param0->unk_10550[v0].model, 0x7FFF);
    }
}

void ov49_0226571C(UnkStruct_ov49p1_Work *param0)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        Heap_Free(param0->unk_10550[v0].data);
    }
}

void ov49_02265738(UnkStruct_ov49p1_Work *param0, NARC *param1, u32 heapID)
{
    int v0;

    for (v0 = 0; v0 < 39; v0++) {
        ov49_02258830(&param0->unk_10640[v0], param1, 144 + v0, heapID);
    }
}

void ov49_02265760(UnkStruct_ov49p1_Work *param0)
{
    int v0;
    u32 v1;
    u32 v2;
    u32 v3;
    void *v4;

    for (v0 = 0; v0 < 39; v0++) {
        v4 = NNS_G3dGetTex(param0->unk_10640[v0]);

        NNS_G3dTexReleaseTexKey(v4, &v1, &v2);
        NNS_GfdDefaultFuncFreeTexVram(v1);
        NNS_GfdDefaultFuncFreeTexVram(v2);

        v3 = NNS_G3dPlttReleasePlttKey(v4);
        NNS_GfdDefaultFuncFreePlttVram(v3);
        Heap_Free(param0->unk_10640[v0]);
    }
}

void ov49_022657B4(UnkStruct_ov49p1_Work *param0, NARC *param1, u32 param2)
{
    int v0, v1;

    for (v0 = 0; v0 < 39; v0++) {
        for (v1 = 0; v1 < 2; v1++) {
            if (ov49_0226A70C[v0].unk_02[v1] != 17) {
                if (param0->unk_106DC[ov49_0226A70C[v0].unk_02[v1]].data == NULL) {
                    param0->unk_10550[ov49_0226A70C[v0].unk_00].texture = NNS_G3dGetTex(param0->unk_10640[ov49_0226A70C[v0].unk_01]);
                    sub_020180BC(&param0->unk_106DC[ov49_0226A70C[v0].unk_02[v1]], &param0->unk_10550[ov49_0226A70C[v0].unk_00], param1, 183 + ov49_0226A70C[v0].unk_02[v1], param2, &param0->unk_1081C);
                }
            }
        }
    }
}

void ov49_02265858(UnkStruct_ov49p1_Work *param0)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_106DC[v0].data != NULL) {
            sub_020180F8(&param0->unk_106DC[v0], &param0->unk_1081C);
            param0->unk_106DC[v0].data = NULL;
        }
    }
}

void ov49_02265890(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, const void *param2, u32 param3)
{
    if (param3 >= 0x1B) {
        GF_AssertFail();
    }

    ov49_02265948(param0, param1);

    param1->unk_08 = (void *)param2;
    param1->unk_00 = param3;
    param1->unk_04 = 40 + ov49_02258E60(param2, 5);

    {
        void (*fn)(UnkStruct_ov49p1_Work *, UnkStruct_ov49p1_Elem *, void *, u32) = (void (*)(UnkStruct_ov49p1_Work *, UnkStruct_ov49p1_Elem *, void *, u32))ov49_0226A5A4[param1->unk_00];
        fn(param0, param1, (void *)fn, (u32)param1->unk_00 << 2);
    }

    ov49_02265668(param0, param1, ov49_0226A610[param1->unk_00]);
}

void ov49_022658E4(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1)
{
    if (ov49_02265958(param1) != 0) {
        int r;
        if (param1->unk_00 >= 0x1B) {
            GF_AssertFail();
        }
        {
            BOOL (*fn)(UnkStruct_ov49p1_Work *, UnkStruct_ov49p1_Elem *, void *, u32) = (BOOL (*)(UnkStruct_ov49p1_Work *, UnkStruct_ov49p1_Elem *, void *, u32))ov49_0226A538[param1->unk_00];
            r = fn(param0, param1, (void *)fn, (u32)param1->unk_00 << 2);
        }
        if (r == 1) {
            ov49_02265948(param0, param1);
        }
    }
}

BOOL ov49_02265920(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1)
{
    if (ov49_02265958(param1) == 0) {
        return 0;
    }
    if (param1->unk_00 >= 0x1B) {
        GF_AssertFail();
    }
    return ov49_02266AF0(param0, param1);
}

void ov49_02265948(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1)
{
    memset(param1, 0, 0xD10);
}

BOOL ov49_02265958(UnkStruct_ov49p1_Elem *param0)
{
    if (param0->unk_08 != NULL) {
        return 1;
    }
    return 0;
}

BOOL ov49_02265968(UnkStruct_ov49p1_Elem *param0, u32 param1)
{
    if (param0->unk_87C[param1] != NULL) {
        return 1;
    }
    return 0;
}

void ov49_02265980(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2, const UnkStruct_ov49p1_Idx *param3)
{
    if (param2 >= 0x12) {
        GF_AssertFail();
    }
    if (param1->unk_87C[param2] != NULL) {
        GF_AssertFail();
    }
    param1->unk_87C[param2] = param3;
    sub_020181B0(&param1->unk_0C[param2], &param0->unk_10550[param3->unk_00], param0->unk_10550, param3);
}

void ov49_02265B14(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2, u32 param3)
{
    ov49_02265B3C(param0, param1, param2, param3, (FX32_ONE * 2));
}

BOOL ov49_02265B28(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2, u32 param3)
{
    return ov49_02265B94(param0, param1, param2, param3, (FX32_ONE * 2));
}

void ov49_02265C68(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1)
{
    ov49_02267A84(param0, param1, 1);
}

void ov49_02265C74(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1)
{
    ov49_02267A84(param0, param1, 2);
}

void ov49_02265C80(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1)
{
    ov49_02267A84(param0, param1, 3);
}

void ov49_02265C8C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1)
{
    ov49_02267C20(param0, param1, 1);
}

void ov49_02265C98(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1)
{
    ov49_02267C20(param0, param1, 2);
}

void ov49_022659D0(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2)
{
    int k;
    const UnkStruct_ov49p1_Idx *idxp;
    UnkStruct_ov49p1_Model *mdl;

    if (param1->unk_87C[param2] == NULL) {
        GF_AssertFail();
    }

    if (sub_020182A4(param1->unk_0C[param2]) != 0) {
        idxp = param1->unk_87C[param2];
        mdl = &param0->unk_10550[idxp->unk_00];
        mdl->texture = NNS_G3dGetTex(param0->unk_10640[idxp->unk_01]);

        if (NNS_G3dForceBindMdlTex(mdl->model, mdl->texture, 0, 0) == 0) {
            GF_AssertFail();
        }
        if (NNS_G3dForceBindMdlPltt(mdl->model, mdl->texture, 0, 0) == 0) {
            GF_AssertFail();
        }

        for (k = 0; k < 2; k++) {
            u8 a = ((const u8 *)param1->unk_87C[param2])[k + 2];
            if (a == 0x11) {
                break;
            }
            sub_020181D4(param1->unk_0C[param2], &param0->unk_106DC[a]);
            sub_02018198(&param0->unk_106DC[a], param1->unk_8C4[param2][k]);
        }

        NNS_G3dMdlSetMdlPolygonIDAll(mdl->model, param1->unk_04);
        sub_020181EC(param1->unk_0C[param2]);

        for (k = 0; k < 2; k++) {
            u8 a = ((const u8 *)param1->unk_87C[param2])[k + 2];
            if (a == 0x11) {
                break;
            }
            sub_020181E0(param1->unk_0C[param2], &param0->unk_106DC[a]);
        }

        NNS_G3dReleaseMdlTex(mdl->model);
        NNS_G3dReleaseMdlPltt(mdl->model);
        mdl->texture = NULL;
    }
}

void ov49_02265B3C(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2, u32 param3, fx32 param4)
{
    int frames;
    fx32 *p;
    u8 anim = ((const u8 *)param1->unk_87C[param2])[param3 + 2];

    frames = sub_020181A4(&param0->unk_106DC[anim]);
    p = &param1->unk_8C4[param2][param3];

    if (*p + param4 < frames) {
        *p = *p + param4;
    } else {
        *p = (*p + (FX32_ONE * 2)) % frames;
    }
}

BOOL ov49_02265B94(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2, u32 param3, fx32 param4)
{
    int frames;
    fx32 *p;
    u8 anim = ((const u8 *)param1->unk_87C[param2])[param3 + 2];

    frames = sub_020181A4(&param0->unk_106DC[anim]);
    p = &param1->unk_8C4[param2][param3];

    if (*p + param4 < frames) {
        *p = *p + param4;
        return 0;
    }
    *p = frames - 0x800;
    return 1;
}

void ov49_02265BE8(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2, u32 param3, fx32 param4)
{
    int frames;
    u8 anim = ((const u8 *)param1->unk_87C[param2])[param3 + 2];

    frames = sub_020181A4(&param0->unk_106DC[anim]);

    if (frames < param4) {
        param1->unk_8C4[param2][param3] = frames - 0x800;
    } else {
        param1->unk_8C4[param2][param3] = param4;
    }
}

u32 ov49_02265C40(UnkStruct_ov49p1_Work *param0, UnkStruct_ov49p1_Elem *param1, u32 param2, u32 param3)
{
    u8 anim = ((const u8 *)param1->unk_87C[param2])[param3 + 2];

    return sub_020181A0(&param0->unk_106DC[anim]);
}
