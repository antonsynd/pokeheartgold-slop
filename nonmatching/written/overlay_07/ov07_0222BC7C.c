#include "global.h"

typedef struct UnkStruct_ov07_0222BC7C {
    int viewHeight;
    int bottom;
    int left;
    int windowY2;
    int viewWidth;
    int origin;
    int defenderAlpha;
    void *defenderSprite;
    u8 pad_20[4];
    void *battleAnimSys;
    u8 pad_28[0x28];
} UnkStruct_ov07_0222BC7C;

extern UnkStruct_ov07_0222BC7C *ov07_022324D8(void *system, int size);
extern void ov07_02231FE4(void *system, void *common);
extern int ov07_0221C470(void *system);
extern void *ov07_0221FA48(void *system, int battler);
extern int ov07_02231924(void *system, int battler);
extern int ov07_0221FAE8(void *system);
extern void SetBgPriority(u8 bgId, u8 priority);
extern int Pokepic_GetAttr(void *pic, int attr);
extern void Pokepic_SetAttr(void *pic, int attr, int value);
extern void ov07_0222BAF4(void);
extern void ov07_0221C410(void *system, void (*func)(void), void *ctx);

#define REG_DISPCNT (*(vu32 *)0x04000000)
#define REG_WIN0H (*(vu16 *)0x04000040)
#define REG_WIN0V (*(vu16 *)0x04000044)
#define REG_WININ (*(vu16 *)0x04000048)
#define REG_WINOUT (*(vu16 *)0x0400004A)

void ov07_0222BC7C(void *system) {
    UnkStruct_ov07_0222BC7C *ctx = ov07_022324D8(system, 0x50);
    s16 defenderX;
    s16 defenderY;

    ov07_02231FE4(system, &ctx->pad_20);

    ctx->defenderSprite = ov07_0221FA48(system, ov07_0221C470(system));
    ctx->viewHeight = 0;

    switch (ov07_02231924(system, ov07_0221C470(system))) {
    case 3:
    case 4:
        SetBgPriority(2, ov07_0221FAE8(system) - 1);
        break;
    }

    defenderX = Pokepic_GetAttr(ctx->defenderSprite, 0);
    defenderY = Pokepic_GetAttr(ctx->defenderSprite, 1);
    defenderY -= Pokepic_GetAttr(ctx->defenderSprite, 0x29);

    ctx->defenderAlpha = Pokepic_GetAttr(ctx->defenderSprite, 0x17);
    Pokepic_SetAttr(ctx->defenderSprite, 0x17, 8);

    ctx->left = defenderX - 0x28;
    ctx->bottom = defenderY + 0x28;
    ctx->viewWidth = 0;
    ctx->windowY2 = ctx->bottom;
    ctx->origin = 0;

    REG_DISPCNT = (REG_DISPCNT & 0xFFFF1FFF) | 0x2000;
    REG_WININ = (REG_WININ & ~0x3f) | 0x3f;
    REG_WINOUT = (REG_WINOUT & ~0x3f) | 0x3b;
    REG_WIN0H = (u16)(((ctx->left << 8) & 0xff00) | ((ctx->left + 0x50) & 0xff));
    REG_WIN0V = (u16)(((ctx->bottom << 8) & 0xff00) | (ctx->windowY2 & 0xff));

    ov07_0221C410(ctx->battleAnimSys, ov07_0222BAF4, ctx);
}
