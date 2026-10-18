#include "global.h"

#include "constants/sndseq.h"

#include "sound.h"
#include "unk_02018000.h"

typedef struct Ov93Balloon {
    BOOL active;
    UnkStruct_020181B0 obj;
    UnkStruct_020180BC anim;
} Ov93Balloon;

typedef struct Ov93Balloons {
    u8 filler_00[0x88];
    UnkStruct_02018030 models[4];
    Ov93Balloon balloons[8][4];
} Ov93Balloons;

typedef struct Ov93_0225DF38 {
    u8 filler_00[0xD8];
    Ov93Balloons balloons;
} Ov93_0225DF38;

BOOL ov93_0225DF38(Ov93_0225DF38 *a0, int score) {
    Ov93Balloons *balloons = &a0->balloons;
    UnkStruct_02018030 *model;
    int i, size;

    if (score > 1200) {
        size = 3;
    } else if (score > 3 / 3 * 2) {
        size = 2;
    } else if (score > 3 / 3 * 1) {
        size = 1;
    } else {
        size = 0;
    }
    model = &balloons->models[size];
    for (i = 0; i < 8; i++) {
        if (balloons->balloons[i][size].active == FALSE) {
            sub_020181B0(&balloons->balloons[i][size].obj, model);
            sub_020182A8(&balloons->balloons[i][size].obj, FX32_CONST(0), FX32_CONST(-25), FX32_CONST(0));
            sub_020182C4(&balloons->balloons[i][size].obj, FX32_CONST(1.00f), FX32_CONST(1.00f), FX32_CONST(1.00f));
            sub_020182A0(&balloons->balloons[i][size].obj, 1);
            sub_02018198(&balloons->balloons[i][size].anim, 0);
            sub_020181D4(&balloons->balloons[i][size].obj, &balloons->balloons[i][size].anim);
            balloons->balloons[i][size].active = TRUE;
            PlaySE(SEQ_SE_PL_BALLOON03_2);
            return TRUE;
        }
    }
    return FALSE;
}
