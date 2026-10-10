#include "global.h"

typedef struct UnkStruct_ov13_0224DF30 {
    u8 unk_00[0xc];
    void *(*unk_0C)(void *ptr, void *self);
} UnkStruct_ov13_0224DF30;

extern UnkStruct_ov13_0224DF30 ov13_0224DF30;

void *ov13_02226CFC(void *ptr) {
    return ov13_0224DF30.unk_0C(ptr, ov13_0224DF30.unk_0C);
}
