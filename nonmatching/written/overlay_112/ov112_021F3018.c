#include "global.h"

typedef struct UnkStruct_ov112_021F3018 {
    u8 pad_000[0x13d];
    u8 cursor;
    u8 count;
} UnkStruct_ov112_021F3018;

extern void *OverlayManager_GetData(void *man);
extern int ov112_021F2CD4(UnkStruct_ov112_021F3018 *data);
extern int ov112_021F0EB4(UnkStruct_ov112_021F3018 *data);
extern int ov112_021F0EFC(UnkStruct_ov112_021F3018 *data);
extern int ov112_021F0E60(UnkStruct_ov112_021F3018 *data);
extern void ov112_021F2CC4(UnkStruct_ov112_021F3018 *data);
extern void ov112_021F2338(UnkStruct_ov112_021F3018 *data);
extern void ov112_021F1D28(UnkStruct_ov112_021F3018 *data, int arg);
extern void PlaySE(int seq);

int ov112_021F3018(void *man) {
    UnkStruct_ov112_021F3018 *data = OverlayManager_GetData(man);

    if (ov112_021F2CD4(data) == 0) {
        return 0;
    }

    if (ov112_021F0EB4(data) != 0) {
        if (data->cursor != 0) {
            data->cursor--;
        }
        ov112_021F2CC4(data);
        PlaySE(0x5dc);
    } else if (ov112_021F0EFC(data) != 0) {
        data->cursor = (data->cursor + 1) % data->count;
        ov112_021F2CC4(data);
        PlaySE(0x5dc);
    } else if (ov112_021F0E60(data) != 0) {
        return 1;
    }

    ov112_021F2338(data);
    ov112_021F1D28(data, 5);
    ov112_021F1D28(data, 6);
    ov112_021F1D28(data, 7);
    ov112_021F1D28(data, 8);
    return 0;
}
