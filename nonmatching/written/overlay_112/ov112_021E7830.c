#include "global.h"

#include "bg_window.h"
#include "overlay_manager.h"
#include "screen_fade.h"
#include "sprite_system.h"

typedef int (*UnkFunc_ov112_021E7830)(void *data);

typedef struct UnkStruct_ov112_021E7830_Table {
    UnkFunc_ov112_021E7830 init;
    UnkFunc_ov112_021E7830 main;
    UnkFunc_ov112_021E7830 exit;
} UnkStruct_ov112_021E7830_Table;

extern UnkStruct_ov112_021E7830_Table ov112_021FF54C[];
extern void ov112_021E9C94(void *data);

BOOL ov112_021E7830(OverlayManager *man, int *state) {
    u8 *data = OverlayManager_GetData(man);
    u32 *words = (u32 *)data;

    switch (*state) {
    case 0:
        if (IsPaletteFadeFinished() == TRUE) {
            *state = 1;
        }
        break;
    case 1:
        *state = ov112_021FF54C[words[0]].init(data);
        break;
    case 2:
        *state = ov112_021FF54C[words[0]].main(data);
        BgSetPosTextAndCommit((BgConfig *)words[0x18 / 4], 5, 0, *(u16 *)(data + 0x1F2E0));
        break;
    case 3:
        *state = ov112_021FF54C[words[0]].exit(data);
        if (words[1] == 0xB) {
            BeginNormalPaletteFade(0, 0, 0, 0x7FFF, 6, 1, 0x9A);
            *state = 4;
        } else {
            words[0] = words[1];
            ov112_021E9C94(data);
        }
        break;
    case 4:
        if (IsPaletteFadeFinished() == TRUE) {
            return TRUE;
        }
        break;
    }
    if (*(u32 *)(data + 0x1E52C) != 0) {
        SpriteSystem_DrawSprites(*(SpriteManager **)(data + 0x1E52C));
    }
    return FALSE;
}
