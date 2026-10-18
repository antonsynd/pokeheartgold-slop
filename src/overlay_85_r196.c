#include "global.h"

#include "gf_gfx_planes.h"
#include "sprite.h"
#include "unk_02009D48.h"

typedef struct Ov85Pos {
    u16 x;
    u16 y;
} Ov85Pos;

typedef struct Ov85App {
    u8 filler_000[0x60];
    SpriteList *spriteList;
    u8 filler_064[0x128];
    GF_2DGfxResMan *resMan[4];
    u8 filler_19C[0x78];
    SpriteResourcesHeader header;
    u8 filler_238[4];
    Sprite *sprites[5];
} Ov85App;

extern const Ov85Pos ov85_021EA914[6];

void ov85_021E9084(Ov85App *app) {
    SpriteTemplate template;
    int i;

    CreateSpriteResourcesHeader(&app->header, 2, 2, 2, 2, -1, -1, 0, 1, app->resMan[0], app->resMan[1], app->resMan[2], app->resMan[3], NULL, NULL);
    template.spriteList = app->spriteList;
    template.header = &app->header;
    template.position.z = 0;
    template.scale.x = FX32_ONE;
    template.scale.y = FX32_ONE;
    template.scale.z = FX32_ONE;
    template.rotation = 0;
    template.drawPriority = 1;
    template.whichScreen = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_102;
    for (i = 0; i < 5; i++) {
        template.position.x = ov85_021EA914[i + 1].x << FX32_SHIFT;
        template.position.y = ov85_021EA914[i + 1].y << FX32_SHIFT;
        app->sprites[i] = Sprite_CreateAffine(&template);
        Sprite_SetAnimActiveFlag(app->sprites[i], TRUE);
        Sprite_SetAnimCtrlSeq(app->sprites[i], (i - 1) * 2 + 27);
        Sprite_SetDrawFlag(app->sprites[i], FALSE);
    }
    template.position.x = FX32_CONST(24);
    template.position.y = FX32_CONST(416);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
}
