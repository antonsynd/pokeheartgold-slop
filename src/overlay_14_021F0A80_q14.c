#include "global.h"

typedef struct Ov14Work {
    u8 filler_000[0x2F0];
    void *tilemaps;
} Ov14Work;

typedef struct Ov14_021F0F0C {
    u8 filler_00[0x1F];
    u8 page;
    u8 filler_20[3];
    u8 unk23;
    u8 filler_24;
    u8 nextPage;
    u8 filler_26[0xA];
    int nextState;
    Ov14Work *work;
} Ov14_021F0F0C;

void ov14_021F2DE8(Ov14_021F0F0C *a0, u8 page);
int ov14_021E7930(Ov14_021F0F0C *a0, u8 page);
void ov14_021E783C(Ov14_021F0F0C *a0, int a1, int a2);
void ov14_021F4848(Ov14_021F0F0C *a0);
int ov14_021E85E4(void *tilemaps);
void ov14_021E85D0(void *tilemaps);
void ov14_021F0234(Ov14_021F0F0C *a0, void *callback, int state);
void ov14_021E92AC(void);
void ov14_021E9370(void);

void ov14_021F0F0C(Ov14_021F0F0C *a0, int selection) {
    void *callback;
    u8 prevPage = a0->page;

    a0->page = a0->nextPage;
    if (prevPage > a0->nextPage) {
        ov14_021F2DE8(a0, a0->page);
        ov14_021E783C(a0, ov14_021E7930(a0, a0->page), 0);
        callback = ov14_021E92AC;
    } else {
        ov14_021F2DE8(a0, a0->page);
        ov14_021E783C(a0, ov14_021E7930(a0, a0->page), 1);
        callback = ov14_021E9370;
    }

    switch (selection) {
    case 0:
        ov14_021F4848(a0);
        if (a0->unk23 == 0) {
            a0->nextState = 12;
        } else {
            a0->nextState = 36;
        }
        break;
    case 1:
        ov14_021F4848(a0);
        a0->nextState = 61;
        break;
    case 2:
        a0->nextState = 71;
        break;
    case 3:
        ov14_021F4848(a0);
        if (ov14_021E85E4(a0->work->tilemaps) == 1) {
            ov14_021E85D0(a0->work->tilemaps);
        }
        a0->nextState = 41;
        break;
    case 4:
        ov14_021F4848(a0);
        if (ov14_021E85E4(a0->work->tilemaps) == 1) {
            ov14_021E85D0(a0->work->tilemaps);
        }
        a0->nextState = 130;
        break;
    }
    ov14_021F0234(a0, callback, a0->nextState);
}
