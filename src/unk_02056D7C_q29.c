#include "global.h"

typedef struct UnkPlayerPos {
    u16 x;
    u16 y;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 moving;
} UnkPlayerPos;

typedef struct UnkStruct_021D41C4 {
    u8 filler_00[0x74];
    UnkPlayerPos positions[8];
} UnkStruct_021D41C4;

extern UnkStruct_021D41C4 *_021D41C4;

void sub_02057184(u8 netId);

void sub_0205779C(int a0, int a1, const u8 *data) {
    UnkPlayerPos *pos;
    int netId = data[0] & 0xF;

    if (_021D41C4 == NULL) {
        return;
    }
    pos = &_021D41C4->positions[netId];
    if (data[2] & 0x80) {
        pos->moving = TRUE;
    } else {
        pos->moving = FALSE;
    }
    pos->x = 0;
    pos->y = 0;
    pos->x += data[1];
    pos->x += (data[2] << 8) & 0x100;
    pos->y += data[3];
    pos->y += (data[2] << 7) & 0x100;
    pos->unk4 = (data[0] >> 4) & 3;
    pos->unk5 = (data[0] >> 6) & 3;
    sub_02057184(netId);
}
