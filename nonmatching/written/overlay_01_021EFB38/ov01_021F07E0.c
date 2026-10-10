#include "global.h"

extern BOOL ov01_021EFE44(void *task);
extern void ov01_021F0960(void *window, s16 top, s16 bottom, s16 left, s16 right, u8 color);

typedef struct UnkStruct_ov01_021F07E0 {
    s32 x;           // 0x00
    u8 unk04[0x10];  // 0x04
    s32 y;           // 0x14
    u8 unk18[0x10];  // 0x18
    void *window;    // 0x28
    u8 width;        // 0x2C
    u8 height;       // 0x2D
    u8 active;       // 0x2E
    u8 color;        // 0x2F
} UnkStruct_ov01_021F07E0;

BOOL ov01_021F07E0(UnkStruct_ov01_021F07E0 *data) {
    BOOL ret;
    s16 left, top;
    if (data->active == 0) {
        return TRUE;
    }
    ret = ov01_021EFE44(data);
    ov01_021EFE44(&data->y);
    left = (s16)(data->x - (data->width >> 1));
    top = (s16)(data->y - (data->height >> 1));
    ov01_021F0960(data->window, top, (s16)(top + data->height), left, (s16)(left + data->width), data->color);
    return ret;
}
