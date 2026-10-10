typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

u32 ov14_021E6070(void *self, u32 idx, u32 b, u32 c);
u32 ov14_021E8544(void *spr);
void ov14_021E83F4(void *spr);
void ov14_021E8234(void *spr);
void ov14_021E8294(void *spr);
void ov14_021E8314(void *spr);
void ov14_021E88BC(void *spr);
void ov14_021F5FBC(void *self, u32 b);
void ov14_021F2A18(void *a, u32 b, u32 c);
u32 ov14_021F2A44(void *a, u32 b);
void ov14_021F396C(void *a, u32 b, u32 c);
void ov14_021F3844(void *a, u32 b);
void ov14_021F39D0(void *a);
void ov14_021F34C8(void *a, u32 b, u32 c);
void ov14_021F40DC(void *self);
void ov14_021F2F88(u32 flags, s16 *x, s16 *y, u8 c);
void ov14_021F1F24(void *self);
u32 ov14_021F0234(void *self, void *fn, u32 b);
void ov14_021EA4C8(void);

#define A(self) (*(char **)((self) + 0x34))
#define SPR(self) (*(void **)(A(self) + 0x2f0))
#define V(self) (*(u16 *)(A(self) + 0x88c8))

u32 ov14_021F18B0(char *self, u32 val)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    s16 *st = (s16 *)&slot;
    u16 old = V(self);

    *(u8 *)(self + 0x21) = (u8)val;
    V(self) = (u16)ov14_021E6070(self, *(u8 *)(self + 0x21), 6, 0);
    if (ov14_021E8544(SPR(self)) == 1) {
        if (old != 0 || V(self) != 0) {
            ov14_021E83F4(SPR(self));
        }
    } else {
        ov14_021E8234(SPR(self));
        ov14_021E8294(SPR(self));
        ov14_021E8314(SPR(self));
    }
    ov14_021F5FBC(self, V(self));
    if (V(self) != 0) {
        ov14_021F2A18(A(self), 0xb, 0);
        ov14_021F396C(A(self), *(u8 *)(self + 0x21), 0);
        ov14_021F3844(A(self), V(self));
        ov14_021F39D0(A(self));
        ov14_021F34C8(A(self), *(u8 *)(self + 0x21), 1);
        ov14_021E88BC(SPR(self));
    } else {
        if (ov14_021F2A44(A(self), 0xb) == 1) {
            ov14_021F2A18(A(self), 0xb, 0);
            ov14_021F40DC(self);
        }
    }
    ov14_021F2F88(*(u8 *)(self + 0x21), &st[1], &st[0], 0);
    *(s32 *)(A(self) + 0x40b8) = st[1] + 8;
    *(s32 *)(A(self) + 0x40bc) = st[0] + 8;
    ov14_021F1F24(self);
    return ov14_021F0234(self, (void *)ov14_021EA4C8, 0x7e);
}
