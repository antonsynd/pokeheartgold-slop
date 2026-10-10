typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct SpriteTemplate_ov40_02237284 {
    s16 x;              // 0x00
    s16 y;              // 0x02
    s16 z;              // 0x04
    s16 animIdx;        // 0x06
    s32 priority;       // 0x08
    s32 plttIdx;        // 0x0C
    s32 vramType;       // 0x10
    s32 resources[6];   // 0x14
    s32 bgPriority;     // 0x2C
    s32 vramTransfer;   // 0x30
} SpriteTemplate_ov40_02237284;

typedef struct UnkStruct_ov40_02237284_860 {
    u8 filler_000[0x2C];
    u16 species[30];    // 0x2C
    u8 filler_68[0xF0];
    s32 unk_158;        // 0x158
    u8 form[30];        // 0x15C
    u8 filler_17A[0x13A];
    void *sprites[30];  // 0x2B4
} UnkStruct_ov40_02237284_860;

typedef struct UnkStruct_ov40_02237284 {
    u8 filler_00[0x18];
    void *spriteSystem;  // 0x18
    void *spriteManager; // 0x1C
    u8 filler_20[8];
    void *palette;       // 0x28
    u8 filler_2C[0x834];
    UnkStruct_ov40_02237284_860 *work; // 0x860
} UnkStruct_ov40_02237284;

u32 sub_02074490(void);
u32 sub_0207449C(void);
u32 sub_020744A8(void);
u8 SpriteSystem_LoadPaletteBuffer(void *plttData, s32 bufferId, void *spriteSystem, void *spriteManager, s32 narcId, s32 fileId, s32 compressed, s32 plttNum, s32 vram, s32 resId);
s32 SpriteSystem_LoadCellResObj(void *spriteSystem, void *spriteManager, s32 narcId, s32 fileId, s32 compressed, s32 resId);
s32 SpriteSystem_LoadAnimResObj(void *spriteSystem, void *spriteManager, s32 narcId, s32 fileId, s32 compressed, s32 resId);
s32 ov40_022371D4(s32 a, s32 b);
u32 GetMonIconNaixEx(u32 species, s32 isEgg, u32 form);
s32 SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(void *spriteSystem, void *spriteManager, s32 narcId, s32 fileId, s32 compressed, s32 vram, s32 resId);
void *SpriteSystem_NewSprite(void *spriteSystem, void *spriteManager, const SpriteTemplate_ov40_02237284 *tmpl);
u8 GetMonIconPaletteEx(u32 species, u32 form, u32 isEgg);
void ManagedSprite_SetPaletteOverrideOffset(void *sprite, u32 offset);
void ManagedSprite_SetAnim(void *sprite, s32 anim);
void ManagedSprite_SetDrawPriority(void *sprite, u16 priority);

void ov40_02237284(UnkStruct_ov40_02237284 *p)
{
    UnkStruct_ov40_02237284_860 *w = p->work;
    void *palette = p->palette;
    void *sys = p->spriteSystem;
    void *mgr = p->spriteManager;
    s32 i;

    SpriteSystem_LoadPaletteBuffer(palette, 2, sys, mgr, 0x14, sub_02074490(), 0, 3, 1, 100000);
    SpriteSystem_LoadCellResObj(sys, mgr, 0x14, sub_0207449C(), 0, 100000);
    SpriteSystem_LoadAnimResObj(sys, mgr, 0x14, sub_020744A8(), 0, 100000);

    for (i = 0; i < 30; i++) {
        u16 species = w->species[i];
        u32 form = w->form[i];
        s32 isEgg = ov40_022371D4(w->unk_158, 1 << i);

        if (species == 0) {
            continue;
        }

        SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(sys, mgr, 0x14, GetMonIconNaixEx(species, isEgg, form), 0, 1, 100000 + i);

        {
            SpriteTemplate_ov40_02237284 tmpl;
            tmpl.x = (s16)((i % 6) * 24 + 110);
            tmpl.y = (s16)((i / 6) * 22 + 48);
            tmpl.z = 0;
            tmpl.animIdx = 0;
            tmpl.priority = 0;
            tmpl.plttIdx = 0;
            tmpl.vramType = 1;
            tmpl.bgPriority = 0;
            tmpl.vramTransfer = 0;
            tmpl.resources[0] = 100000 + i;
            tmpl.resources[1] = 100000;
            tmpl.resources[2] = 100000;
            tmpl.resources[3] = 100000;
            tmpl.resources[4] = -1;
            tmpl.resources[5] = -1;
            w->sprites[i] = SpriteSystem_NewSprite(sys, mgr, &tmpl);
        }
        ManagedSprite_SetPaletteOverrideOffset(w->sprites[i], GetMonIconPaletteEx(species, form, isEgg) + 4);
        ManagedSprite_SetAnim(w->sprites[i], 1);
        ManagedSprite_SetDrawPriority(w->sprites[i], 30 - i);
    }
}
