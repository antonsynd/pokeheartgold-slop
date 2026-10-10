#include "global.h"
#include "bg_window.h"
#include "render_window.h"

typedef struct UnkStruct_ov31_0225D83C_Inner {
    u8 filler_000[0x284];
    u16 unk_284;
    s16 unk_286;
} UnkStruct_ov31_0225D83C_Inner;

typedef struct UnkStruct_ov31_0225D83C {
    u8 filler_000[0x14];
    UnkStruct_ov31_0225D83C_Inner *unk_14;
    u8 filler_018[0x44 - 0x18];
    Window window_44;
    Window window_54;
    Window window_64;
    u8 filler_074[0x114 - 0x74];
    Window window_114;
} UnkStruct_ov31_0225D83C;

void ov31_0225D684(UnkStruct_ov31_0225D83C *a0, int a1);
void ov31_0225D9D4(UnkStruct_ov31_0225D83C *a0, int a1);
void ov31_0225DCA8(UnkStruct_ov31_0225D83C *a0);
void ov31_0225DCF4(UnkStruct_ov31_0225D83C *a0);
void ov31_0225DD14(UnkStruct_ov31_0225D83C *a0);
void ov31_0225DE84(UnkStruct_ov31_0225D83C *a0);
void ov31_0225DF98(UnkStruct_ov31_0225D83C *a0);
void ov31_0225E184(UnkStruct_ov31_0225D83C *a0);
void ov31_0225E20C(UnkStruct_ov31_0225D83C *a0, u16 a1);
void ov31_0225E2D4(UnkStruct_ov31_0225D83C *a0, int a1);
void ov31_0225E474(UnkStruct_ov31_0225D83C *a0);
void ov31_0225E54C(UnkStruct_ov31_0225D83C *a0);
void ov31_0225E5FC(UnkStruct_ov31_0225D83C *a0);
void ov31_0225E700(UnkStruct_ov31_0225D83C *a0);
void ov31_0225E7D4(UnkStruct_ov31_0225D83C *a0);
void ov31_0225EA08(UnkStruct_ov31_0225D83C *a0);
void ov31_0225EA9C(UnkStruct_ov31_0225D83C *a0);
void ov31_0225EB30(UnkStruct_ov31_0225D83C *a0);
void ov31_0225EBC4(UnkStruct_ov31_0225D83C *a0);
void ov31_0225EC58(UnkStruct_ov31_0225D83C *a0);
void ov31_0225EDA0(UnkStruct_ov31_0225D83C *a0);

void ov31_0225D83C(UnkStruct_ov31_0225D83C *a0, u32 a1) {
    switch (a1) {
    case 1:
        ov31_0225DD14(a0);
        ov31_0225DF98(a0);
        ov31_0225D684(a0, 0);
        break;
    case 2:
        ov31_0225D9D4(a0, 1);
        ov31_0225DCF4(a0);
        ClearWindowTilemapAndScheduleTransfer(&a0->window_54);
        ov31_0225EC58(a0);
        ov31_0225E184(a0);
        ov31_0225E20C(a0, a0->unk_14->unk_284);
        ov31_0225E2D4(a0, a0->unk_14->unk_286);
        ov31_0225E474(a0);
        ov31_0225D684(a0, 1);
        ov31_0225E54C(a0);
        break;
    case 3:
        ov31_0225D9D4(a0, 2);
        ov31_0225DCF4(a0);
        ov31_0225EC58(a0);
        ov31_0225E184(a0);
        ov31_0225E20C(a0, a0->unk_14->unk_284);
        ov31_0225E5FC(a0);
        ClearWindowTilemapAndScheduleTransfer(&a0->window_54);
        ClearWindowTilemapAndScheduleTransfer(&a0->window_64);
        break;
    case 4:
        ov31_0225D9D4(a0, 0);
        ov31_0225EDA0(a0);
        ov31_0225DF98(a0);
        ov31_0225D684(a0, 0);
        ov31_0225DCA8(a0);
        ClearFrameAndWindow2(&a0->window_44, TRUE);
        ov31_0225DD14(a0);
        ov31_0225DE84(a0);
        ScheduleWindowCopyToVram(&a0->window_64);
        break;
    case 5:
        ov31_0225D9D4(a0, 0);
        ov31_0225DF98(a0);
        ClearFrameAndWindow2(&a0->window_44, FALSE);
        ov31_0225DD14(a0);
        ov31_0225DE84(a0);
        break;
    case 6:
        ov31_0225E2D4(a0, a0->unk_14->unk_286);
        break;
    case 7:
        ClearWindowTilemapAndScheduleTransfer(&a0->window_64);
        ClearWindowTilemapAndScheduleTransfer(&a0->window_114);
        ov31_0225E5FC(a0);
        break;
    case 8:
        ov31_0225E700(a0);
        break;
    case 9:
        ov31_0225E7D4(a0);
        break;
    case 10:
        ov31_0225EA08(a0);
        break;
    case 11:
        ClearWindowTilemapAndScheduleTransfer(&a0->window_64);
        ClearWindowTilemapAndScheduleTransfer(&a0->window_114);
        ov31_0225EA9C(a0);
        break;
    case 12:
        ov31_0225EB30(a0);
        break;
    case 13:
        ov31_0225EBC4(a0);
        break;
    }
}
