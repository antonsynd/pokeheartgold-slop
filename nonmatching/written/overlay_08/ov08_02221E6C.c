typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

void *Heap_Alloc(u32 heapID, u32 size);
void Heap_Free(void *ptr);
void LoadRectToBgTilemapRect(void *bgConfig, u8 bgId, const void *buffer, u8 destX, u8 destY, u8 width, u8 height);
void ScheduleBgTilemapBufferTransfer(void *bgConfig, u8 bgId);
void ov08_02221D2C(void *battleParty, u16 *buf, u32 button, u32 buttonState, u32 isAltButton);

extern const u8 ov08_02225A54[];

void ov08_02221E6C(char *battleParty, u32 button, u32 buttonState, u32 isAltButton)
{
    const u8 *dim = &ov08_02225A54[button * 4];
    u8 h = dim[3];
    u8 w = dim[2];
    u16 *buf = Heap_Alloc(*(u32 *)(*(char **)battleParty + 0xc), w * h * 2);

    ov08_02221D2C(battleParty, buf, button, buttonState, isAltButton);
    LoadRectToBgTilemapRect(*(void **)(battleParty + 0x1e4), 6, buf, dim[0], dim[1], w, h);
    ScheduleBgTilemapBufferTransfer(*(void **)(battleParty + 0x1e4), 6);
    Heap_Free(buf);
}
