#include "global.h"

typedef struct Ov96Pos16 {
    s16 x;
    s16 y;
} Ov96Pos16;

typedef struct Ov96Info {
    u8 filler_00[0x18];
    u8 kind;
} Ov96Info;

typedef struct Ov96Entry {
    void *obj;
    Ov96Info *info;
} Ov96Entry;

typedef struct Ov96Mover {
    void *data;
    Ov96Entry *entry;
    void *player;
    void *unk0C;
    int unk10;
    int state;
    int kind;
    Ov96Pos16 target;
    VecFx32 prevPos;
    VecFx32 pos;
    VecFx32 dir;
    VecFx32 velocity;
    fx32 height;
    int unk54;
    s8 cooldown;
    s8 recoverTimer;
    s8 jumpTimer;
    s8 waitTimer;
    s8 unk5C;
    s8 stun;
    s8 idleTimer;
    u8 unk5F;
    u32 unk60_0 : 27;
    u32 thrown : 1;
    u32 locked : 1;
    u32 flung : 1;
    u32 dragged : 1;
    u32 unk60_31 : 1;
} Ov96Mover;

extern const s16 ov96_0221D7D0[][10];
extern const u8 ov96_0221D69C[];

void ov96_022187A8(Ov96Mover *mover, void *data);
BOOL ov96_02218934(Ov96Mover *mover);
void ov96_02218578(Ov96Mover *mover, int state);
void ov96_02218A50(Ov96Mover *mover);
void ov96_02218AF0(Ov96Mover *mover);
void ov96_02218DF8(Ov96Mover *mover, Ov96Pos16 *target);
void ov96_02218EB8(Ov96Mover *mover);
void ov96_02218F18(Ov96Mover *mover);
void ov96_02218F58(Ov96Mover *mover);
void ov96_02218FD4(Ov96Mover *mover);
void ov96_02219030(Ov96Mover *mover);

void ov96_02218B1C(Ov96Mover *mover, void *data) {
    if (mover->stun > 0) {
        mover->stun--;
        if (mover->stun > 0) {
            return;
        }
    }

    switch (mover->state) {
    case 6:
        ov96_02218F18(mover);
        break;
    default:
        ov96_022187A8(mover, data);
        break;
    case 5:
    case 7:
    case 8:
    case 10:
    case 11:
    case 12:
        break;
    }

    switch (mover->state) {
    case 4:
        GF_ASSERT(!mover->thrown);
        if (ov96_02218934(mover)) {
            ov96_02219030(mover);
        } else if (mover->flung) {
            ov96_02218F58(mover);
        } else if (mover->dragged) {
            ov96_02218DF8(mover, &mover->target);
        } else {
            mover->idleTimer--;
            if (mover->idleTimer <= 0) {
                ov96_02218578(mover, 1);
            }
        }
        break;
    case 3:
        mover->waitTimer--;
        if (mover->waitTimer <= 0) {
            ov96_02218A50(mover);
            ov96_02218578(mover, 4);
        }
        break;
    case 2:
        if (ov96_02218934(mover)) {
            ov96_02219030(mover);
        } else {
            mover->cooldown--;
            if (mover->cooldown <= 0) {
                ov96_02218578(mover, 1);
            }
        }
        break;
    case 1:
        if (ov96_02218934(mover)) {
            ov96_02219030(mover);
        } else if (!mover->thrown) {
            if (mover->flung) {
                ov96_02218F58(mover);
            } else if (mover->dragged) {
                ov96_02218DF8(mover, &mover->target);
            }
        }
        break;
    case 8:
        mover->jumpTimer--;
        if (mover->jumpTimer <= 0) {
            mover->jumpTimer = 0;
            ov96_02218578(mover, 9);
        }
        break;
    case 9:
        mover->height = ov96_0221D7D0[mover->entry->info->kind][mover->jumpTimer] << FX32_SHIFT;
        mover->jumpTimer++;
        if (mover->jumpTimer >= 10) {
            mover->jumpTimer = 10;
            ov96_02218578(mover, 10);
        }
        break;
    case 10:
        mover->jumpTimer--;
        if (mover->jumpTimer <= 0) {
            mover->jumpTimer = 0;
            ov96_02218578(mover, 11);
        }
        break;
    case 11:
        if (mover->height == 0) {
            ov96_02218FD4(mover);
            if (ov96_02218934(mover)) {
                ov96_02219030(mover);
            }
        } else {
            mover->height -= ov96_0221D69C[mover->entry->info->kind] << FX32_SHIFT;
            if (mover->height <= 0) {
                mover->height = 0;
            }
        }
        break;
    case 12:
        mover->jumpTimer--;
        if (mover->jumpTimer <= 0) {
            ov96_02218578(mover, 1);
        }
        break;
    case 5:
        mover->recoverTimer--;
        if (mover->recoverTimer <= 0) {
            mover->recoverTimer = 6;
            ov96_02218578(mover, 6);
        }
        break;
    case 6:
        mover->recoverTimer--;
        if (mover->recoverTimer <= 0) {
            mover->prevPos = mover->pos;
            {
                VecFx32 zero = { 0, 0, 0 };

                mover->velocity = zero;
            }
            ov96_02218578(mover, 7);
        }
        break;
    case 7:
        mover->recoverTimer--;
        if (mover->recoverTimer <= 0) {
            ov96_02218EB8(mover);
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    ov96_02218AF0(mover);
}
