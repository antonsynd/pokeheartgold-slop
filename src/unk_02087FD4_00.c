#include "global.h"

typedef struct UnkStruct_021037B8 {
    void *unk00;
    u8 filler_04[0x20];
} UnkStruct_021037B8;

typedef struct UnkStruct_02103754 {
    u8 filler_00[0x64];
    void *unk64;
} UnkStruct_02103754;

extern UnkStruct_02103754 _02103754;
extern UnkStruct_021037B8 _021037B8[];

void *sub_02087FD4(int index) {
    if (index >= 7) {
        GF_ASSERT(index < 7);
        return _02103754.unk64;
    }
    return _021037B8[index].unk00;
}
