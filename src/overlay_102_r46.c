#include "global.h"

typedef struct Ov102_021E87B4 {
    u8 filler_00[0x14];
    void *unk14;
    u8 filler_18[0xC];
    int unk24;
} Ov102_021E87B4;

void ov102_021E7A4C(Ov102_021E87B4 *a0, int a1);
void ov102_021E8B18(Ov102_021E87B4 *a0, int *state);
void ov102_021E940C(void *a0, int a1);
BOOL ov102_021E9464(void *a0);
BOOL ov102_021E947C(void *a0, int a1);

int ov102_021E87B4(Ov102_021E87B4 *a0, int *state) {
    switch (*state) {
    case 0:
        ov102_021E8B18(a0, state);
        break;
    case 1:
        if (ov102_021E947C(a0->unk14, 0x13)) {
            *state = 0;
        }
        break;
    case 2:
        if (ov102_021E947C(a0->unk14, 0x13)) {
            ov102_021E940C(a0->unk14, 0x12);
            *state = 0;
        }
        break;
    case 3:
        if (ov102_021E9464(a0->unk14)) {
            ov102_021E7A4C(a0, a0->unk24);
            *state = 0;
        }
        break;
    }
    return 0;
}
