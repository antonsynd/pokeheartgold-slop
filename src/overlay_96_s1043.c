#include "global.h"

typedef struct Ov96Contestant {
    u32 unk0_0 : 18;
    u32 points : 8;
    u32 level : 6;
} Ov96Contestant;

typedef struct Ov96_0220CF50 {
    u8 filler_00[4];
    Ov96Contestant contestants[4];
    u32 id : 8;
    u32 unk14_8 : 8;
    u32 score : 8;
    u32 state : 6;
    u32 current : 2;
    u32 unk18_0 : 30;
    u32 slot : 2;
    u32 unk1C_0 : 9;
    u32 flag : 1;
    u32 unk1C_10 : 22;
} Ov96_0220CF50;

typedef struct Ov96Result {
    u32 id : 8;
    u32 points : 8;
    u32 score : 8;
    u32 current : 2;
    u32 flag : 1;
    u32 bonus : 1;
    u32 finished : 1;
    u32 unk_29 : 3;
} Ov96Result;

void *PokeathlonCourse_GetDataCopyArea(void *course);
Ov96Result *ov96_021E8A20(void *a0);

void ov96_0220CF50(Ov96_0220CF50 *a0, int a1, void *course) {
    u8 *area = PokeathlonCourse_GetDataCopyArea(course);
    Ov96Result *result = ov96_021E8A20(area + 0x50 + a0->slot * 0x28);
    Ov96Contestant *contestant = &a0->contestants[a0->current];

    result->id = a0->id;
    result->points = contestant->points;
    result->score = a0->score;
    result->flag = a0->flag;
    result->bonus = a1 & 2;
    result->current = a0->current;
    result->finished = a0->state == 1 ? TRUE : FALSE;
}
