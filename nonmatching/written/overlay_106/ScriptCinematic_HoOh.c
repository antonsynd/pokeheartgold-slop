#include "global.h"

typedef s32 (*UnkFunc_ScriptCinematic_HoOh)(u8 *work, void *fn, u32 offset, u32 a3);

extern const UnkFunc_ScriptCinematic_HoOh sScriptCinematicSubs_HoOh[];
extern void ov106_021E5C30(u8 *work);

BOOL ScriptCinematic_HoOh(u8 *work, u32 a1, u32 a2, u32 a3) {
    s32 state = *(s32 *)(work + 0x40C);
    UnkFunc_ScriptCinematic_HoOh fn = sScriptCinematicSubs_HoOh[state];
    /* the asm calls through the pointer with r1 = the pointer and r2 = state * 4 */
    *(s32 *)(work + 0x40C) = fn(work, (void *)fn, (u32)state * 4, a3);
    if (*(s32 *)(work + 0x40C) == 6) {
        return FALSE;
    }
    ov106_021E5C30(work);
    return TRUE;
}
