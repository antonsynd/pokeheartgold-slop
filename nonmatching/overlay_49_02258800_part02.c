#include "global.h"

#include "math_util.h"
#include "overlay_42.h"

typedef struct UnkOv49Entity UnkOv49Entity;
typedef struct UnkOv49Ctx UnkOv49Ctx;

typedef void (*UnkOv49EntityFunc)(UnkOv49Entity *entity, UnkOv49Ctx *ctx);

struct UnkOv49Entity {
    UnkStruct_ov42_02228110 *unk0;
    void *unk4;
    u16 unk8;
    u8 unkA;
    u8 unkB;
    u8 unkC[0x18];
    UnkOv49EntityFunc unk24;
};

struct UnkOv49Ctx {
    UnkStruct_ov42_022280A8 *unk0;
    void *unk4;
    UnkOv49Entity *unk8;
    u16 unkC;
    u8 unkE[2];
    void *unk10;
    void *unk14;
    u8 unk18[8];
    UnkOv49Entity *unk20;
    UnkOv49Entity *unk24;
};

typedef struct UnkOv49SpawnEntry {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u8 unk4;
    u8 unk5[3];
} UnkOv49SpawnEntry;

typedef struct UnkOv49Move {
    s16 unk0;
    u8 unk2;
    u8 unk3;
} UnkOv49Move;

extern void ov49_0225940C(UnkOv49Entity *entity, UnkOv49Ctx *ctx);
extern void ov49_02259410(UnkOv49Entity *entity, UnkOv49Ctx *ctx);
extern void ov49_022594D8(UnkOv49Entity *entity, UnkOv49Ctx *ctx);
extern void ov49_022595CC(UnkOv49Entity *entity, UnkOv49Ctx *ctx);
extern void ov49_0225967C(UnkOv49Entity *entity, UnkOv49Ctx *ctx);
extern void ov49_0225974C(UnkOv49Entity *entity, UnkOv49Ctx *ctx);
extern void ov49_02259758(UnkOv49Entity *entity, UnkOv49Ctx *ctx);
extern void ov49_02259734(UnkOv49Entity *entity, UnkOv49Ctx *ctx);
extern void ov49_02259740(UnkOv49Entity *entity, UnkOv49Ctx *ctx);
extern void ov49_0225991C(UnkOv49Entity *entity, UnkOv49Ctx *ctx);
extern void ov49_022599F8(UnkOv49Entity *entity, UnkOv49Ctx *ctx);

extern BOOL ov49_022589AC(void *map, u16 x, u16 y);
extern u32 ov49_022589C4(void *map, u16 x, u16 y);
extern BOOL ov49_022589D8(void *map, u32 id, u16 *x, u16 *y, u16 index);
extern UnkOv49Entity *ov49_02258D70(UnkOv49Ctx *ctx, s32 id);
extern void ov49_02258C1C(UnkOv49Ctx *ctx, const UnkOv49Move *move);
extern UnkOv49Entity *ov49_022593C0(UnkOv49Ctx *ctx);

extern BOOL ov45_022308B8(void *obj);
extern void ov45_0223089C(void *obj, BOOL flag);
extern void ov45_022308C0(void *obj, const UnkStruct_ov44_02232914 *pos);
extern void ov45_022308E4(void *obj, const VecFx32 *vec);
extern void ov45_02230908(void *obj, VecFx32 *vec);
extern void ov45_02230920(void *obj, int value);
extern void ov45_0223093C(void *obj, int value);
extern void ov45_02230968(void *obj);
extern void ov45_022308B0(void *obj, u32 value);
extern void ov45_02230978(void *obj, BOOL flag);
extern BOOL ov45_02230994(void *obj);
extern void *ov45_0223070C(void *manager, UnkStruct_ov42_02228110 *obj);

static const u8 ov49_02269654[4] = { 3, 2, 1, 0 };

static const UnkOv49SpawnEntry ov49_02269678[4] = {
    { 0x40, 0x02, 0x011E, 0xFF, { 0, 0, 0 } },
    { 0x41, 0x01, 0x011E, 0xFF, { 0, 0, 0 } },
    { 0x42, 0x01, 0x011D, 0xFF, { 0, 0, 0 } },
    { 0x61, 0x01, 0x011D, 0xFE, { 0, 0, 0 } },
};

