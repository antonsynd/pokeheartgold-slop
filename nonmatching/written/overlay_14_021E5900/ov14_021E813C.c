typedef unsigned char u8;
typedef signed char s8;
typedef unsigned int u32;

void sub_02019B1C(void *a, u32 b, u8 *c, u8 *d);
u32 sub_02019978(void *a, u32 b);
void ov14_021F32E0(void *self);

u32 ov14_021E813C(char *self)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    u8 *s = (u8 *)&slot;
    u32 r4;

    sub_02019B1C(*(void **)(*(char **)(self + 0x34) + 0x2f0), 1, &s[3], &s[2]);
    r4 = sub_02019978(*(void **)(*(char **)(self + 0x34) + 0x2f0), 1);
    sub_02019B1C(*(void **)(*(char **)(self + 0x34) + 0x2f0), 1, &s[1], &s[0]);
    if ((s8)s[3] != (s8)s[1] || (s8)s[2] != (s8)s[0]) {
        ov14_021F32E0(self);
    }
    return r4 != 0;
}
