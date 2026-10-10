#include "global.h"

typedef struct UnkStruct_ov108_021E9210_Inner {
    u8 unk0[4];
    u16 unk4;
} UnkStruct_ov108_021E9210_Inner;

typedef struct UnkStruct_ov108_021E9210_Anim {
    s32 frame;
    u8 unk4[4];
    UnkStruct_ov108_021E9210_Inner *inner;
} UnkStruct_ov108_021E9210_Anim;

typedef struct UnkStruct_ov108_021E9210 {
    u8 unk0[8];
    UnkStruct_ov108_021E9210_Anim *anim;
    s32 frame;
} UnkStruct_ov108_021E9210;

void ov108_021E9210(UnkStruct_ov108_021E9210 *data) {
    data->frame = (data->frame + 0x1000) % (s32)(data->anim->inner->unk4 << 12);
    data->anim->frame = data->frame;
}
