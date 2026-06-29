// WIP / DEFERRED (11/20 functions byte-match). Compiles cleanly; main.lsf is
// intentionally kept on asm/unk_02012DD8.o so the ROM matches. To resume: flip
// main.lsf to src/unk_02012DD8.o and finish the rest.
//
// Window/blend MMIO + sin/cos gradient-effect module (cluster of unk_0201010C).
// Structs derived: UnkStruct_02012DD8 (manager, fields at +4/+8/+C/+10/+14[eff]/
// +18/+1C/+20[heapID]), the 0x4C effect struct, the input descriptor, and the 4
// SysTask deferred-write slot structs. Register macros (reg_G2_WININ/WINOUT,
// reg_G2_WIN0H/V, reg_GX_DISPCNT, reg_G2S_DB_* etc.) confirmed.
//
// MATCHING (11): sub_02012DD8, sub_02012E10, sub_02013220, sub_020132A8,
// sub_02013424, sub_02013440, sub_02013468, sub_020134BC, sub_020134D0,
// sub_020134EC, sub_02013504.
//
// STILL MISMATCHING (9):
//  - MMIO codegen ties: sub_020132E8 / sub_0201333C read a register byte via a
//    STACK local (asm `ldrb; strb [sp]; ...; ldrsb [sp]`); MWCC-on-this-C inlines
//    a direct `ldrsb [reg]`. Need to force the stack temp (try `s8 val;` written
//    in each branch, returned once — or read u8 then return signed). sub_020131F4
//    (DISPCNT) is a 4B operand-schedule tie (reg loaded before vs after a0<<13,
//    plus a trailing nop pad). sub_02013364 (WIN0H/V) 56B off and sub_02013488 4B
//    off — the half-word pack/strh modeling and slot layout need re-derivation.
//  - Math: sub_02013004 (sin/cos gradient interp, 8B off — the FX_SinCosTable_
//    lookups + the several `_s32_div_f` interpolations need exact operand order),
//    sub_02012E6C (12B, the big init — re-check the sub_02010F84 10-arg call /
//    field-write order), sub_02012F54 (4B), sub_020131AC (4B, the strh loop).
//
// Drafter could not produce this file (output-token limit on large files); this
// is a hand-written first pass. Resume as a focused targeted session.

#include <nitro/fx/fx_trig.h>

#include "global.h"

#include "heap.h"
#include "sys_task_api.h"

typedef struct UnkStruct_02012DD8_input {
    /*0x0*/ s16 unk0;
    /*0x2*/ s16 unk2;
    /*0x4*/ u32 unk4;
    /*0x8*/ u8 unk8;
    /*0x9*/ u8 unk9;
    /*0xa*/ u8 unkA;
    /*0xb*/ u8 unkB;
} UnkStruct_02012DD8_input;

typedef struct UnkStruct_02012DD8_effect {
    /*0x00*/ u8 filler0[8];
    /*0x08*/ s32 unk8;
    /*0x0c*/ s32 unkC;
    /*0x10*/ s32 unk10;
    /*0x14*/ s32 unk14;
    /*0x18*/ s32 unk18;
    /*0x1c*/ s32 unk1C;
    /*0x20*/ s32 unk20;
    /*0x24*/ s32 unk24;
    /*0x28*/ s32 unk28;
    /*0x2c*/ s32 unk2C;
    /*0x30*/ s32 unk30;
    /*0x34*/ s32 unk34;
    /*0x38*/ s32 unk38;
    /*0x3c*/ s32 unk3C;
    /*0x40*/ s32 unk40;
    /*0x44*/ s32 unk44;
    /*0x48*/ s32 unk48;
} UnkStruct_02012DD8_effect;

typedef struct UnkStruct_02012DD8 {
    /*0x00*/ u8 filler0[4];
    /*0x04*/ s32 unk4;
    /*0x08*/ s32 unk8;
    /*0x0c*/ s32 unkC;
    /*0x10*/ s32 unk10;
    /*0x14*/ UnkStruct_02012DD8_effect *unk14;
    /*0x18*/ s32 unk18;
    /*0x1c*/ s32 unk1C;
    /*0x20*/ u32 unk20;
} UnkStruct_02012DD8;

