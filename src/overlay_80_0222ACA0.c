#include "overlay_80_0222ACA0.h"

#include "global.h"

#include "bg_window.h"
#include "error_handling.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "overlay_80_022384D8.h"

typedef void (*Ov80Func)(void *a0, void *a1);

typedef struct UnkStruct_Ov80_0222ACA0 {
    u32 unk00;
    Ov80Func unk04;
    Ov80Func unk08;
    u16 unk0C;
    u16 unk0E;
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u8 unk22;
    u8 unk23;
    u32 unk24;
} UnkStruct_Ov80_0222ACA0;

extern void *ov80_02239D74(void *a0, void *a1);
extern void ov80_02239DB8(void *a0);

static const UnkStruct_Ov80_0222ACA0 sTable[17];

s32 ov80_0222ACA0(s32 index, s32 fieldSel) {
    switch (fieldSel) {
    case 0:
        return sTable[index].unk00;
    case 1:
        return sTable[index].unk0C;
    case 2:
        return sTable[index].unk0E;
    case 3:
        return sTable[index].unk10;
    case 4:
        return sTable[index].unk12;
    case 5:
        return sTable[index].unk14;
    case 6:
        return sTable[index].unk16;
    case 7:
        return sTable[index].unk18;
    case 8:
        return sTable[index].unk1A;
    case 9:
        return sTable[index].unk1C;
    case 10:
        return sTable[index].unk1E;
    case 11:
        return sTable[index].unk20;
    case 12:
        return sTable[index].unk22;
    case 13:
        return sTable[index].unk23;
    default:
        GF_AssertFail();
        return 0;
    }
}

void ov80_0222AD9C(void *a0, void *a1, s32 index) {
    if (sTable[index].unk04 != NULL) {
        sTable[index].unk04(a0, a1);
    }
}

void ov80_0222ADB4(void *a0, void *a1, s32 index) {
    if (sTable[index].unk08 != NULL) {
        sTable[index].unk08(a0, a1);
    }
}

static void ov80_0222ADCC(void *a0, void *a1) {
    *(void **)a1 = Heap_Alloc(HEAP_ID_101, 0x20);
}

static void ov80_0222ADDC(void *a0, void *a1) {
    Heap_Free(*(void **)a1);
}

static void ov80_0222ADE8(void *a0, void *a1) {
    *(void **)a1 = ov80_02239D74(((void **)a0)[0], ((void **)a0)[1]);
    SetBgPriority(GF_BG_LYR_MAIN_0, 1);
    SetBgPriority(GF_BG_LYR_MAIN_2, 2);
    SetBgPriority(GF_BG_LYR_MAIN_3, 3);
    GfGfx_EngineATogglePlanes(GF_BG_LYR_MAIN_2_F, GF_PLANE_TOGGLE_OFF);
}

static void ov80_0222AE1C(void *a0, void *a1) {
    ov80_02239DB8(*(void **)a1);
}

static void ov80_0222AE28(void *a0, void *a1) {
}

static void ov80_0222AE2C(void *a0, void *a1) {
}

static void ov80_0222AE30(void *a0, void *a1) {
    SetBgPriority(GF_BG_LYR_MAIN_0, 1);
    SetBgPriority(GF_BG_LYR_MAIN_2, 2);
    SetBgPriority(GF_BG_LYR_MAIN_3, 3);
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, 0x3C, 0x14, 0x14);
    GfGfx_EngineATogglePlanes(GF_BG_LYR_MAIN_2_F, GF_PLANE_TOGGLE_OFF);
}

static void ov80_0222AE68(void *a0, void *a1) {
}

static void ov80_0222AE6C(void *a0, void *a1) {
    SetBgPriority(GF_BG_LYR_MAIN_2, 3);
    SetBgPriority(GF_BG_LYR_MAIN_3, 2);
}

static void ov80_0222AE80(void *a0, void *a1) {
}

static void ov80_0222AE84(void *a0, void *a1) {
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, 0x3C, 0x14, 0x14);
}

static void ov80_0222AE9C(void *a0, void *a1) {
}

static void ov80_0222AEA0(void *a0, void *a1) {
    *(UnkStruct_Ov80_022384D8 **)a1 = ov80_022384D8(*(BgConfig **)a0);
}

static void ov80_0222AEB0(void *a0, void *a1) {
    ov80_022385B0(*(UnkStruct_Ov80_022384D8 **)a1);
}

static void ov80_0222AEBC(void *a0, void *a1) {
    SetBgPriority(GF_BG_LYR_MAIN_1, 0);
    SetBgPriority(GF_BG_LYR_MAIN_0, 2);
    SetBgPriority(GF_BG_LYR_MAIN_2, 2);
    SetBgPriority(GF_BG_LYR_MAIN_3, 3);
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, 0x3C, 0x14, 0x14);
}

static void ov80_0222AEF4(void *a0, void *a1) {
}

