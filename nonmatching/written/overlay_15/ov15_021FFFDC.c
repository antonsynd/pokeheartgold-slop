typedef unsigned char u8;
typedef unsigned int u32;
typedef short s16;

extern u8 ov15_022009D4[];

void GF_AssertFail(void);
void ManagedSprite_SetPositionXYWithSubscreenOffset(void *managedSprite, s16 x, s16 y, int yOffset);
void ManagedSprite_SetAnim(void *managedSprite, int anim);
void ManagedSprite_SetPaletteOverride(void *managedSprite, int index);

void ov15_021FFFDC(void *app, int idx)
{
    int off;
    if (idx >= 8) {
        GF_AssertFail();
    }
    off = idx * 4;
    ManagedSprite_SetPositionXYWithSubscreenOffset(*(void **)((u8 *)app + 0x2a0), ov15_022009D4[off], ov15_022009D4[off + 1], 1 << 20);
    ManagedSprite_SetAnim(*(void **)((u8 *)app + 0x2a0), ov15_022009D4[off + 2]);
    ManagedSprite_SetPaletteOverride(*(void **)((u8 *)app + 0x2a0), ov15_022009D4[off + 3]);
}
