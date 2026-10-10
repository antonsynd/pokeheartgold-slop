typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

u32 sub_02019978(void *a, u32 b);
void ManagedSprite_GetPositionXY(void *spr, s16 *x, s16 *y);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);

u32 ov14_021E9F20(char *self)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    s16 *st = (s16 *)&slot;
    char *a = *(char **)(self + 0x34);
    u8 *r4 = *(u8 **)(a + 0xc);
    u32 cnt;

    sub_02019978(*(void **)(a + 0x2f0), 0xf);
    cnt = *(u32 *)(r4 + 4) >> 2;
    if (cnt == 0) {
        a = *(char **)(self + 0x34);
        ManagedSprite_SetPositionXY(*(void **)(a + 0x320), r4[0], r4[1]);
        a = *(char **)(self + 0x34);
        if (*(u8 *)(a + 0x44b) == 1) {
            if (*(u32 *)(*(char **)self + 8) == 3) {
                ManagedSprite_SetPositionXY(*(void **)(a + 0x328), r4[0], (s16)(r4[1] + 8));
            } else {
                u32 idx = *(u8 *)(a + *(u8 *)(self + 0x21) + 0x4094);
                ManagedSprite_SetPositionXY(*(void **)(a + idx * 4 + 0x2fc), r4[0], (s16)(r4[1] + 4));
            }
        }
        return 0;
    }
    *(u32 *)(r4 + 4) = (*(u32 *)(r4 + 4) & 3) | ((cnt - 1) << 2);
    ManagedSprite_GetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x320), &st[1], &st[0]);
    if (!(*(u32 *)(r4 + 4) & 1)) {
        st[1] = st[1] + r4[2];
    } else {
        st[1] = st[1] - r4[2];
    }
    if (!((*(u32 *)(r4 + 4) >> 1) & 1)) {
        st[0] = st[0] + r4[3];
    } else {
        st[0] = st[0] - r4[3];
    }
    ManagedSprite_SetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x320), st[1], st[0]);
    a = *(char **)(self + 0x34);
    if (*(u8 *)(a + 0x44b) == 1) {
        if (*(u32 *)(*(char **)self + 8) == 3) {
            ManagedSprite_SetPositionXY(*(void **)(a + 0x328), st[1], (s16)(st[0] + 8));
        } else {
            u32 idx = *(u8 *)(a + *(u8 *)(self + 0x21) + 0x4094);
            ManagedSprite_SetPositionXY(*(void **)(a + idx * 4 + 0x2fc), st[1], (s16)(st[0] + 4));
        }
    }
    return 1;
}
