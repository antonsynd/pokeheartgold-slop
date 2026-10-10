#include "global.h"
#include "error_handling.h"

u32 ov96_021EAF8C(u32 a0);
int ov96_02215614(int a0, int a1, int a2, int a3);
int ov96_022156E8(u32 *a0, u32 a1, void *a2, u32 a3);
int ov96_02215650(int a0, int a1, int a2, int a3, int a4, u32 a5);
u32 ov96_02214DBC(u32 *a0, void *a1, u32 a2, int a3);
void ov96_021E8228(void *a0, u32 a1, u32 a2, u32 a3, u32 a4);

typedef struct UnkSeg_ov96_02214C3C {
    u8 unk00[8];
    s32 unk08;
    s32 unk0C;
    u8 unk10[0x28];
    u8 unk38;
    u8 unk39;
    u8 unk3A[0x12];
} UnkSeg_ov96_02214C3C;

#define CELL(v) (((s32)(v) + (s32)((u32)((s32)(v) >> 11) >> 20)) >> 12)

u32 ov96_02214C3C(void *param_1, u32 param_2, u32 param_3, u32 *param_4, UnkSeg_ov96_02214C3C *param_5)
{
    s32 iVar1;
    s32 iVar2;
    s32 iVar3;
    u32 uVar4;
    u32 uVar5;
    s32 iStack_20;
    u8 abStack_18[4];
    UnkSeg_ov96_02214C3C *seg;
    u32 spNow;
    UnkSeg_ov96_02214C3C *base;

    __asm__ volatile("mov %0, sp" : "=l"(spNow));
    base = param_5;
    if (param_4[0x1e] != 0) {
        return 0;
    }
    if (param_4[0x12] != 0) {
        return 0;
    }
    iVar1 = ov96_02215614(0x80, 0x60, CELL(param_4[0xc]), CELL(param_4[0xd]));

    for (uVar5 = 0; uVar5 < 2; uVar5++) {
        seg = (UnkSeg_ov96_02214C3C *)((u8 *)base + uVar5 * 0x4c);
        if (seg->unk39 == 0 && seg->unk38 != 0) {
            iVar2 = ov96_02215614(0x80, 0x60, CELL(seg->unk08), CELL(seg->unk0C));
        } else {
            iVar2 = 4;
        }

        if (iVar2 == 4) {
            abStack_18[uVar5] = 0;
        } else {
            iStack_20 = 0;
            if (seg->unk38 == 1) {
                iStack_20 = 8;
            } else if (seg->unk38 == 2) {
                iStack_20 = 0xc;
            } else {
                GF_AssertFail();
            }
            iVar3 = ov96_021EAF8C(param_4[0]);
            iVar3 = ov96_022156E8(param_4 + 0xc, (u32)iVar3 << 12, &seg->unk08, (u32)iStack_20 << 12);
            if (iVar3 == 0) {
                if (iVar1 == iVar2) {
                    iVar3 = ov96_02215650(CELL(seg->unk08), CELL(seg->unk0C), CELL(param_4[0xc]), CELL(param_4[0xd]), iVar1, param_2);
                    if (iVar3 == 0) {
                        abStack_18[uVar5] = 3;
                    } else {
                        abStack_18[uVar5] = 4;
                    }
                } else {
                    abStack_18[uVar5] = 2;
                }
            } else {
                abStack_18[uVar5] = 1;
            }
        }
    }

    if (abStack_18[0] < abStack_18[1]) {
        *(u32 *)((u8 *)spNow + 88) = (u32)((u8 *)base + 0x4c);
        uVar4 = ov96_02214DBC(param_4, (u8 *)base + 0x4c, abStack_18[1], iVar1);
    } else {
        uVar4 = ov96_02214DBC(param_4, base, abStack_18[0], iVar1);
    }

    if (param_4[0x1e] == 1) {
        ov96_021E8228(param_1, param_2, param_3, 6, 1);
    }
    return uVar4;
}
