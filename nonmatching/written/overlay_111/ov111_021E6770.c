#include "global.h"

typedef struct UnkStruct_ov111_021E6770 {
    u8 unk0[0x18];
    void *sprites[1];
} UnkStruct_ov111_021E6770;

extern void ov111_021E65CC(void *sprite, u32 a1, u32 a2);

void ov111_021E6770(UnkStruct_ov111_021E6770 *data, int idx, u32 a1, u32 a2) {
    ov111_021E65CC(data->sprites[idx], a1, a2);
}
