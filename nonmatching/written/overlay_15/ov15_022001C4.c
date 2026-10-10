typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef short s16;

extern u8 ov15_02200B0C[];

void ManagedSprite_SetPositionXYWithSubscreenOffset(void *managedSprite, s16 x, s16 y, int yOffset);
void ManagedSprite_SetDrawFlag(void *managedSprite, int flag);
void ov15_022000F4(void *app);

void ov15_022001C4(void *app, void *pocket, int idx)
{
    s32 selected = -1;
    u8 *entry;
    u8 *slot;
    s32 i;

    if (*(s16 *)((u8 *)pocket + 6) == (idx / 6) * 6) {
        selected = idx % 6;
    }
    entry = ov15_02200B0C;
    slot = (u8 *)app;
    for (i = 0; i < 6; i++) {
        ManagedSprite_SetPositionXYWithSubscreenOffset(*(void **)(slot + 0x254), *(s16 *)(entry + 0x34), *(s16 *)(entry + 0x36), 1 << 20);
        if (i == selected) {
            ManagedSprite_SetDrawFlag(*(void **)(slot + 0x254), 1);
        } else {
            ManagedSprite_SetDrawFlag(*(void **)(slot + 0x254), 0);
        }
        entry += 0x34;
        slot += 4;
    }
    ov15_022000F4(app);
}
