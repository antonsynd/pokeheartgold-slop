#include "global.h"
#include "bg_window.h"
#include "sprite.h"

BOOL FieldSystem_ShouldDrawStartMenuIcon(void *fieldSystem, int icon);

void ov27_0225BC84(u8 *ctx) {
    BOOL icons[8];
    int i;
    int count = 0;

    for (i = 0; i < 8; i++) {
        icons[i] = FieldSystem_ShouldDrawStartMenuIcon(*(void **)(ctx + 0x10), i);
    }
    for (i = 0; i < 8; i++) {
        if (icons[i] != 0) {
            CopyWindowToVram((Window *)(ctx + 0x3f0 + i * 0x10));
            count++;
        }
    }
    if (count != 0) {
        Sprite_SetDrawFlag(*(Sprite **)(ctx + 0x3c8), TRUE);
        CopyWindowToVram((Window *)(ctx + 0x3e0));
    }
}
