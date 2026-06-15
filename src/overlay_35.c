#include "overlay_35.h"

#include "global.h"

typedef struct Ov35Struct {
    u8 unk0[2];
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 pad5[63];
    void (*unk44)(void *);
    void *unk48;
} Ov35Struct;

// ov35_02259D80 is .public (called from asm overlay_01) but is intentionally
// NOT declared in the shared overlay_35.h: field_system.c includes that header,
// so adding a declaration there would IPA-cascade its codegen. A local forward
// declaration satisfies MWCC's prototype requirement without touching the header.
void ov35_02259D80(Ov35Struct *a, int b);

void ov35_02259D80(Ov35Struct *a, int b) {
    switch (b) {
    case 0:
        break;
    case 1:
        a->unk4 = 1;
        break;
    case 2:
        break;
    case 3:
        break;
    case 4:
        if (a->unk2 == 2 && a->unk44 != NULL) {
            a->unk44(a->unk48);
        }
        break;
    case 5:
        break;
    }
}

int ov35_02259DB8(Ov35Struct *a) {
    return a->unk3;
}
