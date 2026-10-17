#include "global.h"

typedef struct Ov72_0223894c {
    u8 filler_0000[0x1C];
    int state;
    u8 filler_0020[0xFD0 - 0x20];
    u16 unk0FD0;
    u16 unk0FD2;
} Ov72_0223894c;

typedef BOOL (*Ov72_0223894cFunc)(Ov72_0223894c *work);

extern const Ov72_0223894cFunc ov72_0223B660[];

void *ov72_022387C4(Ov72_0223894c *work);
void sub_0203A930(void *a0);

BOOL ov72_0223894C(Ov72_0223894c *work) {
    int state;
    BOOL ret;

    sub_0203A930(ov72_022387C4(work));
    state = work->state;
    ret = ov72_0223B660[state](work);
    if (state != work->state) {
        work->unk0FD0 = 0;
        work->unk0FD2 = 0;
    }
    return ret;
}
