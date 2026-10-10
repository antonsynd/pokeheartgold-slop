typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

void ManagedSprite_GetPositionXY(void *spr, s16 *x, s16 *y);
void ov14_021F2F88(u32 flags, s16 *x, s16 *y, u8 c);
void ov14_021F4940(void *a, u32 flags, s16 *x, s16 *y);

void ov14_021E6B48(char *self, char *p)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    s16 *st = (s16 *)&slot;
    char *a = *(char **)(self + 0x34);
    u32 idx = *(u8 *)(a + *(s32 *)(p + 4) + 0x4094);
    u32 flags;
    s32 t;

    ManagedSprite_GetPositionXY(*(void **)(a + idx * 4 + 0x2fc), (s16 *)(p + 0x1c), (s16 *)(p + 0x1e));
    flags = *(u32 *)(p + 8);
    if (!(flags & 0x80)) {
        ov14_021F2F88(flags, &st[1], &st[0], *(u8 *)(self + 0x22));
    } else {
        ov14_021F4940(*(void **)(self + 0x34), flags & 0x7f, &st[1], &st[0]);
    }

    if (*(s16 *)(p + 0x1c) <= st[1]) {
        *(s16 *)(p + 0x18) = 1;
        t = st[1] - *(s16 *)(p + 0x1c);
    } else {
        *(s16 *)(p + 0x18) = -1;
        t = *(s16 *)(p + 0x1c) - st[1];
    }
    *(s32 *)(p + 0x10) = (((s32)(s16)t) * 65536) / 8;

    if (*(s16 *)(p + 0x1e) <= st[0]) {
        *(s16 *)(p + 0x1a) = 1;
        t = st[0] - *(s16 *)(p + 0x1e);
    } else {
        *(s16 *)(p + 0x1a) = -1;
        t = *(s16 *)(p + 0x1e) - st[0];
    }
    *(s32 *)(p + 0x14) = (((s32)(s16)t) * 65536) / 8;
}
