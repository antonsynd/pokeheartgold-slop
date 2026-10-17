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

typedef struct FadeWindowParam {
    const void *template;
    u32 unk4;
} FadeWindowParam;

typedef struct FadeWindowParams {
    FadeWindowParam params[10];
} FadeWindowParams;

extern FadeWindowParams _0210F64C;

void sub_0200FCDC(u16 color);
void sub_0201289C(ScreenFade *fade, FadeWindowParam *param);
BOOL sub_020128E0(ScreenFade *fade);

extern const u8 _020F5D90[];
extern const u8 _020F5D68[];
extern const u8 _020F5D80[];
extern const u8 _020F5DB8[];

BOOL FadeFunc_08(ScreenFade *fade) {
    if (fade->state == 0) {
        _0210F64C.params[1].template = &_020F5D90;
        sub_0200FCDC(fade->color);
        sub_0201289C(fade, &_0210F64C.params[1]);
        fade->direction = 1;
        fade->method = 0;
        return FALSE;
    }
    return sub_020128E0(fade);
}

BOOL FadeFunc_09(ScreenFade *fade) {
    if (fade->state == 0) {
        _0210F64C.params[7].template = &_020F5D68;
        sub_0200FCDC(fade->color);
        sub_0201289C(fade, &_0210F64C.params[7]);
        fade->direction = 0;
        fade->method = 0;
        return FALSE;
    }
    return sub_020128E0(fade);
}

BOOL FadeFunc_10(ScreenFade *fade) {
    if (fade->state == 0) {
        _0210F64C.params[9].template = &_020F5D80;
        sub_0200FCDC(fade->color);
        sub_0201289C(fade, &_0210F64C.params[9]);
        fade->direction = 1;
        fade->method = 0;
        return FALSE;
    }
    return sub_020128E0(fade);
}

BOOL FadeFunc_11(ScreenFade *fade) {
    if (fade->state == 0) {
        _0210F64C.params[8].template = &_020F5DB8;
        sub_0200FCDC(fade->color);
        sub_0201289C(fade, &_0210F64C.params[8]);
        fade->direction = 0;
        fade->method = 0;
        return FALSE;
    }
    return sub_020128E0(fade);
}
