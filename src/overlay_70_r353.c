#include "global.h"

#include "unk_02037C94.h"

typedef struct Ov70_022406B8 {
    u8 filler_0000[0x1604];
    int timer;
} Ov70_022406B8;

BOOL ov70_02237F38(Ov70_022406B8 *a0);
int ov70_02237F58(void);
void ov70_022404D4(Ov70_022406B8 *a0);

int ov70_022406B8(Ov70_022406B8 *a0) {
    if (ov70_02237F38(a0)) {
        int error = ov70_02237F58();

        a0->timer = 0;
        switch (error) {
        case 0:
            ov70_022404D4(a0);
            break;
        case -3:
            ov70_022404D4(a0);
        case -4:
            ov70_022404D4(a0);
        case -5:
            sub_02039AD8(3);
            break;
        case -15:
        case -14:
        case -12:
        case -2:
            sub_02039AD8(4);
            break;
        case -13:
            sub_020399EC();
            break;
        }
    } else {
        a0->timer++;
        if (a0->timer == 3600) {
            sub_020399EC();
        }
    }
    return 3;
}
