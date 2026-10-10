typedef unsigned char u8;
typedef unsigned short u16;

void FillBgTilemapRect(void *bgConfig, u8 bgId, u16 fillValue, u8 x, u8 y, u8 width, u8 height, u8 mode);
void BgCommitTilemapBufferToVram(void *bgConfig, u8 bgId);
void *ov112_021EA08C(void *work, int a1, int a2);

int ov112_021EC208(u8 *work) {
    FillBgTilemapRect(*(void **)(work + 0x18), 2, 0, 0, 0, 0x20, 0x18, 0x10);
    FillBgTilemapRect(*(void **)(work + 0x18), 5, 0, 0, 0, 0x40, 0x18, 0x10);
    BgCommitTilemapBufferToVram(*(void **)(work + 0x18), 2);
    BgCommitTilemapBufferToVram(*(void **)(work + 0x18), 5);
    *(void **)(work + 0x1E524) = ov112_021EA08C(work, 2, 0x1F);
    FillBgTilemapRect(*(void **)(work + 0x18), 2, 0, 0, 0, 0x20, 0x18, 0x10);
    return 0x15;
}
