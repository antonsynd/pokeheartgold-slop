typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef short s16;

void BagCursor_Field_PocketSetPosition(void *cursor, u32 pocket, u8 position, u8 scroll);
void BagCursor_Field_SetPocket(void *cursor, u16 pocket);

void ov15_021F9EA8(void *app)
{
    u8 *ctx = *(u8 **)((u8 *)app + 0x234);
    u8 *pockets;
    u32 i;

    if (*(void **)(ctx + 0x6c) == 0) {
        return;
    }
    pockets = ctx + 4;
    for (i = 0; i < 8; i++) {
        u8 *p = pockets + i * 0xc;
        if (*(u32 *)p != 0) {
            u16 position = *(u16 *)(p + 4);
            s16 scroll = *(s16 *)(p + 6);
            BagCursor_Field_PocketSetPosition(*(void **)(*(u8 **)((u8 *)app + 0x234) + 0x6c), *(u8 *)(p + 8), (u8)position, (u8)scroll);
        }
    }
    ctx = *(u8 **)((u8 *)app + 0x234);
    BagCursor_Field_SetPocket(*(void **)(ctx + 0x6c), *(u8 *)(pockets + *(u8 *)(ctx + 0x64) * 0xc + 8));
}
