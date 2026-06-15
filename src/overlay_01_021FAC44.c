#include "overlay_01_021FAC44.h"

#include "global.h"

#include "constants/heap.h"

#include "heap.h"

static u8 ov01_02209B70[4][0xF000];

static void ov01_021FACF8(int i, u32 size1, u32 size2, UnkStruct_Ov01_021FAC44 *s);

UnkStruct_Ov01_021FAC44 *ov01_021FAC44(int arg) {
    u8 i;
    UnkStruct_Ov01_021FAC44 *s = Heap_Alloc(HEAP_ID_FIELD1, 0x20);
    u32 size2;
    i = 0;
    do {
        s->slices[i] = ov01_02209B70[i];
        if (s->slices[i] == NULL) {
            return NULL;
        }
        if (arg) {
            s->buffers[i] = Heap_Alloc(HEAP_ID_FIELD1, 0x9000);
            if (s->buffers[i] == NULL) {
                return NULL;
            }
            size2 = 0x9000;
        } else {
            s->buffers[i] = NULL;
            size2 = 0;
        }
        ov01_021FACF8(i, 0xF000, size2, s);
        i++;
    } while (i < 4);
    return s;
}

void ov01_021FACB4(UnkStruct_Ov01_021FAC44 *s) {
    u8 i = 0;
    do {
        s->slices[i] = NULL;
        if (s->buffers[i] != NULL) {
            Heap_Free(s->buffers[i]);
            s->buffers[i] = NULL;
        }
        i++;
    } while (i < 4);
    Heap_Free(s);
}

void ov01_021FACE4(int i, UnkStruct_Ov01_021FAC44 *s, void **out) {
    *out = s->slices[i];
}

void ov01_021FACEC(int i, UnkStruct_Ov01_021FAC44 *s, void **out) {
    *out = s->buffers[i];
}

static void ov01_021FACF8(int i, u32 size1, u32 size2, UnkStruct_Ov01_021FAC44 *s) {
    MI_CpuFill8(s->slices[i], 0, size1);
    MI_CpuFill8(s->buffers[i], 0, size2);
}
