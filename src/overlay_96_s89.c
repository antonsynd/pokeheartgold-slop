#include "global.h"

#include "pokeathlon/pokeathlon.h"
#include "pokeathlon/pokeathlon_save.h"

typedef struct Ov96Counters {
    u32 unk00;
    u32 unk04;
    u32 unk08;
    u32 unk0C;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
} Ov96Counters;

extern const u8 _0221A7D8[];

void ov96_021E8340(int type, u32 amount, Ov96Counters *counters) {
    u32 *counter;

    switch (type) {
    case 1:
        counter = &counters->unk00;
        break;
    case 2:
        counter = &counters->unk04;
        break;
    case 3:
        counter = &counters->unk08;
        break;
    case 4:
        counter = &counters->unk0C;
        break;
    case 5:
        counter = &counters->unk10;
        break;
    case 6:
        counter = &counters->unk14;
        break;
    case 7:
        counter = &counters->unk18;
        break;
    case 8:
        counter = &counters->unk1C;
        break;
    default:
        GF_ASSERT(FALSE);
        return;
    }
    *counter += amount;
    if (*counter > 9999) {
        *counter = 9999;
    }
}

BOOL ov96_021E839C(PokeathlonCourseData *data) {
    PokeathlonSave *save = Save_Pokeathlon_Get(data->args->saveData);
    u32 course;
    u16 *record;

    if (data->field_D2A == 0xFFFF) {
        GF_ASSERT(FALSE);
        return FALSE;
    }
    course = PokeathlonCourse_GetField3D8_ForCurrentParticipant(data);
    if (data->args->mode == 1) {
        record = &PokeathlonSave_GetRecordsLink2(save)[course].entries[0].unk_0;
    } else {
        record = &PokeathlonSave_GetRecordsSolo2(save)[course].entries[0].unk_0;
    }
    if (*record == 0xFFFF) {
        return TRUE;
    }
    if (_0221A7D8[course] == 0) {
        if (*record < data->field_D2A) {
            return TRUE;
        }
    } else if (*record > data->field_D2A) {
        return TRUE;
    }
    return FALSE;
}
