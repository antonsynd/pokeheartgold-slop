#include "global.h"

typedef struct Ov07Command {
    u8 filler_00[0x1C];
    int id;
} Ov07Command;

extern const char _02237840[];

void ov07_0221DD38(Ov07Command **slots, Ov07Command *command, int id) {
    u8 i;

    for (i = 0; i < 4; i++) {
        if (slots[i] != NULL && id == slots[i]->id) {
            GF_AssertFail();
        }
    }
    for (i = 0; i < 4; i++) {
        if (slots[i] == NULL) {
            slots[i] = command;
            slots[i]->id = id;
            return;
        }
    }
    GF_ASSERT(!_02237840);
}
