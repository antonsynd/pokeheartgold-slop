#include "global.h"

#include "bg_window.h"
#include "text.h"
#include "unk_0201956C.h"

typedef struct Ov70Entry {
    void *data;
    u8 filler_4[4];
} Ov70Entry;

typedef struct Ov70_022434C0 {
    u8 filler_00[4];
    Window *windows;
    u8 filler_08[0x14];
    UnkStruct_0201956C *unk1C;
    u8 filler_20[0x14];
    Ov70Entry *entries;
} Ov70_022434C0;

void ov70_02242FC4(UnkStruct_0201956C *a0, Window *window, void *data, int a3, u32 color);
void sub_02019A60(UnkStruct_0201956C *mgr, int index, Window *window);

void ov70_022434C0(Ov70_022434C0 *a0, int page, int count) {
    int i;

    for (i = 0; i < 4; i++) {
        FillWindowPixelBuffer(&a0->windows[i], 0x22);
        if (page * 4 + i < count) {
            ov70_02242FC4(a0->unk1C, &a0->windows[i], a0->entries[page * 4 + i].data, 0, MAKE_TEXT_COLOR(15, 14, 2));
        } else {
            CopyWindowPixelsToVram_TextMode(&a0->windows[i]);
            sub_02019A60(a0->unk1C, 0, &a0->windows[i]);
        }
    }
}