typedef struct UnkTaskWork_020131F4 {
    u32 unk0;
    s32 unk4;
} UnkTaskWork_020131F4;

typedef struct UnkTaskWork_02013220 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
} UnkTaskWork_02013220;

typedef struct UnkTaskWork_020132A8 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
} UnkTaskWork_020132A8;

typedef struct UnkTaskWork_02013364 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s32 unk8;
    s32 unkC;
} UnkTaskWork_02013364;

extern void sub_0200FF88(int a0, UnkStruct_02012DD8_effect *a1, SysTaskFunc a2, int a3, int a4);
extern void sub_0200FFB4(int a0, int a1, int a2);
extern void sub_02010C38(SysTask *task, void *data);
extern void *sub_02010E64(UnkStruct_02012DD8_effect *a0, int a1, int a2, int a3);
extern void sub_02010EC8(UnkStruct_02012DD8_effect *a0);
extern void *sub_02010EE0(UnkStruct_02012DD8_effect *a0, int a1);
extern void sub_02010F00(SysTask *task, void *data);
extern void sub_02010F34(int a0, int a1, int a2);
extern void sub_02010F84(int a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9);
extern void sub_02010FEC(int a0, int a1, int a2, int a3);
extern void sub_02011068(int a0, int a1, int a2, int a3);

void sub_02012DD8(UnkStruct_02012DD8 *work, UnkStruct_02012DD8_input *input);
u8 sub_02012E10(UnkStruct_02012DD8 *work);
static void sub_02012E6C(UnkStruct_02012DD8_effect *effect, UnkStruct_02012DD8_input *input, int a2, int a3, int a4, int a5, int a6, int a7);
static BOOL sub_02012F54(UnkStruct_02012DD8_effect *effect);
static void sub_02013004(int a0, int a1, int a2, int idx, int a4, int a5, int *out1, int *out2);
static void sub_020131AC(UnkStruct_02012DD8_effect *effect);
void sub_020131F4(u32 a0, int a1);
void sub_02013220(int a0, int a1, int a2, int a3);
void sub_020132A8(int a0, int a1, int a2);
s8 sub_020132E8(int a0, int a1);
s8 sub_0201333C(int a0);
void sub_02013364(int a0, int a1, int a2, int a3, int a4, int a5);
void sub_02013424(void *base, u32 a1, u32 idx);
void sub_02013440(void *base, u32 a1, u32 a2, u32 idx, u32 a4);
void sub_02013468(void *base, s32 a1, s32 a2, s32 idx);
void sub_02013488(void *base, s16 a1, s16 a2, s16 a3, s16 a4, u32 idx, u32 a6);
static void sub_020134BC(SysTask *task, void *data);
static void sub_020134D0(SysTask *task, void *data);
static void sub_020134EC(SysTask *task, void *data);
static void sub_02013504(SysTask *task, void *data);

void sub_02012DD8(UnkStruct_02012DD8 *work, UnkStruct_02012DD8_input *input) {
    work->unk14 = Heap_Alloc((enum HeapID)work->unk20, sizeof(UnkStruct_02012DD8_effect));
    sub_02012E6C(work->unk14, input, work->unk4, work->unk8, work->unk10, work->unk18, work->unk1C, work->unk20);
    work->unkC++;
}

u8 sub_02012E10(UnkStruct_02012DD8 *work) {
    u8 ret = 0;
    UnkStruct_02012DD8_effect *effect = work->unk14;
    switch (work->unkC) {
    case 1:
        if (sub_02012F54(effect) == 1) {
            sub_02010F34(effect->unk34, effect->unk44, work->unk10);
            work->unkC++;
        }
        break;
    case 2:
        sub_02010EC8(effect);
        Heap_Free(work->unk14);
        work->unk14 = NULL;
        ret = 1;
        work->unkC++;
        break;
    case 3:
        ret = 1;
        break;
    default:
        GF_AssertFail();
    }
    return ret;
}

