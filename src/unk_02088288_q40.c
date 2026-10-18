#include "global.h"

#include "bg_window.h"

typedef struct UnkStruct_02089D68_Sub {
    u8 filler_00[0x12];
    u8 unk12;
} UnkStruct_02089D68_Sub;

typedef struct UnkStruct_02089D68 {
    BgConfig *bgConfig;
    u8 filler_004[0x228];
    UnkStruct_02089D68_Sub *unk22C;
    u8 filler_230[0x58C];
    s8 cursor;
} UnkStruct_02089D68;

void sub_0208C4E0(UnkStruct_02089D68 *a0);
void sub_0208B448(UnkStruct_02089D68 *a0);
void sub_0208B5A8(UnkStruct_02089D68 *a0);
void sub_0208B89C(UnkStruct_02089D68 *a0);
void sub_0208B9C8(UnkStruct_02089D68 *a0);
void sub_0208C2A0(UnkStruct_02089D68 *a0);
void sub_0208BCD4(UnkStruct_02089D68 *a0);
void sub_0208C42C(UnkStruct_02089D68 *a0);
void sub_0208CBD4(UnkStruct_02089D68 *a0);
void sub_02089F98(UnkStruct_02089D68 *a0);
void sub_0208A950(UnkStruct_02089D68 *a0);

void sub_02089D68(UnkStruct_02089D68 *a0, s8 cursor) {
    if (a0->cursor == cursor) {
        return;
    }
    sub_0208C4E0(a0);
    a0->cursor = cursor;
    sub_0208B448(a0);
    sub_0208B5A8(a0);
    sub_0208B89C(a0);
    sub_0208B9C8(a0);
    sub_0208C2A0(a0);
    sub_0208BCD4(a0);
    sub_0208C42C(a0);
    FillBgTilemapRect(a0->bgConfig, GF_BG_LYR_MAIN_1, 0, 0, 3, 18, 20, 0);
    BgCommitTilemapBufferToVram(a0->bgConfig, GF_BG_LYR_MAIN_1);
    FillBgTilemapRect(a0->bgConfig, GF_BG_LYR_SUB_0, 0, 0, 3, 18, 20, 0);
    BgCommitTilemapBufferToVram(a0->bgConfig, GF_BG_LYR_SUB_0);
    sub_0208CBD4(a0);
    sub_02089F98(a0);
    if (a0->unk22C->unk12 == 2) {
        sub_0208A950(a0);
    }
}
