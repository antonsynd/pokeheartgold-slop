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

typedef struct UnkStruct_020F5DFC UnkStruct_020F5DFC;

extern const UnkStruct_020F5DFC _020F5DFC;

void sub_0200FCDC(u16 color);
void sub_0201164C(ScreenFade *fade, const UnkStruct_020F5DFC *a1);
BOOL sub_0201169C(ScreenFade *fade);

BOOL FadeFunc_38(ScreenFade *fade) {
    if (fade->state == 0) {
        sub_0200FCDC(fade->color);
        sub_0201164C(fade, &_020F5DFC);
        fade->direction = 1;
        fade->method = 0;
        return FALSE;
    }
    return sub_0201169C(fade);
}
