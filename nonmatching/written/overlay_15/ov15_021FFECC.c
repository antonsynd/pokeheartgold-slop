typedef unsigned char u8;
typedef unsigned int u32;
typedef short s16;

extern u8 ov15_02200AB8[];

void ManagedSprite_SetPositionXYWithSubscreenOffset(void *managedSprite, s16 x, s16 y, int yOffset);
void ManagedSprite_SetAnim(void *managedSprite, int anim);
void ManagedSprite_SetPaletteOverride(void *managedSprite, int index);
void ManagedSprite_SetDrawFlag(void *managedSprite, int flag);

void ov15_021FFECC(void *app, int idx)
{
    int off = idx * 4;
    ManagedSprite_SetPositionXYWithSubscreenOffset(*(void **)((u8 *)app + 0x2a0), ov15_02200AB8[off], ov15_02200AB8[off + 1], 1 << 20);
    ManagedSprite_SetAnim(*(void **)((u8 *)app + 0x2a0), ov15_02200AB8[off + 2]);
    ManagedSprite_SetPaletteOverride(*(void **)((u8 *)app + 0x2a0), ov15_02200AB8[off + 3]);
    ManagedSprite_SetDrawFlag(*(void **)((u8 *)app + 0x2a0), 1);
}
