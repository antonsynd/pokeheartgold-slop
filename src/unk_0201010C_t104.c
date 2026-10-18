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
} ScreenFade;

typedef struct FadeBarSpan {
    u8 start;
    u8 end;
    u16 visible;
} FadeBarSpan;

typedef struct FadeBars {
    u8 mask[0x30C];
    FadeBarSpan *spans;
    int spanCount;
    int den;
    int num;
    u8 filler_31C[0x6C];
} FadeBars;

typedef struct UnkStruct_0210F69C {
    u8 filler_00[0xB];
    u8 unkB;
} UnkStruct_0210F69C;

void sub_02012ACC(const FadeBarSpan *span, u8 *mask, int num, int den);
void sub_02012BE8(FadeBars *bars, UnkStruct_0210F69C *a1, int steps, int framesPerStep, int screen, void *hwSettings, void *hblanks, enum HeapID heapID);
void sub_02012CDC(FadeBars *bars, UnkStruct_0210F69C *a1, int steps, int framesPerStep, int screen, void *hwSettings, void *hblanks, enum HeapID heapID);

void sub_02012A90(FadeBars *bars) {
    int i;

    for (i = 0; i < bars->spanCount; i++) {
        sub_02012ACC(&bars->spans[i], bars->mask, bars->num, bars->den);
    }
}

void sub_02012ACC(const FadeBarSpan *span, u8 *mask, int num, int den) {
    int split;
    int i;
    int end;
    int visible;

    split = (span->end - span->start) * num / den;
    split += span->start;
    if (span->start <= span->end) {
        i = span->start;
        end = span->end;
        visible = span->visible;
    } else {
        i = span->end;
        end = span->start;
        visible = span->visible == 0 ? TRUE : FALSE;
    }
    for (; i < end; i++) {
        if (i == split) {
            visible = visible == 0 ? TRUE : FALSE;
        }
        mask[i] = visible;
    }
}

void sub_02012B1C(ScreenFade *fade, UnkStruct_0210F69C *a1) {
    FadeBars *bars;

    fade->data = Heap_Alloc(fade->heapID, sizeof(FadeBars));
    memset(fade->data, 0, sizeof(FadeBars));
    bars = fade->data;
    if (a1->unkB == 0) {
        sub_02012BE8(bars, a1, fade->steps, fade->framesPerStep, fade->screen, fade->hwSettings, fade->hblanks, fade->heapID);
    } else {
        sub_02012CDC(bars, a1, fade->steps, fade->framesPerStep, fade->screen, fade->hwSettings, fade->hblanks, fade->heapID);
    }
    fade->state++;
}
