#include "global.h"

#include "unk_02018000.h"
#include "unk_02035900.h"

typedef struct Ov93Balloon {
    BOOL active;
    UnkStruct_020181B0 obj;
    UnkStruct_020180BC anim;
} Ov93Balloon;

typedef struct Ov93Balloons {
    UnkStruct_02018030 playerModel;
    UnkStruct_020181B0 playerObj;
    UnkStruct_02018030 models[4];
    Ov93Balloon balloons[8][4];
} Ov93Balloons;

typedef struct Ov93Pump {
    UnkStruct_02018030 model;
    UnkStruct_020181B0 obj;
} Ov93Pump;

typedef struct Ov93_0225DD2C {
    u8 filler_0000[0xA8];
    NNSFndAllocator allocator;
    u8 filler_00B8[0x20];
    Ov93Balloons balloons;
    u8 filler_rest[0x13A0 - 0xD8 - sizeof(Ov93Balloons)];
    Ov93Pump pump;
} Ov93_0225DD2C;

extern const u32 ov93_02262AF0[][5];
extern const u32 ov93_02262AF4[][5];
extern const u32 ov93_02262AF8[][5];
extern const u32 ov93_02262AFC[][5];
extern const u32 ov93_02262B00[][5];

int ov93_0225E45C(Ov93_0225DD2C *a0, int netId);

void ov93_0225DD2C(Ov93_0225DD2C *a0, NARC *narc) {
    int i, j;
    Ov93Balloons *balloons = &a0->balloons;
    Ov93Pump *pump = &a0->pump;
    int color;
    void *animData = NULL;

    color = ov93_0225E45C(a0, sub_0203769C());
    sub_02018030(&balloons->playerModel, narc, ov93_02262AF0[color][0], HEAP_ID_117);
    sub_020181B0(&balloons->playerObj, &balloons->playerModel);
    sub_020182A8(&balloons->playerObj, FX32_CONST(0), FX32_CONST(-25), FX32_CONST(0));
    sub_020182C4(&balloons->playerObj, FX32_CONST(1.00f), FX32_CONST(1.00f), FX32_CONST(1.00f));
    sub_020182A0(&balloons->playerObj, 1);
    sub_02018030(&balloons->models[0], narc, ov93_02262AF4[color][0], HEAP_ID_117);
    sub_02018030(&balloons->models[1], narc, ov93_02262AF8[color][0], HEAP_ID_117);
    sub_02018030(&balloons->models[2], narc, ov93_02262AFC[color][0], HEAP_ID_117);
    sub_02018030(&balloons->models[3], narc, ov93_02262B00[color][0], HEAP_ID_117);
    for (i = 0; i < 8; i++) {
        for (j = 0; j < 4; j++) {
            if (animData == NULL) {
                sub_020180BC(&balloons->balloons[i][j].anim, &balloons->models[j], narc, 35 + j, HEAP_ID_117, &a0->allocator);
                animData = balloons->balloons[i][j].anim.anmRes;
            } else {
                sub_020180E8(&balloons->balloons[i][j].anim, &balloons->models[j], animData, &a0->allocator);
            }
            sub_02018198(&balloons->balloons[i][j].anim, 0);
        }
    }
    sub_02018030(&pump->model, narc, 30, HEAP_ID_117);
    sub_020181B0(&pump->obj, &pump->model);
    sub_020182A8(&pump->obj, FX32_CONST(0), FX32_CONST(-25), FX32_CONST(0));
    sub_020182C4(&pump->obj, FX32_CONST(1.00f), FX32_CONST(1.00f), FX32_CONST(1.00f));
    sub_020182A0(&pump->obj, 1);
}
