#include "global.h"

extern void ov08_02223E3C(void *battleBag, u16 item, u32 tag);
extern void ov08_02223E74(void *battleBag, u16 item, u32 idx, u32 tag);
extern void ov08_02223F74(void *obj, u32 x, u32 y);

void ov08_02223FD8(u8 *battleBag) {
    if (*(u16 *)(*(u8 **)battleBag + 0x20) != 0) {
        ov08_02223E3C(battleBag, *(u16 *)(*(u8 **)battleBag + 0x20), 0xB4B7);
        ov08_02223E74(battleBag, *(u16 *)(*(u8 **)battleBag + 0x20), 0, 0xB4B7);
        ov08_02223F74(*(void **)(battleBag + 0x310), 0x18, 0xB2);
    }
}
