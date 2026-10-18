#include "global.h"

#include "bg_window.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "msgdata.h"
#include "text.h"

typedef struct Ov18_021EE44C {
    u8 filler_000[0xC];
    Window windows[1];
    u8 filler_01C[0x640];
    MsgData *msgData;
    u8 filler_660[0x1F4];
    NARC *narc;
} Ov18_021EE44C;

void ov18_021F9648(Window *window, MsgData *msgData, int msgId, int x, int y, u32 fontId, u32 color, int align);

void ov18_021EE44C(Ov18_021EE44C *a0, int index, int msgId) {
    NNSG2dCharacterData *charData;
    void *data = GfGfxLoader_GetCharDataFromOpenNarc(a0->narc, 1, TRUE, &charData, HEAP_ID_POKEDEX_APP);
    u8 *pixels = charData->pRawData;
    int x = 0;
    u32 i;

    for (i = 0; i < 12; i++) {
        BlitBitmapRect(&a0->windows[index], pixels + 0x20, 0, 0, 8, 8, x, 0, 8, 8, 0xFF);
        BlitBitmapRect(&a0->windows[index], pixels + 0x20, 0, 0, 8, 8, x, 8, 8, 8, 0xFF);
        x += 8;
    }
    ov18_021F9648(&a0->windows[index], a0->msgData, msgId, 96, 0, 0, MAKE_TEXT_COLOR(15, 8, 0), 1);
    Heap_Free(data);
}
