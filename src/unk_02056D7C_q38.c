#include "global.h"

#include "unk_02035900.h"
#include "unk_02056D7C.h"

typedef struct UnkPlayerEntry {
    u16 unk0;
    u16 unk2;
    s8 unk4;
    u8 unk5;
    u8 filler_6[2];
} UnkPlayerEntry;

typedef struct UnkStruct_021D41C4 {
    u8 filler_00[0x24];
    u8 active[8];
    void *task;
    void *data;
    UnkPlayerEntry entries[8];
} UnkStruct_021D41C4;

extern UnkStruct_021D41C4 *_021D41C4;

u16 sub_02057B9C(int netId) {
    if (_021D41C4 == NULL) {
        return 0xFFFF;
    }
    if (netId == sub_0203769C()) {
        return _021D41C4->entries[netId].unk2;
    }
    if (!sub_02057A0C() || !_021D41C4->active[netId]) {
        return 0xFFFF;
    }
    return _021D41C4->entries[netId].unk2;
}
