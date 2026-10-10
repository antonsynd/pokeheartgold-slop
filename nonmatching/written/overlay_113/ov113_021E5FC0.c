#include "global.h"

extern void ov113_021E6238(void *a, void *b, int c);
extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);
extern void ReadMsgDataIntoString(void *msgData, int id, void *str);
extern void ov113_021E629C(void *window, void *str, u16 x, int y);
extern u32 FontID_String_GetWidth(int font, void *str, int spacing);
extern void BufferIntegerAsString(void *fmt, int idx, int num, int digits, int style, int lang);
extern void StringExpandPlaceholders(void *fmt, void *dst, void *src);

void ov113_021E5FC0(u8 *p) {
    int i;
    u32 width;
    ov113_021E6238(p, p + 0x130, 6);
    ov113_021E6238(p, p + 0x100, 2);
    for (i = 0; i < 14; i++) {
        ManagedSprite_SetDrawFlag(*(void **)(p + 0xC4 + i * 4), 0);
    }
    ReadMsgDataIntoString(*(void **)(p + 0x44), 1, *(void **)(p + 0x50));
    ov113_021E629C(p + 0x78, *(void **)(p + 0x50), 0, 0x38);
    width = FontID_String_GetWidth(0, *(void **)(p + 0x5C), 0);
    ov113_021E629C(p + 0x78, *(void **)(p + 0x5C), (u16)(0xB0 - width), 0x48);
    ReadMsgDataIntoString(*(void **)(p + 0x44), 3, *(void **)(p + 0x50));
    ov113_021E629C(p + 0x88, *(void **)(p + 0x50), 4, 0x3C);
    ReadMsgDataIntoString(*(void **)(p + 0x44), 4, *(void **)(p + 0x4C));
    BufferIntegerAsString(*(void **)(p + 0x48), 0, p[0x1F], 2, 1, 1);
    StringExpandPlaceholders(*(void **)(p + 0x48), *(void **)(p + 0x50), *(void **)(p + 0x4C));
    ov113_021E629C(p + 0x88, *(void **)(p + 0x50), 4, 0x4C);
}
