#include "global.h"

typedef struct UnkStruct_ov07_02226F80 {
    u8 unk00[4];
    void *unk04;
    u8 unk08[0x14];
    void *sprite;     // 0x1C
    int unk20;
    int unk24;
    int bg;           // 0x28
    int priority;     // 0x2C
    int unk30;
    int unk34;
    int unk38;
    u8 unk3C[4];
} UnkStruct_ov07_02226F80;

extern void *ov07_022324D8(void *sys, u32 size);
extern void ov07_02231FE4(void *sys, void *ctx);
extern int ov07_0221C4A8(void *sys, int idx);
extern void *ov07_0221C4E8(void *a, int b);
extern int ov07_0221FB04(void *sys, int bg);
extern void ManagedSprite_SetPriority(void *sprite, int prio);
extern void ManagedSprite_SetDrawPriority(void *sprite, int prio);
extern int ov07_0221FAB0(void *sys);
extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);
extern void Heap_Free(void *p);
extern int ov07_0221C468(void *sys);
extern int ov07_0221C470(void *sys);
extern int ov07_02231924(void *sys, int battler);
extern void ov07_0221C410(void *a, void *fn, void *ctx);
extern void ov07_02226F04(void);

void ov07_02226F80(void *sys) {
    UnkStruct_ov07_02226F80 *ctx = ov07_022324D8(sys, 0x40);
    int role, attacker, defender;
    ov07_02231FE4(sys, ctx);
    ctx->unk20 = ov07_0221C4A8(sys, 0);
    ctx->unk24 = ov07_0221C4A8(sys, 1);
    ctx->bg = ov07_0221C4A8(sys, 2);
    ctx->priority = ov07_0221C4A8(sys, 3);
    ctx->unk30 = ov07_0221C4A8(sys, 5);
    ctx->unk34 = ov07_0221C4A8(sys, 6);
    ctx->sprite = ov07_0221C4E8(ctx->unk04, ctx->unk20);
    ctx->unk38 = 0;
    if (ctx->bg != 0xFF) {
        ManagedSprite_SetPriority(ctx->sprite, ov07_0221FB04(sys, ctx->bg));
    }
    if (ctx->priority != 0xFF) {
        ManagedSprite_SetDrawPriority(ctx->sprite, ctx->priority);
    }
    if (ov07_0221FAB0(sys) != 1) {
        if (ov07_0221C4A8(sys, 4) == 2 || ov07_0221C4A8(sys, 4) == 3) {
            ManagedSprite_SetDrawFlag(ctx->sprite, 0);
            Heap_Free(ctx);
            return;
        }
    }
    role = ov07_0221C4A8(sys, 4);
    attacker = ov07_0221C468(sys);
    defender = ov07_0221C470(sys);
    if (ctx->priority != 0xFF) {
        int t;
        attacker = ov07_02231924(sys, attacker);
        defender = ov07_02231924(sys, defender);
        switch (role) {
        case 0:
            t = attacker;
            break;
        case 1:
            t = defender;
            break;
        case 2:
            t = attacker;
            break;
        case 3:
            t = defender;
            break;
        default:
            goto end;
        }
        if (role == 0 || role == 1) {
            switch (t) {
            case 2: ManagedSprite_SetDrawPriority(ctx->sprite, 0x14); break;
            case 3: ManagedSprite_SetDrawPriority(ctx->sprite, 10); break;
            case 4: ManagedSprite_SetDrawPriority(ctx->sprite, 10); break;
            case 5: ManagedSprite_SetDrawPriority(ctx->sprite, 0x14); break;
            }
        } else {
            switch (t) {
            case 2: ManagedSprite_SetDrawPriority(ctx->sprite, 10); break;
            case 3: ManagedSprite_SetDrawPriority(ctx->sprite, 0x14); break;
            case 4: ManagedSprite_SetDrawPriority(ctx->sprite, 0x14); break;
            case 5: ManagedSprite_SetDrawPriority(ctx->sprite, 10); break;
            }
        }
    }
end:
    ov07_0221C410(ctx->unk04, ov07_02226F04, ctx);
}
