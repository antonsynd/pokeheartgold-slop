#include "global.h"

#include "pokeathlon/pokeathlon.h"

typedef struct Ov96Runner {
    u8 filler_00[8];
    VecFx32 pos;
    VecFx32 velocity;
    VecFx32 dir;
    u8 filler_2C[0xC];
    u8 type;
    u8 state;
    u8 timer;
    u8 holder;
    u8 unk3C;
    u8 unk3D;
    u8 unk3E;
    u8 unk3F;
    u8 speed;
    u8 unk41;
    u8 filler_42[0xA];
} Ov96Runner;

typedef struct Ov96Member {
    u8 filler_00[0x5E];
    u16 points;
    u8 filler_60[0x11];
    u8 stamina;
    u8 filler_72[6];
    int state;
} Ov96Member;

typedef struct Ov96Team {
    Ov96Member members[3];
} Ov96Team;

typedef struct Ov96Goal {
    VecFx32 min;
    VecFx32 max;
} Ov96Goal;

typedef struct Ov96_022130EC {
    u8 filler_000[0x5C];
    Ov96Team teams[4];
    Ov96Runner balls[2];
    u8 filler_6C4[0x30];
    int scores[4];
} Ov96_022130EC;

typedef struct Ov96GoalRect {
    s32 min[2];
    s32 max[2];
} Ov96GoalRect;

extern const VecFx32 ov96_0221D268;
extern const VecFx32 ov96_0221D280;
extern const Ov96GoalRect ov96_0221D474[];

int ov96_022143DC(Ov96Runner *ball);
BOOL sub_02020E80(const s32 *min, const s32 *max, const s32 *point);
void ov96_021E8228(void *a0, u8 a1, u8 a2, int a3, int a4);

void ov96_02212F94(Ov96Runner *a, Ov96Runner *b, u8 flip) {
    VecFx32 zero = { 0, 0, 0 };

    if (a->speed <= 3) {
        if (b->speed > 3) {
            a->state = b->state;
            a->unk3C = b->unk3C;
            a->unk3D = b->unk3D;
            a->unk3E = b->unk3E;
            a->speed = b->speed;
            a->unk41 = b->unk41;
        } else {
            a->state = 0;
            a->unk3C = 0;
            a->unk3D = 30;
            a->unk3E = 1;
            a->speed = 3;
            a->unk41 = 0;
        }
    } else {
        a->state = 0;
        a->unk3C = 0;
        a->unk3D = 30;
        a->unk3E = 1;
        a->speed = 3;
        a->unk41 = 0;
    }

    VEC_Subtract(&a->pos, &b->pos, &a->dir);
    if (VEC_Mag(&a->dir) == 0) {
        VecFx32 left = ov96_0221D268;
        VecFx32 right = ov96_0221D280;

        if (flip == FALSE) {
            a->dir = left;
        } else {
            a->dir = right;
        }
    }
    VEC_Normalize(&a->dir, &a->dir);
    VEC_MultAdd(a->speed << FX32_SHIFT, &a->dir, &zero, &a->velocity);
    if (b->holder < 12) {
        a->holder = b->holder;
    }
}

void ov96_022130EC(PokeathlonCourseData *data) {
    Ov96Team *teams;
    int i;
    Ov96_022130EC *work;
    Ov96Runner *ball;

    work = PokeathlonCourse_GetHeapAllocPtr4(data);
    i = 0;
    ball = work->balls;
    teams = work->teams;
    for (; i < 2; i++, ball++) {
        s32 point[2];
        int zone;
        u8 holder;
        int team;
        int member;
        Ov96Member *m;

        if (ball->type == 0 || (ball->state != 0 && ball->state != 2)) {
            continue;
        }
        point[0] = ball->pos.x / FX32_ONE;
        point[1] = ball->pos.y / FX32_ONE;
        zone = ov96_022143DC(ball);
        if (!(u8)sub_02020E80(ov96_0221D474[zone].min, ov96_0221D474[zone].max, point)) {
            continue;
        }
        ball->state = 1;
        ball->timer = 10;
        holder = ball->holder;
        if (holder == 12) {
            continue;
        }
        team = holder / 3;
        member = holder % 3;
        m = &teams[team].members[member];
        if (zone == team) {
            if (m->points != 0) {
                m->points--;
            }
            if (work->scores[ball->holder / 3] != 0) {
                work->scores[ball->holder / 3]--;
            }
            ov96_021E8228(data, ball->holder / 3, ball->holder % 3, 8, 1);
            ov96_021E8228(data, ball->holder / 3, ball->holder % 3, 1, 1);
        } else {
            int points = 0;

            if (ball->type == 1) {
                points = 1;
            } else if (ball->type == 2) {
                points = 2;
            } else {
                GF_ASSERT(FALSE);
            }
            if (m->points + points <= 99) {
                m->points += points;
            }
            if (work->scores[ball->holder / 3] + points <= 99) {
                work->scores[ball->holder / 3] += points;
            }
            if (work->scores[zone] != 0) {
                work->scores[zone]--;
            }
            ov96_021E8228(data, ball->holder / 3, ball->holder % 3, 3, 1);
        }
    }
}

void ov96_022132FC(PokeathlonCourseData *data) {
    Ov96_022130EC *work = PokeathlonCourse_GetHeapAllocPtr4(data);
    u8 i;

    for (i = 0; i < 12; i++) {
        Ov96Member *member = &work->teams[i / 3].members[i % 3];

        if (member->state != 2) {
            if (member->stamina < 30) {
                member->state = 3;
            } else if (member->state != 1) {
                member->state = 0;
            }
        }
    }
}
