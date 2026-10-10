#include "global.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define S32AT(p, off) (*(int *)((u8 *)(p) + (off)))

extern void ov108_021E7F7C(void *data);
extern BOOL ov108_021E80F4(void *data);
extern void ov108_021E7700(void *data, int a1, int a2, int a3);
extern void ov108_021E7EB0(void *data);
extern void ov108_021E7CD8(void *data, u8 a1);

int ov108_021E5E68(void *data) {
    switch (S32AT(data, 8)) {
    case 0:
        ov108_021E7F7C(data);
        S32AT(data, 8)++;
        break;
    case 1:
        if (ov108_021E80F4(data)) {
            S32AT(data, 8)++;
        }
        break;
    default:
        *(vu32 *)0x04001000 &= 0xFFFF1FFF;
        U8AT(data, 0x184E1) = 0;
        S32AT(data, 8) = 0;
        if ((U8AT(data, 0x184E2) >> 3) == 0) {
            S32AT(data, 0xC) = 3;
            ov108_021E7700(data, 0, 1, 1);
            ov108_021E7EB0(data);
            U8AT(data, 0x184E2) = (U8AT(data, 0x184E2) & 7) | 8;
        } else {
            S32AT(data, 0xC) = 2;
            ov108_021E7700(data, 0, 0, 1);
            ov108_021E7CD8(data, U8AT(data, 0x184DF));
            U8AT(data, 0x184E2) = U8AT(data, 0x184E2) & 7;
        }
        return 4;
    }
    return 2;
}
