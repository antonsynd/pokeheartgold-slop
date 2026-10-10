#include "global.h"
#include "sprite_system.h"
#include "pokeathlon/pokeathlon.h"

void ov96_021ECA18(u8 *param0);
int ov96_021EDC38(u32 param0, int param1);

void ov96_021EC82C(PokeathlonCourseData *param0) {
    u8 *alloc = (u8 *)PokeathlonCourse_GetHeapAllocPtr4(param0);
    SpriteSystem *spriteSystem = *(SpriteSystem **)(alloc + 0x18);
    SpriteManager *spriteManager = *(SpriteManager **)(alloc + 0x1c);
    u8 i;
    u32 v;

    for (i = 0; i < 5; i++) {
        SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, (NarcId)0x9a, 9, 1, 2, i + 0x64);
        SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, (NarcId)0x9a, 8, 0, 1, 2, i + 0x64);
    }
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0xa, 1, 0x64);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0xb, 1, 0x64);
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0xd, 1, 2, 0x69);
    SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0xc, 0, 5, 2, 0x69);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0xe, 1, 0x65);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0xf, 1, 0x65);
    ov96_021ECA18(alloc);
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0x10, 1, 1, 0x6a);
    SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0xc, 0, 1, 1, 0x6a);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0x11, 1, 0x66);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0x12, 1, 0x66);
    v = alloc[0xb1];
    SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, (NarcId)0x9a, ov96_021EDC38(v, 0) + 0x17, 0, 1, 1, 0x6b);
    SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, (NarcId)0x9a, ov96_021EDC38(v, 1) + 0x17, 0, 1, 1, 0x6c);
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, (NarcId)0x9a, ov96_021EDC38(v, 0) + 0x1c, 1, 1, 0x6b);
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, (NarcId)0x9a, ov96_021EDC38(v, 1) + 0x1c, 1, 1, 0x6c);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0x21, 1, 0x67);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, (NarcId)0x9a, 0x22, 1, 0x67);
}
