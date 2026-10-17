#include "global.h"

typedef struct Ov15_021FA170 {
    u8 filler_000[4];
    u8 unk004[0x640];
    int unk644;
} Ov15_021FA170;

int ov15_021FA12C(Ov15_021FA170 *a0);
void ov15_021FECA0(Ov15_021FA170 *a0, void *a1, int a2);
void ov15_021FECC4(Ov15_021FA170 *a0, void *a1);
void ov15_021FECD8(Ov15_021FA170 *a0, void *a1, int a2);

void ov15_021FA170(Ov15_021FA170 *a0) {
    int value = a0->unk644;

    if (value >= 8 && value <= 13) {
        int result = ov15_021FA12C(a0);

        if (result) {
            ov15_021FECA0(a0, a0->unk004, result);
        } else {
            ov15_021FECC4(a0, a0->unk004);
        }
        return;
    }
    if (value >= 0 && value <= 7) {
        ov15_021FECD8(a0, a0->unk004, value);
    } else {
        ov15_021FECC4(a0, a0->unk004);
    }
}
