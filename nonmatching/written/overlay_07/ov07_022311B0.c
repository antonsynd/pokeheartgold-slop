typedef short s16;
typedef int s32;

void ManagedSprite_SetAnim(void *sprite, int anim);
void ManagedSprite_GetPositionXY(void *managedSprite, s16 *x, s16 *y);
void ManagedSprite_SetPositionXY(void *managedSprite, s16 x, s16 y);

void ov07_022311B0(void *sprite, int *outVisibleFrames, int *outDelay, int idx, int dir)
{
    /* the stack slot pushed from r3 (idx) is read if the getter does not fill it */
    s16 spriteX = (s16)((unsigned int)idx >> 16);
    s16 spriteY = (s16)idx;

    ManagedSprite_SetAnim(sprite, idx / 2);

    *outDelay = idx * 2;
    *outVisibleFrames = 0x10;

    ManagedSprite_GetPositionXY(sprite, &spriteX, &spriteY);

    spriteX += (0x28 + (-12) * idx) * dir;
    spriteY += 0x28;

    ManagedSprite_SetPositionXY(sprite, spriteX, spriteY);
}
