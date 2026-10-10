#include "global.h"

extern int ov70_02237F38(void);
extern int ov70_02237F58(void);
extern void ov70_022409C0(void *work);
extern void ov70_02240B9C(void *work, void *listing, u16 boxId);
extern void ov70_02240CE4(void *history, void *listing);
extern void ov70_02240500(void *work, void *listing);
extern void sub_020399EC(void);

int ov70_022400BC(u8 *work) {
    if (ov70_02237F38() == 0) {
        int *timeout = (int *)(work + 0x1604);
        *timeout = *timeout + 1;
        if (*(int *)(work + 0x1604) == 0xE10) {
            sub_020399EC();
        }
    } else {
        int result = ov70_02237F58();
        *(int *)(work + 0x1604) = 0;
        switch (result) {
        case 0:
            *(int *)(work + 0x2C) = 0x1E;
            ov70_022409C0(work);
            ov70_02240B9C(work, work + 0xA5C, *(u16 *)(work + 0x120));
            ov70_02240CE4(*(void **)(*(u8 **)work + 0x18), work + 0xA5C);
            ov70_02240500(work, work + 0xA5C);
            break;
        case -5:
            *(int *)(work + 0x3C) = result;
            *(int *)(work + 0x2C) = 0x11;
            break;
        case -6:
        case -7:
        case -8:
        case -9:
        case -10:
        case -11:
        case -12:
            *(int *)(work + 0x3C) = result;
            *(int *)(work + 0x2C) = 0x27;
            break;
        case -13:
            sub_020399EC();
            break;
        case -2:
        case -14:
        case -15:
            *(int *)(work + 0x3C) = result;
            *(int *)(work + 0x2C) = 0x26;
            break;
        default:
            break;
        }
    }
    return 3;
}
