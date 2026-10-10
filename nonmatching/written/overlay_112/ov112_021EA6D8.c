typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef int s32;

void ManagedSprite_SetDrawFlag(void *, int);
void ManagedSprite_SetAnim(void *, int);
void ManagedSprite_SetPositionXY(void *, s16, s16);
void ManagedSprite_SetPositionXYWithSubscreenOffset(void *, s16, s16, s32);

void ov112_021EA6D8(u8 *work, int idx, int anim, int x, int y) {
    void **sprites = (void **)(work + 0x1E530);
    if (y < 0) {
        ManagedSprite_SetPositionXYWithSubscreenOffset(sprites[idx + 0x75], (s16)x, (s16)(y + 0xD0), 0x100000);
        ManagedSprite_SetAnim(sprites[idx + 0x75], anim + 4);
        ManagedSprite_SetDrawFlag(sprites[idx + 0x75], 1);
        ManagedSprite_SetDrawFlag(sprites[idx + 0x11], 0);
    } else {
        ManagedSprite_SetPositionXY(sprites[idx + 0x11], (s16)x, (s16)y);
        ManagedSprite_SetAnim(sprites[idx + 0x11], anim + 0x13);
        ManagedSprite_SetDrawFlag(sprites[idx + 0x75], 0);
        ManagedSprite_SetDrawFlag(sprites[idx + 0x11], 1);
    }
}
