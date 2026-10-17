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

typedef struct FadeRect {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
} FadeRect;

extern const u8 _020F5EBC[];
extern const u8 _020F5DF0[];
extern const FadeRect _020F5D58[];
extern const FadeRect _020F5D98[];

void sub_020122B8(ScreenFade *fade, FadeRect *rect);
BOOL sub_020122F8(ScreenFade *fade);
void sub_020125EC(ScreenFade *fade, FadeRect *rect);
BOOL sub_0201262C(ScreenFade *fade);

BOOL FadeFunc_30(ScreenFade *fade) {
    if (fade->state == 0) {
        _0210F64C.params[6].template = &_020F5EBC;
        sub_0200FCDC(fade->color);
        sub_0201289C(fade, &_0210F64C.params[6]);
        fade->direction = 1;
        fade->method = 0;
        return FALSE;
    }
    return sub_020128E0(fade);
}

BOOL FadeFunc_31(ScreenFade *fade) {
    if (fade->state == 0) {
        _0210F64C.params[3].template = &_020F5DF0;
        sub_0200FCDC(fade->color);
        sub_0201289C(fade, &_0210F64C.params[3]);
        fade->direction = 0;
        fade->method = 0;
        return FALSE;
    }
    return sub_020128E0(fade);
}

BOOL FadeFunc_32(ScreenFade *fade) {
    if (fade->state == 0) {
        FadeRect rect = _020F5D58[6];

        sub_0200FCDC(fade->color);
        sub_020122B8(fade, &rect);
        fade->direction = 1;
        fade->method = 0;
        return FALSE;
    }
    return sub_020122F8(fade);
}

BOOL FadeFunc_33(ScreenFade *fade) {
    if (fade->state == 0) {
        FadeRect rect = _020F5D98[5];

        sub_0200FCDC(fade->color);
        sub_020122B8(fade, &rect);
        fade->direction = 0;
        fade->method = 0;
        return FALSE;
    }
    return sub_020122F8(fade);
}

BOOL FadeFunc_34(ScreenFade *fade) {
    if (fade->state == 0) {
        FadeRect rect = _020F5D58[4];

        sub_0200FCDC(fade->color);
        sub_020125EC(fade, &rect);
        fade->direction = 1;
        fade->method = 0;
        return FALSE;
    }
    return sub_0201262C(fade);
}

BOOL FadeFunc_35(ScreenFade *fade) {
    if (fade->state == 0) {
        FadeRect rect = _020F5D58[3];

        sub_0200FCDC(fade->color);
        sub_020125EC(fade, &rect);
        fade->direction = 0;
        fade->method = 0;
        return FALSE;
    }
    return sub_0201262C(fade);
}
