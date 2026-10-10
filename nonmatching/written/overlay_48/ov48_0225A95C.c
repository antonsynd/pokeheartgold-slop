#include "global.h"

#include "bg_window.h"
#include "vram_transfer_manager.h"

typedef struct UnkStruct_ov48_0225A95C_Data {
    u16 unk_00;
    u16 unk_02;
    u8 padding_04[8];
    u8 unk_0C[1];
} UnkStruct_ov48_0225A95C_Data;

typedef struct UnkStruct_ov48_0225A95C_Vram {
    u8 padding_00[0xC];
    u8 *unk_0C;
} UnkStruct_ov48_0225A95C_Vram;

typedef struct UnkStruct_ov48_0225A95C {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04[3];
    u8 padding_07[9];
    UnkStruct_ov48_0225A95C_Data *unk_10[2];
    u16 unk_18;
    u16 unk_1A;
    u8 padding_1C[4];
    UnkStruct_ov48_0225A95C_Vram *unk_20;
    u8 unk_24;
    u8 unk_25;
    u8 unk_26;
} UnkStruct_ov48_0225A95C;

extern void GF_AssertFail(void);

void ov48_0225A95C(UnkStruct_ov48_0225A95C *param0, BgConfig **param1) {
    u32 v4 = param0->unk_00;
    u32 v6 = param0->unk_02;
    int q1;
    int q2;
    int i;
    u32 y;
    UnkStruct_ov48_0225A95C_Data *data;

    q1 = (int)(param0->unk_18 * v4) / (int)v6;
    q2 = (int)(param0->unk_24 * v4) / (int)v6;
    param0->unk_00 = (int)(v4 + 1) % (int)v6;

    if (param0->unk_18 != 0 && q1 != param0->unk_1A) {
        param0->unk_1A = q1;
        y = 0;
        for (i = 0; i < 3; i++) {
            if (param0->unk_04[i] == 1) {
                data = param0->unk_10[param0->unk_1A];
                CopyToBgTilemapRect(*param1, 6, 0, y, 0x20, 6, data->unk_0C, 0, y, (data->unk_00 & 0x7ff) >> 3, (data->unk_02 & 0x7ff) >> 3);
                ScheduleBgTilemapBufferTransfer(*param1, 6);
            }
            y += 6;
        }
    }

    if (param0->unk_24 != 0 && q2 != param0->unk_25) {
        param0->unk_25 = q2;
        if (GF_CreateNewVramTransferTask(0x1f, param0->unk_26 << 5, param0->unk_20->unk_0C + (param0->unk_25 << 5), 0x20) == 0) {
            GF_AssertFail();
        }
    }
}
