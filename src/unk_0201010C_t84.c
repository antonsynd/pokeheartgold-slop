#include "global.h"

typedef struct UnkStruct_02012238_Buffer {
    u8 filler_000[0x300];
    s16 left[0xC0];
    s16 right[0xC0];
} UnkStruct_02012238_Buffer;

typedef struct UnkStruct_02012238_Rect {
    int left;
    int top;
    int right;
    int bottom;
} UnkStruct_02012238_Rect;

typedef struct UnkStruct_02012290_Item {
    u8 unk00[0x10];
    u8 unk10[0x20];
} UnkStruct_02012290_Item;

typedef struct UnkStruct_02012290 {
    u8 filler_00[0xC];
    UnkStruct_02012290_Item *items;
    int count;
} UnkStruct_02012290;

UnkStruct_02012238_Buffer *sub_02010EE0(void *a0, int a1);
void sub_02010A8C(void *a0, void *a1);

void sub_02012238(void *a0, UnkStruct_02012238_Rect *rect) {
    UnkStruct_02012238_Buffer *buffer = sub_02010EE0(a0, 0);
    int i;
    int left = rect->left / 128;
    int right = rect->right / 128;
    int bottom = rect->bottom / 128;
    int top = rect->top / 128;

    for (i = top; i < bottom; i++) {
        buffer->left[i] = left;
        buffer->right[i] = right;
    }
}

void sub_02012290(UnkStruct_02012290 *a0) {
    int i;

    for (i = 0; i < a0->count; i++) {
        sub_02010A8C(a0->items[i].unk00, a0->items[i].unk10);
    }
}
