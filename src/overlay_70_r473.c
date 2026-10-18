#include "global.h"

typedef struct Ov70_02244124 {
    u8 filler_0000[0x2C];
    int state;
    u8 filler_0030[0x1600 - 0x30];
    u16 unk1600;
    u16 unk1602;
} Ov70_02244124;

typedef BOOL (*Ov70_02244124Func)(Ov70_02244124 *work);

extern const Ov70_02244124Func ov70_02246780[];

void *ov70_02238E44(Ov70_02244124 *work);
void sub_0203A930(void *a0);

BOOL ov70_02244124(Ov70_02244124 *work) {
    int state;
    BOOL ret;

    sub_0203A930(ov70_02238E44(work));
    state = work->state;
    ret = ov70_02246780[state](work);
    if (state != work->state) {
        work->unk1600 = 0;
        work->unk1602 = 0;
    }
    return ret;
}
