typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef int s32;

s32 GF_SinDeg(u16 deg);
s32 GF_CosDeg(u16 deg);
void ManagedSprite_SetDrawFlag(void *, int);
void ManagedSprite_SetDrawPriority(void *, int);
void ov112_021EA6D8(u8 *work, int idx, int anim, int x, int y);

/* Large constants are read once into locals before the loop writes anything. */
void ov112_021EA864(u8 *work) {
    int i;
    u8 *p = work + 0x1EC80;
    void **spritesA = (void **)(work + 0x1E704);
    void **spritesB = (void **)(work + 0x1E574);
    s32 full = 360;
    s32 scale = 320;
    s32 top = -0x6E;
    for (i = 0; i < 100; i++, p += 16) {
        s32 r = ((s8)p[2] * (*(s16 *)(p + 6) + 0xB4)) / scale;
        if (p[0] != 0) {
            s32 cs;
            int anim;
            s32 rem;
            *(s16 *)(p + 0xA) = GF_SinDeg(*(u16 *)(p + 0xC)) / full;
            cs = GF_CosDeg(*(u16 *)(p + 0xC));
            *(s16 *)(p + 8) = (s32)((u32)r * (u32)cs) / 4096;
            *(u16 *)(p + 0xC) += 10;
            anim = ((s32)*(u16 *)(p + 0xC) % full) / 0x49;
            ov112_021EA6D8(work, i, anim, *(s16 *)(p + 4) + *(s16 *)(p + 8), *(s16 *)(p + 6) + *(s16 *)(p + 0xA));
            *(s16 *)(p + 6) = *(s16 *)(p + 6) - (s8)p[3];
            *(s16 *)(p + 0xE) = *(s16 *)(p + 0xE) - 1;
            if (*(s16 *)(p + 6) < top || *(s16 *)(p + 0xE) < 0 || *(s16 *)(p + 6) > 0xA0) {
                p[0] = 0;
                ManagedSprite_SetDrawFlag(spritesA[i], 0);
                ManagedSprite_SetDrawFlag(spritesB[i], 0);
            }
            rem = (s32)*(u16 *)(p + 0xC) % full;
            if (rem >= 0 && rem <= 0xB4) {
                ManagedSprite_SetDrawPriority(spritesA[i], 1);
                ManagedSprite_SetDrawPriority(spritesB[i], 1);
            } else {
                ManagedSprite_SetDrawPriority(spritesA[i], 3);
                ManagedSprite_SetDrawPriority(spritesB[i], 3);
            }
        }
    }
}
