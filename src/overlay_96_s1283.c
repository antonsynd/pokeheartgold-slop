#include "global.h"

#include "pokeathlon/pokeathlon.h"

#include "math_util.h"

typedef struct Ov96Mover {
    u8 filler_00[0x2C];
    VecFx32 pos;
    u8 filler_38[0x25];
    s8 stun;
    u8 filler_5E[2];
    u32 unk60_0 : 27;
    u32 thrown : 1;
    u32 unk60_28 : 4;
    u8 filler_64[0x38];
} Ov96Mover;

typedef struct Ov96Player {
    u8 filler_00[0xC];
    Ov96Mover mover;
} Ov96Player;

typedef struct Ov96_02217E7C {
    u8 filler_000[0x188];
    u8 collided[4][4];
    Ov96Player players[4];
} Ov96_02217E7C;

BOOL ov96_02218744(Ov96Mover *mover);
BOOL ov96_02218598(Ov96Mover *a, Ov96Mover *b);
BOOL ov96_022178A0(Ov96Mover *a, Ov96Mover *b, VecFx32 *dir);
int ov96_02217E08(Ov96Mover *mover);
void ov96_02217DC8(Ov96Mover *mover, int a1);

void ov96_02217E7C(PokeathlonCourseData *data) {
    int i;
    Ov96_02217E7C *work;
    u8(*collided)[4];
    int j;

    work = PokeathlonCourse_GetHeapAllocPtr4(data);
    collided = work->collided;

    for (i = 0; i < 4; i++) {
        Ov96Mover *mover = &work->players[i].mover;

        if (!ov96_02218744(mover) || mover->stun > 0) {
            continue;
        }
        for (j = i + 1; j < 4; j++) {
            Ov96Mover *other = &work->players[j].mover;

            if (ov96_02218744(other) && ov96_02218598(mover, other)) {
                VecFx32 dir = { 0, 0, 0 };

                if (collided[i][j] != 0 && !mover->thrown) {
                    collided[i][j] = collided[j][i] = 0;
                }
                if (collided[i][j] == 0) {
                    BOOL hitA;
                    BOOL hitB;
                    int a;
                    int b;

                    VEC_Subtract(&mover->pos, &other->pos, &dir);
                    if (dir.x == 0 && dir.y == 0) {
                        dir.x = (MTRandom() & 63) - 32;
                        dir.y = (MTRandom() & 63) - 32;
                    }
                    VEC_Normalize(&dir, &dir);
                    hitA = ov96_022178A0(mover, other, &dir);
                    dir.x *= -1;
                    dir.y *= -1;
                    hitB = ov96_022178A0(other, mover, &dir);
                    a = ov96_02217E08(mover);
                    b = ov96_02217E08(other);
                    ov96_02217DC8(mover, a);
                    ov96_02217DC8(other, b);
                    if (hitA || hitB) {
                        collided[i][j] = collided[j][i] = 1;
                    }
                }
            }
        }
    }
}
