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
    u32 target : 2;
} Ov96Input;

typedef struct Ov96Mole {
    PokeathlonCourseData *data;
    void *obj;
    void *unk08;
    int state;
    fx32 homeX;
    fx32 homeY;
    u8 filler_18[4];
    fx32 x;
    fx32 y;
    u8 filler_24[0x1C];
    u32 unk40_0 : 8;
    u32 hitTimer : 8;
    u32 index : 4;
    u32 level : 4;
    u32 kind : 2;
    u32 unk40_26 : 1;
    u32 held : 1;
    u32 unk40_28 : 1;
    u32 bonus : 1;
    u32 unk40_30 : 2;
    u8 unk44;
    u8 lane;
    u8 slot;
    u8 unk47;
} Ov96Mole;

typedef struct Ov96Lane {
    Ov96Point16 pos;
    Ov96Input input;
    Ov96Mole moles[3];
    u32 unkE0_0 : 2;
    u32 score : 16;
    u32 unkE0_18 : 14;
} Ov96Lane;

typedef struct Ov96MoleRecord {
    u8 filler_00[4];
    u8 x[12];
    u8 y[12];
    u32 levels : 24;
    u32 unk1C_24 : 6;
    u32 round : 2;
    u32 score : 7;
    u32 hitMask : 12;
    u32 bonkMask : 12;
    u32 unk20_31 : 1;
} Ov96MoleRecord;

typedef struct Ov96_0220FA18 {
    u8 filler_00[0x90];
    Ov96Lane lanes[4];
} Ov96_0220FA18;

s8 ov96_0220DAA0(Ov96Mole *moles, s16 targetX, s16 targetY);
void ov96_0220D6B0(Ov96Mole *mole, Ov96Lane *lane);
BOOL ov96_0220D8C4(Ov96Mole *mole, fx32 x, fx32 y);
void ov96_0220D630(Ov96Mole *mole);
void ov96_0220D9A4(Ov96Mole *mole, PokeathlonCourseData *data);
void ov96_0220F710(PokeathlonCourseData *data);
void ov96_021EB06C(void *a0, int x, int y, int *outX, int *outY);

void ov96_0220F8C8(Ov96Lane *lane, PokeathlonCourseData *data) {
    int i;
    int j;

    ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(data) + 0x28);

    for (i = 0; i < 4; i++) {
        Ov96Input *input = &lane->input;

        lane->moles[input->target].held = FALSE;
        if (input->held) {
            u8 target = ov96_0220DAA0(lane->moles, lane->pos.x, lane->pos.y);

            if (target != 12) {
                input->grabbed = TRUE;
                input->target = target;
            }
        } else if (input->locked) {
            if (input->grabbed == TRUE) {
                Ov96Mole *mole = &lane->moles[input->target];
                s16 x = mole->x >> FX32_SHIFT;
                s16 y = mole->y >> FX32_SHIFT;

                if (mole->state == 3) {
                    input->grabbed = FALSE;
                } else if (MATH_ABS(lane->pos.x - x) > 8 || MATH_ABS(lane->pos.y - y) > 8) {
                    ov96_0220D6B0(mole, lane);
                    mole->bonus = ov96_0220D8C4(mole, mole->homeX, mole->homeY);
                }
            }
        } else {
            if (input->grabbed == TRUE) {
                Ov96Mole *mole = &lane->moles[input->target];
                u8 target = ov96_0220DAA0(lane->moles, lane->pos.x, lane->pos.y);

                if (mole->state == 2 && target == input->target && input->prevCount <= 5) {
                    ov96_0220D630(mole);
                }
            }
            input->grabbed = FALSE;
        }

        for (j = 0; j < 3; j++) {
            ov96_0220D9A4(&lane->moles[j], data);
        }
        lane++;
    }

    ov96_0220F710(data);
}

void ov96_0220FA18(Ov96_0220FA18 *work, PokeathlonCourseData *data) {
    Ov96MoleRecord *record = (Ov96MoleRecord *)ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(data) + 0x28);
    int i;
    int shift;
    int x;
    int y;
    int value;

    record->round++;
    record->score = work->lanes[record->round].score & 0x7F;
    record->bonkMask = 0;
    record->levels = 0;
    record->hitMask = 0;

    for (i = 0, shift = 0; i < 12; i++, shift += 2) {
        Ov96Mole *mole = &work->lanes[i / 3].moles[i % 3];

        ov96_021EB06C(mole->obj, (s16)(mole->x >> FX32_SHIFT), (s16)(mole->y >> FX32_SHIFT), &x, &y);
        value = x;
        if (value > 255) {
            value = 255;
        } else if (value < 0) {
            value = 0;
        }
        record->x[i] = value;
        value = y;
        if (value > 255) {
            value = 255;
        } else if (value < 0) {
            value = 0;
        }
        record->y[i] = value;
        if (mole->hitTimer != 0) {
            record->bonkMask |= 1 << i;
            mole->hitTimer--;
        }
        if (mole->state == 3) {
            record->hitMask |= 1 << i;
        }
        record->levels += (mole->level - 1) << shift;
    }
}
