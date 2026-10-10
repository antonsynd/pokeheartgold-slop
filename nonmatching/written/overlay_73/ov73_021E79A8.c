typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

void GF_AssertFail(void);

void ov73_021E79A8(u8 *p, s32 n)
{
    s32 i;
    s32 k;

    if (n < 2 || n > 5) {
        GF_AssertFail();
    }

    for (i = n + 1; i <= 5; i++) {
        u8 *src = p + i * 0x2c;
        u8 *dst = src - 0x2c;
        u32 *s = (u32 *)((u32)src & ~3u);
        u32 *d = (u32 *)((u32)dst & ~3u);
        u32 last;

        for (k = 0; k < 10; k++) {
            d[k] = s[k];
        }
        last = *(u32 *)(src + 0x28);
        d[10] = last;
    }

    *(u16 *)(p + 0xdc) = 0xffff;
    *(u16 *)(p + 0xec) = 0xffff;
}
