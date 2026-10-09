#include "global.h"

#include "assert.h"
#include "filesystem.h"
#include "overlay_42.h"
#include "overlay_80_02239AF8.h"
#include "sprite_system.h"

typedef struct FrontierGraphicsSprites {
    ManagedSprite *unk00[8];
    u16 unk20[8];
    u32 unk30;
    u16 unk34[8];
} FrontierGraphicsSprites;

typedef struct FrontierGraphics {
    u32 unk00;
    PaletteData *plttData;
    void *frontier;
    u8 unk0C[0x10];
    UnkStruct_ov44_02232914 unk1C;
    u8 unk20[0x14];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteMan;
    FrontierGraphicsSprites unk3C;
} FrontierGraphics;

typedef struct UnkStruct_ov80_02239740_Sprite {
    s16 unk00;
    s16 unk02;
    u8 unk04;
    u8 unk05;
    u16 unk06_0 : 13;
    u16 unk06_13 : 1;
    u16 unk06_14 : 1;
    u16 unk06_15 : 1;
} UnkStruct_ov80_02239740_Sprite;

typedef struct UnkStruct_ov80_02239740_Frontier {
    u16 unk00[8];
    UnkStruct_ov80_02239740_Sprite unk10[8];
} UnkStruct_ov80_02239740_Frontier;

typedef struct UnkStruct_ov80_02239900 {
    u16 unk00;
    u16 unk02;
    u16 unk04;
    u16 unk06[12];
} UnkStruct_ov80_02239900;

typedef struct UnkStruct_ov80_02239938 {
    void *unk00;
    void *sprite;
    UnkStruct_ov80_02239900 unk08;
    u8 unk26[0x16];
} UnkStruct_ov80_02239938;

extern void *sub_02096878(void *a0);
extern void sub_02096884(void *a0);
extern void *sub_02096868(void *a0);
extern void *sub_0209686C(void *a0, int a1);
extern void ov80_0223962C(FrontierGraphics *a0, u16 a1);
extern ManagedSprite *ov80_0223968C(FrontierGraphics *a0, u16 a1, u8 a2);

void ov80_022396D8(FrontierGraphics *param0, u16 param1)
{
    GF_ASSERT(param1 < 8);
    GF_ASSERT(param0->unk3C.unk00[param1] != NULL);

    ov80_02239BE8(param0->unk3C.unk00[param1]);
    param0->unk3C.unk00[param1] = NULL;
}

ManagedSprite *ov80_02239700(FrontierGraphics *param0, u16 param1)
{
    return param0->unk3C.unk00[param1];
}

void ov80_02239708(FrontierGraphics *param0, u16 param1, int param2)
{
    if (param2 == 1) {
        param0->unk3C.unk30 |= 1 << param1;
    } else {
        param0->unk3C.unk30 &= 0xffffffff ^ (1 << param1);
    }
}

u32 ov80_02239734(FrontierGraphics *param0, u16 param1)
{
    return (param0->unk3C.unk30 >> param1) & 1;
}

void ov80_02239740(FrontierGraphics *param0)
{
    int v0;
    UnkStruct_ov80_02239740_Frontier *v1 = sub_02096878(param0->frontier);
    FrontierGraphicsSprites *v2 = &param0->unk3C;

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk34[v0] != 0xffff) {
            v1->unk00[v0] = v2->unk34[v0];
            v0++;
        }
    }

    v0 = 0;

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk00[v0] != NULL) {
            v1->unk10[v0].unk05 = ManagedSprite_GetActiveAnim(v2->unk00[v0]);
            v1->unk10[v0].unk06_0 = ManagedSprite_GetAnimationFrame(v2->unk00[v0]);
            v1->unk10[v0].unk06_13 = ov80_02239734(param0, v0);
            v1->unk10[v0].unk06_14 = ManagedSprite_GetDrawFlag(v2->unk00[v0]);
            v1->unk10[v0].unk04 = v2->unk20[v0];
            ManagedSprite_GetPositionXY(v2->unk00[v0], &v1->unk10[v0].unk00, &v1->unk10[v0].unk02);
            v1->unk10[v0].unk06_15 = 1;
        }
    }
}

void ov80_02239828(FrontierGraphics *param0)
{
    int v0;
    NARC *v1;
    UnkStruct_ov80_02239740_Frontier *v2;
    ManagedSprite *v3;

    v2 = sub_02096878(param0->frontier);
    v1 = NARC_New(0xB8, 0x65);

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk00[v0] != 0xffff) {
            ov80_02239AF8(param0->spriteSystem, param0->spriteMan, v1, param0->plttData, v2->unk00[v0]);
            ov80_0223962C(param0, v2->unk00[v0]);
        }
    }

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk10[v0].unk06_15 == 1) {
            v3 = ov80_0223968C(param0, v0, v2->unk10[v0].unk04);
            ManagedSprite_SetPositionXY(v3, v2->unk10[v0].unk00, v2->unk10[v0].unk02);
            ManagedSprite_SetDrawFlag(v3, v2->unk10[v0].unk06_14);

            ov80_02239708(param0, v0, v2->unk10[v0].unk06_13);

            ManagedSprite_SetAnim(v3, v2->unk10[v0].unk05);
            ManagedSprite_SetAnimationFrame(v3, v2->unk10[v0].unk06_0);
        }
    }

    NARC_Delete(v1);
    sub_02096884(param0->frontier);
}

void ov80_022398E4(FrontierGraphics *param0, s16 *param1, s16 *param2)
{
    *param2 = ov42_022293A8(&param0->unk1C);
    *param1 = ov42_022293B0(&param0->unk1C);
}

void ov80_02239900(UnkStruct_ov80_02239938 *param0, UnkStruct_ov80_02239900 *param1)
{
    *param1 = param0->unk08;
}

void ov80_02239914(void *param0, int param1, void *param2, void *param3, const UnkStruct_ov80_02239900 *param4)
{
    UnkStruct_ov80_02239938 *v0 = sub_0209686C(param0, param1);
    const u16 *src = (const u16 *)param4;
    u16 *dst = (u16 *)&v0->unk08;
    int i;

    v0->unk00 = param2;
    v0->sprite = param3;

    for (i = 0; i < 15; i++) {
        dst[i] = src[i];
    }
}

UnkStruct_ov80_02239938 *ov80_02239938(void *param0, int param1)
{
    int v0;
    UnkStruct_ov80_02239938 *v1 = sub_02096868(param0);

    for (v0 = 0; v0 < 32; v0++) {
        if ((v1->unk00 != NULL) && (v1->unk08.unk04 == param1)) {
            return v1;
        }

        v1++;
    }

    GF_ASSERT(FALSE);
    return NULL;
}
