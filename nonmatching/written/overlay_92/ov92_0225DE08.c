typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;

void ov92_0225DDD8(void *tmpl, s16 x, s16 y, s32 a, s32 b, s32 c);
void *SpriteSystem_NewSprite(void *spriteSystem, void *spriteManager, const void *tmpl);
void ManagedSprite_SetPaletteOverrideOffset(void *sprite, u8 offset);
void ManagedSprite_SetAnim(void *sprite, s32 anim);
void ov92_0225DF0C(void *self, s32 a, s32 b);

void ov92_0225DE08(void *self)
{
    char *p = (char *)self;
    u32 tmpl[13];
    void *sys = *(void **)(*(char **)(p + 0x14) + 8);
    void *mgr = *(void **)(*(char **)(p + 0x14) + 0xc);
    s32 i;

    for (i = 0; i < 36; i++) {
        void *sprite;
        ov92_0225DDD8(tmpl, (s16)(i * 8), 0x14, 1, 3, 0x232E);
        sprite = SpriteSystem_NewSprite(sys, mgr, tmpl);
        *(void **)(p + 0x40 + i * 4) = sprite;
        ManagedSprite_SetPaletteOverrideOffset(sprite, 3);
        ManagedSprite_SetAnim(*(void **)(p + 0x40 + i * 4), (i % 11) + 1);
    }
    ov92_0225DF0C(self, 0, 0);
}
