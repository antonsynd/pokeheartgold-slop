#include "global.h"

typedef struct Ov01Node {
    u8 filler_00[4];
    void *unk04;
    u8 filler_08[0x2C];
    struct Ov01Node *next;
} Ov01Node;

typedef struct Ov01_021EC4A8 {
    u8 filler_00[0xC];
    Ov01Node head;
} Ov01_021EC4A8;

void ov01_021EC31C(int *x, int *y, Ov01_021EC4A8 *a0);
void ov01_021EC304(VecFx32 *pos, Ov01Node *node);
void ov01_021EB5F4(void *a0, VecFx32 *pos);

void ov01_021EC4A8(Ov01_021EC4A8 *a0, int *outX, int *outY) {
    VecFx32 pos;
    int x;
    int y;
    Ov01Node *node;

    ov01_021EC31C(&x, &y, a0);
    for (node = a0->head.next; node != &a0->head; node = node->next) {
        ov01_021EC304(&pos, node);
        pos.x -= x;
        pos.y -= y;
        ov01_021EB5F4(node->unk04, &pos);
    }
    if (outX != NULL) {
        *outX = x;
    }
    if (outY != NULL) {
        *outY = y;
    }
}
