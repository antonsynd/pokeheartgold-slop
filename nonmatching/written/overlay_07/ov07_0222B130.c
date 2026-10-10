#include "global.h"

typedef struct UnkStruct_ov07_0222B130 {
    void *unk_00;
    void *system;
    u8 pad_08[0x18];
    s16 x;
    s16 y;
    void *monSprite;
    void *hwSprite;
    void *unk_2c;
    void *sprite;
    u8 pad_34[0x6d];
    u8 unk_a1;
    u8 spriteAlpha;
    u8 bgAlpha;
    s16 attackerHeight;
    u8 pad_a6[2];
} UnkStruct_ov07_0222B130;

extern UnkStruct_ov07_0222B130 *ov07_022324D8(void *system, int size);
extern void ov07_02231FE4(void *system, void *ctx);
extern void ov07_02231E08(void *system, int a, int b);
extern int ov07_0221C468(void *system);
extern void *ov07_0221FA48(void *system, int battler);
extern int Pokepic_GetAttr(void *pic, int attr);
extern void *ov07_0221C4E8(void *system, int index);
extern int ov07_0221FA80(void *system, int battler);
extern int ov07_0221FA90(void *system, int battler);
extern int ov07_0221FAE8(void *system);
extern void ManagedSprite_SetPriority(void *sprite, int priority);
extern void *Sprite_GetPaletteProxy(void *sprite);
extern u32 ObjPlttTransfer_GetPaletteVramOffset(void *proxy, int type);
extern void *ov07_0221FA78(void *system);
extern int ov07_0221BFD0(void *system);
extern void PaletteData_LoadNarc_CustomTint(void *data, int narcId, int memberNo, int heapId, int bufferId, u32 size, u16 pos, int r, int g, int b);
extern void ManagedSprite_SetOamMode(void *sprite, int mode);
extern void ov07_0222AFAC(void);
extern void ov07_0221C410(void *system, void (*func)(void), void *ctx);

#define REG_BLDALPHA (*(vu16 *)0x04000052)

void ov07_0222B130(void *system) {
    UnkStruct_ov07_0222B130 *ctx = ov07_022324D8(system, 0xa8);
    int memberIndex;
    int narcID;
    void *sprite;
    void *monSprite;
    u32 dst;

    ov07_02231FE4(system, ctx);

    ctx->unk_a1 = 0;
    ctx->spriteAlpha = 8;
    ctx->bgAlpha = 8;

    ov07_02231E08(ctx->system, -1, -1);
    REG_BLDALPHA = ctx->spriteAlpha | (ctx->bgAlpha << 8);

    monSprite = ov07_0221FA48(ctx->system, ov07_0221C468(ctx->system));
    ctx->monSprite = monSprite;
    ctx->x = Pokepic_GetAttr(monSprite, 0);
    ctx->y = Pokepic_GetAttr(ctx->monSprite, 1);
    ctx->hwSprite = ov07_0221C4E8(ctx->system, 0);
    ctx->sprite = ov07_0221C4E8(ctx->system, 1);
    ctx->attackerHeight = -Pokepic_GetAttr(ctx->monSprite, 0x29);

    memberIndex = ov07_0221FA80(ctx->system, ov07_0221C468(ctx->system));
    narcID = ov07_0221FA90(ctx->system, ov07_0221C468(ctx->system));

    sprite = ctx->hwSprite;
    ManagedSprite_SetPriority(sprite, ov07_0221FAE8(ctx->system) + 1);
    dst = ObjPlttTransfer_GetPaletteVramOffset(Sprite_GetPaletteProxy(*(void **)sprite), 1);
    PaletteData_LoadNarc_CustomTint(ov07_0221FA78(ctx->system), narcID, memberIndex, ov07_0221BFD0(ctx->system), 2, 0x20, (u16)((dst & 0xfff) << 4), 0xc4, 0xc4, 0xc4);
    ManagedSprite_SetOamMode(sprite, 1);

    sprite = ctx->sprite;
    ManagedSprite_SetPriority(sprite, ov07_0221FAE8(ctx->system) + 1);
    dst = ObjPlttTransfer_GetPaletteVramOffset(Sprite_GetPaletteProxy(*(void **)sprite), 1);
    PaletteData_LoadNarc_CustomTint(ov07_0221FA78(ctx->system), narcID, memberIndex, ov07_0221BFD0(ctx->system), 2, 0x20, (u16)((dst & 0xfff) << 4), 0xc4, 0xc4, 0xc4);
    ManagedSprite_SetOamMode(sprite, 1);

    ov07_0221C410(ctx->system, ov07_0222AFAC, ctx);
}
