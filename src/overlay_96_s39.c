#include "global.h"

#include "pokeathlon/pokeathlon.h"

extern const u32 ov96_0221DA28[];
extern const void *const _0221DA00[];

int ov96_021E6CE4(PokeathlonCourseData *data) {
    u8 course = data->field_3D8[data->currentParticipantIndex];

    data->field_728 = 0;
    data->field_D2A = 0xFFFF;
    data->field_72B = 0;
    data->field_D6C = 0;
    PokeathlonCourse_ResetDataCopyArea(data);
    data->state = ov96_0221DA28[course];
    data->field_1ED = 0;
    PokeathlonCourse_InitStateInfo(_0221DA00[course], &data->subStateInfo);
    PokeathlonCourse_SetStateField07(data, 16);
    return 0;
}
