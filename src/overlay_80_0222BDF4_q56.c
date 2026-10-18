#include "global.h"

#include "frontier/frontier_script_context.h"
#include "frontier/overlay_80_0222BDF4.h"

#include "filesystem.h"
#include "palette.h"
#include "sprite_system.h"

typedef struct FrtCmdSystemView {
    void *unk0;
    u8 filler_04[0x30];
    enum HeapID heapID;
} FrtCmdSystemView;

typedef struct FrtCmdMapView {
    BgConfig *bgConfig;
    PaletteData *paletteData;
    u8 filler_08[0x2C];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
} FrtCmdMapView;

void *sub_0209680C(void *a0);
void ov80_02239AF8(SpriteSystem *spriteSystem, SpriteManager *spriteManager, NARC *narc, PaletteData *paletteData, u32 index);
void ov80_0223962C(FrtCmdMapView *map, u32 id);

BOOL FrtCmd_042(FrontierScriptContext *ctx) {
    FrtCmdSystemView *system = (FrtCmdSystemView *)ctx->frontierSystem;
    FrtCmdMapView *map = sub_0209680C(system->unk0);
    s32 offset = FrontierScriptContext_ReadWord(ctx);
    const u8 *returnPtr = ctx->scriptPtr;
    NARC *narc;
    u32 id;

    ctx->scriptPtr += offset;
    narc = NARC_New(NARC_a_1_8_4, system->heapID);
    while (TRUE) {
        id = FrontierScript_ReadVar(ctx);
        if (id == 0xFD13) {
            break;
        }
        ov80_02239AF8(map->spriteSystem, map->spriteManager, narc, map->paletteData, id);
        ov80_0223962C(map, id);
    }
    NARC_Delete(narc);
    ctx->scriptPtr = returnPtr;
    return FALSE;
}
