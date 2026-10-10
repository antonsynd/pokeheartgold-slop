typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

u32 CalculateHpBarColor(u16 curHP, u16 maxHP, u32 width);
u32 CalculateHpBarPixelsLength(u16 curHP, u16 maxHP, u32 width);
void FillBgTilemapRect(void *bgConfig, u32 layer, u16 tile, u32 x, u32 y, u32 w, u32 h, u32 palette);
void ScheduleBgTilemapBufferTransfer(void *bgConfig, u32 layer);

void sub_0208A0EC(void *summaryScreen)
{
    u32 base;
    u32 colorIndex;
    u32 pixelCount;
    u16 tileFull;
    u32 i;
    u16 tile;

    /* r7 as the function received it: it keeps its value when the colour is out of range */
    __asm__ volatile("movs %0, r7" : "=l"(base) : : "cc");

    colorIndex = CalculateHpBarColor(*(u16 *)((u8 *)summaryScreen + 0x254), *(u16 *)((u8 *)summaryScreen + 0x256), 0x30);
    if (colorIndex <= 4) {
        switch (colorIndex) {
        case 0:
        case 3:
        case 4:
            base = 0xF097;
            break;
        case 1:
            base = 0xF0D7;
            break;
        case 2:
            base = 0xF0B7;
            break;
        }
    }

    pixelCount = CalculateHpBarPixelsLength(*(u16 *)((u8 *)summaryScreen + 0x254), *(u16 *)((u8 *)summaryScreen + 0x256), 0x30);
    tileFull = (u16)(base + 8);

    for (i = 0; i < 6; i++) {
        if (pixelCount >= 8) {
            tile = tileFull;
        } else {
            tile = (u16)(base + pixelCount);
        }

        FillBgTilemapRect(*(void **)summaryScreen, 3, tile, (u8)(i + 10), 5, 1, 1, 0x11);

        if (pixelCount >= 8) {
            pixelCount = (u8)(pixelCount - 8);
        } else {
            pixelCount = 0;
        }
    }

    ScheduleBgTilemapBufferTransfer(*(void **)summaryScreen, 3);
}
