typedef unsigned char u8;
typedef signed char s8;
typedef unsigned int u32;

void sub_02019B1C(void *a, u32 b, u8 *c, u8 *d);

u32 ov14_021E8544(void *param)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    u8 *buf = (u8 *)&slot;
    sub_02019B1C(param, 3, &buf[1], &buf[0]);
    return (s8)buf[1] != 0x20;
}
