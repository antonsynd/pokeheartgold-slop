#include "global.h"

typedef struct Ov96_021F6DA4 {
    u8 filler_00[0x64];
    void *mainObj;
    void *objs[4];
    u8 filler_78[0x14];
    void *unk8C;
} Ov96_021F6DA4;

extern const VecFx32 ov96_0221C0C4;
extern const VecFx32 ov96_0221C0DC;
extern const VecFx32 ov96_0221C0D0;

void ov96_021F7544(void *a0);
void ov96_021EB588(void *obj, VecFx32 *pos);

void ov96_021F6DA4(Ov96_021F6DA4 *a0, u8 player) {
    VecFx32 mainPos;
    VecFx32 playerPos;
    VecFx32 pos;
    VecFx32 base;
    int i;
    u8 n;

    ov96_021F7544(a0->unk8C);
    mainPos = ov96_0221C0C4;
    ov96_021EB588(a0->mainObj, &mainPos);
    playerPos = ov96_0221C0DC;
    ov96_021EB588(a0->objs[player], &playerPos);
    base = ov96_0221C0D0;
    n = 0;
    for (i = 0; i < 4; i++) {
        pos = base;
        if (i != player) {
            pos.y += n << FX32_SHIFT << 4;
            ov96_021EB588(a0->objs[i], &pos);
            n++;
        }
    }
}
