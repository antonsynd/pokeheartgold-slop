typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

void ManagedSprite_GetPositionXY(void *spr, s16 *x, s16 *y);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);
void ov14_021F29E4(void *a, u32 b, u32 c);
void ov14_021F2A18(void *a, u32 b, u32 c);
u32 ov14_021F2A04(void *a, u32 b);
void ov14_021F391C(void *a, u32 b);

u32 ov14_021EAB54(char *self)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    s16 *st = (s16 *)&slot;
    char *r4 = *(char **)(self + 0x34);
    u32 state = *(u16 *)(r4 + 0x10);

    if (state > 4) {
        return 1;
    }
    switch (state) {
    case 0:
        ov14_021F29E4(r4, 9, 9);
        *(u16 *)(r4 + 0x10) = 1;
        /* fall through */
    case 1:
        if (*(u16 *)(r4 + 0x12) == 4) {
            *(u16 *)(r4 + 0x12) = 0;
            *(u16 *)(r4 + 0x10) = 2;
            break;
        }
        ManagedSprite_GetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x328), &st[1], &st[0]);
        ManagedSprite_SetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x328), st[1], (s16)(st[0] + 2));
        *(u16 *)(r4 + 0x12) = *(u16 *)(r4 + 0x12) + 1;
        break;
    case 2:
        ov14_021F29E4(r4, 9, 8);
        ov14_021F391C(*(void **)(self + 0x34), 1);
        ov14_021F29E4(*(void **)(self + 0x34), 0xb, 2);
        *(u16 *)(r4 + 0x10) = 3;
        break;
    case 3:
        if (ov14_021F2A04(r4, 0xb) == 0) {
            ov14_021F391C(*(void **)(self + 0x34), 0);
            ov14_021F2A18(*(void **)(self + 0x34), 0xb, 0);
            *(u16 *)(r4 + 0x10) = 4;
        }
        break;
    case 4:
        ov14_021F29E4(r4, 9, 8);
        *(u16 *)(r4 + 0x10) = 0;
        return 0;
    }
    return 1;
}
