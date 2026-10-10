typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef short s16;

void ManagedSprite_SetPositionXY(void *managedSprite, s16 x, s16 y);
void ManagedSprite_SetDrawFlag(void *managedSprite, int flag);

void ov18_021F2BB0(void *app, s32 index)
{
    s32 value = *(u8 *)((u8 *)app + 0x185a);
    void **sprites = (void **)((u8 *)app + 0x670);
    s32 rem = value % 5;
    s32 quot = value / 5;

    ManagedSprite_SetPositionXY(sprites[index], rem * 0x28 + 0x30, quot * 0x28 + 0x18);
    ManagedSprite_SetDrawFlag(sprites[index], 1);
}
