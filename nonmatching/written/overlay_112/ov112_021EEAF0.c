#include "global.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "pm_string.h"
#include "pokewalker.h"
#include "player_data.h"
#include "pokedex.h"
#include "save_arrays.h"
#include "trainer_memo.h"
#include "math_util.h"
#include "heap.h"

extern u64 _u32_div_f(u32 a, u32 b);
extern void ov112_021EE9A4(Pokemon *mon, void *a1, void *a2, u32 a3, int a4);
extern void ov112_021EE9E4(Pokemon *mon, u32 a1, void *a2, u32 a3, int a4);

void ov112_021EEAF0(u8 *work, int useWalkerBox) {
    PCStorage *storage;
    Pokemon *mon;
    String *playerName;
    String *str;
    BoxPokemon *boxMon;
    u16 walkerA;
    u16 walkerB;
    u8 one;
    u8 flag;
    int boxno;
    int slotno;
    int i;
    u8 *entry;
    u8 *base;
    u32 rem;

    storage = SaveArray_PCStorage_Get(*(SaveData **)(work + 0x20));
    mon = AllocMonZeroed((enum HeapID)0x9A);
    playerName = PlayerProfile_GetPlayerName_NewString(*(PlayerProfile **)(work + 0x1E438), (enum HeapID)0x9A);
    sub_02032688(*(POKEWALKER **)(work + 0x1E440), &walkerA, &walkerB);
    if (useWalkerBox) {
        boxno = walkerB;
    } else {
        boxno = 0;
    }
    slotno = 0;
    entry = work + 0x9D7C;
    for (i = 0; i < 3; i++, entry += 0x10) {
        if (*(u16 *)entry != 0) {
            rem = (u32)(_u32_div_f(MTRandom(), 0x18) >> 32);
            ov112_021EE9A4(mon, *(void **)(work + 0x1E438), entry, rem, 0);
            BoxMonSetTrainerMemo(Mon_GetBoxMon(mon), *(PlayerProfile **)(work + 0x1E438), 0, 0xE9, (enum HeapID)0x9A);
            boxMon = Mon_GetBoxMon(mon);
            PCStorage_FindFirstEmptySlot(storage, &boxno, &slotno);
            PCStorage_PlaceMonInBoxByIndexPair(storage, boxno, slotno, boxMon);
            Pokedex_SetMonSeenFlag(*(Pokedex **)(work + 0x1E444), mon);
            Pokedex_SetMonCaughtFlag(*(Pokedex **)(work + 0x1E444), mon);
        }
    }
    if ((work[0xAABC] >> 5) & 1) {
        str = String_New(0x10, (enum HeapID)0x9A);
        base = work + 0xAD00;
        if (*(u16 *)base != 0) {
            CopyU16ArrayToString(str, (const u16 *)(work + 0xAD1E));
            ZeroMonData(mon);
            boxMon = Mon_GetBoxMon(mon);
            rem = (u32)(_u32_div_f(MTRandom(), 0x18) >> 32);
            ov112_021EE9E4(mon, *(u32 *)(work + 0xAD14), base, rem, (base[0xE] >> 1) & 1);
            flag = work[0xAD2E] & 1;
            SetBoxMonData(boxMon, 0x9D, &flag);
            SetBoxMonData(boxMon, 0x91, str);
            BoxMonSetTrainerMemo(Mon_GetBoxMon(mon), *(PlayerProfile **)(work + 0x1E438), 4, *(u16 *)(work + 0xAD1A), (enum HeapID)0x9A);
            SetBoxMonData(boxMon, 10, work + 0xAD2F);
            one = 1;
            SetBoxMonData(boxMon, 0x6E, &one);
            SetBoxMonData(boxMon, 0x9B, work + 0xAD30);
            PCStorage_FindFirstEmptySlot(storage, &boxno, &slotno);
            PCStorage_PlaceMonInBoxByIndexPair(storage, boxno, slotno, boxMon);
            Pokedex_SetMonSeenFlag(*(Pokedex **)(work + 0x1E444), mon);
            Pokedex_SetMonCaughtFlag(*(Pokedex **)(work + 0x1E444), mon);
            if (*(void **)(work + 0x1E430) == NULL) {
                *(BoxPokemon **)(work + 0x1E430) = PCStorage_GetMonByIndexPair(storage, boxno, slotno);
            }
        }
        String_Delete(str);
    }
    String_Delete(playerName);
    Heap_Free(mon);
}
