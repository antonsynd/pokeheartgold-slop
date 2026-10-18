#include "global.h"

typedef struct Ov96Runner {
    u8 filler_00[4];
    void *unk04;
    u8 filler_08[0x14];
    fx32 x;
    fx32 y;
    u8 filler_24[0x24];
} Ov96Runner;

typedef struct Ov96Team {
    Ov96Runner runners[3];
    u32 unkD8_0 : 2;
    u32 score : 16;
    u32 unkD8_18 : 14;
    u8 filler_DC[8];
} Ov96Team;

typedef struct Ov96_0220E770 {
    u8 filler_000[0x164];
    Ov96Team teams[4];
} Ov96_0220E770;

int ov96_021EAF8C(void *a0);
Ov96_0220E770 *PokeathlonCourse_GetHeapAllocPtr4(void *course);

void ov96_0220E770(Ov96_0220E770 *a0, u32 team, u32 runner, s16 *pos, int *out) {
    GF_ASSERT(a0 != NULL);
    GF_ASSERT(team < 4);
    GF_ASSERT(runner < 3);

    Ov96Runner *data = &a0->teams[team].runners[runner];

    pos[0] = data->x >> FX32_SHIFT;
    pos[1] = data->y >> FX32_SHIFT;
    *out = ov96_021EAF8C(data->unk04);
}

u8 ov96_0220E7BC(void *course, int team) {
    u8 rank = 0;
    Ov96_0220E770 *data;
    int i;
    u16 score;

    GF_ASSERT(course != NULL);
    data = PokeathlonCourse_GetHeapAllocPtr4(course);
    GF_ASSERT(data != NULL);

    for (i = 0; i < 4; i++) {
        u16 other = data->teams[i].score;

        score = data->teams[team].score;
        if (i != team && score < other) {
            rank++;
        }
    }
    return rank;
}
