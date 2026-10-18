#include "global.h"

typedef struct Ov96_021F80A8 {
    void *unk00;
    u8 filler_04[0x54];
    u8 unk58;
    u8 count;
} Ov96_021F80A8;

void ov96_021F87E0(void *a0, int a1);
void *ov96_021F8378(Ov96_021F80A8 *a0, int a1, int a2, int a3);
BOOL ov96_021F8978(void *obj);
void ov96_021F82E4(Ov96_021F80A8 *a0, void *obj, int a2);
void ov96_021F8334(Ov96_021F80A8 *a0, void *obj, int a2);

void ov96_021F80A8(Ov96_021F80A8 *a0, int a1, u8 count, int a3) {
    int i;

    a0->count = count;
    ov96_021F87E0(a0->unk00, a3);
    for (i = 0; i < 4; i++) {
        int offset = i * 10 + 10;
        void *obj = ov96_021F8378(a0, a1, 0x100, 0x9C - i * 0x28);

        if (ov96_021F8978(obj) == FALSE) {
            offset += 10;
        }
        ov96_021F82E4(a0, obj, offset);
    }
    if (count > 4) {
        ov96_021F8334(a0, ov96_021F8378(a0, a1, 0x100, 0x28), 0);
    }
    a0->unk58 = 1;
}
