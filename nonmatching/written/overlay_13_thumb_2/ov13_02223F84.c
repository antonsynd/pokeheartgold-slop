#include "global.h"

typedef struct UnkStruct_ov13_0224DF30 {
    u8 unk_00[0xc];
    void (*unk_0C)(void *ptr, void *self);
    u8 unk_10[0x44];
    void *unk_54;
} UnkStruct_ov13_0224DF30;

extern UnkStruct_ov13_0224DF30 ov13_0224DF30;

int ov13_02223C48(void);
int ov13_02223E6C(void);

s32 ov13_02223F84(void) {
    int keepGoing = 1;
    int msg;

    if (ov13_02223C48() != 0) {
        do {
            OS_Sleep(10);
            msg = ov13_02223E6C();
            while (msg != 0) {
                if (msg == 4 || msg == 5) {
                } else if (msg == 0x14) {
                    keepGoing = 0;
                } else {
                    keepGoing = 0;
                }
                msg = ov13_02223E6C();
            }
        } while (keepGoing != 0);
    }
    if (ov13_0224DF30.unk_54 != NULL) {
        ov13_0224DF30.unk_0C(ov13_0224DF30.unk_54, ov13_0224DF30.unk_0C);
        ov13_0224DF30.unk_54 = NULL;
    }
    return 1;
}
