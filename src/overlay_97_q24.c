#include "global.h"

#include "heap.h"
#include "sprite.h"

typedef struct Ov97Row {
    Sprite *main;
    Sprite *parts[5];
} Ov97Row;

typedef struct Ov97_0221F0E0 {
    u8 filler_000[0x1B4];
    Sprite *icons[5];
    u8 filler_1C8[0x14];
    Ov97Row rows[5];
    Sprite *cursor;
    void *buffer;
} Ov97_0221F0E0;

void ov97_0221F0E0(Ov97_0221F0E0 *a0) {
    int i;
    int j;

    for (i = 0; i < 5; i++) {
        Sprite_Delete(a0->icons[i]);
    }
    for (i = 0; i < 5; i++) {
        Sprite_Delete(a0->rows[i].main);
        for (j = 0; j < 5; j++) {
            Sprite_Delete(a0->rows[i].parts[j]);
        }
    }
    Sprite_Delete(a0->cursor);
    Heap_Free(a0->buffer);
}
