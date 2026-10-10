#include "global.h"

typedef struct UnkStruct_ov109_021E7178 {
    u8 unk0[4];
    u8 unk4;
} UnkStruct_ov109_021E7178;

extern void ov109_021E7114(void *data, u8 a1, u8 a2, u8 a3, u8 a4);

void ov109_021E7178(void *data, UnkStruct_ov109_021E7178 *photo, u32 a2, u32 x, u8 y) {
    u8 val = 0;
    if (photo != NULL) {
        val = (u8)((photo->unk4 >> 1) + 1);
    }
    ov109_021E7114(data, val, (u8)a2, (u8)(((x >> 1) & 0xFF) + x * 6 + 4), (u8)(y * 5 + 1));
}
