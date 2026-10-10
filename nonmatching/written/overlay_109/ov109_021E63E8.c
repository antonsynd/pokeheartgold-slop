#include "global.h"
#include "system.h"

typedef struct UnkStruct_ov109_021E63E8 {
    u8 unk0[0xC];
    u32 unkC;
    u8 unk10[9];
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
    u8 unk1C;
} UnkStruct_ov109_021E63E8;

extern u32 ov109_021E75B4(UnkStruct_ov109_021E63E8 *data);
extern u32 ov109_021E628C(UnkStruct_ov109_021E63E8 *data, u8 pos);
extern void PlaySE(u16 se);
extern void ov109_021E7474(UnkStruct_ov109_021E63E8 *data, u8 x, u8 y, u32 a3);

u32 ov109_021E63E8(UnkStruct_ov109_021E63E8 *data) {
    u32 keys;
    u8 pos;

    if (data->unkC == 1 && (gSystem.newKeys & 0xF3)) {
        ov109_021E75B4(data);
    }
    keys = gSystem.newKeys;
    if (keys & 1) {
        if (data->unk1C < 3) {
            pos = (u8)(data->unk1B + data->unk1C * 4);
        } else {
            pos = 12;
        }
        return ov109_021E628C(data, pos);
    }
    if (keys & 2) {
        return ov109_021E628C(data, 12);
    }
    if (keys & 0x20) {
        if (data->unk1C < 3) {
            pos = (u8)(data->unk1B + data->unk1C * 4);
        } else {
            pos = 12;
        }
        if (pos == 12) {
            return 1;
        }
        if (data->unk1B != 0) {
            PlaySE(0x5DC);
            data->unk1B--;
            ov109_021E7474(data, data->unk1B, data->unk1C, 1);
        } else if (data->unk19 != 0) {
            data->unk1B = ((int)data->unk1B + 3) % 4;
            return ov109_021E628C(data, 0xD);
        }
    } else if (keys & 0x10) {
        if (data->unk1C < 3) {
            pos = (u8)(data->unk1B + data->unk1C * 4);
        } else {
            pos = 12;
        }
        if (pos == 12) {
            return 1;
        }
        if (data->unk1B < 3) {
            PlaySE(0x5DC);
            data->unk1B++;
            ov109_021E7474(data, data->unk1B, data->unk1C, 1);
        } else if ((int)data->unk19 < (int)data->unk1A - 1) {
            data->unk1B = ((int)data->unk1B + 1) % 4;
            return ov109_021E628C(data, 0xE);
        }
    } else if (keys & 0x40) {
        if (data->unk1C == 4 && data->unk1B < 3) {
            data->unk1B = 3;
        }
        PlaySE(0x5DC);
        data->unk1C = ((int)data->unk1C + 3) % 4;
        ov109_021E7474(data, data->unk1B, data->unk1C, 1);
    } else if (keys & 0x80) {
        PlaySE(0x5DC);
        data->unk1C = ((int)data->unk1C + 1) % 4;
        ov109_021E7474(data, data->unk1B, data->unk1C, 1);
    }
    return 5;
}
