#include "global.h"

typedef struct Ov96IdPair {
    u32 ids[2];
} Ov96IdPair;

extern const u32 ov96_0221CBCC[];

void ov96_021EB2BC(void *a0, int a1, int a2, u32 a3, int a4);
void ov96_021EB2F4(void *a0, int a1, int a2, u32 a3, int a4, int a5);
void ov96_021EB334(void *a0, int a1, int a2, u32 a3);
void ov96_021EB36C(void *a0, int a1, int a2, u32 a3);

void ov96_02207E7C(void *a0, void *a1) {
    Ov96IdPair pair = *(const Ov96IdPair *)&ov96_0221CBCC[2];
    int i;

    for (i = 0; i < 2; i++) {
        ov96_021EB2BC(a1, 0x5D, 9, pair.ids[i], 2);
        ov96_021EB2F4(a1, 0x5D, 6, pair.ids[i], 2, 1);
        ov96_021EB334(a1, 0x5D, 10, pair.ids[i]);
        ov96_021EB36C(a1, 0x5D, 10, pair.ids[i]);
    }
    ov96_021EB2BC(a1, 0xE2, 13, 0x65, 2);
    ov96_021EB2F4(a1, 0xE2, 10, 0x65, 2, 8);
    ov96_021EB334(a1, 0xE2, 12, 0x65);
    ov96_021EB36C(a1, 0xE2, 11, 0x65);
}