static const UnkStruct_Ov80_0222ACA0 sTable[17] = {
    { 0x00000000, ov80_0222ADCC, ov80_0222ADDC, 0x0004, 0x0023, 0x042E, 0x0003, 0x00B7, 0x0001, 0x0000, 0x0094, 0x0003, 0x0000, 0x0094, 0x00, 0x01, 0x00000000 },
    { 0x00000000, NULL,          NULL,          0x0000, 0x0023, 0x042E, 0x0003, 0x00B7, 0x0002, 0x0000, 0x0094, 0xFFFF, 0xFFFF, 0xFFFF, 0x00, 0x01, 0x00000000 },
    { 0x00000000, NULL,          NULL,          0x0005, 0x0024, 0x042E, 0x0003, 0x00B7, 0x0001, 0x0000, 0x0094, 0xFFFF, 0xFFFF, 0xFFFF, 0x00, 0x01, 0x00000000 },
    { 0x00000005, ov80_0222AE6C, ov80_0222AE80, 0x0001, 0x00C3, 0x0477, 0x0004, 0x00B7, 0x0002, 0x0000, 0x0094, 0x0003, 0x0000, 0x0094, 0x01, 0x00, 0x00000000 },
    { 0x00000005, ov80_0222AE84, ov80_0222AE9C, 0x0001, 0x00C3, 0x0477, 0x0001, 0x00B7, 0x0001, 0x0000, 0x0094, 0xFFFF, 0xFFFF, 0xFFFF, 0x01, 0x01, 0x00000000 },
    { 0x00000005, NULL,          NULL,          0x0006, 0x0060, 0x042E, 0x0004, 0x00B7, 0x0036, 0x0031, 0x00A0, 0x0037, 0x0031, 0x00A0, 0x01, 0x01, 0x00000000 },
    { 0x00000005, NULL,          NULL,          0x0007, 0x0060, 0x042E, 0x0004, 0x00B7, 0x0033, 0x0031, 0x00A0, 0x0034, 0x0031, 0x00A0, 0x01, 0x01, 0x00000000 },
    { 0x00000005, NULL,          NULL,          0x0008, 0x0061, 0x042E, 0x0001, 0x00B7, 0x0035, 0x0031, 0x00A0, 0xFFFF, 0xFFFF, 0xFFFF, 0x01, 0x01, 0x00000000 },
    { 0x00000005, NULL,          NULL,          0x0009, 0x0062, 0x042E, 0x0001, 0x00B7, 0x0032, 0x0031, 0x00A0, 0xFFFF, 0xFFFF, 0xFFFF, 0x01, 0x01, 0x00000000 },
    { 0x00000005, NULL,          NULL,          0x0003, 0x01B9, 0x0478, 0x0001, 0x00B7, 0x0011, 0x0010, 0x0097, 0xFFFF, 0xFFFF, 0xFFFF, 0x01, 0x01, 0x00000000 },
    { 0x00000005, ov80_0222ADE8, ov80_0222AE1C, 0x0003, 0x01B9, 0x0478, 0x0004, 0x00B7, 0x0014, 0x000E, 0x0096, 0x0016, 0x0013, 0x0098, 0x01, 0x01, 0x00000000 },
    { 0x00000005, NULL,          NULL,          0x0000, 0x0020, 0x047A, 0x0004, 0x00B7, 0x001A, 0x0019, 0x009A, 0xFFFF, 0xFFFF, 0xFFFF, 0x01, 0x01, 0x00000000 },
    { 0x00000005, ov80_0222AEBC, ov80_0222AEF4, 0x0000, 0x0020, 0x047A, 0x0001, 0x00B7, 0x001E, 0x001D, 0x009F, 0x0021, 0x001D, 0x009F, 0x01, 0x01, 0x00000000 },
    { 0x00000005, NULL,          NULL,          0x0000, 0x0020, 0x047A, 0x0001, 0x00B7, 0x001C, 0x001B, 0x009B, 0xFFFF, 0xFFFF, 0xFFFF, 0x01, 0x01, 0x00000000 },
    { 0x00000005, ov80_0222AEA0, ov80_0222AEB0, 0x000A, 0x0012, 0x042E, 0x0001, 0x00B7, 0x0084, 0x0083, 0x00BF, 0xFFFF, 0xFFFF, 0xFFFF, 0x01, 0x01, 0x00000000 },
    { 0x00000005, ov80_0222AE28, ov80_0222AE2C, 0x0002, 0x01AA, 0x0479, 0x0001, 0x00B7, 0x003B, 0x003C, 0x00A2, 0xFFFF, 0xFFFF, 0xFFFF, 0x01, 0x01, 0x00000000 },
    { 0x00000005, ov80_0222AE30, ov80_0222AE68, 0x0002, 0x01AA, 0x0479, 0x0004, 0x00B7, 0x0038, 0x003A, 0x00A1, 0x003D, 0x005D, 0x00BC, 0x01, 0x01, 0x00000000 },
};
