typedef short s16;
typedef int s32;
typedef int fx32;

s16 ov07_02222674(s16 y, s16 height, fx32 scale);
void ManagedSprite_GetPositionXY(void *managedSprite, s16 *x, s16 *y);
void ManagedSprite_SetPositionXY(void *managedSprite, s16 x, s16 y);

void ov07_022226FC(void *sprite, s16 y, s16 height, fx32 scale, int anchor)
{
    s16 offset = ov07_02222674(y, height, scale);
    /* the stack slot pushed from r3 (scale) is read if the getter does not fill it */
    s16 curX = (s16)((unsigned int)scale >> 16);
    s16 curY = (s16)scale;

    if (anchor == 1) {
        offset *= -1;
        y -= height;
    }

    ManagedSprite_GetPositionXY(sprite, &curX, &curY);
    ManagedSprite_SetPositionXY(sprite, curX, y + offset);
}
