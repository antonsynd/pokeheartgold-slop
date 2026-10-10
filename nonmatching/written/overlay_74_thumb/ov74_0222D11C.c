#include "global.h"
#include "list_menu.h"
#include "list_menu_items.h"
#include "msgdata.h"

extern const ListMenuTemplate ov74_0223C320;

void ov74_0222D11C(u8 *work, int *pairs, int count, Window *window, u16 itemsAbove) {
    ListMenuTemplate template;
    int i;

    if (*(ListMenuItem **)(work + 0x2bcc) != NULL) {
        ListMenuItems_Delete(*(ListMenuItem **)(work + 0x2bcc));
    }
    if (*(struct ListMenu **)(work + 0x2bc8) != NULL) {
        DestroyListMenu(*(struct ListMenu **)(work + 0x2bc8), NULL, NULL);
    }
    *(ListMenuItem **)(work + 0x2bcc) = ListMenuItems_New(count, 0x55);
    *(MsgData **)(work + 0x2a04) = NewMsgDataFromNarc(0, 0x1b, 0xf7, 0x55);
    for (i = 0; i < count; i++) {
        ListMenuItems_AppendFromMsgData(*(ListMenuItem **)(work + 0x2bcc), *(MsgData **)(work + 0x2a04), pairs[0], pairs[1]);
        pairs += 2;
    }
    DestroyMsgData(*(MsgData **)(work + 0x2a04));

    template = ov74_0223C320;
    template.items = *(ListMenuItem **)(work + 0x2bcc);
    template.totalItems = count;
    template.window = window;
    *(struct ListMenu **)(work + 0x2bc8) = ListMenuInit(&template, 0, itemsAbove, 0x55);
}
