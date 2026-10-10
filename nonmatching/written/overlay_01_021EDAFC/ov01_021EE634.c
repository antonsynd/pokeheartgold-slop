#include "global.h"

extern void ListMenuGetCurrentItemArrayId(void *listMenu, u16 *index);
extern void ov01_021EE5D0(void *menuManager, u16 msgId, u32 a2);

void ov01_021EE634(u8 *menuManager) {
    u16 altText;
    ListMenuGetCurrentItemArrayId(*(void **)(menuManager + 0x1BC), (u16 *)(menuManager + 0x1C2));
    altText = *(u16 *)(menuManager + 0x2A4 + *(u16 *)(menuManager + 0x1C2) * 2);
    if (altText != 0xFF) {
        ov01_021EE5D0(menuManager, altText, 0);
    }
}
