#include "global.h"

#include "bg_window.h"

typedef struct UnkStruct_Ov83_02242F18 {
    u8 filler0[0x4C];
    BgConfig *bgConfig;
    u8 filler50[0x814];
    u16 unk864;
    u8 unk866;
    u8 unk867;
} UnkStruct_Ov83_02242F18;

typedef struct UnkStruct_Ov83_02247E64 {
    u8 x;
    u8 y;
    u8 width;
    u8 height;
} UnkStruct_Ov83_02247E64;

extern const UnkStruct_Ov83_02247E64 ov83_02247E64[];

void ov83_02242F18(UnkStruct_Ov83_02242F18 *data, u16 a1);
BOOL ov83_02242F2C(UnkStruct_Ov83_02242F18 *data);

void ov83_02242F18(UnkStruct_Ov83_02242F18 *data, u16 a1) {
    data->unk864 = a1;
    data->unk866 = 0;
    data->unk867 = 0;
}

BOOL ov83_02242F2C(UnkStruct_Ov83_02242F18 *data) {
    const UnkStruct_Ov83_02247E64 *rect = &ov83_02247E64[data->unk864];

    switch (data->unk866) {
    case 0:
        BgTilemapRectChangePalette(data->bgConfig, 2, rect->x, rect->y, rect->width, rect->height, 6);
        ScheduleBgTilemapBufferTransfer(data->bgConfig, 2);
        data->unk866++;
        break;
    case 1:
        data->unk867++;
        if (data->unk867 == 4) {
            BgTilemapRectChangePalette(data->bgConfig, 2, rect->x, rect->y, rect->width, rect->height, 5);
            ScheduleBgTilemapBufferTransfer(data->bgConfig, 2);
            data->unk867 = 0;
            data->unk866++;
        }
        break;
    case 2:
        data->unk867++;
        if (data->unk867 == 2) {
            return FALSE;
        }
        break;
    }
    return TRUE;
}
