#include "global.h"

#include "assert.h"
#include "gf_3d_loader.h"
#include "gf_3d_render.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "overlay_42.h"
#include "unk_02018000.h"
#include "unk_0201F990.h"

typedef struct UnkOv49Entity UnkOv49Entity;
typedef struct UnkOv49Ctx UnkOv49Ctx;

typedef struct UnkOv49Map {
    UnkStruct_ov42_02227F68 *unk0;
} UnkOv49Map;

typedef void (*UnkOv49EntityFunc)(UnkOv49Entity *entity, UnkOv49Ctx *ctx);

struct UnkOv49Entity {
    UnkStruct_ov42_02228110 *unk0;
    void *unk4;
    u16 unk8;
    u8 unkA;
    u8 unkB;
    u8 unkC[0x18];
    UnkOv49EntityFunc unk24;
};

struct UnkOv49Ctx {
    UnkStruct_ov42_022280A8 *unk0;
    void *unk4;
    UnkOv49Entity *unk8;
    u16 unkC;
    u16 unkE;
    UnkStruct_ov42_02229A40 *unk10;
    UnkOv49Map *unk14;
    u8 unk18[8];
    UnkOv49Entity *unk20;
    UnkOv49Entity *unk24;
};


UnkStruct_ov42_02227F68 *ov49_02258AB0(const UnkOv49Map *map);
extern UnkOv49Entity *ov49_022593C0(UnkOv49Ctx *ctx);
extern BOOL ov49_022593FC(UnkOv49Entity *entity);
extern UnkOv49Entity *ov49_02258DAC(UnkOv49Ctx *ctx);
extern void ov49_02258EEC(UnkOv49Ctx *ctx, UnkOv49Entity *entity, int kind);
extern BOOL ov49_02258FDC(const UnkOv49Entity *entity, u16 x, u16 y);
extern void ov49_022591D8(UnkOv49Ctx *ctx);
extern void ov49_02259A20(void *a0, void *a1, u32 a2);
extern void ov49_02259A3C(void *a0, u32 a1);
extern void ov49_02259A54(void *a0, void *a1);

extern void *ov45_02230498(u32 a0, u32 a1, u32 heapID, u32 heapID2);
extern void ov45_02230638(void *a0);
extern void ov45_02230680(void *a0);
extern void ov45_022306B4(void *a0);
extern void ov45_022306F4(void *a0);
extern void *ov45_0223070C(void *manager, UnkStruct_ov42_02228110 *obj);
extern void ov45_02230884(void *a0);

extern const u32 ov49_02269660[];

const u8 ov49_02269634[32] = {
    1, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 44
};
const u8 _02269624[3] = { 39, 40, 41 };
const u8 ov49_0226962C[7] = { 36, 37, 38, 39, 40, 41, 43 };
const u8 ov49_02269628[4] = { 2, 3, 4, 5 };

void ov49_02258800(const UnkStruct_ov44_02232914 *pos, VecFx32 *dst) {
    dst->x = pos->unk0 * FX32_ONE;
    dst->z = pos->unk2 * FX32_ONE;
    dst->y = 0;
}

void ov49_02258814(const VecFx32 *pos, UnkStruct_ov44_02232914 *dst) {
    dst->unk0 = pos->x / FX32_ONE;
    dst->unk2 = pos->z / FX32_ONE;
}

void ov49_02258830(void **dst, NARC *narc, u32 fileId, u32 heapID) {
    u32 size;
    void *resFile;
    NNSGfdTexKey texKey;
    NNSGfdTexKey tex4x4Key;
    NNSGfdPlttKey plttKey;
    NNSG3dResTex *tex;

    resFile = GfGfxLoader_LoadFromOpenNarc(narc, fileId, FALSE, heapID, TRUE);

    tex = NNS_G3dGetTex(resFile);
    GF3dRender_AllocAndLoadTexResources(tex);

    NNS_G3dTexReleaseTexKey(tex, &texKey, &tex4x4Key);
    plttKey = NNS_G3dPlttReleasePlttKey(tex);

    size = G3dResFileHeader_GetSizeWithoutTex(resFile);
    *dst = Heap_Alloc(heapID, size);
    memcpy(*dst, resFile, size);

    tex = NNS_G3dGetTex(*dst);
    NNS_G3dTexSetTexKey(tex, texKey, tex4x4Key);
    NNS_G3dPlttSetPlttKey(tex, plttKey);

    Heap_Free(resFile);
}

