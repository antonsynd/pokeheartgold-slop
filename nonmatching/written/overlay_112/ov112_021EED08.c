#include "global.h"
#include "pokewalker.h"
#include "unk_02005D10.h"

extern void ov112_021EE7A8(u8 *work);
extern void ov112_021EEAF0(u8 *work, int a1);
extern void ov112_021EEA7C(u8 *work);
extern void ov112_021EE920(u8 *work);
extern void ov112_021E9290(void *a0, void *a1, void *a2, int a3);
extern void ov112_021ED0C8(u8 *work);
extern void ov112_021EAA10(u8 *work);
extern void ov112_021E95A0(u8 *work);

int ov112_021EED08(u8 *work) {
    int state;
    *(u32 *)(work + 0x1E430) = 0;
    state = *(int *)(work + 0x10);
    if (state == 1) {
        ov112_021EE7A8(work);
        ov112_021EEAF0(work, 1);
        ov112_021EEA7C(work);
        ov112_021EE920(work);
        if (!((work[0x10E7] >> 2) & 1)) {
            sub_020326A4(*(POKEWALKER **)(work + 0x1E440), 1, 0);
        }
        if (*(void **)(work + 0x1E430) != NULL) {
            ov112_021E9290(*(void **)(work + 0x1E430), work + 0x1D7AC, work + 0x1D79C, 0);
            ov112_021ED0C8(work);
            ov112_021EAA10(work);
            work[0x1F2C2] = 0;
            PlayFanfare(0x4A2);
        } else {
            ov112_021EAA10(work);
            *(u16 *)(work + 0x1F2D6) = 0x1F;
        }
        ov112_021E95A0(work);
        *(u32 *)(work + 8) = 0;
    } else if (state == 2) {
        ov112_021EEA7C(work);
        ov112_021EEAF0(work, 0);
        *(u32 *)(work + 8) = 5;
    } else if (state == 4) {
        ov112_021EE7A8(work);
        ov112_021E9290(*(void **)(work + 0x1E430), work + 0x1D7AC, work + 0x1D79C, 0);
        ov112_021ED0C8(work);
        *(u32 *)(work + 8) = 0;
        sub_020326A4(*(POKEWALKER **)(work + 0x1E440), 1, 0);
    }
    work[0x10E7] &= ~4;
    return 2;
}
