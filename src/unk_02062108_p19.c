#include "global.h"

typedef struct UnkStruct_020FDA28 {
    int values[4];
} UnkStruct_020FDA28;

extern const UnkStruct_020FDA28 _020FDA28;

int sub_020623D8(int idx) {
    UnkStruct_020FDA28 table = _020FDA28;

    GF_ASSERT(idx < 4);
    return table.values[idx];
}
