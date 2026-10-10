#include "global.h"

typedef struct UnkStruct_ov07_022342E4 {
    u8 pad_00[0x2c];
    void *spriteMan;
    u8 pad_30[0x64];
    s32 heapID;
    u8 pad_98[4];
    s32 target;
    s32 ballID;
    u8 pad_A4[4];
    s32 surface;
    void *cellActorSys;
    void *paletteSys;
} UnkStruct_ov07_022342E4;

int SpriteSystem_InitSprites(void *sys, void *mgr, int max);
void *SpriteSystem_GetRenderer(void *sys);
void G2dRenderer_SetSubSurfaceCoords(void *renderer, int x, int y);
int SpriteSystem_InitManagerWithCapacities(void *sys, void *mgr, int *caps);
int ov07_02232658(int ballID, int which);
void *NARC_New(int narcID, int heapID);
void NARC_Delete(void *narc);
int SpriteSystem_LoadCharResObjFromOpenNarc(void *sys, void *mgr, void *narc, int fileId, int compressed, int vram, int resId);
u8 SpriteSystem_LoadPaletteBufferFromOpenNarc(void *plttData, int bufferId, void *sys, void *mgr, void *narc, int fileId, int compressed, int plttNum, int vram, int resId);
int SpriteSystem_LoadCellResObjFromOpenNarc(void *sys, void *mgr, void *narc, int fileId, int compressed, int resId);
int SpriteSystem_LoadAnimResObjFromOpenNarc(void *sys, void *mgr, void *narc, int fileId, int compressed, int resId);

void ov07_022342E4(UnkStruct_ov07_022342E4 *ctx) {
    int v0, v1, v2, v3;
    int caps[6];
    int i;
    void *narc;

    SpriteSystem_InitSprites(ctx->cellActorSys, ctx->spriteMan, 10);

    if (ctx->surface == 0) {
        G2dRenderer_SetSubSurfaceCoords(SpriteSystem_GetRenderer(ctx->cellActorSys), 0, 0x110000);
    }

    for (i = 0; i < 6; i++) {
        caps[i] = 10;
    }
    caps[4] = 0;
    caps[5] = 0;
    SpriteSystem_InitManagerWithCapacities(ctx->cellActorSys, ctx->spriteMan, caps);

    v0 = ov07_02232658(ctx->ballID, 0);
    v1 = ov07_02232658(ctx->ballID, 1);
    v2 = ov07_02232658(ctx->ballID, 2);
    v3 = ov07_02232658(ctx->ballID, 3);

    narc = NARC_New(8, ctx->heapID);
    SpriteSystem_LoadCharResObjFromOpenNarc(ctx->cellActorSys, ctx->spriteMan, narc, v0, 1, 1, ctx->target + 6000);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(ctx->paletteSys, 2, ctx->cellActorSys, ctx->spriteMan, narc, v1, 0, 1, 1, ctx->target + 6000);
    SpriteSystem_LoadCellResObjFromOpenNarc(ctx->cellActorSys, ctx->spriteMan, narc, v2, 1, ctx->target + 6000);
    SpriteSystem_LoadAnimResObjFromOpenNarc(ctx->cellActorSys, ctx->spriteMan, narc, v3, 1, ctx->target + 6000);
    NARC_Delete(narc);
}
