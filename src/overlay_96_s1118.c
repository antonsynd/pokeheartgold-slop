#include "global.h"

typedef struct Ov96Hit {
    s16 x;
    s16 y;
    u8 lane;
    u8 slot;
} Ov96Hit;

typedef struct Ov96Cell {
    s16 x;
    s16 y;
} Ov96Cell;

typedef struct Ov96Hammer {
    s16 x;
    s16 y;
    u32 lane : 2;
    u32 state : 3;
    u32 active : 1;
    u32 counter : 8;
    u32 unk4_14 : 18;
    u8 unk8;
    u8 column;
    u8 speed;
} Ov96Hammer;

typedef struct Ov96HammerRecord {
    u16 y : 7;
    u16 column : 4;
    u16 state : 3;
    u16 lane : 2;
} Ov96HammerRecord;

typedef struct Ov96Lane {
    u8 filler_00[8];
    void *data;
    u8 filler_0C[0xD4];
    u32 unkE0_0 : 2;
    u32 score : 16;
    u32 unkE0_18 : 14;
} Ov96Lane;

BOOL ov96_0220FCB0(Ov96Cell *cell, int limit);
int ov96_0220F3BC(Ov96Hammer *hammer);
void ov96_021E8228(void *a0, u8 a1, u8 a2, int a3, int a4);
BOOL ov96_0220FBEC(Ov96Hammer *hammer, Ov96Lane *lanes, Ov96Hit *hit);
s16 ov96_0220E6DC(s16 y, u8 column);
void ov96_0220FBDC(Ov96Hammer *hammer);

void ov96_0220FD28(Ov96Hammer *hammer, Ov96Lane *lanes, Ov96Hit *hit) {
    Ov96Cell cell;
    Ov96Lane *lane;
    void *data;
    int score;

    cell.x = hit->x / 8;
    cell.y = hit->y / 8;
    if (cell.y < 9) {
        hammer->state = 3;
        if (ov96_0220FCB0(&cell, 9)) {
            hammer->state = 4;
        }
    } else if (cell.y < 15) {
        hammer->state = 4;
        if (ov96_0220FCB0(&cell, 15)) {
            hammer->state = 5;
        }
    } else if (cell.y < 20) {
        hammer->state = 5;
        if (ov96_0220FCB0(&cell, 20)) {
            hammer->state = 6;
        }
    } else {
        hammer->state = 6;
    }

    lane = &lanes[hit->lane];
    data = lane->data;
    score = lane->score + ov96_0220F3BC(hammer);
    if (score > 200) {
        score = 200;
    }
    lane->score = score;
    hammer->lane = hit->lane;
    ov96_021E8228(data, hit->lane, hit->slot, 3, 1);
}

void ov96_0220FE38(Ov96Hammer *hammer, Ov96HammerRecord *record, Ov96Lane *lanes) {
    Ov96Hit hit;

    if (!hammer->active) {
        return;
    }

    switch (hammer->state) {
    case 1:
        if (ov96_0220FBEC(hammer, lanes, &hit)) {
            ov96_0220FD28(hammer, lanes, &hit);
        } else if (hammer->y >= 480) {
            hammer->y = 0;
            hammer->state = 2;
        } else {
            hammer->y += hammer->speed;
            hammer->x = ov96_0220E6DC(hammer->y, hammer->column);
        }
        break;
    case 2:
        hammer->y += hammer->speed;
        if (hammer->y >= 48) {
            ov96_0220FBDC(hammer);
        }
        break;
    case 3:
    case 4:
    case 5:
    case 6:
        hammer->counter++;
        if (hammer->counter >= 20) {
            ov96_0220FBDC(hammer);
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    record->y = (hammer->y * 2) / 8;
    record->column = hammer->column;
    record->state = hammer->state;
    record->lane = hammer->lane;
}
