#include "global.h"

typedef struct UnkStruct_ov109_021E66C4 {
    u8 unk0[8];
    u16 state;
    u8 unkA[0xE];
    u8 unk18;
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
    u8 unk1C;
    u8 unk1D[3];
    u8 unk20;
} UnkStruct_ov109_021E66C4;

extern void ov109_021E7474(UnkStruct_ov109_021E66C4 *data, u8 x, u8 y, u32 a3);
extern void ov109_021E74D4(UnkStruct_ov109_021E66C4 *data, u32 a1);
extern void ov109_021E68B8(UnkStruct_ov109_021E66C4 *data, u32 a1);
extern void ov109_021E691C(UnkStruct_ov109_021E66C4 *data, u32 a1);
extern void ov109_021E6F7C(UnkStruct_ov109_021E66C4 *data, u32 a1, u32 a2);
extern void ov109_021E70C4(UnkStruct_ov109_021E66C4 *data, u32 a1, u32 a2, u8 a3);
extern void ov109_021E7524(UnkStruct_ov109_021E66C4 *data);

extern const u32 ov109_021E78DC[];

static inline u32 GetCounter(UnkStruct_ov109_021E66C4 *data) {
    return (data->unk18 >> 4) & 0xF;
}

static inline void SetCounter(UnkStruct_ov109_021E66C4 *data, u32 value) {
    data->unk18 = (data->unk18 & ~0xF0) | (((u8)value & 0xF) << 4);
}

BOOL ov109_021E66C4(UnkStruct_ov109_021E66C4 *data) {
    switch (data->state) {
    case 0:
        ov109_021E7474(data, data->unk1B, data->unk1C, 0);
        ov109_021E74D4(data, 0);
        ov109_021E68B8(data, 1);
        ov109_021E691C(data, 0x1000);
        ov109_021E6F7C(data, 2, 1);
        ov109_021E70C4(data, 2, 2, data->unk19);
        ov109_021E70C4(data, 3, 2, (u8)(data->unk19 + 1));
        data->unk18 &= ~0xF0;
        data->state++;
        break;
    case 1:
        SetCounter(data, GetCounter(data) + 1);
        ov109_021E691C(data, ov109_021E78DC[GetCounter(data)]);
        if (GetCounter(data) >= 4) {
            ov109_021E6F7C(data, 1, 1);
            ov109_021E70C4(data, 2, 1, (u8)(data->unk19 + 1));
            data->state++;
        }
        break;
    case 2:
        SetCounter(data, GetCounter(data) - 1);
        ov109_021E691C(data, ov109_021E78DC[GetCounter(data)]);
        if (GetCounter(data) == 0) {
            ov109_021E70C4(data, 3, 1, (u8)(data->unk19 + 1));
            ov109_021E68B8(data, 0);
            ov109_021E691C(data, 0x1000);
            data->unk19 += 1;
            ov109_021E7474(data, data->unk1B, data->unk1C, 1);
            ov109_021E7524(data);
            if (data->unk20 == 1) {
                ov109_021E74D4(data, 1);
            }
            data->state = 0;
            return TRUE;
        }
        break;
    }
    return FALSE;
}