static void sub_02012E6C(UnkStruct_02012DD8_effect *effect, UnkStruct_02012DD8_input *input, int a2, int a3, int a4, int a5, int a6, int a7) {
    void *r0;
    sub_02010E64(effect, input->unk8, a4, a7);
    effect->unk14 = 0x007FFF80;
    effect->unkC = input->unk0;
    effect->unk10 = input->unk2;
    effect->unk18 = input->unk4;
    effect->unk1C = input->unk4;
    effect->unk20 = input->unk4 / a2;
    effect->unk24 = a2;
    effect->unk28 = a3;
    effect->unk2C = 0;
    effect->unk44 = a5;
    effect->unk48 = a6;
    effect->unk30 = a7;
    effect->unk34 = input->unkB;
    effect->unk38 = input->unk8;
    effect->unk3C = a4;
    effect->unk40 = 1;
    sub_020131AC(effect);
    SysTask_CreateOnVWaitQueue(sub_02010F00, effect, 0x3FF);
    r0 = sub_02010EE0(effect, 0);
    sub_02010F84(a5, input->unk9, input->unkA, input->unk8, a4, *(s16 *)((u8 *)r0 + (3 << 8)), 0, *(s16 *)((u8 *)r0 + (0x12 << 6)), 0xc0, effect->unk34);
    if (input->unk8 == 0) {
        sub_02011068(a5, 1, a4, effect->unk34);
    } else {
        sub_02011068(a5, 2, a4, effect->unk34);
    }
    sub_0200FF88(effect->unk48, effect, sub_02010C38, a4, a7);
}

static BOOL sub_02012F54(UnkStruct_02012DD8_effect *effect) {
    effect->unk2C++;
    if (effect->unk2C < effect->unk28) {
        return FALSE;
    }
    effect->unk2C = 0;
    if (effect->unk24 - 1 <= 0) {
        sub_0200FFB4(effect->unk48, effect->unk8, effect->unk30);
        return TRUE;
    }
    effect->unk1C += effect->unk20;
    effect->unk24--;
    while (effect->unk1C >= 0x0000FFFF) {
        effect->unk1C -= 0x0000FFFF;
    }
    while (effect->unk1C < 0) {
        effect->unk1C += 0x0000FFFF;
    }
    if (effect->unk1C >= 0x00007FFF && effect->unk1C < effect->unk18 && effect->unk40 == 1) {
        sub_02010FEC(effect->unk44, effect->unk38, effect->unk3C, effect->unk34);
        effect->unk40 = 0;
    }
    sub_020131AC(effect);
    SysTask_CreateOnVWaitQueue(sub_02010F00, effect, 0x3FF);
    return FALSE;
}

static void sub_02013004(int a0, int a1, int a2, int idx, int a4, int a5, int *out1, int *out2) {
    int sp0 = a1;
    int sp4;
    int sp8;
    int spC;
    int sp10 = a4;
    int v1;
    int lo;
    int hi;
#pragma unused(a0)
    spC = a1 + (0xFFFF * FX_SinCosTable_[((a4 >> 4) << 1) + 1] >> 0xc);
    v1 = a2 + (0xFFFF * FX_SinCosTable_[(a4 >> 4) << 1] >> 0xc);
    sp8 = a1 + (0xFFFF * FX_SinCosTable_[((a5 >> 4) << 1) + 1] >> 0xc);
    sp4 = a2 + (0xFFFF * FX_SinCosTable_[(a5 >> 4) << 1] >> 0xc);
    if (a5 - sp10 == (0x0000FFFF >> 1)) {
        if (idx >= 0 && idx < a2) {
            *out1 = 0;
            *out2 = 0xff;
            return;
        }
        return;
    }
    if (a5 >= 0 && a5 < (0x0000FFFF >> 1)) {
        lo = v1 < a2 ? v1 : a2;
        hi = v1 > a2 ? v1 : a2;
        if (lo <= idx && idx <= hi) {
            *out1 = spC + (spC - sp0) * (idx - v1) / (v1 - a2);
        } else {
            *out1 = sp8 + (sp8 - sp0) * (idx - sp4) / (sp4 - a2);
        }
        if (*out1 > 0xff) {
            *out1 = 0xff;
        } else if (*out1 < 0) {
            *out1 = 0;
        }
        *out2 = 0xff;
        return;
    }
    lo = v1 < a2 ? v1 : a2;
    hi = v1 > a2 ? v1 : a2;
    if (lo <= idx && idx <= hi) {
        *out1 = spC + (spC - sp0) * (idx - v1) / (v1 - a2);
        if (*out1 > 0xff) {
            *out1 = 0xff;
        } else if (*out1 < 0) {
            *out1 = 0;
        }
    } else {
        *out1 = 0;
    }
    lo = sp4 < a2 ? sp4 : a2;
    hi = sp4 > a2 ? sp4 : a2;
    if (lo <= idx && idx <= hi) {
        *out2 = sp8 + (sp8 - sp0) * (idx - sp4) / (sp4 - a2);
        if (*out2 > 0xff) {
            *out2 = 0xff;
        } else if (*out2 < 0) {
            *out2 = 0;
        }
    } else {
        *out2 = *out1;
    }
    if (*out1 > *out2) {
        int t = *out2;
        *out2 = *out1;
        *out1 = t;
    }
}

