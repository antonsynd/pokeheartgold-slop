#include "global.h"

typedef struct Ov96Score {
    int type;
    u8 filler_04[6];
    u16 value;
} Ov96Score;

typedef struct Ov96Tally {
    int count;
    u8 filler_04[0xC];
    BOOL done;
    int totals[76];
    Ov96Score *scores[12];
    int history[10][4];
} Ov96Tally;

void ov96_021E952C(Ov96Tally *tally) {
    int i;

    GF_ASSERT(tally->done == FALSE);
    if (tally->done == FALSE) {
        for (i = 0; i < tally->count; i++) {
            tally->totals[tally->scores[i]->type] += tally->scores[i]->value;
        }
        tally->done = TRUE;
    }
}

void ov96_021E9570(Ov96Tally *tally, int index) {
    int sums[4] = { 0 };
    int i;

    GF_ASSERT(index < 10);
    for (i = 0; i < tally->count; i++) {
        sums[tally->scores[i]->type] += tally->scores[i]->value;
    }
    for (i = 0; i < 4; i++) {
        tally->history[index][i] = sums[i];
    }
}
