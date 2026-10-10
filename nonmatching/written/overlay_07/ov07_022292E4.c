#include "global.h"

typedef struct UnkStruct_ov07_022292E4 {
    u8 unk00[4];
    int unk04;      // 0x04
    int unk08;      // 0x08
    s16 unk0C;      // 0x0C
    s16 unk0E;      // 0x0E
    u8 common[4];   // 0x10
    void *animSys;  // 0x14
    u8 unk18[0x20];
    void *sprite;   // 0x38
    u8 unk3C[4];
    s16 pos1[2];    // 0x40
    void *unk44;    // 0x44
    u8 unk48[0xC];
    s16 pos2[2];    // 0x54
    void *unk58;    // 0x58
    u8 unk5C[0x30];
    u8 unk8C[0x24]; // 0x8C
    u8 unkB0[0x24]; // 0xB0
    u32 unkD4;      // 0xD4
    u8 unkD8[0x10];
} UnkStruct_ov07_022292E4;

extern void *ov07_022324D8(void *sys, u32 size);
extern void ov07_02231FE4(void *sys, void *ctx);
extern int ov07_0221C4A8(void *sys, int idx);
extern int ov07_0221C468(void *sys);
extern int ov07_0221C470(void *sys);
extern int ov07_02222004(void *sys, int battler);
extern void ManagedSprite_SetAffineOverwriteMode(void *sprite, u8 mode);
extern void *ov07_0221FA48(void *sys, int battler);
extern void ov07_02231FA0(void *a, s16 *pos);
extern void ov07_02222338(void *a, void *b, s16 c, s16 d, s16 e, s16 f, u16 g, int h);
extern int ov07_0221FA04(void *sys, int battler);
extern void ov07_022223F0(void *a, int b, int c, int d);
extern void ManagedSprite_SetAffineZRotation(void *sprite, u16 rot);
extern void ov07_022223CC(void *a, void *b, void *sprite);
extern void ManagedSprite_TickFrame(void *sprite);
extern void ov07_0221C410(void *a, void *fn, void *ctx);
extern void ov07_0222928C(void);

void ov07_022292E4(void *sys, void *unused1, void *unused2, void *sprite) {
    UnkStruct_ov07_022292E4 *ctx = ov07_022324D8(sys, 0xe8);
    int dir;
    ov07_02231FE4(sys, ctx->common);
    ctx->unk0C = ov07_0221C4A8(sys, 0);
    ctx->unk0E = ov07_0221C4A8(sys, 1);
    ctx->unk04 = ov07_0221C4A8(sys, 2);
    ctx->unk08 = ov07_0221C4A8(sys, 3);
    dir = ov07_02222004(sys, ov07_0221C468(sys));
    ctx->sprite = sprite;
    ManagedSprite_SetAffineOverwriteMode(sprite, 2);
    ctx->unk44 = ov07_0221FA48(sys, ov07_0221C468(sys));
    ctx->unk58 = ov07_0221FA48(sys, ov07_0221C470(sys));
    ov07_02231FA0(ctx->unk44, ctx->pos1);
    ov07_02231FA0(ctx->unk58, ctx->pos2);
    ov07_02222338(ctx->unk8C, ctx->unkB0, ctx->pos1[0], (s16)(ctx->pos2[0] + ctx->unk0C * dir),
        ctx->pos1[1], (s16)(ctx->pos2[1] + ctx->unk0E * dir), (u16)ctx->unk04, ctx->unk08 << 12);
    if (ov07_0221FA04(sys, ov07_0221C468(sys)) == 4 && ov07_0221FA04(sys, ov07_0221C470(sys)) == 2) {
        dir *= -1;
    }
    if (ov07_0221FA04(sys, ov07_0221C468(sys)) == 5 && ov07_0221FA04(sys, ov07_0221C470(sys)) == 3) {
        dir *= -1;
    }
    if (dir > 0) {
        ov07_022223F0(&ctx->unkD4, 0xE38 * dir, 0x5C71 * dir, 10);
    } else {
        ov07_022223F0(&ctx->unkD4, 0x3FFF * dir, 0x5C71 * dir, 10);
    }
    ManagedSprite_SetAffineZRotation(ctx->sprite, (u16)ctx->unkD4);
    ov07_022223CC(ctx->unk8C, ctx->unkB0, ctx->sprite);
    ManagedSprite_TickFrame(ctx->sprite);
    ov07_0221C410(ctx->animSys, ov07_0222928C, ctx);
}
