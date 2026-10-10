#include "global.h"
#include "sprite_system.h"

typedef s32 (*UnkFunc_ScriptCinematic_Arceus)(u8 *work, void *fn, u32 offset, u32 a3);

extern const UnkFunc_ScriptCinematic_Arceus sScriptCinematicSubs_Arceus[];
extern void ov106_021E6668(u8 *data);

BOOL ScriptCinematic_Arceus(u8 *work, u32 a1, u32 a2, u32 a3) {
    u8 *data;
    s32 state = *(s32 *)(work + 0x40C);
    UnkFunc_ScriptCinematic_Arceus fn = sScriptCinematicSubs_Arceus[state];
    /* the asm calls through the pointer with r1 = the pointer and r2 = state * 4 */
    *(s32 *)(work + 0x40C) = fn(work, (void *)fn, (u32)state * 4, a3);
    if (*(s32 *)(work + 0x40C) == 5) {
        return FALSE;
    }
    data = *(u8 **)(work + 0x418);
    ov106_021E6668(data);
    SpriteSystem_DrawSprites(*(SpriteManager **)(data + 0xC));
    return TRUE;
}
