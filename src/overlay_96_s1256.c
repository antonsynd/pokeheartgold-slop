#include "global.h"

#include "pokeathlon/pokeathlon.h"

typedef struct Ov96Record {
    u32 x : 8;
    u32 y : 8;
    u32 active : 1;
    u32 action : 2;
    u32 unk0_19 : 13;
    u8 filler_04[0x1C];
    u32 unk20_0 : 3;
    u32 timer : 16;
    u32 unk20_19 : 12;
    u32 finished : 1;
} Ov96Record;

typedef struct Ov96Input {
    u32 count : 14;
    u32 held : 1;
    u32 locked : 1;
    u32 prevCount : 13;
    u32 unk0_29 : 3;
} Ov96Input;

typedef struct Ov96Mover {
    u8 filler_00[0x60];
    u32 unk60_0 : 24;
    u32 mode : 2;
    u32 active : 1;
    u32 unk60_27 : 5;
    u8 filler_64[0x38];
} Ov96Mover;

typedef struct Ov96Player {
    s16 x;
    s16 y;
    s16 startX;
    s16 startY;
    Ov96Input input;
    Ov96Mover mover;
} Ov96Player;

typedef struct Ov96_02215FC8 {
    u8 filler_000[0x184];
    void *unk184;
    u8 unk188[0x10];
    Ov96Player players[4];
    int timer;
    u8 unk43C[4];
} Ov96_02215FC8;

void ov96_02218330(void *a0, PokeathlonCourseData *data);
void ov96_02219FE4(void *a0);
void ov96_022180CC(Ov96Player *players, PokeathlonCourseData *data);
void ov96_0221768C(void *a0, PokeathlonCourseData *data);
int ov96_022158D4(int x, int y);
void ov96_02219460(Ov96Mover *mover, Ov96Input *input, BOOL a2);
void ov96_02219398(Ov96Mover *mover);
void ov96_02218A68(Ov96Mover *mover);
void ov96_02218578(Ov96Mover *mover, int a1);

void ov96_02215FC8(PokeathlonCourseData *data) {
    int i;
    Ov96_02215FC8 *work;
    Ov96Record *self;
    u8 *area;

    work = PokeathlonCourse_GetHeapAllocPtr4(data);
    area = PokeathlonCourse_GetDataCopyArea(data);
    self = (Ov96Record *)ov96_021E8A20(area + 0x28);

    if (ov96_021E5F24(data) == FALSE) {
        if (self->finished) {
            ov96_02218330(work->unk188, data);
            return;
        }
        if (work->timer > 0) {
            work->timer--;
            self->timer = work->timer;
        }

        *(Ov96Record *)ov96_021E8A20(area + 0x50) = *(Ov96Record *)ov96_021E8A20(area);

        i = 0;
        area += 0x50;
        for (; i < 4; i++) {
            Ov96Record *record = (Ov96Record *)ov96_021E8A20(area);
            Ov96Player *player = &work->players[i];
            Ov96Input *input = &player->input;
            Ov96Mover *mover = &player->mover;

            if (record->active) {
                if (input->held && input->locked) {
                    input->held = FALSE;
                } else if (!input->held && !input->locked) {
                    input->held = TRUE;
                    input->locked = TRUE;
                    player->startX = record->x;
                    player->startY = record->y;
                }
                player->x = record->x;
                player->y = record->y;
                input->count++;
            } else if (input->locked) {
                input->prevCount = input->count;
                input->count = 0;
                input->held = FALSE;
                input->locked = FALSE;
            }

            ov96_02219460(mover, input, ov96_022158D4(player->x, player->y));
            if (mover->active) {
                if (mover->mode == 1 && record->action == 1) {
                    ov96_02219398(mover);
                    ov96_02218A68(mover);
                    mover->mode = 2;
                } else if (mover->mode == 2 && record->action == 2) {
                    mover->active = FALSE;
                    mover->mode = 0;
                    ov96_02218578(mover, 4);
                }
            }
            area += 0x28;
        }

        ov96_02219FE4(work->unk184);
        ov96_022180CC(work->players, data);
        if (self->timer == 0) {
            self->finished = TRUE;
        }
        ov96_02218330(work->unk188, data);
    }
    ov96_0221768C(work->unk43C, data);
}
