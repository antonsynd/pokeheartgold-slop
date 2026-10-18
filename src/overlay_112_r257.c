#include "global.h"

#include "save_local_field_data.h"

typedef struct Ov112Entry {
    u8 filler_000[0x1F8];
    u16 type;
    u8 filler_1FA[0x2A];
} Ov112Entry;

typedef struct Ov112_021ED530 {
    u8 filler_0000[0x20];
    SaveData *saveData;
    u8 filler_0024[0xB1B4 - 0x24];
    Ov112Entry entries[11];
} Ov112_021ED530;

void ov112_021F328C(SaveData *saveData, Ov112Entry *entry);

void ov112_021ED530(Ov112_021ED530 *a0) {
    Location *position = LocalFieldData_GetCurrentPosition(Save_LocalFieldData_Get(a0->saveData));
    int i;

    if (position->mapId == 0x1F3) {
        return;
    }
    for (i = 9; i >= 0; i--) {
        if (a0->entries[i].type == 7 || a0->entries[i].type == 8) {
            ov112_021F328C(a0->saveData, &a0->entries[i + 1]);
        }
    }
}
