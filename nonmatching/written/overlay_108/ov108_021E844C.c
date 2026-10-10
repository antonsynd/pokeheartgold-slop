#include "global.h"
#include "sprite_system.h"

void ov108_021E844C(u8 *data) {
    if (*(SpriteManager **)(data + 0x350) != NULL) {
        SpriteSystem_DestroySpriteManager(*(SpriteSystem **)(data + 0x34C), *(SpriteManager **)(data + 0x350));
        *(SpriteManager **)(data + 0x350) = NULL;
    }
}