BOOL ov49_022588A0(const UnkStruct_02018030 *model, UnkStruct_020181B0 *obj) {
    VecFx32 pos;
    VecFx32 scale;
    MtxFx33 rotMtx;
    MtxFx33 stepMtx;
    int rotX;
    int rotY;
    int rotZ;

    sub_020182B0(obj, &pos.x, &pos.y, &pos.z);
    sub_020182CC(obj, &scale.x, &scale.y, &scale.z);

    rotX = sub_020182EC(obj, 0);
    rotY = sub_020182EC(obj, 1);
    rotZ = sub_020182EC(obj, 2);

    MTX_Identity33(&rotMtx);
    MTX_RotX33(&stepMtx, FX_SinIdx(rotX), FX_CosIdx(rotX));
    MTX_Concat33(&stepMtx, &rotMtx, &rotMtx);
    MTX_RotZ33(&stepMtx, FX_SinIdx(rotZ), FX_CosIdx(rotZ));
    MTX_Concat33(&stepMtx, &rotMtx, &rotMtx);
    MTX_RotY33(&stepMtx, FX_SinIdx(rotY), FX_CosIdx(rotY));
    MTX_Concat33(&stepMtx, &rotMtx, &rotMtx);

    return sub_0201F990(model->model, &pos, &rotMtx, &scale);
}

UnkOv49Map *ov49_02258958(enum HeapID heapID) {
    UnkOv49Map *map;
    void *data;

    map = Heap_Alloc(heapID, sizeof(UnkOv49Map));
    map->unk0 = ov42_02227EE0(35, 42, heapID);

    data = GfGfxLoader_LoadFromNarc(NARC_a_2_0_0, 0, FALSE, heapID, TRUE);
    ov42_02227F48(map->unk0, data);
    Heap_Free(data);

    return map;
}

void ov49_02258994(UnkOv49Map *map) {
    ov42_02227F28(map->unk0);
    Heap_Free(map);
}

u16 ov49_022589A8(const UnkOv49Map *map) {
    return 35;
}

BOOL ov49_022589AC(const UnkOv49Map *map, u16 x, u16 y) {
    return ov42_02227FA4(map->unk0, x, y);
}

u32 ov49_022589B8(const UnkOv49Map *map, u16 x, u16 y) {
    u32 tile = ov42_02227FDC(map->unk0, x, y);

    return tile >> 15;
}

u32 ov49_022589C4(const UnkOv49Map *map, u16 x, u16 y) {
    u32 tile = ov42_02227FDC(map->unk0, x, y);

    tile &= 0x7FFF;
    return tile;
}

BOOL ov49_022589D8(const UnkOv49Map *map, u32 id, u16 *dstX, u16 *dstY, u32 index) {
    int x;
    int y;
    int count;
    u32 tileId;

    count = 0;
    for (y = 0; y < 42; y++) {
        for (x = 0; x < 35; x++) {
            tileId = ov49_022589B8(map, x, y);

            if (tileId == id) {
                if (count >= index) {
                    *dstX = x;
                    *dstY = y;
                    return TRUE;
                }

                count++;
            }
        }
    }

    return FALSE;
}

