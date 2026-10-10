#include "global.h"

typedef struct UnkStruct_ov07_022274F8 {
    u8 state;       // 0x00
    u8 counter[3];  // 0x01
    u8 timer;       // 0x04
    u8 evb;         // 0x05
    u8 eva;         // 0x06
    u8 unk07;
    void *sys;      // 0x08
    void *unk0C;    // 0x0C
    void *unk10;    // 0x10
    void *sprites[3]; // 0x14
    u8 unk20[0x24]; // 0x20
} UnkStruct_ov07_022274F8;

extern u32 ov07_0221BFD0(void *sys);
extern void *Heap_Alloc(u32 heapId, u32 size);
extern void GF_AssertFail(void);
extern void ov07_0221F9E8(void *tmpl, void *sys);
extern void ov07_02231E08(void *sys, int a, int b);
extern int ov07_0221C470(void *sys);
extern int ov07_0223192C(void *sys, int battler);
extern int ov07_0221BFC0(void *sys);
extern void ov07_02231A20(int a, int b, s16 *pos);
extern int ov07_0221C4A8(void *sys, int idx);
extern void *SpriteSystem_NewSprite(void *a, void *b, void *tmpl);
extern void ManagedSprite_SetPositionXY(void *sprite, s16 x, s16 y);
extern void ManagedSprite_SetAffineOverwriteMode(void *sprite, u8 mode);
extern void ManagedSprite_OffsetPositionXY(void *sprite, s16 dx, s16 dy);
extern void ManagedSprite_SetOamMode(void *sprite, int mode);
extern void ov07_0221C3F4(void *sys, void *fn, void *ctx, u32 prio);
extern void ov07_02227300(void *task, void *ctx);

void ov07_022274F8(void *sys, void *a, void *b, void *c) {
    u8 tmpl[0x34];
    s16 pos[2];
    int i;
    UnkStruct_ov07_022274F8 *ctx = Heap_Alloc(ov07_0221BFD0(sys), 0x44);
    if (ctx == NULL) {
        GF_AssertFail();
    }
    ctx->timer = 0;
    ctx->state = 0;
    ctx->unk0C = a;
    ctx->unk10 = b;
    ctx->sys = sys;
    ov07_0221F9E8(tmpl, sys);
    ov07_02231E08(ctx->sys, -1, -1);
    ctx->evb = 15;
    ctx->eva = 0;
    *(vu16 *)0x04000052 = (u16)(ctx->evb | (ctx->eva << 8));
    ctx->sprites[0] = c;
    if (ov07_0223192C(sys, ov07_0221C470(sys)) == 3) {
        ov07_02231A20(0, ov07_0221BFC0(sys), pos);
    } else {
        ov07_02231A20(1, ov07_0221BFC0(sys), pos);
    }
    for (i = 1; i < ov07_0221C4A8(ctx->sys, 0); i++) {
        ctx->sprites[i] = SpriteSystem_NewSprite(ctx->unk0C, ctx->unk10, tmpl);
        ManagedSprite_SetPositionXY(ctx->sprites[i], pos[0], pos[1]);
    }
    ManagedSprite_SetPositionXY(ctx->sprites[0], pos[0], pos[1]);
    for (i = 0; i < ov07_0221C4A8(ctx->sys, 0); i++) {
        ctx->counter[i] = 0;
        ManagedSprite_SetAffineOverwriteMode(ctx->sprites[i], 2);
        ManagedSprite_OffsetPositionXY(ctx->sprites[i], 0, (s16)(0x20 - i * 4));
        ManagedSprite_SetOamMode(ctx->sprites[i], 1);
    }
    ov07_0221C3F4(sys, ov07_02227300, ctx, 0x1000);
}
