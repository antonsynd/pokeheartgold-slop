#include "global.h"

typedef struct Ov43Item {
    u8 filler_00[0x4C];
} Ov43Item;

typedef struct Ov43Entry6 {
    u8 data[6];
} Ov43Entry6;

typedef struct Ov43_0222D584 {
    u8 filler_00[0x14];
    Ov43Item items[3];
    u8 filler_F8[1];
} Ov43_0222D584;

extern const u32 ov43_0222EDAC[];
extern const Ov43Entry6 ov43_0222EE08[];
extern const u8 ov43_0222F0D0[];
extern const u32 ov43_0222F10C[];

void ov43_0222DD40(void *a0, int a1, int a2);
void ov43_0222DDA0(Ov43_0222D584 *a0, int a1);
void ov43_0222DDF0(Ov43Item *item, int a1, const Ov43Entry6 *entry, u32 a3, int a4);
void ov43_0222DE14(Ov43Item *item, int a1, int index, u8 a3, u32 a4, int a5);

void ov43_0222D584(Ov43_0222D584 *a0, int a1, int a2, int a3) {
    int i;
    int j;

    ov43_0222DD40(a0->filler_F8, a2, a3);
    ov43_0222DDA0(a0, a2);
    for (i = 0; i < 3; i++) {
        ov43_0222DDF0(&a0->items[i], a2, &ov43_0222EE08[i], ov43_0222EDAC[i], a3);
        for (j = 0; j < 8; j++) {
            ov43_0222DE14(&a0->items[i], a2, j, ov43_0222F0D0[j], ov43_0222F10C[j], a3);
        }
    }
}
