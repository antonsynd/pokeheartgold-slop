#include "global.h"

#include "overlay_42.h"
#include "system.h"

typedef struct UnkStruct_Ov49_02258800_Ctx {
    u8 filler0[0x14];
    void *unk14;
} UnkStruct_Ov49_02258800_Ctx;

typedef struct UnkStruct_Ov49_02258800_Entity {
    UnkStruct_ov42_02228110 *unk0;
    u8 filler4[4];
    u16 state;
    u8 filler0A[2];
    s16 unkC;
    s16 unkE;
} UnkStruct_Ov49_02258800_Entity;

typedef struct UnkStruct_Ov49_02258800_Tween {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    u32 unkC;
} UnkStruct_Ov49_02258800_Tween;

typedef struct UnkStruct_Ov49_02258800_PoolEntry {
    u32 unk0;
    u8 filler4[0x24];
} UnkStruct_Ov49_02258800_PoolEntry;

typedef struct UnkStruct_Ov49_02258800_Pool {
    u8 filler0[8];
    UnkStruct_Ov49_02258800_PoolEntry *entries;
    u16 count;
} UnkStruct_Ov49_02258800_Pool;

extern const u8 ov49_02269658[];
extern const u8 ov49_0226965C[];

extern s32 ov42_02228188(UnkStruct_ov42_02228110 *obj, s32 index);
extern UnkStruct_ov44_02232914 ov42_02228270(UnkStruct_ov44_02232914 pos, s32 direction);
extern UnkStruct_ov44_02232914 ov42_022282DC(UnkStruct_ov42_02228110 *obj);
extern u32 ov49_022589B8(void *a0, u16 x, u16 y);
extern void ov49_02258E7C(UnkStruct_Ov49_02258800_Ctx *ctx, UnkStruct_Ov49_02258800_Entity *entity, int a2, int a3);
extern void ov49_0225927C(UnkStruct_Ov49_02258800_Ctx *ctx, int a1, int a2, int a3);
extern u8 ov49_02259294(const u8 *table, u32 count);

BOOL ov49_022592A8(UnkStruct_Ov49_02258800_Ctx *ctx, UnkStruct_Ov49_02258800_Entity *entity, int direction, int expected);
void ov49_02259320(UnkStruct_Ov49_02258800_Tween *tween, s32 start, s32 end, u32 duration);
BOOL ov49_0225932C(UnkStruct_Ov49_02258800_Tween *tween, u32 frame);
s32 ov49_022593BC(UnkStruct_Ov49_02258800_Tween *tween);
UnkStruct_Ov49_02258800_PoolEntry *ov49_022593C0(UnkStruct_Ov49_02258800_Pool *pool);
BOOL ov49_022593FC(UnkStruct_Ov49_02258800_PoolEntry *entry);
void ov49_0225940C(void);
void ov49_02259410(UnkStruct_Ov49_02258800_Entity *entity, UnkStruct_Ov49_02258800_Ctx *ctx);
void ov49_022594D8(UnkStruct_Ov49_02258800_Entity *entity, UnkStruct_Ov49_02258800_Ctx *ctx);

BOOL ov49_022592A8(UnkStruct_Ov49_02258800_Ctx *ctx, UnkStruct_Ov49_02258800_Entity *entity, int direction, int expected) {
    UnkStruct_ov44_02232914 pos = ov42_022282DC(entity->unk0);
    pos = ov42_02228270(pos, direction);
    if (ov49_022589B8(ctx->unk14, pos.unk0 / 16, pos.unk2 / 16) == expected) {
        return TRUE;
    }
    return FALSE;
}

void ov49_02259320(UnkStruct_Ov49_02258800_Tween *tween, s32 start, s32 end, u32 duration) {
    tween->unk0 = start;
    tween->unk4 = start;
    tween->unk8 = end - start;
    tween->unkC = duration;
}

