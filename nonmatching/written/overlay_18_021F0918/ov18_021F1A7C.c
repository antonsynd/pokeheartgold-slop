typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

extern u32 ov18_021FA328[];

void *Heap_AllocAtEnd(int heapId, u32 size);
void Heap_Free(void *ptr);
void MIi_CpuClearFast(u32 value, u32 *dst, u32 size);
u32 Pokedex_GetSeenSpindaPersonality(void *pokedex, u32 arg);
void GetMonSpriteCharAndPlttNarcIdsEx(void *out, u32 species, u32 a, u32 b, u32 c, u32 d, u32 personality);
void sub_02014510(u32 narcId, u32 fileId, u32 heapId, void *a3, void *dest, u32 personality, u32 isAnimated, u32 whichFacing, u32 species);
void *Sprite_GetImageProxy(void *sprite);
void *Sprite_GetPaletteProxy(void *sprite);
u32 NNS_G2dGetImageLocation(void *proxy, u32 type);
u32 NNS_G2dGetImagePaletteLocation(void *proxy, u32 type);
void DC_FlushRange(void *ptr, u32 nBytes);
void GXS_LoadOBJ(void *src, u32 offset, u32 size);
void GfGfxLoader_GXLoadPal(u32 narcId, u32 memberNo, u32 location, u32 slotOffset, u32 size, u32 heapId);
void PaletteData_LoadPaletteSlotFromHardware(void *data, u32 bufferId, u32 pos, u32 size);
void PaletteData_LoadNarc(void *data, u32 narcId, u32 memberNo, u32 heapId, u32 bufferId, u32 size, u32 pos);
void PaletteData_FillPaletteInBuffer(void *data, u32 bufferId, u32 which, u32 value, u32 begin, u32 end);

void ov18_021F1A7C(void *app, u32 species, u32 form, u32 gender, u8 facing, s32 spriteIndex, s32 mode)
{
    u32 templateBase[4];
    u16 narcIds[8];
    void *buffer;
    u32 personality;
    u32 imageLoc;
    u32 palLoc;
    void *spriteTable;
    s32 slot;

    templateBase[0] = ov18_021FA328[0];
    templateBase[1] = ov18_021FA328[1];
    templateBase[2] = ov18_021FA328[2];
    templateBase[3] = ov18_021FA328[3];
    buffer = Heap_AllocAtEnd(0x25, 0xc80);
    MIi_CpuClearFast(0, (u32 *)narcIds, 0x10);
    if (species == 0x147 && facing == 2) {
        personality = Pokedex_GetSeenSpindaPersonality(**(void ***)app, 0);
    } else {
        personality = 0;
    }
    GetMonSpriteCharAndPlttNarcIdsEx(narcIds, species, gender, facing, 0, form, personality);
    sub_02014510(narcIds[0], narcIds[1], 0x25, templateBase, buffer, personality, 0, facing, species);
    spriteTable = (u8 *)app + 0x670;
    slot = spriteIndex * 4;
    imageLoc = NNS_G2dGetImageLocation(Sprite_GetImageProxy(**(void ***)((u8 *)spriteTable + slot)), 2);
    DC_FlushRange(buffer, 0xc80);
    GXS_LoadOBJ(buffer, imageLoc, 0xc80);
    palLoc = NNS_G2dGetImagePaletteLocation(Sprite_GetPaletteProxy(**(void ***)((u8 *)spriteTable + slot)), 2);
    if (mode == 0) {
        GfGfxLoader_GXLoadPal(narcIds[0], narcIds[2], 5, palLoc, 0x20, 0x25);
        PaletteData_LoadPaletteSlotFromHardware(*(void **)((u8 *)app + 0x850), 3, (palLoc << 15) >> 16, 0x20);
    } else if (mode == 1) {
        PaletteData_LoadNarc(*(void **)((u8 *)app + 0x850), narcIds[0], narcIds[2], 0x25, 3, 0x20, (palLoc << 15) >> 16);
    } else {
        u32 half = palLoc >> 1;
        PaletteData_FillPaletteInBuffer(*(void **)((u8 *)app + 0x850), 3, 2, 0, (u16)half, (u16)(half + 0x10));
    }
    Heap_Free(buffer);
}
