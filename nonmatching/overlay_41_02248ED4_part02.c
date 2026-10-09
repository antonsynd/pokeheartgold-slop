#include "global.h"

#include "assert.h"
#include "heap.h"
#include "pokepic.h"
#include "system.h"
#include "touchscreen.h"

typedef struct UnkStruct_ov41_02249780 {
    Pokepic *unk0;
    TouchscreenHitbox unk4;
    TouchscreenHitbox unk8;
} UnkStruct_ov41_02249780;

typedef struct UnkStruct_ov41_022499B4_Node {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
} UnkStruct_ov41_022499B4_Node;

typedef struct UnkStruct_ov41_022499B4 {
    UnkStruct_ov41_022499B4_Node *unk0;
    int unk4;
} UnkStruct_ov41_022499B4;

extern BOOL ov41_02249768(UnkStruct_ov41_02249780 *a0);
extern BOOL ov41_02249774(UnkStruct_ov41_02249780 *a0, int x, int y);
extern int ov41_022464BC(void *a0, int x, int y, int a3);

void ov41_02249780(UnkStruct_ov41_02249780 *a0, int *x, int *y);
void ov41_022497A0(UnkStruct_ov41_02249780 *a0, int *width, int *height);
BOOL ov41_022497A8(UnkStruct_ov41_02249780 *a0, int *x, int *y, void *a3);
BOOL ov41_02249820(UnkStruct_ov41_02249780 *a0, int x, int y, void *a3);
void ov41_02249888(UnkStruct_ov41_02249780 *a0, TouchscreenHitbox *a1);
int ov41_0224989C(s8 *data, int stride);
void ov41_022498E8(s8 *data, int stride, int a2, u8 *out);
void ov41_02249978(u8 *out, int x, int y, int radiusX, int radiusY);
void ov41_022499B4(UnkStruct_ov41_022499B4 *a0, int count, enum HeapID heapID);
void ov41_022499DC(UnkStruct_ov41_022499B4 *a0);
UnkStruct_ov41_022499B4_Node *ov41_022499F0(UnkStruct_ov41_022499B4 *a0, int a1, int a2);

void ov41_02249780(UnkStruct_ov41_02249780 *a0, int *x, int *y) {
    *x = Pokepic_GetAttr(a0->unk0, 0);
    *y = Pokepic_GetAttr(a0->unk0, 1);
}

void ov41_022497A0(UnkStruct_ov41_02249780 *a0, int *width, int *height) {
    *width = 0x50;
    *height = 0x50;
}

BOOL ov41_022497A8(UnkStruct_ov41_02249780 *a0, int *x, int *y, void *a3) {
    int width;
    int height;
    int picX;
    int picY;
    BOOL result = FALSE;

    if (ov41_02249768(a0)) {
        ov41_02249780(a0, &picX, &picY);
        ov41_022497A0(a0, &width, &height);
        picX -= width / 2;
        picY -= height / 2;
        *x = gSystem.touchX - picX;
        *y = gSystem.touchY - picY;
        if (ov41_022464BC(a3, *x, *y, 0) == 0) {
            result = TRUE;
        }
    }
    return result;
}

BOOL ov41_02249820(UnkStruct_ov41_02249780 *a0, int x, int y, void *a3) {
    int width;
    int height;
    int picX;
    int picY;
    BOOL result = FALSE;

    if (ov41_02249774(a0, x, y)) {
        ov41_02249780(a0, &picX, &picY);
        ov41_022497A0(a0, &width, &height);
        picX -= width / 2;
        picY -= height / 2;
        if (ov41_022464BC(a3, x - picX, y - picY, 0) == 0) {
            result = TRUE;
        }
    }
    return result;
}

void ov41_02249888(UnkStruct_ov41_02249780 *a0, TouchscreenHitbox *a1) {
    a1->rect.top = a0->unk8.rect.top;
    a1->rect.bottom = a0->unk8.rect.bottom;
    a1->rect.left = a0->unk8.rect.left;
    a1->rect.right = a0->unk8.rect.right;
}

int ov41_0224989C(s8 *data, int stride) {
    int i;
    int j;
    int index;
    u8 mask;

    for (i = 0; i < 0x50; i++) {
        for (j = 0; j < 0x50; j++) {
            index = i + j * stride;
            mask = 0xf << ((index % 2) * 4);
            if (data[index / 2] & mask) {
                return i;
            }
        }
    }
    return 0x50;
}

void ov41_022498E8(s8 *data, int stride, int a2, u8 *out) {
    int i;
    int j;
    int index;
    u8 mask;

    out[0] = 0x28;
    out[1] = 0x28;
    out[2] = 0x28;
    out[3] = 0x28;
    for (i = 0; i < 0x50; i++) {
        for (j = 0; j < 0x50; j++) {
            index = i + j * stride;
            mask = 0xf << ((index % 2) * 4);
            if (data[index / 2] & mask) {
                if (out[0] > i) {
                    out[0] = i;
                }
                if (out[1] > 0x50 - i) {
                    out[1] = 0x50 - i;
                }
                if (out[2] > j) {
                    out[2] = j;
                }
                if (out[3] > 0x50 - j) {
                    out[3] = 0x50 - j;
                }
            }
        }
    }
}

void ov41_02249978(u8 *out, int x, int y, int radiusX, int radiusY) {
    int top = y - radiusY;
    int bottom;
    int left;
    int right;

    if (top < 0) {
        top = 0;
    }
    out[0] = top;
    bottom = y + radiusY;
    if (bottom > 0xbf) {
        bottom = 0xbf;
    }
    out[1] = bottom;
    left = x - radiusX;
    if (left < 0) {
        left = 0;
    }
    out[2] = left;
    right = x + radiusX;
    if (right > 0xff) {
        right = 0xff;
    }
    out[3] = right;
}

void ov41_022499B4(UnkStruct_ov41_022499B4 *a0, int count, enum HeapID heapID) {
    int size = count * sizeof(UnkStruct_ov41_022499B4_Node);
    a0->unk0 = Heap_Alloc(heapID, size);
    GF_ASSERT(a0->unk0 != NULL);
    memset(a0->unk0, 0, size);
    a0->unk4 = count;
}

void ov41_022499DC(UnkStruct_ov41_022499B4 *a0) {
    Heap_Free(a0->unk0);
    a0->unk0 = NULL;
    a0->unk4 = 0;
}

UnkStruct_ov41_022499B4_Node *ov41_022499F0(UnkStruct_ov41_022499B4 *a0, int a1, int a2) {
    int i;
    int count;
    UnkStruct_ov41_022499B4_Node *nodes;

    GF_ASSERT(a0->unk0 != NULL);
    GF_ASSERT(a0->unk4 != 0);
    count = a0->unk4;
    i = 0;
    if (count > 0) {
        nodes = a0->unk0;
        do {
            if (nodes->unk0 == 0) {
                break;
            }
            i++;
            nodes++;
        } while (i < count);
    }
    GF_ASSERT(count > i);
    a0->unk0[i].unk0 = a1;
    a0->unk0[i].unk4 = a2;
    return &a0->unk0[i];
}
