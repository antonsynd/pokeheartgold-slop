#include "global.h"

#include "sprite_system.h"
#include "vram_transfer_manager.h"

typedef struct UnkStruct_Ov56_021E6D90 {
    u8 filler0[0xC];
    u8 unkC;
    u8 fillerD[0xA3];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    ManagedSprite *sprites[3];
} UnkStruct_Ov56_021E6D90;

void ov56_021E6D90(UnkStruct_Ov56_021E6D90 *data);

void ov56_021E6D90(UnkStruct_Ov56_021E6D90 *data) {
    int i;

    if (data->unkC == 0) {
        for (i = 0; i < 3; i++) {
            if (data->sprites[i] != NULL) {
                Sprite_DeleteAndFreeResources(data->sprites[i]);
            }
        }
        SpriteSystem_FreeResourcesAndManager(data->spriteSystem, data->spriteManager);
        SpriteSystem_Free(data->spriteSystem);
        GF_DestroyVramTransferManager();
    }
}
