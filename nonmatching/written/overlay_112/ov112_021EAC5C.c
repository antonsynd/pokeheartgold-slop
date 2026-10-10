typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;

void *SaveArray_PCStorage_Get(void *saveData);
void BeginNormalPaletteFade(int fadeMode, int typeMain, int typeSub, u16 color, int steps, int framesPerStep, int heapID);
int PCStorage_CountEmptySpotsInAllBoxes(void *storage);
int PCStorage_CountMonsInAllBoxes(void *storage);
u16 sub_0203263C(void *pokeWalker);
void sub_02032688(void *pokeWalker, u16 *a1, u16 *a2);
void sub_020326A4(void *pokeWalker, u16 a1, u16 a2);
void FillBgTilemapRect(void *bgConfig, u8 bgId, u16 fillValue, u8 x, u8 y, u8 width, u8 height, u8 mode);
void BgCommitTilemapBufferToVram(void *bgConfig, u8 bgId);
void ov112_021E9C10(void *work, int a1);
void ov112_021E9A78(void *work, int a1);
void ov112_021EADD0(void *work, int a1);

int ov112_021EAC5C(u8 *work) {
    void *storage = SaveArray_PCStorage_Get(*(void **)(work + 0x20));
    u16 state[2];

    BeginNormalPaletteFade(0, 1, 1, 0, 6, 1, 0x9A);
    if (PCStorage_CountEmptySpotsInAllBoxes(storage) < 5) {
        ov112_021E9C10(work, 3);
        ov112_021E9A78(work, 1);
        return 0x14;
    }
    if (PCStorage_CountMonsInAllBoxes(storage) == 0 && sub_0203263C(*(void **)(work + 0x1E440)) == 0) {
        ov112_021E9C10(work, 3);
        ov112_021E9A78(work, 1);
        return 0x17;
    }
    sub_02032688(*(void **)(work + 0x1E440), &state[1], &state[0]);
    switch (state[1]) {
    case 0:
        *(int *)(work + 4) = 3;
        *(u16 *)(work + 0x1D77C) = 0;
        *(int *)(work + 0x10) = 0;
        ov112_021E9C10(work, 3);
        ov112_021E9A78(work, 1);
        FillBgTilemapRect(*(void **)(work + 0x18), 1, 0, 0, 0, 0x20, 0x18, 0x10);
        BgCommitTilemapBufferToVram(*(void **)(work + 0x18), 1);
        sub_020326A4(*(void **)(work + 0x1E440), 0, 0);
        return 4;
    case 1:
        *(u16 *)(work + 0x1D77C) = 0;
        *(int *)(work + 0x10) = 0;
        ov112_021E9C10(work, 3);
        ov112_021E9A78(work, 7);
        FillBgTilemapRect(*(void **)(work + 0x18), 1, 0, 0, 0, 0x20, 0x18, 0x10);
        BgCommitTilemapBufferToVram(*(void **)(work + 0x18), 1);
        ov112_021EADD0(work, 0);
        return 0xF;
    case 2:
        ov112_021E9C10(work, 3);
        ov112_021E9A78(work, 1);
        FillBgTilemapRect(*(void **)(work + 0x18), 1, 0, 0, 0, 0x20, 0x18, 0x10);
        BgCommitTilemapBufferToVram(*(void **)(work + 0x18), 1);
        ov112_021EADD0(work, 1);
        return 0xA;
    }
    return 1;
}
