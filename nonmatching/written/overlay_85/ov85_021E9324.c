#include "global.h"
#include "system.h"
#include "unk_02005D10.h"
#include "unk_02035900.h"

extern int ov85_021E9FD0(void);
extern void ov85_021EA0EC(void *work, int a1, int a2);
extern void ov85_021E9458(void *work, int a1);
extern void ov85_021EA39C(void *work, int a1);
extern void sub_02096D4C(void *a0, int a1, void *a2, int a3);

typedef struct UnkStruct_ov85_021E9324_Sub {
    u8 filler_00[0x28];
    int unk_28;
    int unk_2C;
    int unk_30;
} UnkStruct_ov85_021E9324_Sub;

typedef struct UnkStruct_ov85_021E9324 {
    u8 filler_00[0x10];
    UnkStruct_ov85_021E9324_Sub *unk_10;
} UnkStruct_ov85_021E9324;

void ov85_021E9324(UnkStruct_ov85_021E9324 *work) {
    u8 buf[4];
    UnkStruct_ov85_021E9324_Sub *sub;
    int keys = gSystem.newKeys;

    if (keys & 1) {
        if (sub_0203769C() != 0) {
            return;
        }
        sub = work->unk_10;
        if (sub->unk_2C == ov85_021E9FD0() && sub->unk_30 == 0) {
            buf[2] = 1;
            ov85_021EA0EC(work, 3, 0);
            ov85_021E9458(work, 0x16);
            sub_02096D4C(work->unk_10, 7, &buf[2], 1);
            ov85_021EA39C(work, 0);
        } else {
            PlaySE(0x5F2);
        }
    } else if (keys & 2) {
        if (sub_0203769C() != 0) {
            if (work->unk_10->unk_28 == 0) {
                ov85_021EA0EC(work, 4, 0);
                ov85_021E9458(work, 4);
            } else {
                PlaySE(0x5F2);
            }
        } else {
            sub = work->unk_10;
            if (sub->unk_2C == sub_02037454() && sub->unk_30 == 0) {
                buf[1] = 1;
                ov85_021EA0EC(work, 4, 0);
                ov85_021E9458(work, 4);
                sub_02096D4C(work->unk_10, 7, &buf[1], 1);
                ov85_021EA39C(work, 0);
            } else {
                PlaySE(0x5F2);
            }
        }
    } else {
        if (*(int *)((u8 *)work + 0x4A48) != 0) {
            return;
        }
        if (sub_0203769C() != 0) {
            return;
        }
        if (work->unk_10->unk_2C != sub_02037454()) {
            return;
        }
        buf[0] = 0;
        sub_02096D4C(work->unk_10, 7, &buf[0], 1);
    }
}
