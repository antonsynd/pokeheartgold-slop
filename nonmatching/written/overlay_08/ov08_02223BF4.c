#include "global.h"

typedef struct {
    u16 item;
    u16 quantity;
} UnkItemSlot_ov08_02223BF4;

extern void *Bag_GetPocketSlotN(void *bag, u32 pocket, u32 slot);
extern s32 GetItemAttr(u16 itemId, u16 attrno, u32 heapID);
extern const u8 ov08_02225CE0[5];

void ov08_02223BF4(u8 *battleBag) {
    u32 i;
    for (i = 0; i < 8; i++) {
        u32 slot = 0;
        while (TRUE) {
            UnkItemSlot_ov08_02223BF4 *s = Bag_GetPocketSlotN(*(void **)(*(u8 **)battleBag + 8), (u16)i, (u16)slot);
            if (s == NULL) {
                break;
            }
            if (s->item != 0 && s->quantity != 0) {
                s32 mask = GetItemAttr(s->item, 0xd, *(u32 *)(*(u8 **)battleBag + 0xc));
                u32 l;
                for (l = 0; l < 5; l++) {
                    if ((1 << l) & mask) {
                        u32 p = ov08_02225CE0[l];
                        u8 *dst = battleBag + p * 0x90 + battleBag[p + 0x114F] * 4;
                        *(u16 *)(dst + 0x3c) = s->item;
                        *(u16 *)(dst + 0x3e) = s->quantity;
                        p = ov08_02225CE0[l];
                        battleBag[p + 0x114F] = battleBag[p + 0x114F] + 1;
                    }
                }
            }
            slot++;
        }
    }
    for (i = 0; i < 5; i++) {
        u8 *c;
        if (battleBag[i + 0x114F] == 0) {
            battleBag[i + 0x1154] = 0;
        } else {
            battleBag[i + 0x1154] = (battleBag[i + 0x114F] - 1) / 6;
        }
        c = *(u8 **)battleBag;
        if (battleBag[i + 0x1154] < c[i + 0x2c]) {
            c[i + 0x2c] = battleBag[i + 0x1154];
        }
    }
}
