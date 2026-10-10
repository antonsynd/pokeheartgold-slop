#include "global.h"
#include "sprite_system.h"
#include "unk_0201956C.h"

typedef s32 (*UnkFunc_ov103_021ED2D4)(u8 *data, void *fn, u32 offset, u32 a3);

extern const UnkFunc_ov103_021ED2D4 ov103_021EECA8[];
extern void ov103_021EDF68(u8 *work);

BOOL ov103_021ED2D4(u8 *data, s32 *state, u32 a2, u32 a3) {
    s32 cur = *state;
    UnkFunc_ov103_021ED2D4 fn = ov103_021EECA8[cur];
    s32 ret;
    u8 *work;

    /* the asm calls through the pointer with r1 = the pointer and r2 = state * 4 */
    ret = fn(data, (void *)fn, (u32)cur * 4, a3);
    *state = ret;
    if (ret == 0x19) {
        return FALSE;
    }
    work = *(u8 **)(data + 0xC);
    if (work != NULL) {
        sub_02019934(*(UnkStruct_0201956C **)(work + 4));
        ov103_021EDF68(*(u8 **)(data + 0xC));
        SpriteSystem_DrawSprites(*(SpriteManager **)(*(u8 **)(data + 0xC) + 0x254));
    }
    return TRUE;
}
