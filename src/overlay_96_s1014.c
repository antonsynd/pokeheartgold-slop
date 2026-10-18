#include "global.h"

#include "pokeathlon/pokeathlon.h"

#include "sprite_system.h"

typedef struct Ov96Result {
    u32 unk0_0 : 8;
    u32 points : 8;
    u32 unk0_16 : 16;
} Ov96Result;

typedef struct Ov96Info {
    u8 filler_0[4];
    u16 unk4;
} Ov96Info;

typedef struct Ov96_0220BE28 {
    PokeathlonCourseData *data;
    void *unk04[3];
    u32 points[3];
    ManagedSprite *unk1C;
    ManagedSprite *unk20;
    ManagedSprite *unk24;
    ManagedSprite *unk28;
    ManagedSprite *unk2C;
    ManagedSprite *unk30;
    u8 filler_34[4];
    u32 unk38_0 : 23;
    u32 index : 2;
    u32 player : 2;
    u32 lane : 2;
    u32 unk38_29 : 3;
} Ov96_0220BE28;

void *ov96_021EAA04(void *a0, u8 index);
int ov96_021EAA20(void *a0);
Ov96Info *ov96_021E8BB0(int a0);
ManagedSprite *ov96_0220D13C(SpriteSystem *spriteSystem, SpriteManager *spriteManager, s16 x, s16 y, u16 animation, u16 priority);

void ov96_0220BE28(Ov96_0220BE28 *a0, SpriteSystem *spriteSystem, SpriteManager *spriteManager, void *a3, u8 playerId, PokeathlonCourseData *data, u32 *points) {
    int player;
    int i;
    int x;
    Ov96Result *result;

    MI_CpuFill8(a0, 0, sizeof(Ov96_0220BE28));
    player = playerId;
    a0->player = player;
    a0->data = data;
    a0->lane = player;
    if (a0->player > ov96_021E5F24(data)) {
        a0->lane--;
    }

    for (i = 0; i < 3; i++) {
        a0->unk04[i] = ov96_021EAA04(a3, a0->lane * 3 + i);
        a0->points[i] = points[i];
    }

    result = (Ov96Result *)ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(data) + 0x50 + player * 0x28);
    result->points = points[0];

    x = a0->lane * 64 + 72;
    a0->unk1C = ov96_0220D13C(spriteSystem, spriteManager, x, 56, 12, 29);
    a0->unk20 = ov96_0220D13C(spriteSystem, spriteManager, x, 56, 5, 28);
    ManagedSprite_SetDrawFlag(a0->unk20, FALSE);
    a0->unk28 = ov96_0220D13C(spriteSystem, spriteManager, x, 40, 16, 31);
    ManagedSprite_SetAffineOverwriteMode(a0->unk28, 1);
    ManagedSprite_SetAffineScale(a0->unk28, 0.7f, 0.7f);
    ManagedSprite_SetDrawFlag(a0->unk28, FALSE);
    a0->unk24 = ov96_0220D13C(spriteSystem, spriteManager, x, 40, 24, 31);
    ManagedSprite_SetDrawFlag(a0->unk24, FALSE);
    a0->unk2C = ov96_0220D13C(spriteSystem, spriteManager, x, 40, 14, 30);
    ManagedSprite_SetDrawFlag(a0->unk2C, FALSE);
    a0->unk30 = ov96_0220D13C(spriteSystem, spriteManager, x, 40, 27, 30);
    ManagedSprite_SetDrawFlag(a0->unk30, FALSE);
}

void ov96_0220BFB4(Ov96_0220BE28 *a0, int anim) {
    s16 x = a0->lane * 64 + 72;
    s16 y = 40;
    ManagedSprite *sprite = a0->unk24;

    if (ov96_021E8BB0(ov96_021EAA20(a0->unk04[a0->index]))->unk4 != 0) {
        y -= 16;
    }
    ManagedSprite_SetPositionXY(sprite, x, y);
    ManagedSprite_SetAnimNoRestart(sprite, anim);
    ManagedSprite_SetDrawFlag(sprite, TRUE);
}
