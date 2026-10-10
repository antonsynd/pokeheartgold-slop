#include "global.h"
#include "assert.h"
#include "pokeathlon/pokeathlon.h"
#include "pokeathlon/pokeathlon_save.h"

extern u8 _0221A7D8[];

#define RD16(base, off) (*(u16 *)((u8 *)(base) + (off)))

BOOL ov96_021E839C(PokeathlonCourseData *param0) {
    PokeathlonSave *save = Save_Pokeathlon_Get(param0->args->saveData);
    u32 idx;
    u8 *records;
    u32 stride;
    u32 cur;

    if (RD16(param0, 0xD2A) == 0xFFFF) {
        GF_AssertFail();
        return FALSE;
    }
    idx = PokeathlonCourse_GetField3D8_ForCurrentParticipant(param0);
    if (param0->args->mode == 1) {
        records = (u8 *)PokeathlonSave_GetRecordsLink2(save);
        stride = 0xa4;
    } else {
        records = (u8 *)PokeathlonSave_GetRecordsSolo2(save);
        stride = 0x2c;
    }
    cur = *(u16 *)(records + idx * stride);
    if (cur == 0xFFFF) {
        return TRUE;
    }
    if (_0221A7D8[idx] == 0) {
        if (cur < RD16(param0, 0xD2A)) {
            return TRUE;
        }
    } else {
        if (cur > RD16(param0, 0xD2A)) {
            return TRUE;
        }
    }
    return FALSE;
}