BOOL ov49_02258A30(u32 id) {
    u32 i;

    for (i = 0; i < NELEMS(ov49_02269634); i++) {
        if (id == ov49_02269634[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL ov49_02258A50(u32 id) {
    u32 i;

    for (i = 0; i < NELEMS(_02269624); i++) {
        if (id == _02269624[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL ov49_02258A70(u32 id) {
    u32 i;

    for (i = 0; i < NELEMS(ov49_0226962C); i++) {
        if (id == ov49_0226962C[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL ov49_02258A90(u32 id) {
    u32 i;

    for (i = 0; i < NELEMS(ov49_02269628); i++) {
        if (id == ov49_02269628[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

UnkStruct_ov42_02227F68 *ov49_02258AB0(const UnkOv49Map *map) {
    return map->unk0;
}

UnkOv49Ctx *ov49_02258AB4(u32 count, u32 a1, UnkOv49Map *map, u32 heapID, u32 heapID2) {
    UnkOv49Ctx *ctx = Heap_Alloc(heapID, sizeof(UnkOv49Ctx));
    memset(ctx, 0, sizeof(UnkOv49Ctx));

    ctx->unk0 = ov42_02228010(count, heapID);
    ctx->unk4 = ov45_02230498(count, a1, heapID, heapID2);
    ctx->unk10 = ov42_02229A40(32, heapID);
    ctx->unkC = count;
    ctx->unk8 = Heap_Alloc(heapID, sizeof(UnkOv49Entity) * count);

    memset(ctx->unk8, 0, sizeof(UnkOv49Entity) * count);

    ctx->unk14 = map;
    ctx->unkE = a1;

    ov49_022591D8(ctx);

    return ctx;
}

void ov49_02258B20(UnkOv49Ctx *ctx) {
    Heap_Free(ctx->unk8);

    ov42_02229A78(ctx->unk10);
    ov45_02230638(ctx->unk4);
    ov42_02228050(ctx->unk0);

    Heap_Free(ctx);
}

void ov49_02258B44(UnkOv49Ctx *ctx) {
    ov42_0222807C(ctx->unk0);
    ov49_02259A54(&ctx->unk18, ctx->unk4);
}

void ov49_02258B5C(UnkOv49Ctx *ctx) {
    int i;
    UnkOv49Entity *entity;
    UnkStruct_ov42_02228CDC input;
    UnkStruct_ov42_02228EB0 output;
    UnkStruct_ov42_02227F68 *map;

    entity = ctx->unk8;
    for (i = 0; i < ctx->unkC; i++, entity++) {
        if (ov49_022593FC(entity) == 0) {
            entity->unk24(entity, ctx);
        }
    }

    map = ov49_02258AB0(ctx->unk14);

    while (ov42_02229AC8(ctx->unk10, &input) == 1) {
        if (ov42_02228C80(map, ctx->unk0, &input, &output) == 1) {
            ov42_02228068(ctx->unk0, &output);
        }
    }

    ov45_02230680(ctx->unk4);
}

void ov49_02258BD4(UnkOv49Ctx *ctx) {
    ov45_022306B4(ctx->unk4);
}

void ov49_02258BE0(UnkOv49Ctx *ctx) {
    ov45_022306F4(ctx->unk4);
}

void ov49_02258BEC(UnkOv49Ctx *ctx, int index) {
    ov49_02259A20(&ctx->unk18, ctx->unk4, ov49_02269660[index]);
}

void ov49_02258C08(UnkOv49Ctx *ctx, int index) {
    ov49_02259A3C(&ctx->unk18, ov49_02269660[index]);
}

void ov49_02258C1C(UnkOv49Ctx *ctx, UnkStruct_ov42_02228CDC *input) {
    ov42_02229A8C(ctx->unk10, input);
}

UnkOv49Entity *ov49_02258C5C(UnkOv49Ctx *ctx, u32 a1, u32 x, u32 y);

UnkOv49Entity *ov49_02258C28(UnkOv49Ctx *ctx, u32 a1) {
    u16 x;
    u16 y;
    BOOL found = ov49_022589D8(ctx->unk14, 3, &x, &y, 0);

    GF_ASSERT(found);
    return ov49_02258C5C(ctx, a1, x, y);
}

UnkOv49Entity *ov49_02258C5C(UnkOv49Ctx *ctx, u32 a1, u32 x, u32 y) {
    UnkOv49Entity *entity = ov49_022593C0(ctx);

    {
        UnkStruct_ov42_02122667 params;

        params.unk0 = x * 16;
        params.unk2 = y * 16;
        params.unk4 = a1;
        params.unk6 = 0;
        params.unk8 = 0;

        if (ctx->unkE == 0) {
            params.unkA = 0;
        } else {
            params.unkA = 0x61;
        }

        entity->unk0 = ov42_022280B8(ctx->unk0, &params);
    }

    entity->unk4 = ov45_0223070C(ctx->unk4, entity->unk0);

    ctx->unk20 = entity;
    ov49_02258EEC(ctx, entity, 0);

    return entity;
}

UnkOv49Entity *ov49_02258CB8(UnkOv49Ctx *ctx, u32 a1, u32 a2) {
    UnkOv49Entity *entity = ov49_022593C0(ctx);

    {
        UnkStruct_ov42_02122667 params;
        u16 x;
        u16 y;
        u16 index;
        BOOL found;
        BOOL done = FALSE;
        UnkOv49Entity *other;

        index = 0;

        do {
            found = ov49_022589D8(ctx->unk14, 4 + a1, &x, &y, index);

            if (found == FALSE) {
                return NULL;
            } else {
                other = ov49_02258DAC(ctx);

                if (other == NULL) {
                    done = TRUE;
                } else {
                    if (ov49_02258FDC(other, x, y) == FALSE) {
                        done = TRUE;
                    }
                }
            }

            index++;
        } while (done == FALSE);

        params.unk0 = x * 16;
        params.unk2 = y * 16;
        params.unk4 = a1;
        params.unk6 = 0;
        params.unk8 = 1;
        params.unkA = a2;
        entity->unk0 = ov42_022280B8(ctx->unk0, &params);
    }

    entity->unk4 = ov45_0223070C(ctx->unk4, entity->unk0);

    ov49_02258EEC(ctx, entity, 0);

    return entity;
}

void ov49_02258D54(UnkOv49Entity *entity) {
    ov45_02230884(entity->unk4);
    ov42_02228100(entity->unk0);
    memset(entity, 0, sizeof(UnkOv49Entity));
}

UnkOv49Entity *ov49_02258D70(UnkOv49Ctx *ctx, u32 id) {
    int i;

    for (i = 0; i < ctx->unkC; i++) {
        if (ctx->unk8[i].unk0) {
            if (ov42_02228188(ctx->unk8[i].unk0, 4) == id) {
                return &ctx->unk8[i];
            }
        }
    }

    return NULL;
}
