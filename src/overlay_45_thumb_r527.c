#include "global.h"

typedef struct Ov45Point {
    s16 x;
    s16 y;
} Ov45Point;

typedef struct Ov45_02230ACC {
    u8 active : 4;
    u8 unk0_4 : 4;
    u8 filler_01[3];
    void *unk4;
    void *billboard;
    u8 filler_0C[0x78];
    u8 mode;
    u8 unk85;
    u16 unk86;
    fx32 unk88;
} Ov45_02230ACC;

typedef void (*Ov45ModeFunc)(Ov45_02230ACC *a0);

extern const Ov45ModeFunc ov45_02254F28[];

u32 ov42_02228188(void *a0, int a1);
Ov45Point ov42_022282F4(void *a0);
int ov45_02230DC4(u8 mode);
void ov45_022308C0(Ov45_02230ACC *a0, Ov45Point *point);
int sub_02023EF4(void *billboard);
fx32 sub_02023F70(void *billboard);

void ov45_02230ACC(Ov45_02230ACC *a0) {
    u32 mode;
    u32 value;
    Ov45Point point;

    if (a0->active == 0) {
        return;
    }
    mode = ov42_02228188(a0->unk4, 5);
    value = ov42_02228188(a0->unk4, 8);
    if (a0->unk86 > value || a0->mode != mode) {
        if (ov45_02230DC4(a0->mode) == 1) {
            a0->unk85 = sub_02023EF4(a0->billboard);
            a0->unk88 = sub_02023F70(a0->billboard);
        }
        a0->mode = mode;
    }
    a0->unk86 = value;
    ov45_02254F28[mode](a0);
    point = ov42_022282F4(a0->unk4);
    ov45_022308C0(a0, &point);
}
