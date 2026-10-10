typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef signed int s32;

void ov91_022614D4(void *self)
{
    char *p = (char *)self;
    u8 t = *(u8 *)(p + 7);
    t++;
    *(u8 *)(p + 7) = t;
    if (*(u8 *)(p + 7) >= 10) {
        *(u16 *)(p + 0) = 1;
        s32 cur = *(s16 *)(p + 4);
        *(s16 *)(p + 4) = (s16)((cur + 1) % 3);
        *(u8 *)(p + 7) = 0;
    }
}
