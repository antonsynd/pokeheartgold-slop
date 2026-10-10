typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

u32 sub_02019978(void *a, u32 b);
void ManagedSprite_GetPositionXY(void *spr, s16 *x, s16 *y);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);
void ov14_021F29E4(void *a, u32 b, u32 c);
void ov14_021F2A18(void *a, u32 b, u32 c);
u32 ov14_021F2A04(void *a, u32 b);
void ov14_021F391C(void *a, u32 b);

u32 ov14_021EAA04(char *self)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    s16 *st = (s16 *)&slot;
    char *r4 = *(char **)(self + 0x34);
    u32 state;

    sub_02019978(*(void **)(r4 + 0x2f0), 0xf);
    state = *(u16 *)(r4 + 0x10);
    if (state > 5) {
        return 1;
    }
    switch (state) {
    case 0:
        ov14_021F391C(*(void **)(self + 0x34), 1);
        ov14_021F29E4(*(void **)(self + 0x34), 0xb, 1);
        ov14_021F2A18(*(void **)(self + 0x34), 0xb, 1);
        *(u16 *)(r4 + 0x10) = *(u16 *)(r4 + 0x10) + 1;
        break;
    case 1:
        if (ov14_021F2A04(*(void **)(self + 0x34), 0xb) == 0) {
            ov14_021F391C(*(void **)(self + 0x34), 0);
            *(u16 *)(r4 + 0x10) = *(u16 *)(r4 + 0x10) + 1;
        }
        break;
    case 2:
        ov14_021F29E4(*(void **)(self + 0x34), 9, 9);
        *(u16 *)(r4 + 0x10) = *(u16 *)(r4 + 0x10) + 1;
        /* fall through */
    case 3:
        if (*(u16 *)(r4 + 0x12) == 4) {
            *(u16 *)(r4 + 0x12) = 0;
            *(u16 *)(r4 + 0x10) = *(u16 *)(r4 + 0x10) + 1;
            break;
        }
        ManagedSprite_GetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x320), &st[1], &st[0]);
        ManagedSprite_SetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x320), st[1], (s16)(st[0] + 2));
        *(u16 *)(r4 + 0x12) = *(u16 *)(r4 + 0x12) + 1;
        break;
    case 4:
        ov14_021F29E4(*(void **)(self + 0x34), 9, 0xa);
        *(u16 *)(r4 + 0x10) = *(u16 *)(r4 + 0x10) + 1;
        /* fall through */
    case 5:
        if (*(u16 *)(r4 + 0x12) == 4) {
            *(u16 *)(r4 + 0x12) = 0;
            *(u16 *)(r4 + 0x10) = 0;
            return 0;
        }
        ManagedSprite_GetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x320), &st[1], &st[0]);
        ManagedSprite_SetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x320), st[1], (s16)(st[0] - 2));
        ManagedSprite_GetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x328), &st[1], &st[0]);
        ManagedSprite_SetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x328), st[1], (s16)(st[0] - 2));
        *(u16 *)(r4 + 0x12) = *(u16 *)(r4 + 0x12) + 1;
        break;
    }
    return 1;
}
