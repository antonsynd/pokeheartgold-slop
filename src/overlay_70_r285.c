#include "global.h"

#include "bg_window.h"
#include "render_window.h"

typedef struct Ov70Cursor {
    s16 unk0;
    s8 unk2;
    s8 unk3;
    s8 unk4;
    u8 filler_05[0x13];
    void *unk18;
    void *unk1C;
    void *unk20;
} Ov70Cursor;

typedef struct Ov70Result {
    u8 filler_00[0x20];
    u32 unk20;
} Ov70Result;

typedef struct Ov70_0223F008 {
    u8 filler_0000[0x2C];
    int state;
    u8 filler_0030[0xB54];
    Ov70Cursor cursor;
    u8 filler_0BA8[0x370];
    Window window;
    u8 filler_0F28[0x130];
    u8 unk1058[0x150];
    void *unk11A8;
    u8 filler_11AC[0x18];
    Ov70Result *unk11C4;
} Ov70_0223F008;

u32 ov70_02242144(void *a0);
BOOL ov70_0223EDE4(Ov70Cursor *cursor, u32 result);
void ov70_0223F828(Ov70Cursor *cursor, int a1, int a2);
int ov70_0223F864(s8 a0, s8 a1, int a2);
void ov70_0223F3D8(void *a0, void *a1, void *a2, void *a3, s16 a4, s8 a5, int a6);

int ov70_0223F008(Ov70_0223F008 *a0) {
    u32 ret = ov70_02242144(a0->unk11A8);

    switch (ret) {
    case 12:
    case -2:
        ClearFrameAndWindow2(&a0->window, FALSE);
        if (ov70_0223EDE4(&a0->cursor, a0->unk11C4->unk20)) {
            a0->state = 0;
        } else {
            a0->state = 7;
        }
        break;
    case -1:
        break;
    default:
        ov70_0223F828(&a0->cursor, ret, 0);
        a0->state = 13;
        ov70_0223F3D8(a0->cursor.unk1C, a0->cursor.unk20, a0->cursor.unk18, a0->unk1058, a0->cursor.unk0, a0->cursor.unk2, ov70_0223F864(a0->cursor.unk3, a0->cursor.unk4, 0));
        break;
    }
    return 3;
}
