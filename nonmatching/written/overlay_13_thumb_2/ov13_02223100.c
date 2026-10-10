#include "global.h"

typedef struct UnkStruct_ov13_02223100 {
    void *unk_00;
    void (*unk_04)(u32 arg, void *self);
} UnkStruct_ov13_02223100;

extern UnkStruct_ov13_02223100 ov13_0224DD80;

int ov13_02223100(u32 arg) {
    if (ov13_0224DD80.unk_04 != NULL) {
        ov13_0224DD80.unk_04(arg, ov13_0224DD80.unk_04);
    }
    return 0;
}