static void sub_020131AC(UnkStruct_02012DD8_effect *effect) {
    int i;
    s16 *buf = sub_02010EE0(effect, 0);
    int sp10;
    int sp14;
    for (i = 0; i < 0xc0; i++) {
        sub_02013004(effect->unk14, effect->unkC, effect->unk10, i, effect->unk18, effect->unk1C, &sp14, &sp10);
        *(s16 *)((u8 *)buf + (3 << 8)) = sp14;
        *(s16 *)((u8 *)buf + (0x12 << 6)) = sp10;
        buf++;
    }
}

void sub_020131F4(u32 a0, int a1) {
    if (a1 == 0) {
        reg_GX_DISPCNT = (a0 << 0xd) | (reg_GX_DISPCNT & 0xFFFF1FFF);
    } else {
        reg_GXS_DB_DISPCNT = (a0 << 0xd) | (reg_GXS_DB_DISPCNT & 0xFFFF1FFF);
    }
}

void sub_02013220(int a0, int a1, int a2, int a3) {
    int tmp;
    if (a2 == 0) {
        if (a3 == 0) {
            tmp = (reg_G2_WININ & ~0x3f) | a0;
            if (a1 != 0) {
                tmp |= 0x20;
            }
            reg_G2_WININ = tmp;
        } else {
            tmp = (reg_G2S_DB_WININ & ~0x3f) | a0;
            if (a1 != 0) {
                tmp |= 0x20;
            }
            reg_G2S_DB_WININ = tmp;
        }
    } else {
        if (a3 == 0) {
            tmp = (reg_G2_WININ & ~0xff00) | (a0 << 8);
            if (a1 != 0) {
                tmp |= 0x2000;
            }
            reg_G2_WININ = tmp;
        } else {
            tmp = (reg_G2S_DB_WININ & ~0xff00) | (a0 << 8);
            if (a1 != 0) {
                tmp |= 0x2000;
            }
            reg_G2S_DB_WININ = tmp;
        }
    }
}

void sub_020132A8(int a0, int a1, int a2) {
    int tmp;
    if (a2 == 0) {
        tmp = (reg_G2_WINOUT & ~0x3f) | a0;
        if (a1 != 0) {
            tmp |= 0x20;
        }
        reg_G2_WINOUT = tmp;
    } else {
        tmp = (reg_G2S_DB_WINOUT & ~0x3f) | a0;
        if (a1 != 0) {
            tmp |= 0x20;
        }
        reg_G2S_DB_WINOUT = tmp;
    }
}

s8 sub_020132E8(int a0, int a1) {
    s8 val;
    if (a0 == 0) {
        if (a1 == 0) {
            val = *(vu8 *)REG_WININ_ADDR;
        } else {
            val = *(vu8 *)REG_DB_WININ_ADDR;
        }
    } else {
        if (a1 == 0) {
            val = *((vu8 *)REG_WININ_ADDR + 1);
        } else {
            val = *((vu8 *)REG_DB_WININ_ADDR + 1);
        }
    }
    return val;
}

