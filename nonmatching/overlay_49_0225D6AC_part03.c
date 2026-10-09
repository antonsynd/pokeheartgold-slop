#include "global.h"

#include "error_handling.h"

typedef struct UnkStruct_ov49_0225D6AC_Pos {
    s16 x;
    s16 y;
} UnkStruct_ov49_0225D6AC_Pos;

extern const s32 ov49_02269A74[];

UnkStruct_ov49_0225D6AC_Pos ov49_0225D1EC(void *a0);
void ov49_0225D1C4(void *a0, UnkStruct_ov49_0225D6AC_Pos pos);

void ov49_0225EE4C(void *a0, int a1) {
    UnkStruct_ov49_0225D6AC_Pos pos;
    if (a1 != 0x5C && a1 != 0x5D) {
        GF_AssertFail();
    }
    pos = ov49_0225D1EC(a0);
    pos.x += ov49_02269A74[a1 - 0x5C];
    pos.y -= 10;
    ov49_0225D1C4(a0, pos);
}
