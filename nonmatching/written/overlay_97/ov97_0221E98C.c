#include "global.h"
#include "pokemon.h"
#include "party.h"
#include "save_arrays.h"
#include "string_util.h"
#include "pokemon_storage_system.h"

typedef struct UnkStruct_ov97_0221E898 {
    u32 species;
    u32 personality;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 shiny;
    u16 unk12;
    u8 pad14[4];
    u16 nickname[12];
} UnkStruct_ov97_0221E898;

typedef struct UnkStruct_ov97_0221E98C_Entry {
    u8 pad0[0xc];
    u16 species;
    u16 unkE;
    u32 personality;
    u8 unk14[8];
    u8 shiny;
    u8 unk1D;
    u16 nickname[5]; // entry stride is 0x28; the copied name runs into the next entry
} UnkStruct_ov97_0221E98C_Entry;

typedef struct UnkStruct_ov97_0221E98C_Arg1 {
    SaveData **saveData;
    u32 unk4;
} UnkStruct_ov97_0221E98C_Arg1;

typedef struct UnkStruct_ov97_0221E98C_Slot {
    u32 box;
    u32 slot;
} UnkStruct_ov97_0221E98C_Slot;

typedef struct UnkStruct_ov97_0221E98C_Arg0 {
    u8 pad0[0x10];
    UnkStruct_ov97_0221E98C_Slot slots[3];
    u32 unk28;
} UnkStruct_ov97_0221E98C_Arg0;

extern BOOL ov97_0221E898(PCStorage *storage, u32 box, u32 slot, UnkStruct_ov97_0221E898 *out);
extern void ov97_0221EA88(Party *party, u8 slot, void *dest);
extern void ov97_0221EB38(BoxPokemon *boxMon, void *dest);

void ov97_0221E98C(UnkStruct_ov97_0221E98C_Arg0 *a0, UnkStruct_ov97_0221E98C_Arg1 *a1) {
    int i;
    UnkStruct_ov97_0221E98C_Entry *ent;
    UnkStruct_ov97_0221E898 info;

    a1->unk4 = a0->unk28;
    if (a0->unk28 != 0) {
        return;
    }
    ent = (UnkStruct_ov97_0221E98C_Entry *)a1;
    for (i = 0; i < 3; i++, ent++) {
        u32 box = a0->slots[i].box;
        if (box == 0x12) {
            Pokemon *mon = Party_GetMonByIndex(SaveArray_Party_Get(*a1->saveData), a0->slots[i].slot);
            ent->species = GetMonData(mon, 5, NULL);
            ent->personality = GetMonData(mon, 0, NULL);
            ent->unkE = GetMonData(mon, 0x70, NULL);
            GetMonData(mon, 0x75, ent->nickname);
            ent->shiny = MonIsShiny(mon);
            ent->unk1D = GetMonData(mon, 0x6f, NULL);
            ov97_0221EA88(SaveArray_Party_Get(*a1->saveData), a0->slots[i].slot, ent->unk14);
        } else {
            ov97_0221E898(SaveArray_PCStorage_Get(*a1->saveData), box, a0->slots[i].slot, &info);
            ent->species = info.species;
            ent->personality = info.personality;
            ent->unkE = info.unkA;
            CopyU16StringArrayN(ent->nickname, info.nickname, 11);
            ent->shiny = info.shiny;
            ent->unk1D = info.unk12;
            ov97_0221EB38(PCStorage_GetMonByIndexPair(SaveArray_PCStorage_Get(*a1->saveData), a0->slots[i].box, a0->slots[i].slot), ent->unk14);
        }
    }
}
