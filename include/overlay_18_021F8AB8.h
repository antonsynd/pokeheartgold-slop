#ifndef POKEHEARTGOLD_OVERLAY_18_021F8AB8_H
#define POKEHEARTGOLD_OVERLAY_18_021F8AB8_H

#include "global.h"

#include "bg_window.h"
#include "filesystem.h"
#include "msgdata.h"
#include "palette.h"
#include "pm_string.h"
#include "pokemon.h"
#include "pokepic.h"
#include "sprite.h"
#include "sys_task.h"
#include "unk_02009D48.h"
#include "unk_0200A090.h"

// Pokedex "new entry" popup shown in battle after a catch: dex number, name,
// category, height/weight, type icons, footprint and the mon picture.
//
// The work object is allocated by ov18_021F8974 (asm/overlay_18_021F7ED4.s),
// which copies a UnkStruct_50C (battle/battle.h) into the first 0x18 bytes.
// overlay_18.h declares ov18_021F8974/ov18_021F95F8/ov18_021F95AC with
// OverlayManager * for battle_command.c; the object is actually this struct.

typedef struct PokedexEntryPopupObj {
    Sprite *sprite;
    SpriteResource *res[4]; // indexed by GfGfxResType (char, pltt, cell, anim)
} PokedexEntryPopupObj;     // size: 0x14

typedef struct PokedexEntryPopup {
    BgConfig *bgConfig;             // 0x000
    PaletteData *paletteData;       // 0x004
    PokepicManager *pokepicManager; // 0x008
    Pokemon *mon;                   // 0x00C
    BOOL natDexEnabled;             // 0x010
    enum HeapID heapId;             // 0x014
    SysTask *task;                  // 0x018
    NARC *gfxNarc;                  // 0x01C  NARC_graphic_zukan_gra
    Pokepic *pokepic;               // 0x020
    Window windows[9];              // 0x024
    SpriteList *spriteList;         // 0x0B4
    G2dRenderer renderer;           // 0x0B8
    GF_2DGfxResMan *resMan[4];      // 0x1E0  indexed by GfGfxResType
    PokedexEntryPopupObj objs[4];   // 0x1F0  0: pokeball, 1/2: type icons, 3: footprint
    u16 unk_240;                    // 0x240
    u16 palFlashTimer;              // 0x242
    u32 species;                    // 0x244
    u32 form;                       // 0x248
    u32 type1;                      // 0x24C
    u32 type2;                      // 0x250
    u32 unk_254;                    // 0x254  read by ov18_021F89C8
} PokedexEntryPopup;                // size: 0x258

void ov18_021F8AB8(PokedexEntryPopup *popup);
void ov18_021F8B10(PokedexEntryPopup *popup);
void ov18_021F8BEC(PokedexEntryPopup *popup);
void ov18_021F8C0C(PokedexEntryPopup *popup);
BOOL ov18_021F8C48(PokedexEntryPopup *popup);
void ov18_021F8C68(PokedexEntryPopup *popup);
void ov18_021F8CCC(PokedexEntryPopup *popup);
void ov18_021F8F10(PokedexEntryPopup *popup);
void ov18_021F8FA0(PokedexEntryPopup *popup);
void ov18_021F91F0(PokedexEntryPopup *popup);
void ov18_021F95AC(PokedexEntryPopup *popup);
void ov18_021F95CC(PokedexEntryPopup *popup);
Pokepic *ov18_021F95F8(PokedexEntryPopup *popup);
void ov18_021F95FC(Window *window, String *string, int x, int y, u32 fontId, u32 color, int align);
void ov18_021F9648(Window *window, MsgData *msgData, int msgId, int x, int y, u32 fontId, u32 color, int align);
u32 ov18_021F967C(int type);
u8 ov18_021F9688(int type);
void *ov18_021F9694(u32 species, enum HeapID heapId);

#endif // POKEHEARTGOLD_OVERLAY_18_021F8AB8_H
