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

void ov35_02259D80(Ov35Struct *a, int b) {
    switch (b) {
    case 1:
        a->unk4 = 1;
        break;
    case 4:
        if (a->unk2 == 2 && a->unk44 != NULL) {
            a->unk44(a->unk48);
        }
        break;
    case 5:
    default:
        break;
    }
}

int ov35_02259DB8(Ov35Struct *a) {
    return a->unk3;
}
