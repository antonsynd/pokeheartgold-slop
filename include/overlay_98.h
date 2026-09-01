#ifndef POKEHEARTGOLD_OVERLAY_98_H
#define POKEHEARTGOLD_OVERLAY_98_H

#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "player_data.h"
#include "pm_string.h"
#include "sprite.h"
#include "sprite_system.h"

// Shared helpers for the overlay_96 / overlay_99 stats screens: a SpriteSystem
// holder with mon sprite/icon loaders, a Window + MessageFormat text holder
// with print helpers, and rank/threshold lookups.

typedef struct Ov98SpriteSys Ov98SpriteSys;
typedef struct Ov98TextSys Ov98TextSys;

// Packed mon descriptor consumed by ov98_0221E7E8 / ov98_0221E970.
typedef struct Ov98MonInfo {
    u32 species : 9;
    u32 form : 5;
    u32 gender : 2;
    u32 shiny : 1;
    u32 personality;
} Ov98MonInfo;

typedef struct Ov98StatEntry {
    u16 value;
    u16 unk2;
    u32 unk4;
} Ov98StatEntry;

typedef struct Ov98Record {
    Ov98StatEntry entries[5];
    u32 unk28;
} Ov98Record; // size: 0x2C

SpriteSystem *ov98_0221E5C0(Ov98SpriteSys *spriteSys);
SpriteManager *ov98_0221E5D0(Ov98SpriteSys *spriteSys);
Ov98SpriteSys *ov98_0221E5E0(enum HeapID heapId, SpriteResourceCountsListUnion *counts, int numSprites);
void ov98_0221E684(Ov98SpriteSys *spriteSys, ManagedSprite **sprites, u32 count);
void ov98_0221E6CC(Ov98SpriteSys *spriteSys);
ManagedSprite *ov98_0221E6E0(Ov98SpriteSys *spriteSys, const ManagedSpriteTemplate *template);
void ov98_0221E6F0(Ov98SpriteSys *spriteSys, ManagedSprite **sprites, const int *resIds, u32 count, int start, s16 x, s16 y, BOOL isMain);
void ov98_0221E784(SpriteSystem *spriteSystem, SpriteManager *spriteManager, const int *resIds, int vram);
void ov98_0221E7E8(ManagedSprite *sprite, const Ov98MonInfo *mon, BOOL isMain, BOOL grayscale, enum HeapID heapId);
void ov98_0221E8A8(Ov98SpriteSys *spriteSys, const int *resIds, int count, int screen, BOOL flag);
void ov98_0221E970(Ov98SpriteSys *spriteSys, ManagedSprite *sprite, const Ov98MonInfo *mon, BOOL isMain, BOOL animate);
Ov98TextSys *ov98_0221EABC(enum HeapID heapId, BgConfig *bgConfig, int windowCount, const WindowTemplate *templates, s32 msgBank);
void ov98_0221EB84(Ov98TextSys *textSys, int windowCount);
void ov98_0221EBD8(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, BOOL center);
void ov98_0221EBEC(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, BOOL center, u8 y, u32 fontId);
void ov98_0221EC08(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, u8 x, u8 y);
void ov98_0221EC24(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, u8 fill);
void ov98_0221ECD0(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, s32 value, u32 numDigits, u32 bufIdx);
void ov98_0221ED3C(Ov98TextSys *textSys, u32 windowIdx, u32 msgId);
void ov98_0221ED48(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, u32 x, u8 y);
void ov98_0221EDA4(Ov98TextSys *textSys, s32 value, u32 numDigits, u32 bufIdx);
void ov98_0221EDC4(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, u32 bufIdx, PlayerProfile *profile);
void ov98_0221EE28(Ov98TextSys *textSys, u32 windowIdx, u32 msgId);
void ov98_0221EE84(Ov98TextSys *textSys, u32 windowIdx);
void ov98_0221EE9C(Ov98TextSys *textSys, u32 windowIdx, String *string, u32 x, u8 y);
void ov98_0221EEDC(Ov98TextSys *textSys, u32 windowIdx);
void ov98_0221EEEC(Ov98TextSys *textSys, u32 windowIdx, u8 y);
MessageFormat *ov98_0221EEFC(Ov98TextSys *textSys);
BOOL ov98_0221EF24(void);
int ov98_0221EF64(u32 value);
u8 ov98_0221EF80(int value);
u16 ov98_0221EFA4(u32 stat, u32 col);
BOOL ov98_0221EFB4(u32 stat, u32 col, u32 value);
BOOL ov98_0221EFE8(u32 stat, u32 col, u32 value);
u16 ov98_0221F01C(const Ov98Record *record, u32 idx);
u16 ov98_0221F024(const u8 *dexFlags);
u8 ov98_0221F058(const Ov98Record *records);
void ov98_0221F090(void);
void ov98_0221F0EC(void);
u32 ov98_0221F120(u32 value, u32 scaleIdx);
u8 ov98_0221F150(s32 value);

#endif // POKEHEARTGOLD_OVERLAY_98_H
