#include "global.h"

typedef struct UnkStruct_ov07_0222B640 {
    u8 state;
    u8 pad_01[3];
    void *battleAnimSys;
    u8 pad_08[0x10];
    void *paletteData;
    void *sprites[3];
    int blendStep;
    float scaleX;
    float scaleY;
    u8 spriteAlpha;
    u8 bgAlpha;
    s8 scaleDirX;
    u8 pad_37;
    void *palFades[2];
} UnkStruct_ov07_0222B640;

extern UnkStruct_ov07_0222B640 *ov07_022324D8(void *system, int size);
extern void ov07_02231FE4(void *system, void *ctx);
extern void *ov07_0221C4E8(void *system, int index);
extern int ov07_0221C468(void *system);
extern int ov07_02222004(void *system, int battler);
extern int ov07_0221FB78(void *system, int role);
extern void ManagedSprite_GetPositionXY(void *sprite, s16 *x, s16 *y);
extern void ManagedSprite_SetPositionXY(void *sprite, s16 x, s16 y);
extern void ManagedSprite_SetAffineOverwriteMode(void *sprite, int mode);
extern void ManagedSprite_SetAffineScale(void *sprite, float x, float y);
extern void *Sprite_GetPaletteProxy(void *sprite);
extern u32 ObjPlttTransfer_GetPaletteVramOffset(void *proxy, int type);
extern int ov07_0221BFD0(void *system);
extern void *ov07_02222F10(void *paletteData, int heapId, int bufferId, u32 pos, int a, int b, int c, int d, int e, int f, int g);
extern int ov07_02231924(void *system, int battler);
extern int ov07_0221BFC0(void *system);
extern void ov07_02231A20(int type, int flag, s16 *pos);
extern int ov07_0223192C(void *system, int battler);
extern void ManagedSprite_SetPriority(void *sprite, int priority);
extern void ManagedSprite_SetDrawPriority(void *sprite, int priority);
extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);
extern int ov07_0221C470(void *system);
extern int ov07_0221FA1C(void *system, int battler);
extern int ov07_0221FA10(void *system, int battler);
extern int ov07_0221FA2C(void *system, int battler);
extern int ov07_0221FA38(void *system, int battler);
extern u8 GetMonPicHeightBySpeciesGenderForm(u16 species, u8 gender, u8 face, u8 shiny, int form);
extern void ov07_02231E08(void *system, int a, int b);
extern void *ov07_0221C410(void *system, void (*func)(void), void *ctx);
extern void ov07_0222B4E0(void *task, void *ctx);

#define REG_BLDALPHA (*(vu16 *)0x04000052)

void ov07_0222B640(void *system) {
    UnkStruct_ov07_0222B640 *ctx = ov07_022324D8(system, 0x40);
    int xOffset;
    s16 posX;
    s16 posY;
    s16 defaultPos[2];
    s16 attackerPos[2];
    u32 palOffset;
    u8 attacker;
    u8 attackerType;
    u8 defender;
    int face;
    int height;
    int species;
    int gender;
    int shiny;
    void *task;

    ov07_02231FE4(system, ctx);

    ctx->sprites[0] = ov07_0221C4E8(ctx->battleAnimSys, 0);
    ctx->sprites[1] = ov07_0221C4E8(ctx->battleAnimSys, 1);
    ctx->sprites[2] = ov07_0221C4E8(ctx->battleAnimSys, 2);
    ctx->blendStep = 0;

    xOffset = (s16)ov07_02222004(system, ov07_0221C468(system)) * -0x20;

    ctx->scaleX = 1.0f;
    ctx->scaleY = 1.0f;

    if (ov07_0221FB78(system, 1) == 1) {
        ctx->scaleDirX = -1;
    } else {
        ctx->scaleDirX = 1;
    }

    ManagedSprite_GetPositionXY(ctx->sprites[1], &posX, &posY);
    ManagedSprite_SetPositionXY(ctx->sprites[0], posX + xOffset, posY);
    ManagedSprite_SetAffineOverwriteMode(ctx->sprites[0], 2);
    ManagedSprite_SetAffineScale(ctx->sprites[0], ctx->scaleX * (float)ctx->scaleDirX, ctx->scaleY);

    palOffset = ObjPlttTransfer_GetPaletteVramOffset(Sprite_GetPaletteProxy(*(void **)ctx->sprites[0]), 1);
    ctx->palFades[0] = ov07_02222F10(ctx->paletteData, ov07_0221BFD0(system), 2, (palOffset << 20) >> 16, 0x10, 0, 1, 0, 0xf, 0xFFFF, 0x44c);

    palOffset = ObjPlttTransfer_GetPaletteVramOffset(Sprite_GetPaletteProxy(*(void **)ctx->sprites[2]), 1);
    ctx->palFades[1] = ov07_02222F10(ctx->paletteData, ov07_0221BFD0(system), 2, (palOffset << 20) >> 16, 0x10, 0, 1, 0, 0xf, 0xFFFF, 0x44c);

    attacker = ov07_0221C468(ctx->battleAnimSys);
    attackerType = ov07_02231924(ctx->battleAnimSys, attacker);
    ov07_02231A20(attackerType, ov07_0221BFC0(ctx->battleAnimSys), defaultPos);
    ManagedSprite_GetPositionXY(ctx->sprites[0], &attackerPos[0], &attackerPos[1]);

    if (ov07_0223192C(ctx->battleAnimSys, attacker) == 3) {
        ManagedSprite_SetPriority(ctx->sprites[0], 1);
        face = 0;
        ManagedSprite_SetDrawPriority(ctx->sprites[0], 0);
    } else {
        ManagedSprite_SetPriority(ctx->sprites[0], 2);
        ManagedSprite_SetDrawPriority(ctx->sprites[0], 0);
        face = 2;
    }

    defender = ov07_0221C470(ctx->battleAnimSys);
    species = ov07_0221FA1C(ctx->battleAnimSys, defender);
    gender = ov07_0221FA10(ctx->battleAnimSys, defender);
    shiny = ov07_0221FA2C(ctx->battleAnimSys, defender);
    height = GetMonPicHeightBySpeciesGenderForm(species, gender, face, shiny, ov07_0221FA38(ctx->battleAnimSys, defender));

    ManagedSprite_SetPositionXY(ctx->sprites[0], attackerPos[0], defaultPos[1] + height);
    ManagedSprite_SetDrawFlag(ctx->sprites[0], 1);

    ctx->spriteAlpha = 0;
    ctx->bgAlpha = 0xf;

    ov07_02231E08(ctx->battleAnimSys, -1, -1);
    REG_BLDALPHA = ctx->spriteAlpha | (ctx->bgAlpha << 8);

    task = ov07_0221C410(ctx->battleAnimSys, (void (*)(void))ov07_0222B4E0, ctx);
    ov07_0222B4E0(task, ctx);
}
