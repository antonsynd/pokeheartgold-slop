#include "global.h"

#include "pokeathlon/pokeathlon.h"

typedef struct Ov96Point16 {
    s16 x;
    s16 y;
} Ov96Point16;

typedef struct Ov96Input {
    u32 count : 14;
    u32 held : 1;
    u32 locked : 1;
    u32 prevCount : 13;
    u32 grabbed : 1;
    u32 unk0_30 : 2;
} Ov96Input;

typedef struct Ov96Mover {
    u8 filler_00[0x14];
    int state;
    u8 filler_18[4];
    Ov96Point16 target;
    u8 filler_20[0xC];
    VecFx32 pos;
    u8 filler_38[0x28];
    u32 unk60_0 : 24;
    u32 mode : 2;
    u32 active : 1;
    u32 unk60_27 : 1;
    u32 locked : 1;
    u32 flung : 1;
    u32 dragged : 1;
    u32 unk60_31 : 1;
    u8 filler_64[0x38];
} Ov96Mover;

typedef struct Ov96Player {
    Ov96Point16 pos;
    Ov96Point16 start;
    Ov96Input input;
    Ov96Mover mover;
} Ov96Player;

int ov96_022158D4(int x, int y);
BOOL ov96_022158EC(VecFx32 *a, VecFx32 *b, fx32 dist);
BOOL ov96_0221862C(Ov96Mover *mover);
void ov96_0221910C(Ov96Mover *mover);
int ov96_021E6104(void);
void ov96_022186B8(Ov96Mover *mover, Ov96Player *player);
void ov96_02218B1C(Ov96Mover *mover, PokeathlonCourseData *data);
void ov96_02217E7C(PokeathlonCourseData *data);
void ov96_02217FD0(Ov96Player *players, PokeathlonCourseData *data);

void ov96_022180CC(Ov96Player *players, PokeathlonCourseData *data) {
    int i;

    for (i = 0; i < 4; i++) {
        VecFx32 cur = { 0, 0, 0 };
        VecFx32 start = { 0, 0, 0 };
        Ov96Player *player = &players[i];
        Ov96Input *input = &player->input;
        Ov96Mover *mover = &player->mover;

        cur.x = FX32_CONST(player->pos.x);
        cur.y = FX32_CONST(player->pos.y);
        start.x = FX32_CONST(player->start.x);
        start.y = FX32_CONST(player->start.y);

        if (input->held) {
            if (ov96_022158D4(player->pos.x, player->pos.y)) {
                if (ov96_0221862C(mover)) {
                    ov96_0221910C(mover);
                }
            } else {
                fx32 dist = FX32_CONST(ov96_021E6104());

                if (!mover->active && mover->state != 3 && ov96_022158EC(&mover->pos, &cur, dist)) {
                    input->grabbed = TRUE;
                }
            }
        } else if (input->locked) {
            if (input->grabbed == TRUE) {
                s16 moverX = mover->pos.x >> FX32_SHIFT;
                s16 moverY = mover->pos.y >> FX32_SHIFT;

                if (mover->state == 3) {
                    input->grabbed = FALSE;
                } else if (MATH_ABS(player->pos.x - moverX) > 1 || MATH_ABS(player->pos.y - moverY) > 1) {
                    ov96_022186B8(mover, player);
                }
            }
        } else if (input->prevCount != 0) {
            if (input->grabbed == TRUE && (mover->state == 1 || mover->state == 4) && !mover->locked && !mover->active) {
                if (ov96_022158EC(&start, &cur, FX32_CONST(4))) {
                    if (input->prevCount <= 7) {
                        mover->dragged = FALSE;
                        mover->flung = TRUE;
                    }
                } else if (!ov96_022158EC(&start, &cur, FX32_CONST(12))) {
                    if (input->prevCount <= 7) {
                        mover->dragged = TRUE;
                        mover->flung = FALSE;
                        mover->target = player->pos;
                    }
                }
            }
            input->grabbed = FALSE;
        }

        ov96_02218B1C(&player->mover, data);
    }

    ov96_02217E7C(data);
    ov96_02217FD0(players, data);
}
