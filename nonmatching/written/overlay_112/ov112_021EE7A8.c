typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

void *SaveArray_PCStorage_Get(void *saveData);
void *AllocMonZeroed(int heapID);
void *Mon_GetBoxMon(void *mon);
void sub_02032688(void *pokeWalker, u16 *a1, u16 *a2);
int Pokewalker_TryGetBoxMon(void *pokeWalker, void *boxMon);
void Pokewalker_ClearBoxMon(void *pokeWalker);
u16 ov112_021EE8BC(void *boxMon, void *mon, int a2);
void ov112_021EE970(void *boxMon, int a1);
u32 MTRandom(void);
void ov112_021EE9A4(void *mon, void *profile, void *a2, int a3, int a4);
void BoxMonSetTrainerMemo(void *boxMon, void *profile, int strat, int mapsec, int heapID);
int PCStorage_FindFirstEmptySlot(void *storage, int *box, int *slot);
int PCStorage_PlaceMonInBoxByIndexPair(void *storage, u32 box, u32 slot, void *boxMon);
void *PCStorage_GetMonByIndexPair(void *storage, u32 box, u32 slot);
void Pokedex_SetMonSeenFlag(void *pokedex, void *mon);
void Pokedex_SetMonCaughtFlag(void *pokedex, void *mon);
void Heap_Free(void *ptr);

void ov112_021EE7A8(u8 *work) {
    void *storage = SaveArray_PCStorage_Get(*(void **)(work + 0x20));
    void *mon = AllocMonZeroed(0x9A);
    void *boxMon = Mon_GetBoxMon(mon);
    u16 walkerInfo[2];
    int box, slot;
    int placed;

    sub_02032688(*(void **)(work + 0x1E440), &walkerInfo[0], &walkerInfo[1]);
    box = walkerInfo[1];
    slot = 0;
    if (((work[0x10E7] >> 2) & 1) == 0) {
        placed = Pokewalker_TryGetBoxMon(*(void **)(work + 0x1E440), boxMon);
        if (placed) {
            *(u16 *)(work + 0x1F374) = ov112_021EE8BC(boxMon, mon, *(int *)(work + 0x1EC7C));
        }
        ov112_021EE970(boxMon, *(int *)(work + 0x1EC7C));
        *(int *)(work + 0x1EC7C) = 0;
        Pokewalker_ClearBoxMon(*(void **)(work + 0x1E440));
    } else {
        ov112_021EE9A4(mon, *(void **)(work + 0x1E438), work + 0x9D44, MTRandom() % 24, 0);
        BoxMonSetTrainerMemo(Mon_GetBoxMon(mon), *(void **)(work + 0x1E438), 0, 0xE9, 0x9A);
        placed = 1;
    }
    if (placed) {
        PCStorage_FindFirstEmptySlot(storage, &box, &slot);
        PCStorage_PlaceMonInBoxByIndexPair(storage, box, slot, boxMon);
        *(void **)(work + 0x1E430) = PCStorage_GetMonByIndexPair(storage, box, slot);
        Pokedex_SetMonSeenFlag(*(void **)(work + 0x1E444), mon);
        Pokedex_SetMonCaughtFlag(*(void **)(work + 0x1E444), mon);
    }
    Heap_Free(mon);
}
