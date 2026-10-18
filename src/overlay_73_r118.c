#include "global.h"

typedef struct Ov73_021e85ac {
    u8 filler_0000[0x1C];
    int state;
    u8 filler_0020[0xF90 - 0x20];
    u16 unk0F90;
    u16 unk0F92;
} Ov73_021e85ac;

typedef BOOL (*Ov73_021e85acFunc)(Ov73_021e85ac *work);

extern const Ov73_021e85acFunc ov73_021EA848[];

void *ov73_021E8440(Ov73_021e85ac *work);
void sub_0203A930(void *a0);

BOOL ov73_021E85AC(Ov73_021e85ac *work) {
    int state;
    BOOL ret;

    sub_0203A930(ov73_021E8440(work));
    state = work->state;
    ret = ov73_021EA848[state](work);
    if (state != work->state) {
        work->unk0F90 = 0;
        work->unk0F92 = 0;
    }
    return ret;
}
