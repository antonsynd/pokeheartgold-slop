#include "global.h"

#include "bg_window.h"
#include "unk_0201956C.h"
#include "unk_02088288.h"

typedef struct UnkStruct_unk_02088288_7C8 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4_0 : 4;
    u8 unk4_4 : 4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
} UnkStruct_unk_02088288_7C8;

typedef struct UnkStruct_unk_02088288 {
    BgConfig *bgConfig;
    u8 unk4[0x7C4];
    UnkStruct_unk_02088288_7C8 unk7C8;
    UnkStruct_0201956C *unk7D0;
} UnkStruct_unk_02088288;

int sub_0208A2E0(UnkStruct_unk_02088288 *a0, int a1);

void sub_0208AFE8(UnkStruct_unk_02088288 *a0, u8 a1, u8 a2, u8 a3, u8 a4, u8 a5, u8 a6, u8 a7, u8 a8) {
    a0->unk7C8.unk0 = a2;
    a0->unk7C8.unk1 = a3;
    a0->unk7C8.unk2 = a4;
    a0->unk7C8.unk3 = a5;
    a0->unk7C8.unk4_0 = a6;
    a0->unk7C8.unk4_4 = a7;
    a0->unk7C8.unk5 = a1;
    a0->unk7C8.unk6 = 0;
    a0->unk7C8.unk7 = a8;
}

void sub_0208B044(UnkStruct_unk_02088288 *a0, u8 a1) {
    sub_0208AFE8(a0, 6, 0x17, 0x14, 9, 4, 1, 0, a1);
}

void sub_0208B068(UnkStruct_unk_02088288 *a0, u8 a1) {
    sub_0208AFE8(a0, 6, 1, 0x13, 0xF, 4, 1, 0, a1);
}

void sub_0208B08C(UnkStruct_unk_02088288 *a0, u8 a1) {
    sub_0208AFE8(a0, 6, 1, 0x11, 0xA, 2, 1, 0, a1);
}

void sub_0208B0B0(UnkStruct_unk_02088288 *a0, int a1, u8 a2) {
    if (a1 == 0) {
        sub_0208AFE8(a0, 6, 0x18, 5, 6, 3, 1, 0, a2);
    } else {
        sub_0208AFE8(a0, 6, 0x18, 0xD, 6, 3, 1, 0, a2);
    }
}

void sub_0208B0F4(UnkStruct_unk_02088288 *a0, u8 a1) {
    sub_0208AFE8(a0, 5, 0x1A, 0x1D, 6, 4, 1, 0, a1);
}

void sub_0208B118(UnkStruct_unk_02088288 *a0) {
    if (sub_0208A2E0(a0, -1) != -1) {
        sub_020196E8(a0->unk7D0, 5, 0x18, 5);
    } else {
        FillBgTilemapRect(a0->bgConfig, 6, 1, 0x18, 5, 6, 3, 0x10);
        ScheduleBgTilemapBufferTransfer(a0->bgConfig, 6);
    }
    if (sub_0208A2E0(a0, 1) != -1) {
        sub_020196E8(a0->unk7D0, 6, 0x18, 0xD);
    } else {
        FillBgTilemapRect(a0->bgConfig, 6, 1, 0x18, 0xD, 6, 3, 0x10);
        ScheduleBgTilemapBufferTransfer(a0->bgConfig, 6);
    }
}
