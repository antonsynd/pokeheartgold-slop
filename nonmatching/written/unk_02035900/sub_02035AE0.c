typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef unsigned long long u64;

u32 sub_0203993C(void);
s32 sub_02033FC4(u16 arg0);
u64 _s32_div_f(s32 dividend, s32 divisor);
void MI_CpuFill8(void *dest, u8 value, u32 size);
void sub_02033AE0(void *ring, void *buffer, u32 size);
void sub_02033F70(void *queue);

/* sCommunicationSystem: the pointer stored at 0x021D4148 */
extern u8 *sCommSys __asm__("sub_021D4148");
/* the byte at 0x021D4140 that the function clears last */
extern u8 sCommSysFlagByte __asm__("sub_021D4140");

void sub_02035AE0(void)
{
    s32 maxMachines;
    s32 size;
    s32 i;
    u32 ringOff;
    u32 bufOff;

    maxMachines = sub_02033FC4((u16)sub_0203993C()) + 1;

    sCommSys[0x660] = 0;
    sCommSys[0x661] = 0;
    MI_CpuFill8(*(void **)(sCommSys + 0x48C), 0, *(u32 *)(sCommSys + 0x68C));
    MI_CpuFill8(sCommSys + 0x51C, 0, 0x60);
    size = (s32)_s32_div_f(*(s32 *)(sCommSys + 0x68C), maxMachines);

    ringOff = 0;
    bufOff = 0;
    for (i = 0; i < maxMachines; i++) {
        sub_02033AE0(sCommSys + 0x51C + ringOff, (u8 *)*(void **)(sCommSys + 0x48C) + bufOff, size);
        bufOff += size;
        ringOff += 0xC;
    }

    MI_CpuFill8(*(void **)(sCommSys + 0x488), 0, *(u32 *)(sCommSys + 0x68C));
    MI_CpuFill8(sCommSys + 0x4B0, 0, 0x60);

    ringOff = 0;
    bufOff = 0;
    for (i = 0; i < maxMachines; i++) {
        sub_02033AE0(sCommSys + 0x4B0 + ringOff, (u8 *)*(void **)(sCommSys + 0x488) + bufOff, size);
        bufOff += size;
        ringOff += 0xC;
    }

    MI_CpuFill8(sCommSys + 0x308, 0, 0x180);
    sub_02033AE0(sCommSys + 0x510, sCommSys + 0x308, 0x180);

    MI_CpuFill8(sCommSys + 0x80, 0xee, 0x180);
    MI_CpuFill8(sCommSys + 0x140, 0xee, 0x180);
    MI_CpuFill8(sCommSys + 0x200, 0, 0x108);
    sub_02033AE0(sCommSys + 0x498, sCommSys + 0x200, 0x108);

    MI_CpuFill8(sCommSys + 0x00, 0xee, 0x26);
    MI_CpuFill8(sCommSys + 0x40, 0xee, 0x26);
    sCommSys[0x00] = 0xff;
    sCommSys[0x40] = 0xff;

    MI_CpuFill8(*(void **)(sCommSys + 0x490), 0, *(u32 *)(sCommSys + 0x690) << 1);
    sub_02033AE0(sCommSys + 0x4A4, *(void **)(sCommSys + 0x490), *(u32 *)(sCommSys + 0x690) << 1);

    sCommSys[0x6B4] = 0;
    sCommSys[0x6B5] = 0;
    for (i = 0; i < 8; i++) {
        sCommSys[0x696 + i] = 0;
        sCommSys[0x69E + i] = 1;
        *(u16 *)(sCommSys + 0x644 + 2 * i) = 0;
        sCommSys[0x5CA + 12 * i] = 0xee;
        *(u16 *)(sCommSys + 0x5C8 + 12 * i) = 0xffff;
        *(u32 *)(sCommSys + 0x5C4 + 12 * i) = 0;
        *(u32 *)(sCommSys + 0x5C0 + 12 * i) = 0;
        *(u32 *)(sCommSys + 0x66C + 4 * i) = 0;
    }

    *(u32 *)(sCommSys + 0x668) = 0;
    sCommSys[0x62A] = 0xee;
    *(u16 *)(sCommSys + 0x628) = 0xffff;
    *(u32 *)(sCommSys + 0x624) = 0;
    *(u32 *)(sCommSys + 0x620) = 0;
    sCommSys[0x6B2] = 1;
    sCommSys[0x6B3] = 1;
    sCommSysFlagByte = 0;
    sub_02033F70(sCommSys + 0x580);
    sub_02033F70(sCommSys + 0x5A0);
    sCommSys[0x6B7] = 0;
}