BOOL ov49_0225932C(UnkStruct_Ov49_02258800_Tween *tween, u32 frame) {
    fx32 delta = tween->unk8;
    fx32 elapsed = FX_Mul(delta, FX32_CONST(frame));
    tween->unk0 = FX_Div(elapsed, FX32_CONST(tween->unkC)) + tween->unk4;
    if (frame < tween->unkC) {
        return FALSE;
    }
    return TRUE;
}

s32 ov49_022593BC(UnkStruct_Ov49_02258800_Tween *tween) {
    return tween->unk0;
}

UnkStruct_Ov49_02258800_PoolEntry *ov49_022593C0(UnkStruct_Ov49_02258800_Pool *pool) {
    int i;

    for (i = 0; i < pool->count; i++) {
        if (ov49_022593FC(&pool->entries[i])) {
            return &pool->entries[i];
        }
    }
    GF_AssertFail();
    return &pool->entries[i];
}

BOOL ov49_022593FC(UnkStruct_Ov49_02258800_PoolEntry *entry) {
    if (entry->unk0 == 0) {
        return TRUE;
    }
    return FALSE;
}

void ov49_0225940C(void) {
}

void ov49_02259410(UnkStruct_Ov49_02258800_Entity *entity, UnkStruct_Ov49_02258800_Ctx *ctx) {
    int direction = ov42_02228188(entity->unk0, 6);
    int param = ov42_02228188(entity->unk0, 4);
    int speed;
    int keys;

    if (ov42_02228188(entity->unk0, 5) != 0) {
        return;
    }
    keys = gSystem.heldKeys;
    speed = 2;
    if (keys & PAD_BUTTON_B) {
        speed = 3;
    }
    if (keys & PAD_KEY_UP) {
        if (direction == 0) {
            ov49_0225927C(ctx, speed, direction, param);
        } else {
            ov49_0225927C(ctx, 1, 0, param);
        }
    } else if (keys & PAD_KEY_DOWN) {
        if (direction == 1) {
            ov49_0225927C(ctx, speed, direction, param);
        } else {
            ov49_0225927C(ctx, 1, 1, param);
        }
    } else if (keys & PAD_KEY_LEFT) {
        if (direction == 2) {
            ov49_0225927C(ctx, speed, direction, param);
        } else {
            ov49_0225927C(ctx, 1, 2, param);
        }
    } else if (keys & PAD_KEY_RIGHT) {
        if (direction == 3) {
            ov49_0225927C(ctx, speed, direction, param);
        } else {
            ov49_0225927C(ctx, 1, 3, param);
        }
    }
}

void ov49_022594D8(UnkStruct_Ov49_02258800_Entity *entity, UnkStruct_Ov49_02258800_Ctx *ctx) {
    int param;
    int direction;

    switch (entity->state) {
    case 0:
        entity->unkC = ov49_02259294(ov49_02269658, 4);
        entity->state++;
        break;
    case 1:
        entity->unkC--;
        if (entity->unkC == 0) {
            entity->state++;
        }
        break;
    case 2:
        param = ov42_02228188(entity->unk0, 4);
        direction = ov42_02228188(entity->unk0, 6);
        entity->unkE = ov49_02259294(ov49_0226965C, 4);
        if (ov49_022592A8(ctx, entity, entity->unkE, param + 4) == TRUE) {
            if (direction == entity->unkE) {
                ov49_02258E7C(ctx, entity, 2, entity->unkE);
                entity->state = 4;
            } else {
                ov49_02258E7C(ctx, entity, 1, entity->unkE);
                entity->state = 3;
            }
        } else {
            ov49_02258E7C(ctx, entity, 1, entity->unkE);
            entity->state = 4;
        }
        break;
    case 3:
        if (ov42_02228188(entity->unk0, 5) == 0) {
            ov49_02258E7C(ctx, entity, 2, entity->unkE);
            entity->state++;
        }
        break;
    case 4:
        if (ov42_02228188(entity->unk0, 5) == 0) {
            entity->state = 0;
        }
        break;
    }
}
