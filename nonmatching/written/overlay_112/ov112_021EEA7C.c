#include "global.h"
#include "bag.h"

void ov112_021EEA7C(u8 *work) {
    int i;
    for (i = 0; i < 3; i++) {
        u16 item = *(u16 *)(work + 0x9DAC + i * 4);
        if (item != 0) {
            Bag_AddItem(*(Bag **)(work + 0x1E434), item, 1, (enum HeapID)0x9A);
        }
    }
    for (i = 0; i < 10; i++) {
        u16 item = *(u16 *)(work + 0x9DB8 + i * 4);
        if (item != 0) {
            Bag_AddItem(*(Bag **)(work + 0x1E434), item, 1, (enum HeapID)0x9A);
        }
    }
    if ((work[0xAABC] >> 6) & 1) {
        Bag_AddItem(*(Bag **)(work + 0x1E434), *(u16 *)(work + 0xB002), 1, (enum HeapID)0x9A);
    }
}
