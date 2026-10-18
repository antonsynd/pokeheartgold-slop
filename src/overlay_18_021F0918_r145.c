#include "global.h"

typedef struct Ov18Template {
    u8 filler_00[0x34];
} Ov18Template;

typedef struct Ov18_021F49F8 {
    u8 filler_000[0x670];
    void *objects[10];
} Ov18_021F49F8;

extern const Ov18Template ov18_021FA7B0[];

void ov18_021F11C0(Ov18_021F49F8 *a0, int a1, int a2);
void *ov18_021F11EC(Ov18_021F49F8 *a0, const Ov18Template *template);
void ov18_021F4A6C(Ov18_021F49F8 *a0);
void ov18_021F4D64(Ov18_021F49F8 *a0);
void ov18_021F4DDC(Ov18_021F49F8 *a0);
void ov18_021F4E28(Ov18_021F49F8 *a0);

void ov18_021F49F8(Ov18_021F49F8 *a0) {
    u32 i;

    ov18_021F4A6C(a0);
    for (i = 1; i < 10; i++) {
        a0->objects[i] = ov18_021F11EC(a0, &ov18_021FA7B0[i - 1]);
    }
    ov18_021F4D64(a0);
    ov18_021F4DDC(a0);
    ov18_021F4E28(a0);
    ov18_021F11C0(a0, 3, 0);
    ov18_021F11C0(a0, 5, 0);
}
