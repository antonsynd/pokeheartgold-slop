#include "global.h"
#include "heap.h"
#include "math_util.h"
#include "palette.h"
#include "sprite_system.h"
#include "system.h"
#include "unk_02009D48.h"
#include "unk_020210A0.h"
#include "unk_02034354.h"
#include "unk_02035900.h"
#include "unk_0203A3B0.h"
#include "vram_transfer_manager.h"

typedef struct UnkStruct_ov92_0225C5C4_Sprite {
    VecFx32 filler_00[1];
    u8 filler_0C[0x78 - 0xC];
    u8 unk_78[0x88 - 0x78];
    u8 unk_88[0x20C - 0x88];
} UnkStruct_ov92_0225C5C4_Sprite;

typedef struct UnkStruct_ov92_0225C5C4_Big {
    u8 filler_0000[0x114];
    u8 unk_114[0x320 - 0x114];
    u8 unk_320[0x52C - 0x320];
    u8 unk_52C[0x738 - 0x52C];
    u8 unk_738[0x944 - 0x738];
    u8 unk_944[0xB50 - 0x944];
    UnkStruct_ov92_0225C5C4_Sprite unk_B50[8];
    u8 filler_1BB0[0x2BB0 - (0xB50 + 8 * 0x20C)];
    u32 unk_2BB0;
    u32 unk_2BB4;
} UnkStruct_ov92_0225C5C4_Big;

typedef struct UnkStruct_ov92_0225C5C4_Ext {
    u8 filler_00[0x3C];
    int unk_3C;
} UnkStruct_ov92_0225C5C4_Ext;

typedef struct UnkStruct_ov92_0225C5C4 {
    void *unk_00;
    UnkStruct_ov92_0225C5C4_Big *unk_04;
    u8 filler_08[0xC];
    u8 unk_14;
    u8 filler_15[0x2F];
    int unk_44;
    void *unk_48;
    u8 filler_4C[8];
    SpriteManager *unk_54;
    u8 filler_58[4];
    PaletteData *unk_5C;
    u8 filler_60[0xC];
    u8 unk_6C[0x80 - 0x6C];
    u32 unk_80;
    void *unk_84;
    UnkStruct_ov92_0225C5C4_Ext *unk_88;
} UnkStruct_ov92_0225C5C4;

extern const int ov92_022638A0[4];
extern const int ov92_02263A14[8][2];

extern void *sub_0203A4AC(int heapID);
extern void ov92_0225D3CC(UnkStruct_ov92_0225C5C4 *param0);
extern void ov92_0225D894(void);
extern void ov92_0225C5A8(UnkStruct_ov92_0225C5C4 *param0);
extern int ov92_0225D8C4(UnkStruct_ov92_0225C5C4 *param0);
extern void *ov92_0225EB40(int param0, void *param1);
extern UnkStruct_ov92_0225C5C4_Big *ov92_0225EB88(int param0, int param1, void *param2);
extern void ov92_0225E9B4(UnkStruct_ov92_0225C5C4 *param0);
extern void ov92_0225E3C4(UnkStruct_ov92_0225C5C4 *param0);
extern void ov92_0225E6A4(UnkStruct_ov92_0225C5C4 *param0, UnkStruct_ov92_0225C5C4_Big *param1);
extern void ov92_0225DE70(UnkStruct_ov92_0225C5C4_Big *param0);
extern void ov92_0225DE08(UnkStruct_ov92_0225C5C4_Big *param0);
extern void ov92_0225E820(UnkStruct_ov92_0225C5C4_Big *param0);
extern void ov92_0225E93C(UnkStruct_ov92_0225C5C4_Big *param0);
extern int ov92_0226077C(UnkStruct_ov92_0225C5C4 *param0, int param1);
extern void ov92_0225E130(UnkStruct_ov92_0225C5C4 *param0, int param1);
extern void ov92_0225D9A8(void *param0, void *param1, int param2);
extern void ov92_0225D9B4(void *param0, int param1);
extern void sub_020180BC(void *param0, void *param1, void *param2, int param3, int param4, void *param5);
extern void sub_020181D4(void *param0, void *param1);
extern void sub_02018198(void *param0, int param1);
extern void sub_020182A0(void *param0, int param1);
extern void *ov90_02258BD4(void *param0, int param1);
extern void ov00_021E69A8(int param0);

