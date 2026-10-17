#include "global.h"

#include "heap.h"

typedef struct ScreenFade {
    int type;
    int steps;
    int framesPerStep;
    int state;
    int screen;
    void *data;
    void *hwSettings;
    void *hblanks;
    enum HeapID heapID;
    u16 color;
    int direction;
    int method;
} ScreenFade;

typedef struct UnkStruct_0210F69C UnkStruct_0210F69C;
typedef struct UnkStruct_020F5D98 UnkStruct_020F5D98;
typedef struct UnkStruct_020F5E74 UnkStruct_020F5E74;

typedef struct UnkStruct_0210F64C {
    u8 filler_00[0x5C];
    const UnkStruct_020F5D98 *unk5C;
    u8 filler_60[0x14];
    const UnkStruct_020F5D98 *unk74;
} UnkStruct_0210F64C;

extern UnkStruct_0210F64C _0210F64C;
extern UnkStruct_0210F69C _0210F69C;
extern UnkStruct_0210F69C _0210F6B4;
extern const UnkStruct_020F5D98 _020F5D98;
extern const UnkStruct_020F5D98 _020F5DB0;
extern const UnkStruct_020F5E74 _020F5E74;

void sub_0200FCDC(u16 color);
void sub_02012B1C(ScreenFade *fade, UnkStruct_0210F69C *a1);
BOOL sub_02012B80(ScreenFade *fade);
void sub_02012DD8(ScreenFade *fade, const UnkStruct_020F5E74 *a1);
BOOL sub_02012E10(ScreenFade *fade);

BOOL FadeFunc_40(ScreenFade *fade) {
    if (fade->state == 0) {
        _0210F64C.unk5C = &_020F5D98;
        sub_0200FCDC(fade->color);
        sub_02012B1C(fade, &_0210F69C);
        fade->direction = 1;
        fade->method = 0;
        return FALSE;
    }
    return sub_02012B80(fade);
}

BOOL FadeFunc_41(ScreenFade *fade) {
    if (fade->state == 0) {
        _0210F64C.unk74 = &_020F5DB0;
        sub_0200FCDC(fade->color);
        sub_02012B1C(fade, &_0210F6B4);
        fade->direction = 0;
        fade->method = 0;
        return FALSE;
    }
    return sub_02012B80(fade);
}

BOOL FadeFunc_42(ScreenFade *fade) {
    if (fade->state == 0) {
        sub_0200FCDC(fade->color);
        sub_02012DD8(fade, &_020F5E74);
        fade->direction = 1;
        fade->method = 0;
        return FALSE;
    }
    return sub_02012E10(fade);
}
