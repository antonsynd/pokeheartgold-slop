#include "global.h"

typedef struct Ov96_0220C54C {
    void *unk00;
    u8 filler_04[8];
    void *unk0C;
    void *unk10[1];
} Ov96_0220C54C;

typedef struct Ov96Point {
    fx32 x;
    fx32 y;
    fx32 z;
    fx32 w;
} Ov96Point;

void ov96_021E6168(void *a0, int a1, int a2, Ov96Point *pos);
void ov96_021EEBE4(void *a0, Ov96Point *pos, int a2, int a3, void *a4);

void ov96_0220C54C(Ov96_0220C54C *a0, int idx, int a2, int a3, int a4) {
    Ov96Point pos;
    void *unk00 = a0->unk00;
    void *obj = a0->unk10[idx];

    ov96_021E6168(a0->unk0C, a2, a3, &pos);
    ov96_021EEBE4(obj, &pos, a4, 0, unk00);
}
