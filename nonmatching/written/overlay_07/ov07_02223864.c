#include "global.h"

typedef struct UnkStruct_ov07_02223864_Common {
    void *unk_00;
    void *battleAnimSys;
    u8 pad_08[0xc];
    void *bgConfig;
    void *paletteData;
} UnkStruct_ov07_02223864_Common;

typedef struct UnkStruct_ov07_02223864 {
    int reverse;
    int timer;
    s16 slowDownTime;
    s16 x;
    s16 y;
    s16 stepX;
    s16 stepY;
    s16 targetBgAlpha;
    s16 unk_14;
    s16 unk_16;
    s16 unk_18;
    u8 pad_1a[2];
    UnkStruct_ov07_02223864_Common common;
} UnkStruct_ov07_02223864;

extern void *ov07_022324D8(void *system, int size);
extern void ov07_02231FE4(void *system, void *common);
extern int ov07_0221C4A8(void *system, int index);
extern int ov07_0221C468(void *system);
extern int ov07_0223192C(void *system, int arg);
extern int ov07_0221BFC0(void *system);
extern int ov07_0221BFD0(void *system);
extern int ov07_0221FB7C(int bgId, int member);
extern void ov07_022236F0(void);
extern void ov07_0221C410(void *system, void (*func)(void), void *ctx);
extern void ToggleBgLayer(u8 bgId, u8 toggle);
extern u32 GfGfxLoader_LoadCharData(int narcId, s32 memberNo, void *bgConfig, int layer, u32 tileStart, u32 szByte, BOOL isCompressed, int heapID);
extern void GfGfxLoader_LoadScrnData(int narcId, s32 memberNo, void *bgConfig, int layer, u32 tileStart, u32 szByte, BOOL isCompressed, int heapID);
extern void PaletteData_LoadNarc(void *data, int narcID, s32 memberNo, int heapID, int bufferID, u32 size, u16 pos);
extern void BgClearTilemapBufferAndCommit(void *bgConfig, u8 bgId);
extern void BgSetPosTextAndCommit(void *bgConfig, u8 bgId, int op, int val);

void ov07_02223864(void *system) {
    UnkStruct_ov07_02223864 *ctx = ov07_022324D8(system, 0xb8);
    int bgID;
    int member;

    ov07_02231FE4(system, &ctx->common);

    ctx->x = ov07_0221C4A8(system, 1);
    ctx->y = ov07_0221C4A8(system, 2);
    ctx->stepX = ov07_0221C4A8(system, 3);
    ctx->stepY = ov07_0221C4A8(system, 4);
    ctx->reverse = ov07_0221C4A8(system, 5);
    ctx->slowDownTime = ov07_0221C4A8(system, 6);
    ctx->targetBgAlpha = ov07_0221C4A8(system, 7);
    ctx->unk_14 = 0;

    if (ctx->reverse != 0 && ov07_0223192C(system, ov07_0221C468(system)) == 4) {
        ctx->x *= -1;
        ctx->y *= -1;
        ctx->stepX *= -1;
        ctx->stepY *= -1;
        ctx->y -= 0x54;
    } else {
        ctx->y += 0x54;
    }

    if (ov07_0221BFC0(system) == 1) {
        ctx->stepX *= -1;
    }

    ctx->unk_16 = 4;
    ctx->unk_18 = 0x10;
    ctx->unk_16 = 0;
    ctx->unk_18 = 0x10;
    ctx->timer = 0;

    ToggleBgLayer(2, 0);

    bgID = ov07_0221C4A8(system, 0);
    GfGfxLoader_LoadCharData(7, ov07_0221FB7C(bgID, 0), ctx->common.bgConfig, 2, 0, 0, TRUE, ov07_0221BFD0(system));
    PaletteData_LoadNarc(ctx->common.paletteData, 7, ov07_0221FB7C(bgID, 1), ov07_0221BFD0(system), 0, 0x20, 0x90);
    BgClearTilemapBufferAndCommit(ctx->common.bgConfig, 2);

    member = 2;
    if (ov07_0221BFC0(system) == 1) {
        member = 4;
    } else if (ov07_0223192C(system, ov07_0221C468(system)) == 4) {
        member = 3;
    }

    GfGfxLoader_LoadScrnData(7, ov07_0221FB7C(bgID, member), ctx->common.bgConfig, 2, 0, 0, TRUE, ov07_0221BFD0(system));
    BgSetPosTextAndCommit(ctx->common.bgConfig, 2, 0, ctx->x);
    BgSetPosTextAndCommit(ctx->common.bgConfig, 2, 3, ctx->y);
    ov07_0221C410(ctx->common.battleAnimSys, ov07_022236F0, ctx);
}
