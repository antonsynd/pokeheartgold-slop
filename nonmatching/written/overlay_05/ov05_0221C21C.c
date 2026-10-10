#include "global.h"

typedef struct UnkStruct_ov05_0221C21C_Intro {
    u8 filler_00[0x28];
    u8 mode;
} UnkStruct_ov05_0221C21C_Intro;

typedef struct UnkStruct_ov05_0221C21C {
    UnkStruct_ov05_0221C21C_Intro *trainerIntroData;
    u8 filler_04[0x0c - 0x04];
    void *bgConfig;
    u8 filler_10[0xb78 - 0x10];
    s16 prevOffsetX;
    s16 prevOffsetY;
    s8 shakeRangeX;
    s8 shakeRangeY;
    u8 filler_B7E[0xb82 - 0xb7e];
    u8 frame;
} UnkStruct_ov05_0221C21C;

extern u16 LCRandom(void);
extern void PlaySE(u16 sndseq);
extern void ScheduleSetBgPosText(void *bgConfig, u8 bgId, int op, int value);
extern int ov05_0221DAE0(UnkStruct_ov05_0221C21C *param0);
extern void ov05_0221D3AC(UnkStruct_ov05_0221C21C *param0, u8 param1, s16 param2, s16 param3);
extern void ov05_0221D664(UnkStruct_ov05_0221C21C *param0, u8 param1, s16 param2, s16 param3);

u8 ov05_0221C21C(UnkStruct_ov05_0221C21C *param0) {
    s16 v0, v1;

    if (ov05_0221DAE0(param0) == 0 && param0->frame > 24) {
        param0->frame = 0;
        return 1;
    }

    if (param0->frame == 0) {
        if (param0->trainerIntroData->mode == 1) {
            PlaySE(0x715);
        } else {
            PlaySE(0x852);
        }
    }

    if (param0->frame == 24) {
        ScheduleSetBgPosText(param0->bgConfig, 3, 0, 24);
        ScheduleSetBgPosText(param0->bgConfig, 2, 0, -24);
        ScheduleSetBgPosText(param0->bgConfig, 3, 3, 0);
        ScheduleSetBgPosText(param0->bgConfig, 2, 3, 0);

        ov05_0221D3AC(param0, 0, 0, 0);
        ov05_0221D3AC(param0, 1, 0, 0);
        ov05_0221D3AC(param0, 2, 0, 0);
        ov05_0221D3AC(param0, 3, 0, 0);

        ov05_0221D664(param0, 0, 0, 0);
        ov05_0221D664(param0, 1, 0, 0);
        ov05_0221D664(param0, 2, 0, 0);
        ov05_0221D664(param0, 3, 0, 0);
    } else if (param0->frame < 24) {
        v0 = ((int)LCRandom() % param0->shakeRangeX) - (param0->shakeRangeX / 2);
        v1 = ((int)LCRandom() % param0->shakeRangeY) - (param0->shakeRangeY / 2);

        if ((v0 < 0 && param0->prevOffsetX < 0) || (v0 > 0 && param0->prevOffsetX > 0)) {
            v0 *= -1;
        }

        if ((v1 < 0 && param0->prevOffsetY < 0) || (v1 > 0 && param0->prevOffsetY > 0)) {
            v1 *= -1;
        }

        ScheduleSetBgPosText(param0->bgConfig, 3, 0, 24 + v0);
        ScheduleSetBgPosText(param0->bgConfig, 2, 0, -24 + v0);
        ScheduleSetBgPosText(param0->bgConfig, 3, 3, v1);
        ScheduleSetBgPosText(param0->bgConfig, 2, 3, v1);

        ov05_0221D3AC(param0, 0, v0, v1);
        ov05_0221D3AC(param0, 1, v0, v1);
        ov05_0221D3AC(param0, 2, v0, v1);
        ov05_0221D3AC(param0, 3, v0, v1);

        ov05_0221D664(param0, 0, v0, v1);
        ov05_0221D664(param0, 1, v0, v1);
        ov05_0221D664(param0, 2, v0, v1);
        ov05_0221D664(param0, 3, v0, v1);

        param0->prevOffsetX = v0;
        param0->prevOffsetY = v1;
    }

    param0->frame++;

    return 0;
}