static const UnkOv49EntityFunc ov49_02269698[10] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ov49_022599F8,
};

static const UnkOv49EntityFunc ov49_022696C0[10] = {
    ov49_0225940C,
    ov49_02259410,
    ov49_022594D8,
    ov49_022595CC,
    ov49_0225967C,
    ov49_0225974C,
    ov49_02259758,
    ov49_02259734,
    ov49_02259740,
    ov49_0225991C,
};

UnkOv49Entity *ov49_02258DAC(UnkOv49Ctx *ctx);
UnkOv49Entity *ov49_02258DB0(UnkOv49Ctx *ctx);
void ov49_02258DB4(UnkOv49Entity *entity, UnkStruct_ov44_02232914 pos);
void ov49_02258E04(UnkOv49Entity *entity, UnkStruct_ov44_02232914 pos, int param);
UnkStruct_ov44_02232914 ov49_02258E34(const UnkOv49Entity *entity);
s32 ov49_02258E60(const UnkOv49Entity *entity, int index);
void ov49_02258E7C(UnkOv49Ctx *ctx, UnkOv49Entity *entity, int a2, int a3);
void ov49_02258EAC(UnkOv49Ctx *ctx, UnkOv49Entity *entity, int a2, int a3);
void ov49_02258EEC(UnkOv49Ctx *ctx, UnkOv49Entity *entity, int kind);
BOOL ov49_02258F38(const UnkOv49Entity *entity);
int ov49_02258F3C(const UnkOv49Entity *entity);
UnkOv49Entity *ov49_02258F40(UnkOv49Ctx *ctx, const UnkOv49Entity *entity);
BOOL ov49_02258F70(const UnkOv49Entity *entity);
const UnkOv49Entity *ov49_02258F7C(const UnkOv49Ctx *ctx, u16 x, u16 y);
BOOL ov49_02258FDC(const UnkOv49Entity *entity, u16 x, u16 y);
BOOL ov49_0225904C(UnkOv49Ctx *ctx, const UnkOv49Entity *entity, u32 *direction, UnkStruct_ov44_02232914 *pos);
void ov49_02259130(UnkOv49Entity *entity, BOOL flag);
void ov49_0225913C(UnkOv49Entity *entity, const UnkStruct_ov44_02232914 *pos);
void ov49_02259148(UnkOv49Entity *entity, const VecFx32 *vec);
void ov49_02259154(const UnkOv49Entity *entity, VecFx32 *vec);
void ov49_02259160(UnkOv49Entity *entity, int value);
void ov49_0225916C(UnkOv49Entity *entity, BOOL flag);
void ov49_02259184(UnkOv49Entity *entity, BOOL flag);
void ov49_0225919C(UnkOv49Entity *entity, BOOL flag);
void ov49_022591B4(UnkOv49Entity *entity, u32 value);
void ov49_022591C0(UnkOv49Entity *entity, BOOL flag);
BOOL ov49_022591CC(const UnkOv49Entity *entity);
void ov49_022591D8(UnkOv49Ctx *ctx);
void ov49_0225927C(UnkOv49Ctx *ctx, s32 a1, s32 a2, s32 a3);
u8 ov49_02259294(const u8 *table, u32 count);

UnkOv49Entity *ov49_02258DAC(UnkOv49Ctx *ctx) {
    return ctx->unk20;
}

UnkOv49Entity *ov49_02258DB0(UnkOv49Ctx *ctx) {
    return ctx->unk24;
}

void ov49_02258DB4(UnkOv49Entity *entity, UnkStruct_ov44_02232914 pos) {
    GF_ASSERT(entity->unk0);
    ov42_0222839C(entity->unk0, pos);
    ov42_022283AC(entity->unk0, pos);
    ov42_022281F8(entity->unk0, 5, 0);
}

void ov49_02258E04(UnkOv49Entity *entity, UnkStruct_ov44_02232914 pos, int param) {
    ov49_02258DB4(entity, pos);
    ov42_022281F8(entity->unk0, 6, param);
}

