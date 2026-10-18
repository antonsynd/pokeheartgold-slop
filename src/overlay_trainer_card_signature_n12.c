#include "global.h"

#include "gf_gfx_planes.h"
#include "sprite.h"
#include "unk_02009D48.h"

typedef struct Ov52Signature {
    u8 filler_000[0x3C];
    SpriteList *spriteList;
    u8 filler_040[0x128];
    GF_2DGfxResMan *resMan[4];
    u8 filler_178[0x20];
    SpriteResourcesHeader headers[2];
    u8 filler_1E0[0x70];
    Sprite *sprite;
} Ov52Signature;

void ov52_021E888C(Ov52Signature *signature) {
    SpriteTemplate template;

    CreateSpriteResourcesHeader(&signature->headers[0], 0, 0, 0, 0, -1, -1, 0, 0, signature->resMan[0], signature->resMan[1], signature->resMan[2], signature->resMan[3], NULL, NULL);
    CreateSpriteResourcesHeader(&signature->headers[1], 1, 1, 1, 1, -1, -1, 0, 0, signature->resMan[0], signature->resMan[1], signature->resMan[2], signature->resMan[3], NULL, NULL);

    template.spriteList = signature->spriteList;
    template.header = &signature->headers[0];
    template.position.z = 0;
    template.scale.x = FX32_ONE;
    template.scale.y = FX32_ONE;
    template.scale.z = FX32_ONE;
    template.rotation = 0;
    template.drawPriority = 1;
    template.whichScreen = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_39;
    template.header = &signature->headers[1];
    template.position.x = FX32_CONST(224);
    template.position.y = FX32_CONST(175);

    signature->sprite = Sprite_CreateAffine(&template);
    Sprite_SetAnimActiveFlag(signature->sprite, TRUE);
    Sprite_SetAnimCtrlSeq(signature->sprite, 0);
    Sprite_SetPaletteOverride(signature->sprite, 0);
    Sprite_SetPriority(signature->sprite, 2);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
}
