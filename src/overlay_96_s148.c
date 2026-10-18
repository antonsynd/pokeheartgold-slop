#include "global.h"

#include "pokeathlon/pokeathlon.h"

void ov96_021E8484(PokeathlonCourseData *data, u8 count);

void ov96_021E9718(int index, u32 size, const void *src, PokeathlonCourseData *data) {
    if (ov96_021E5F24(data) == FALSE) {
        memcpy(PokeathlonCourse_GetParticipantData(data, index), src, size);
        PokeathlonCourse_IncrementField1EF(data);
        if (PokeathlonCourse_GetParticipantCount(data) == PokeathlonCourse_GetField1EF(data)) {
            if (PokeathlonCourse_GetField1EF(data) < 4) {
                int count = 4 - PokeathlonCourse_GetField1EF(data);

                ov96_021E8484(data, count);
            }
            PokeathlonCourse_ResetField1EF(data);
            PokeathlonCourse_SetStateField07(data, 4);
        }
    }
}