s8 sub_0201333C(int a0) {
    s8 val;
    if (a0 == 0) {
        val = *(vu8 *)REG_WINOUT_ADDR;
    } else {
        val = *(vu8 *)REG_DB_WINOUT_ADDR;
    }
    return val;
}

void sub_02013364(int a0, int a1, int a2, int a3, int a4, int a5) {
    int tmp0 = (a0 << 8) & 0xff00;
    int tmp1 = (a1 << 8) & 0xff00;
    if (a4 == 0) {
        if (a5 == 0) {
            reg_G2_WIN0H = tmp0 | (u8)a2;
            reg_G2_WIN0V = tmp1 | (u8)a3;
        } else {
            reg_G2S_DB_WIN0H = tmp0 | (u8)a2;
            reg_G2S_DB_WIN0V = tmp1 | (u8)a3;
        }
    } else {
        if (a5 == 0) {
            reg_G2_WIN1H = tmp0 | (u8)a2;
            reg_G2_WIN1V = tmp1 | (u8)a3;
        } else {
            reg_G2S_DB_WIN1H = tmp0 | (u8)a2;
            reg_G2S_DB_WIN1V = tmp1 | (u8)a3;
        }
    }
}

void sub_02013424(void *base, u32 a1, u32 idx) {
    UnkTaskWork_020131F4 *slot = (UnkTaskWork_020131F4 *)((u8 *)base + idx * 8);
    slot->unk0 = a1;
    slot->unk4 = idx;
    SysTask_CreateOnVWaitQueue(sub_020134BC, slot, 1);
}

void sub_02013440(void *base, u32 a1, u32 a2, u32 idx, u32 a4) {
    UnkTaskWork_02013220 *slot = (UnkTaskWork_02013220 *)((u8 *)base + 0x10 + a4 * 0x20 + idx * 0x10);
    slot->unk0 = a1;
    slot->unk4 = a2;
    slot->unk8 = idx;
    slot->unkC = a4;
    SysTask_CreateOnVWaitQueue(sub_020134D0, slot, 1);
}

void sub_02013468(void *base, s32 a1, s32 a2, s32 idx) {
    UnkTaskWork_020132A8 *slot = (UnkTaskWork_020132A8 *)((u8 *)base + 0x68 + idx * 0xc);
    slot->unk0 = a1;
    slot->unk4 = a2;
    slot->unk8 = idx;
    SysTask_CreateOnVWaitQueue(sub_020134EC, slot, 1);
}

void sub_02013488(void *base, s16 a1, s16 a2, s16 a3, s16 a4, u32 idx, u32 a6) {
    UnkTaskWork_02013364 *slot = (UnkTaskWork_02013364 *)((u8 *)base + 0x80 + a6 * 0x20 + idx * 0x10);
    slot->unk0 = a1;
    slot->unk2 = a2;
    slot->unk4 = a3;
    slot->unk6 = a4;
    slot->unk8 = idx;
    slot->unkC = a6;
    SysTask_CreateOnVWaitQueue(sub_02013504, slot, 1);
}

static void sub_020134BC(SysTask *task, void *data) {
    UnkTaskWork_020131F4 *work = data;
    sub_020131F4(work->unk0, work->unk4);
    SysTask_Destroy(task);
}

static void sub_020134D0(SysTask *task, void *data) {
    UnkTaskWork_02013220 *work = data;
    sub_02013220(work->unk0, work->unk4, work->unk8, work->unkC);
    SysTask_Destroy(task);
}

static void sub_020134EC(SysTask *task, void *data) {
    UnkTaskWork_020132A8 *work = data;
    sub_020132A8(work->unk0, work->unk4, work->unk8);
    SysTask_Destroy(task);
}

static void sub_02013504(SysTask *task, void *data) {
    UnkTaskWork_02013364 *work = data;
    sub_02013364(work->unk0, work->unk2, work->unk4, work->unk6, work->unk8, work->unkC);
    SysTask_Destroy(task);
}