void ov92_0225C5C4(UnkStruct_ov92_0225C5C4 *param0) {
    NNSG2dPaletteData *v0;
    void *v1;
    int v2;
    int v4;
    int v7, v8, v10;
    u32 entrySp;

    // The original indexes a 4-entry table copied onto its stack by the (unchecked) return of ov92_0226077C. Its stack
    // table starts at entry_sp - 0xA8, followed by the 16-word table it copies next. clang's frame pointer is entry_sp - 8.
    entrySp = (u32)__builtin_frame_address(0) + 8;

    param0->unk_80 = GetLCRNGSeed();

    ov92_0225D3CC(param0);
    Main_SetVBlankIntrCB(ov92_0225D894, param0);
    HBlankInterruptDisable();
    GF_CreateVramTransferManager(32, 0x71);
    G2dRenderer_SetObjCharTransferReservedRegion(1, 0x200010);
    G2dRenderer_SetPlttTransferReservedRegion(1);
    sub_0203A880();

    v1 = sub_0203A4AC(0x71);

    NNS_G2dGetUnpackedPaletteData(v1, &v0);
    PaletteData_LoadPalette(param0->unk_5C, v0->pRawData, 2, 0xE0, 0x20);
    Heap_Free(v1);

    v2 = sub_020347A0();

    param0->unk_44 = sub_0203769C();
    ov92_0225C5A8(param0);

    if (ov92_0225D8C4(param0) == 1) {
        param0->unk_00 = ov92_0225EB40(v2, &param0->unk_48);
    }

    param0->unk_04 = ov92_0225EB88(v2, param0->unk_44, &param0->unk_48);
    param0->unk_04->unk_2BB4 = param0->unk_14;
    param0->unk_04->unk_2BB0 = param0->unk_80;

    sub_020210BC();
    sub_02021148(4);

    ov92_0225E9B4(param0);
    ov92_0225E3C4(param0);
    ov92_0225E6A4(param0, param0->unk_04);
    ov92_0225DE70(param0->unk_04);
    ov92_0225DE08(param0->unk_04);
    ov92_0225E820(param0->unk_04);
    ov92_0225E93C(param0->unk_04);
    ov92_0225E130(param0, ov92_0226077C(param0, param0->unk_44));

    for (v4 = 0; v4 < 8; v4++) {
        ov92_0225D9A8(&param0->unk_04->unk_B50[v4], param0->unk_48, ov92_02263A14[v4][0]);
        ov92_0225D9B4(&param0->unk_04->unk_B50[v4], param0->unk_14);

        sub_020180BC(param0->unk_04->unk_B50[v4].unk_88, param0->unk_04->unk_B50[v4].unk_78, param0->unk_48, ov92_02263A14[v4][1], 0x71, param0->unk_6C);
        sub_020181D4(&param0->unk_04->unk_B50[v4], param0->unk_04->unk_B50[v4].unk_88);
        sub_02018198(param0->unk_04->unk_B50[v4].unk_88, 0);
        sub_020182A0(&param0->unk_04->unk_B50[v4], 0);

        if (v4 % 2) {
            ((VecFx32 *)((u8 *)&param0->unk_04->unk_B50[v4] + 0x1E0))->x += FX32_CONST(v4 * 5);
        } else {
            ((VecFx32 *)((u8 *)&param0->unk_04->unk_B50[v4] + 0x1E0))->x -= FX32_CONST(v4 * 5);
        }

        if (v4 < 8) {
            ((VecFx32 *)((u8 *)&param0->unk_04->unk_B50[v4] + 0x1E0))->z += FX32_CONST((v4 + 1) * 5);
        } else {
            ((VecFx32 *)((u8 *)&param0->unk_04->unk_B50[v4] + 0x1E0))->z -= FX32_CONST(v4 * 5);
        }
    }

    ov92_0225D9A8(param0->unk_04->unk_944, param0->unk_48, 0x47);
    ov92_0225D9B4(param0->unk_04->unk_944, param0->unk_14);
    sub_020182A0(param0->unk_04->unk_944, 0);

    v7 = ov92_0226077C(param0, param0->unk_44);
    if ((u32)v7 < 4) {
        v8 = ov92_022638A0[v7];
    } else if ((u32)v7 < 20) {
        v8 = ov92_02263A14[(v7 - 4) / 2][(v7 - 4) % 2];
    } else {
        v8 = *(int *)(entrySp - 0xA8 + v7 * 4);
    }

    ov92_0225D9A8(param0->unk_04->unk_114, param0->unk_48, v8);
    ov92_0225D9B4(param0->unk_04->unk_114, param0->unk_14);
    ov92_0225D9A8(param0->unk_04->unk_320, param0->unk_48, 0x33);
    ov92_0225D9A8(param0->unk_04->unk_52C, param0->unk_48, 0x39);
    ov92_0225D9A8(param0->unk_04->unk_738, param0->unk_48, 0x37);
    ov92_0225D9B4(param0->unk_04->unk_320, param0->unk_14);
    ov92_0225D9B4(param0->unk_04->unk_52C, param0->unk_14);
    ov92_0225D9B4(param0->unk_04->unk_738, param0->unk_14);

    v10 = 0;
    sub_020180BC(param0->unk_04->unk_320 + 0x88, param0->unk_04->unk_320 + 0x78, param0->unk_48, 0x35, 0x71, param0->unk_6C);
    sub_020181D4(param0->unk_04->unk_320, param0->unk_04->unk_320 + 0x88);
    sub_02018198(param0->unk_04->unk_320 + 0x88, 0);

    sub_020180BC(param0->unk_04->unk_320 + 0x9C, param0->unk_04->unk_320 + 0x78, param0->unk_48, 0x34, 0x71, param0->unk_6C);
    sub_02018198(param0->unk_04->unk_320 + 0x9C, 0);

    sub_020180BC(param0->unk_04->unk_320 + 0xB0, param0->unk_04->unk_320 + 0x78, param0->unk_48, 0x3A, 0x71, param0->unk_6C);
    sub_02018198(param0->unk_04->unk_320 + 0xB0, 0);

    sub_020180BC(param0->unk_04->unk_52C + 0x88, param0->unk_04->unk_52C + 0x78, param0->unk_48, 0x38, 0x71, param0->unk_6C);
    sub_020181D4(param0->unk_04->unk_52C, param0->unk_04->unk_52C + 0x88);
    sub_02018198(param0->unk_04->unk_52C + 0x88, 0);

    sub_020180BC(param0->unk_04->unk_738 + 0x88, param0->unk_04->unk_738 + 0x78, param0->unk_48, 0x36, 0x71, param0->unk_6C);
    sub_020181D4(param0->unk_04->unk_738, param0->unk_04->unk_738 + 0x88);
    sub_02018198(param0->unk_04->unk_738 + 0x88, 0);

    if (param0->unk_14 != 0) {
        *(int *)((u8 *)param0->unk_04 + 0x2F8) = -8 * FX32_ONE;
        *(int *)((u8 *)param0->unk_04 + 0x504) = -8 * FX32_ONE;
        *(int *)((u8 *)param0->unk_04 + 0x710) = -8 * FX32_ONE;
        *(int *)((u8 *)param0->unk_04 + 0x91C) = -8 * FX32_ONE;
    }

    param0->unk_84 = ov90_02258BD4(SpriteManager_GetSpriteList(param0->unk_54), 0x71);
    PaletteData_LoadPaletteSlotFromHardware(param0->unk_5C, 2, 0, 0x200);

    if (param0->unk_88->unk_3C != 0) {
        ov00_021E69A8(0x71);
    }
}
