#include "global.h"

typedef struct UnkStruct_ov05_0221C5C4 {
    u8 filler_00[0x0c];
    void *bgConfig;
    u8 filler_10[0xb82 - 0x10];
    u8 frame;
} UnkStruct_ov05_0221C5C4;

extern const u8 ov05_0221EA6C[][2];

extern void PlaySE(u16 sndseq);
extern void ScheduleSetBgPosText(void *bgConfig, u8 bgId, int op, int value);
extern void ov05_0221D3AC(UnkStruct_ov05_0221C5C4 *param0, u8 param1, s16 param2, s16 param3);
extern void ov05_0221D664(UnkStruct_ov05_0221C5C4 *param0, u8 param1, s16 param2, s16 param3);

u8 ov05_0221C5C4(UnkStruct_ov05_0221C5C4 *param0) {
    ScheduleSetBgPosText(param0->bgConfig, 2, 2, ov05_0221EA6C[param0->frame][0]);
    ScheduleSetBgPosText(param0->bgConfig, 3, 2, ov05_0221EA6C[param0->frame][0]);
    ov05_0221D3AC(param0, 0, ov05_0221EA6C[param0->frame][1], 0);
    ov05_0221D3AC(param0, 1, ov05_0221EA6C[param0->frame][1], 0);
    ov05_0221D3AC(param0, 2, ov05_0221EA6C[param0->frame][1], 0);
    ov05_0221D3AC(param0, 3, ov05_0221EA6C[param0->frame][1], 0);
    ov05_0221D664(param0, 0, ov05_0221EA6C[param0->frame][1], 0);
    ov05_0221D664(param0, 1, ov05_0221EA6C[param0->frame][1], 0);
    ov05_0221D664(param0, 2, ov05_0221EA6C[param0->frame][1], 0);
    ov05_0221D664(param0, 3, ov05_0221EA6C[param0->frame][1], 0);

    if (param0->frame == 0) {
        PlaySE(0x853);
    }

    if (param0->frame == 5) {
        param0->frame = 0;
        return 1;
    } else {
        param0->frame++;
    }

    return 0;
}
