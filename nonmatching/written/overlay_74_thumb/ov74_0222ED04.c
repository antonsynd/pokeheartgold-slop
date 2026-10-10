#include "global.h"
#include "list_menu.h"
#include "list_menu_items.h"
#include "msgdata.h"

extern const ListMenuTemplate ov74_0223C6E0;

void ov74_0222ED04(u8 *work, int *pairs, int count, Window *window, u16 itemsAbove) {
    ListMenuTemplate template;
    int i;

    if (*(ListMenuItem **)(work + 0x2bc0) != NULL) {
        ListMenuItems_Delete(*(ListMenuItem **)(work + 0x2bc0));
    }
    if (*(struct ListMenu **)(work + 0x2bbc) != NULL) {
        DestroyListMenu(*(struct ListMenu **)(work + 0x2bbc), NULL, NULL);
    }
    *(ListMenuItem **)(work + 0x2bc0) = ListMenuItems_New(count, 0x55);
    *(MsgData **)(work + 0x2a04) = NewMsgDataFromNarc(0, 0x1b, 0xf7, 0x55);
    for (i = 0; i < count; i++) {
        ListMenuItems_AppendFromMsgData(*(ListMenuItem **)(work + 0x2bc0), *(MsgData **)(work + 0x2a04), pairs[0], pairs[1]);
        pairs += 2;
    }
    DestroyMsgData(*(MsgData **)(work + 0x2a04));

    template = ov74_0223C6E0;
    template.items = *(ListMenuItem **)(work + 0x2bc0);
    template.totalItems = count;
    template.window = window;
    *(struct ListMenu **)(work + 0x2bbc) = ListMenuInit(&template, 0, itemsAbove, 0x55);
}
