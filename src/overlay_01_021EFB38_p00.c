#include "global.h"

typedef struct Ov01_02209B64 {
    int unk0;
    int unk4;
    int unk8;
} Ov01_02209B64;

extern Ov01_02209B64 ov01_02209B64;
extern void (*const ov01_022068C4[])(void *a0, void *a1);

void ov01_021EFB38(void *a0, void *a1) {
    ov01_022068C4[ov01_02209B64.unk4](a0, a1);
    ov01_02209B64.unk8++;
    OS_GetTick();
    OS_SetTick(0);
}
