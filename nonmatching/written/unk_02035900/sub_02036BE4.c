typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;

extern s64 _ll_mul(s64 a0, s64 a1);

/* sCommunicationSystem: the pointer stored at 0x021D4148 */
extern u8 *sCommSys __asm__("sub_021D4148");

/* a 64-bit field at p, read as two words the way the asm does */
#define RD64(p) ((s64)(((u64)*(u32 *)((p) + 4) << 32) | (u64)*(u32 *)(p)))

void sub_02036BE4(void)
{
    u8 state;
    u16 keys;
    u16 newHeld = 0;
    u16 timer;
    u64 sum;
    u32 idx;

    state = sCommSys[0x660];
    if (state == 0) {
        return;
    }

    keys = *(u16 *)(sCommSys + 0x65C);
    if ((keys & 0xF0) == 0) {
        return;
    }

    if (state == 2) {
        if (keys & 0x20) {
            newHeld = 0x10;
        }
        if (keys & 0x10) {
            newHeld |= 0x20;
        }
        if (keys & 0x40) {
            newHeld |= 0x80;
        }
        if (keys & 0x80) {
            newHeld |= 0x40;
        }
    } else {
        timer = *(u16 *)(sCommSys + 0x662);
        if (timer != 0) {
            newHeld = timer;
            sCommSys[0x661] = (u8)((s8)sCommSys[0x661] - 1);
            if ((s8)sCommSys[0x661] < 0) {
                *(u16 *)(sCommSys + 0x662) = 0;
            }
        } else {
            sum = (u64)_ll_mul(RD64(sCommSys + 0x634), RD64(sCommSys + 0x62C)) + (u64)RD64(sCommSys + 0x63C);
            *(u32 *)(sCommSys + 0x62C) = (u32)sum;
            *(u32 *)(sCommSys + 0x630) = (u32)(sum >> 32);

            idx = (u32)(sum >> 32) >> 30;
            switch (idx) {
            case 0:
                newHeld = 0x20;
                break;
            case 1:
                newHeld = 0x10;
                break;
            case 2:
                newHeld = 0x40;
                break;
            case 3:
                newHeld = 0x80;
                break;
            }

            sum = (u64)_ll_mul(RD64(sCommSys + 0x634), RD64(sCommSys + 0x62C)) + (u64)RD64(sCommSys + 0x63C);
            *(u32 *)(sCommSys + 0x62C) = (u32)sum;
            *(u32 *)(sCommSys + 0x630) = (u32)(sum >> 32);
            sCommSys[0x661] = (u8)((u32)(sum >> 32) >> 28);
            *(u16 *)(sCommSys + 0x662) = newHeld;
        }
    }

    *(u16 *)(sCommSys + 0x65C) = (u16)(*(u16 *)(sCommSys + 0x65C) & ~0xF0);
    *(u16 *)(sCommSys + 0x65C) = (u16)(*(u16 *)(sCommSys + 0x65C) + newHeld);
}