UnkStruct_ov44_02232914 ov49_02258E34(const UnkOv49Entity *entity) {
    GF_ASSERT(entity->unk0);
    return ov42_022282F4(entity->unk0);
}

s32 ov49_02258E60(const UnkOv49Entity *entity, int index) {
    GF_ASSERT(entity->unk0);
    return ov42_02228188(entity->unk0, index);
}

void ov49_02258E7C(UnkOv49Ctx *ctx, UnkOv49Entity *entity, int a2, int a3) {
    s32 busy = ov42_02228188(entity->unk0, 5);
    GF_ASSERT(busy == 0);
    s32 param = ov42_02228188(entity->unk0, 4);
    ov49_0225927C(ctx, a2, a3, param);
}

void ov49_02258EAC(UnkOv49Ctx *ctx, UnkOv49Entity *entity, int a2, int a3) {
    UnkStruct_ov42_02228EB0 data;

    data.unk0 = ov42_022282DC(entity->unk0);
    data.unk4 = a2;
    data.unk6 = a3;
    data.unk7 = ov42_02228188(entity->unk0, 4);
    ov42_02228068(ctx->unk0, &data);
}

void ov49_02258EEC(UnkOv49Ctx *ctx, UnkOv49Entity *entity, int kind) {
    int i;

    GF_ASSERT(kind < 10);

    if (ov49_02269698[entity->unkB] != NULL) {
        ov49_02269698[entity->unkB](entity, ctx);
    }

    entity->unk8 = 0;
    entity->unkA = 0;
    entity->unkB = kind;
    for (i = 0; i < 0x18; i++) {
        entity->unkC[i] = 0;
    }
    entity->unk24 = ov49_022696C0[kind];
}

BOOL ov49_02258F38(const UnkOv49Entity *entity) {
    return entity->unkA;
}

int ov49_02258F3C(const UnkOv49Entity *entity) {
    return entity->unkB;
}

UnkOv49Entity *ov49_02258F40(UnkOv49Ctx *ctx, const UnkOv49Entity *entity) {
    UnkStruct_ov42_02228110 *found;
    s32 direction;
    s32 id;

    direction = ov42_02228188(entity->unk0, 6);
    found = ov42_022283BC(entity->unk0, ctx->unk0, direction);
    if (found == NULL) {
        return NULL;
    }
    id = ov42_02228188(found, 4);
    return ov49_02258D70(ctx, id);
}

BOOL ov49_02258F70(const UnkOv49Entity *entity) {
    return ov45_022308B8(entity->unk4);
}

const UnkOv49Entity *ov49_02258F7C(const UnkOv49Ctx *ctx, u16 x, u16 y) {
    UnkStruct_ov42_02228110 *found;
    int i;
    UnkStruct_ov44_02232914 pos;

    pos.unk0 = x * 16;
    pos.unk2 = y * 16;
    found = ov42_022284A4(ctx->unk0, pos);
    if (found == NULL) {
        return NULL;
    }
    for (i = 0; i < ctx->unkC; i++) {
        if (ctx->unk8[i].unk0 == found) {
            return &ctx->unk8[i];
        }
    }
    GF_AssertFail();
    return NULL;
}

BOOL ov49_02258FDC(const UnkOv49Entity *entity, u16 x, u16 y) {
    UnkStruct_ov44_02232914 cur;
    UnkStruct_ov44_02232914 dest;

    cur = ov42_022282DC(entity->unk0);
    dest = ov42_022282E8(entity->unk0);

    if (cur.unk0 == x * 16 && cur.unk2 == y * 16) {
        return TRUE;
    }
    if (dest.unk0 == x * 16 && dest.unk2 == y * 16) {
        return TRUE;
    }
    return FALSE;
}

