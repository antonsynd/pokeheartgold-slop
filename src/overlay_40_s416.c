#include "global.h"

#include "heap.h"
#include "pokedex.h"
#include "save.h"

typedef struct Ov40App {
    u8 filler_000[0x830];
    SaveData *saveData;
} Ov40App;

extern const u16 ov40_02245E44[];

u16 *ov40_0222DD68(enum HeapID heapID, int a1, u32 *count);

BOOL ov40_0223EBB8(Ov40App *app, int region) {
    BOOL found = FALSE;
    int end = ov40_02245E44[region + 1];
    int start = ov40_02245E44[region];
    u32 count;
    u16 *list = ov40_0222DD68(HEAP_ID_109, found, &count);
    Pokedex *pokedex = Save_Pokedex_Get(app->saveData);
    int i;

    for (i = start; i < end; i++) {
        if (!Pokedex_CheckMonSeenFlag(pokedex, list[i])) {
            list[i] = 0xFFFF;
        }
    }
    for (i = start; i < end; i++) {
        if (list[i] != 0xFFFF) {
            found = TRUE;
            break;
        }
    }
    Heap_Free(list);
    return found;
}
