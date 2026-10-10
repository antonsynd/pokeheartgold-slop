typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef int s32;

int ov112_021EA9A0(void *);
u32 MTRandom(void);

void ov112_021EA7D0(u8 *work) {
    int idx = ov112_021EA9A0(work + 0x1EC80);
    if (idx >= 0) {
        u8 *p = work + 0x1EC80 + idx * 16;
        p[0] = 1;
        p[3] = -(MTRandom() % 5 + 5);
        *(u16 *)(p + 0xC) = MTRandom() % 300;
        *(u16 *)(p + 4) = 0x80;
        *(s16 *)(p + 6) = -0x6D;
        p[2] = MTRandom() % 40 + 40;
        *(u16 *)(p + 0xE) = MTRandom() % 60 + 0x78;
    }
}
