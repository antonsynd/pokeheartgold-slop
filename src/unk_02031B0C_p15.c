#include "global.h"

typedef struct UnkStruct_02031C08 {
    u8 filler_0[0xA];
    u16 unkA;
} UnkStruct_02031C08;

u8 sub_02031C08(UnkStruct_02031C08 *a0) {
    int i;
    u8 count = 0;
    u16 value = a0->unkA;

    for (i = 0; i < 5; i++) {
        if (value & 7) {
            count++;
        }
        value >>= 3;
    }
    return count;
}
