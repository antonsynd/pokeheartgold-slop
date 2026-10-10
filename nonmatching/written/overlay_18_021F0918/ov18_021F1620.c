typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef short s16;

void ManagedSprite_SetDrawFlag(void *managedSprite, int flag);
void ManagedSprite_SetPositionXY(void *managedSprite, s16 x, s16 y);
void ov18_021F1598(void *app, u32 a, u32 b);

void ov18_021F1620(void *app, s32 base)
{
    u16 i;
    u16 slot;

    i = 0;
    do {
        slot = base + i + (*(u8 *)((u8 *)app + 0x185e) ^ 1) * 0x1e;
        ManagedSprite_SetDrawFlag(*(void **)((u8 *)app + slot * 4 + 0x670), 0);
        i = i + 1;
    } while (i < 0x1e);
    i = 0;
    do {
        s32 rem;
        s32 quot;
        slot = base + i + *(u8 *)((u8 *)app + 0x185e) * 0x1e;
        ov18_021F1598(app, i + *(u8 *)((u8 *)app + 0x1859) * 0xf, slot);
        rem = (s32)i % 5;
        quot = (s32)i / 5;
        ManagedSprite_SetPositionXY(*(void **)((u8 *)app + slot * 4 + 0x670), rem * 0x28 + 0x30, quot * 0x28 + 0x18);
        i = i + 1;
    } while (i < 0x1e);
}
