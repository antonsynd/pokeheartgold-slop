#include "global.h"

typedef struct Ov96_021EAF60 {
    u8 filler_00[0x14];
    void *unk14;
} Ov96_021EAF60;

void ov96_021E8BF4(void *a0, int a1, int a2, int a3);

void ov96_021EAF60(Ov96_021EAF60 *a0, int a1, int a2, int a3) {
    ov96_021E8BF4(a0->unk14, a1, a2, a3);
}
