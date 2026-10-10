#include "global.h"

typedef struct UnkStruct_ov07_0222A58C_Template {
    s16 x;
    s16 y;
    s16 z;
    s16 animIdx;
    u32 priority;
    u32 plttIdx;
    u32 vramType;
    u32 resources[6];
    u32 bgPriority;
    u32 vramTransfer;
} UnkStruct_ov07_0222A58C_Template;

typedef struct UnkStruct_ov07_0222A58C_Paw {
    void *battleAnimSys;
    void *spriteSys;
    void *spriteMan;
    u8 state;
    u8 step;
    u8 delay;
    u8 destIndex;
    void *sprite;
    u8 pad_14[0x24];
    u32 scale;
    void *outerState;
} UnkStruct_ov07_0222A58C_Paw;

typedef struct UnkStruct_ov07_0222A58C {
    u8 state;
    u8 unk_01;
    u8 pawCount;
    u8 pad_03[5];
    void *battleAnimSys;
    void *spriteSys;
    void *spriteMan;
    UnkStruct_ov07_0222A58C_Paw paws[12];
    u8 pad_314[0x200];
    u32 pawStates[12];
    u8 pad_544[0x20];
} UnkStruct_ov07_0222A58C;

typedef struct UnkStruct_ov07_0222A58C_Offset {
    s16 baseY;
    s16 baseX;
    s16 randY;
    s16 randX;
} UnkStruct_ov07_0222A58C_Offset;

extern UnkStruct_ov07_0222A58C_Offset ov07_022367CE[];

extern int ov07_0221BFD0(void *system);
extern UnkStruct_ov07_0222A58C_Template ov07_0221F9E8(void *system);
extern void ov07_02231E08(void *system, int a, int b);
extern int ov07_0221C4A8(void *system, int index);
extern void *SpriteSystem_NewSprite(void *spriteSys, void *spriteMan, void *tmpl);
extern u16 LCRandom(void);
extern void ManagedSprite_SetPositionXY(void *sprite, s16 x, s16 y);
extern void ManagedSprite_SetAffineOverwriteMode(void *sprite, int mode);
extern void ManagedSprite_SetAffineScale(void *sprite, u32 x, u32 y);
extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);
extern void ov07_0222A328(void);
extern void ov07_0222A4B4(void);
extern void ov07_0221C3F4(void *system, void (*func)(void), void *ctx, int priority);

void ov07_0222A58C(void *system, void *spriteSys, void *spriteMan, void *sprite) {
    UnkStruct_ov07_0222A58C_Template template;
    UnkStruct_ov07_0222A58C *ctx = Heap_Alloc(ov07_0221BFD0(system), 0x564);
    int i;
    int posOffsetIdx;

    if (ctx == NULL) {
        GF_AssertFail();
    }

    ctx->unk_01 = 0;
    ctx->state = 0;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->battleAnimSys = system;

    template = ov07_0221F9E8(system);
    ov07_02231E08(ctx->battleAnimSys, -1, -1);

    ctx->pawCount = ov07_0221C4A8(ctx->battleAnimSys, 0);
    ctx->pawCount = 0xc;

    ctx->paws[0].sprite = sprite;
    posOffsetIdx = 0;

    for (i = 0; i < ctx->pawCount; i++) {
        void *pawSprite;
        s16 x;
        s16 y;

        if (i != 0) {
            ctx->paws[i].sprite = SpriteSystem_NewSprite(ctx->spriteSys, ctx->spriteMan, &template);
        }

        pawSprite = ctx->paws[i].sprite;

        ctx->paws[i].state = 0;
        ctx->paws[i].step = 0;
        ctx->paws[i].delay = LCRandom() % 10 + 10 + i;
        ctx->paws[i].destIndex = LCRandom() % 6;
        ctx->paws[i].scale = 0x3F800000;
        ctx->paws[i].battleAnimSys = ctx->battleAnimSys;
        ctx->paws[i].spriteSys = ctx->spriteSys;
        ctx->paws[i].spriteMan = ctx->spriteMan;
        ctx->paws[i].outerState = &ctx->pawStates[i];

        x = ov07_022367CE[posOffsetIdx].baseX + LCRandom() % ov07_022367CE[posOffsetIdx].randX;
        y = ov07_022367CE[posOffsetIdx].baseY + LCRandom() % ov07_022367CE[posOffsetIdx].randY;

        ManagedSprite_SetPositionXY(pawSprite, x, y);
        ManagedSprite_SetAffineOverwriteMode(pawSprite, 2);
        ManagedSprite_SetAffineScale(pawSprite, ctx->paws[i].scale, ctx->paws[i].scale);
        ManagedSprite_SetDrawFlag(pawSprite, 0);

        ov07_0221C3F4(system, ov07_0222A328, &ctx->paws[i], 0x44b);

        posOffsetIdx++;
        posOffsetIdx %= 6;
    }

    ov07_0221C3F4(system, ov07_0222A4B4, ctx, 0x44d);
}
