#include "global.h"

typedef struct Ov71_02248484 {
    u8 filler_000[8];
    int timer;
    u8 filler_00C[0xCC];
    void *unkD8;
    u8 filler_0DC[0x84];
    void *unk160;
} Ov71_02248484;

void ov71_02248E30(void *a0, int a1, int a2, int a3);
void *ov71_02248EB4(Ov71_02248484 *a0);
void ov71_02247708(void *a0, int a1);
void ov71_02247704(void *a0, int a1);
BOOL ov71_02249260(void *a0);
BOOL ov71_02249254(void *a0);
void ov71_02248B54(Ov71_02248484 *a0);

BOOL ov71_02248484(Ov71_02248484 *a0, int *state) {
    switch (*state) {
    case 0:
        a0->timer = 0;
        (*state)++;
        break;
    case 1:
        if (++a0->timer > 8) {
            ov71_02248E30(a0->unkD8, 0, 31, 24);
            a0->unk160 = ov71_02248EB4(a0);
            ov71_02247708(a0->unkD8, 0);
            ov71_02247704(a0->unkD8, 1);
            (*state)++;
        }
        break;
    case 2:
        if (ov71_02249260(a0->unk160)) {
            (*state)++;
        }
        break;
    case 3:
        if (ov71_02249254(a0->unk160)) {
            (*state)++;
        }
        break;
    case 4:
        ov71_02248B54(a0);
        return TRUE;
    }
    return FALSE;
}
