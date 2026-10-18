#include "global.h"

#include "bg_window.h"
#include "heap.h"

typedef struct Ov111WindowTemplate {
    s16 x;
    s16 y;
    u8 width;
    u8 height;
    u8 palette;
    u16 baseTile;
} Ov111WindowTemplate;

typedef struct Ov111Panel {
    int unk00;
    void *unk04;
    void *unk08;
    Window windows[6];
    u8 filler_6C[6];
    s16 x;
    s16 y;
} Ov111Panel;

typedef struct Ov111_021E63D0 {
    enum HeapID heapID;
    BgConfig *bgConfig;
    u8 filler_08[4];
    void *unk0C;
    void *unk10;
} Ov111_021E63D0;

extern const Ov111WindowTemplate ov111_021E6C68[6];

void *ov111_021E6330(void *a0, void *a1, int x, int y, u8 a4, u8 a5);
void *ov111_021E6380(void *a0, void *a1, s16 x, s16 y, u8 a4);

Ov111Panel *ov111_021E63D0(Ov111_021E63D0 *a0, s16 x, s16 y, int sub, int a4) {
    Ov111Panel *panel;
    u8 bgId;
    int i;

    bgId = sub == 0 ? GF_BG_LYR_MAIN_2 : GF_BG_LYR_MAIN_3;
    panel = Heap_Alloc(a0->heapID, sizeof(Ov111Panel));
    MI_CpuFill8(panel, 0, sizeof(Ov111Panel));
    panel->unk00 = a4;
    panel->x = x;
    panel->y = y;
    panel->unk04 = ov111_021E6330(a0->unk0C, a0->unk10, panel->x, panel->y, 0, 1);
    panel->unk08 = ov111_021E6380(a0->unk0C, a0->unk10, panel->x - 44, panel->y - 8, sub);
    for (i = 0; i < 6; i++) {
        AddWindowParameterized(a0->bgConfig, &panel->windows[i], bgId, (u8)(x >> 3) + ov111_021E6C68[i].x, (u8)(y >> 3) + ov111_021E6C68[i].y, ov111_021E6C68[i].width, ov111_021E6C68[i].height, ov111_021E6C68[i].palette, ov111_021E6C68[i].baseTile);
    }
    return panel;
}
