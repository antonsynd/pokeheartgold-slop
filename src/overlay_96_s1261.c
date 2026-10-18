#include "global.h"

#include "files/msgdata/msg.naix"

#include "bg_window.h"
#include "font.h"
#include "gf_gfx_planes.h"
#include "message_format.h"
#include "msgdata.h"
#include "sprite_system.h"

typedef struct Ov96_022163AC {
    u8 filler_00[8];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
} Ov96_022163AC;

typedef struct Ov96_0221654C {
    enum HeapID heapID;
    BgConfig *bgConfig;
    u8 filler_08[8];
    MessageFormat *msgFormat;
    MsgData *msgData;
} Ov96_0221654C;

typedef struct Ov96BgTemplates {
    BgTemplate templates[7];
} Ov96BgTemplates;

extern const GraphicsModes ov96_0221D6C4;
extern const u32 ov96_0221D738[7];
extern const ManagedSpriteTemplate ov96_0221D79C;
extern const Ov96BgTemplates ov96_0221D834;

void ov96_022163AC(Ov96_022163AC *a0) {
    int i;
    NNS_G2D_VRAM_TYPE vram;
    NNS_G2D_VRAM_TYPE vram2;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;

    spriteSystem = a0->spriteSystem;
    spriteManager = a0->spriteManager;

    GF_ASSERT(spriteSystem != NULL);
    GF_ASSERT(spriteManager != NULL);

    vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 16, TRUE, vram, 10000);
    SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 13, FALSE, 2, vram, 10000);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 15, TRUE, 10000);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 14, TRUE, 10000);

    vram = NNS_G2D_VRAM_TYPE_2DSUB;
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 20, TRUE, vram, 10001);
    SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 17, FALSE, 2, vram, 10001);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 19, TRUE, 10001);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 18, TRUE, 10001);

    vram2 = NNS_G2D_VRAM_TYPE_2DSUB;
    for (i = 0; i < 2; i++) {
        SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 24, TRUE, vram2, 10002 + i);
        SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 21, FALSE, 1, vram2, 10002 + i);
    }

    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 23, TRUE, 10002);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_a_2_4_0, 22, TRUE, 10002);
}

ManagedSprite *ov96_022164EC(SpriteSystem *spriteSystem, SpriteManager *spriteManager, u16 x, u16 y, u16 animation, u16 drawPriority) {
    ManagedSpriteTemplate template = ov96_0221D79C;
    ManagedSprite *sprite;

    GF_ASSERT(spriteSystem != NULL);
    GF_ASSERT(spriteManager != NULL);

    template.x = x;
    template.y = y;
    template.animation = animation;
    template.drawPriority = drawPriority;
    sprite = SpriteSystem_NewSpriteWithYOffset(spriteSystem, spriteManager, &template, FX32_CONST(480));
    ManagedSprite_SetAnimateFlag(sprite, TRUE);
    return sprite;
}

void ov96_0221654C(Ov96_0221654C *a0) {
    BgConfig *bgConfig = a0->bgConfig;
    enum HeapID heapID = a0->heapID;
    int i;

    {
        GraphicsModes modes = ov96_0221D6C4;
        SetBothScreensModesAndDisable(&modes);
    }

    {
        Ov96BgTemplates templates = ov96_0221D834;

        for (i = 0; i < 7; i++) {
            InitBgFromTemplate(bgConfig, ov96_0221D738[i], &templates.templates[i], GF_BG_TYPE_TEXT);
            BgClearTilemapBufferAndCommit(bgConfig, ov96_0221D738[i]);
            BG_ClearCharDataRange(ov96_0221D738[i], 0x20, 0, heapID);
        }
    }

    a0->msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, msg_0309, a0->heapID);
    a0->msgFormat = MessageFormat_New(a0->heapID);
    FontID_Alloc(FONT_UNK_4, a0->heapID);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG3, GF_PLANE_TOGGLE_OFF);
}
