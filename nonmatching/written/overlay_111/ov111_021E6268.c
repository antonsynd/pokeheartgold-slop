#include "global.h"

typedef struct UnkStruct_ov111_021E6268_CharData {
    u8 unk0[0x14];
    void *pRawData;
} UnkStruct_ov111_021E6268_CharData;

extern void *NARC_New(u32 narcId, u32 heapId);
extern void NARC_Delete(void *narc);
extern u32 Pokemon_GetIconNaix(void *mon);
extern u8 Pokemon_GetIconPalette(void *mon);
extern void *GfGfxLoader_GetCharDataFromOpenNarc(void *narc, u32 fileId, u32 compressed, UnkStruct_ov111_021E6268_CharData **ppCharData, u32 heapId);
extern void ov111_021E62E0(void *sprite, void *data, u32 size);
extern void Heap_Free(void *ptr);
extern void ManagedSprite_SetPaletteOverride(void *sprite, u8 palette);
extern void ManagedSprite_SetAnim(void *sprite, u32 anim);
extern void ManagedSprite_SetAnimSpeed(void *sprite, u32 speed);
extern void ManagedSprite_SetAnimateFlag(void *sprite, u32 flag);

void ov111_021E6268(void *sprite, void *mon, u32 paletteBase, u32 heapId) {
    UnkStruct_ov111_021E6268_CharData *charData;
    void *narc = NARC_New(0x14, heapId);
    void *buf = GfGfxLoader_GetCharDataFromOpenNarc(narc, Pokemon_GetIconNaix(mon), 0, &charData, heapId);
    ov111_021E62E0(sprite, charData->pRawData, 0x400);
    Heap_Free(buf);
    ManagedSprite_SetPaletteOverride(sprite, (u8)(paletteBase + Pokemon_GetIconPalette(mon)));
    ManagedSprite_SetAnim(sprite, 1);
    ManagedSprite_SetAnimSpeed(sprite, 0x1000);
    ManagedSprite_SetAnimateFlag(sprite, 1);
    NARC_Delete(narc);
}
