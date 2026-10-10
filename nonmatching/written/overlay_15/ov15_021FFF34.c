typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef short s16;

extern u8 ov15_02200A34[];

void GF_AssertFail(void);
void ManagedSprite_SetPositionXYWithSubscreenOffset(void *managedSprite, s16 x, s16 y, int yOffset);
void ManagedSprite_SetAnim(void *managedSprite, int anim);
void ManagedSprite_SetPaletteOverride(void *managedSprite, int index);

void ov15_021FFF34(void *app, int idx)
{
    int off;

    if (idx >= 9) {
        GF_AssertFail();
    }
    if (idx == 8) {
        ManagedSprite_SetAnim(*(void **)((u8 *)app + 0x2a0), ov15_02200A34[idx * 4 + 2]);
    } else {
        u8 *ctx = *(u8 **)((u8 *)app + 0x234);
        u8 *pocket = ctx + 4 + *(u8 *)(ctx + 0x64) * 0xc;
        s32 pos = *(s16 *)(pocket + 6);
        u32 selected = *(u8 *)((u8 *)app + 0x672);
        pos += idx;
        if (pos == selected) {
            ManagedSprite_SetAnim(*(void **)((u8 *)app + 0x2a0), 10);
        } else if (pos >= *(u8 *)(pocket + 9)) {
            ManagedSprite_SetAnim(*(void **)((u8 *)app + 0x2a0), 0x28);
        } else {
            ManagedSprite_SetAnim(*(void **)((u8 *)app + 0x2a0), 0x14);
        }
    }
    off = idx * 4;
    ManagedSprite_SetPositionXYWithSubscreenOffset(*(void **)((u8 *)app + 0x2a0), ov15_02200A34[off], ov15_02200A34[off + 1], 1 << 20);
    ManagedSprite_SetPaletteOverride(*(void **)((u8 *)app + 0x2a0), ov15_02200A34[off + 3]);
}