BOOL ov49_0225904C(UnkOv49Ctx *ctx, const UnkOv49Entity *entity, u32 *direction, UnkStruct_ov44_02232914 *pos) {
    int i;
    UnkStruct_ov44_02232914 cur;
    UnkStruct_ov44_02232914 next;
    BOOL blocked;
    u32 attr;
    UnkStruct_ov42_02228110 *other;

    cur = ov42_022282DC(entity->unk0);
    for (i = 0; i < 4; i++) {
        next = ov42_02228270(cur, ov49_02269654[i]);
        blocked = ov49_022589AC(ctx->unk14, next.unk0 / 16, next.unk2 / 16);
        if (blocked == TRUE) {
            continue;
        }
        attr = ov49_022589C4(ctx->unk14, next.unk0 / 16, next.unk2 / 16);
        if (attr != 0 && attr != 42) {
            continue;
        }
        other = ov42_022284A4(ctx->unk0, next);
        if (other != NULL) {
            continue;
        }
        *direction = ov49_02269654[i];
        *pos = next;
        return TRUE;
    }
    return FALSE;
}

void ov49_02259130(UnkOv49Entity *entity, BOOL flag) {
    ov45_0223089C(entity->unk4, flag);
}

void ov49_0225913C(UnkOv49Entity *entity, const UnkStruct_ov44_02232914 *pos) {
    ov45_022308C0(entity->unk4, pos);
}

void ov49_02259148(UnkOv49Entity *entity, const VecFx32 *vec) {
    ov45_022308E4(entity->unk4, vec);
}

void ov49_02259154(const UnkOv49Entity *entity, VecFx32 *vec) {
    ov45_02230908(entity->unk4, vec);
}

void ov49_02259160(UnkOv49Entity *entity, int value) {
    ov45_02230920(entity->unk4, value);
}

void ov49_0225916C(UnkOv49Entity *entity, BOOL flag) {
    if (flag) {
        ov45_0223093C(entity->unk4, 1);
    } else {
        ov45_02230968(entity->unk4);
    }
}

void ov49_02259184(UnkOv49Entity *entity, BOOL flag) {
    if (flag) {
        ov45_0223093C(entity->unk4, 0);
    } else {
        ov45_02230968(entity->unk4);
    }
}

void ov49_0225919C(UnkOv49Entity *entity, BOOL flag) {
    if (flag) {
        ov45_0223093C(entity->unk4, 2);
    } else {
        ov45_02230968(entity->unk4);
    }
}

void ov49_022591B4(UnkOv49Entity *entity, u32 value) {
    ov45_022308B0(entity->unk4, value);
}

void ov49_022591C0(UnkOv49Entity *entity, BOOL flag) {
    ov45_02230978(entity->unk4, flag);
}

BOOL ov49_022591CC(const UnkOv49Entity *entity) {
    return ov45_02230994(entity->unk4);
}

void ov49_022591D8(UnkOv49Ctx *ctx) {
    int i;
    UnkOv49Entity *entity;
    u16 x, y;
    u16 index;
    UnkStruct_ov42_02122667 spawn;

    for (i = 0; i < 4; i++) {
        index = 0;
        while (ov49_022589D8(ctx->unk14, ov49_02269678[i].unk0, &x, &y, index) == TRUE) {
            entity = ov49_022593C0(ctx);

            spawn.unk0 = x * 16;
            spawn.unk2 = y * 16;
            spawn.unk4 = ov49_02269678[i].unk4;
            spawn.unk6 = 0;
            spawn.unk8 = ov49_02269678[i].unk1;
            spawn.unkA = ov49_02269678[i].unk2;
            entity->unk0 = ov42_022280B8(ctx->unk0, &spawn);
            entity->unk4 = ov45_0223070C(ctx->unk4, entity->unk0);
            ov49_02258EEC(ctx, entity, 0);

            if (ov49_02269678[i].unk0 == 0x61) {
                ctx->unk24 = entity;
            }
            index++;
        }
    }
}

void ov49_0225927C(UnkOv49Ctx *ctx, s32 a1, s32 a2, s32 a3) {
    UnkOv49Move move;

    move.unk0 = a1;
    move.unk2 = a2;
    move.unk3 = a3;
    ov49_02258C1C(ctx, &move);
}

u8 ov49_02259294(const u8 *table, u32 count) {
    int index = MTRandom() % count;
    return table[index];
}
