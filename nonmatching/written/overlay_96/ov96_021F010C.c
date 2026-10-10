#include "global.h"
#include "bg_window.h"
#include "filesystem.h"
#include "font.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "palette.h"
#include "sprite.h"
#include "system.h"
#include "unk_0200B150.h"
#include "unk_0203A3B0.h"
#include "pokeathlon/pokeathlon.h"

extern s32 ov96_0221BC70[3];
extern u8 ov96_0221BDD4[];

void ov96_021F0A5C(void);
void ov96_021E6670(PokeathlonCourseData *data, u32 a1);
void ov96_021E92B0(void *cfg, u32 a1, u32 a2, u32 a3, u32 a4);
void ov96_021F0BD4(void *bgConfig);
void ov96_021F2EC8(u8 *alloc);
u32 ov96_021F3BF0(u32 a, void *b, PokeathlonCourseData *data);
u32 ov96_021F3390(u32 a, u32 b, u32 c);
void *ov96_021E9A78(u32 heapId, u32 a1, u32 a2);
u32 ov96_021F30A4(u32 a);
void ov96_021F3E58(u32 a);
void ov96_021E64B8(PokeathlonCourseData *data);
void *ov96_021EB180(u32 heapId, VecFx32 *vec);
void ov96_021EB5C8(void *obj, u32 a1, u32 a2, u32 a3, u32 a4);
u32 ov96_021EB5E8(void *obj);
void *ov96_021EA854(u32 a, u32 b, u32 c, u32 d, u32 e);
void ov96_021EB29C(void *obj, u32 a1, u32 a2);
void ov96_021EB2BC(void *obj, u32 a1, u32 a2, u32 a3, u32 a4);
void ov96_021EB2F4(void *obj, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5);
void ov96_021EB334(void *obj, u32 a1, u32 a2, u32 a3);
void ov96_021EB36C(void *obj, u32 a1, u32 a2, u32 a3);
void ov96_021F3E60(void *obj, u32 a1);
void ov96_021EB3A4(void *obj);
void ov96_021EB408(void *obj, u32 a1, u32 a2, u32 a3, u32 a4);
void ov96_021F30C4(u32 a, void *obj);
void *ov96_021EB4F4(void *obj, u32 a1, u32 a2);
Sprite *ov96_021EB5B8(void *obj);
void **ov96_021E6290(PokeathlonCourseData *data, u32 a1, void *a2, void *a3);
void ov96_021F3EC0(void *obj, u32 a1);
void ov96_021F3F80(void *obj, u32 a1);
BOOL ov96_021EAA00(void *obj);
void *ov96_021EAA04(void *obj, u32 index);
void ov96_021EAB38(void *obj, u32 a1);
void *ov96_021E60C0(PokeathlonCourseData *data, u32 mode, u32 index);
u32 ov96_021E6138(void *entry);
void ov96_021EAF70(void *obj, u32 a1, u32 a2);
void *ov96_021EAA20(void *a);
u32 ov96_021E90FC(void *a);
u16 *ov96_021E8BB0(void *a);
void ov96_021EAC0C(void *obj, u32 a1);
void ov96_021EAF94(void *obj, u32 a1, u32 a2);
u32 ov96_021E6104(void);
void ov96_021EAF6C(void *obj, u32 a1);
void ov96_021EB0A4(void *obj, u32 a1, u32 a2, s32 *out1, s32 *out2);
void ov96_021EABA8(void *obj, u32 a1);
void ov96_021EABF4(void *obj, VecFx32 *vec);
void ov96_021F0F04(u8 *alloc, u8 *entry);
Sprite *ov96_021E64F8(PokeathlonCourseData *data, void *obj, void *a2, u32 a3, u32 a4);
void ov96_021E634C(PokeathlonCourseData *data, u32 a1, void *a2, void *a3, u32 a4, u32 a5, void *a6);
void ov96_021F2B24(PokeathlonCourseData *data, void *buf, u32 a2, u32 a3, u8 *p);
void ov96_021F33E0(u32 a0, u32 a1, u32 a2, u16 *a3, u8 *a4, u8 *a5, u8 *a6, u32 a7);
void ov96_021F31F0(u32 a, u32 b);
void ov96_021F0D60(u8 *alloc);
void ov96_021F424C(u32 a);
void ov96_021E6168(PokeathlonCourseData *data, u32 mode, u32 index, void *out);
u32 ov96_021E6108(void *entry);
void ov96_021EA8A8(void *obj, u32 a1, void *a2, void *a3, u32 a4, u32 a5);
void ov96_021E8BB4(void *a, u32 b, u8 *c);

#define CELL(base, i) ((base) + ((i) / 3) * 0x1b0 + ((i) % 3) * 0x90)

// The part of the original's stack frame that case 4 reads back through an unchecked index (offsets 0xa8..0xd8).
typedef struct UnkStruct_ov96_021F010C_Frame {
    s32 vec[3];
    u32 narcData[6];
    u16 pairs[6];
} UnkStruct_ov96_021F010C_Frame;

static u32 ov96_021F010C_ReadFrame(UnkStruct_ov96_021F010C_Frame *frame, u32 *entrySp, u32 off) {
    if (off >= 0xa8 && off + 4 <= 0xd8) {
        return ((u32 *)frame)[(off - 0xa8) / 4];
    }
    if (off < 0x210) {
        return 0;
    }
    return *(u32 *)((u8 *)entrySp - 0x210 + off);
}

BOOL ov96_021F010C(PokeathlonCourseData *param0) {
    u32 *entrySp = (u32 *)((u8 *)__builtin_frame_address(0) + 8);
    u8 *alloc = PokeathlonCourse_GetHeapAllocPtr4(param0);
    u32 cfg[4];
    VecFx32 tmpVec;
    u32 narc6C[6];
    u32 *obj;
    void *objP;
    u8 *cell;
    u8 *base;
    u8 *c;
    u8 *dst;
    int i;
    int q;
    int rem;
    int row;
    int sub;
    u32 mode;
    u32 idx;
    u32 off;
    u32 table[17];
    u32 entries[48];
    s32 l64;
    s32 l68;
    u32 dummy;
    u8 *rowCell;
    UnkStruct_ov96_021F010C_Frame frame;
    s32 v5C;
    s32 half;

    switch (PokeathlonCourse_GetField1ED(param0)) {
    case 0:
        Heap_Create((enum HeapID)0x5c, (enum HeapID)0x8c, 0x50000);
        Main_SetVBlankIntrCB(NULL, NULL);
        Main_SetHBlankIntrCB(NULL, NULL);
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        *(vu32 *)0x04000000 &= 0xFFFFE0FF;
        *(vu32 *)0x04001000 &= 0xFFFFE0FF;
        ov96_021F0A5C();
        alloc = PokeathlonCourse_AllocPtr4FromHeap(param0, 0x7F4);
        MI_CpuFill8(alloc, 0, 0x7F4);
        *(void **)(alloc + 0x7f0) = Heap_Alloc((enum HeapID)0x8c, 0x28);
        MI_CpuFill8(*(void **)(alloc + 0x7f0), 0, 0x28);
        *(BgConfig **)alloc = BgConfig_Alloc((enum HeapID)0x8c);
        ov96_021E6670(param0, 8);
        cfg[0] = 0x68;
        cfg[1] = 0x40000;
        cfg[2] = 0x4000;
        cfg[3] = 0x8c;
        ov96_021E92B0(cfg, 0x16, 0x8c, 0x00300010, 0x10);
        NNS_G2dInitOamManagerModule();
        OamManager_Create(0, 0x7e, 0, 0x20, 0, 0x7e, 0, 0x20, (enum HeapID)0x8c);
        *(u32 *)(alloc + 0x14) = 0x8c;
        FontID_Alloc(4, (enum HeapID)0x8c);
        ov96_021F0BD4(*(void **)alloc);
        ov96_021F2EC8(alloc);
        gSystem.screensFlipped = 1;
        GfGfx_SwapDisplay();
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 1:
        *(u32 *)(alloc + 0x774) = ov96_021F3BF0(*(u32 *)(alloc + 0x14), *(void **)alloc, param0);
        i = PokeathlonCourse_GetParticipantCount(param0);
        mode = PokeathlonCourse_GetMode(param0);
        *(u32 *)(alloc + 0x770) = ov96_021F3390(*(u32 *)(alloc + 0x14), 4 - i, mode);
        *(void **)(alloc + 0x768) = ov96_021E9A78(*(u32 *)(alloc + 0x14), 0xAA7, 1);
        *(u32 *)(alloc + 0x72c) = ov96_021F30A4(*(u32 *)(alloc + 0x14));
        *(u32 *)(alloc + 0x7cc) = *(u32 *)(alloc + 0x72c);
        ov96_021F3E58(*(u32 *)(alloc + 0x774));
        ov96_021E64B8(param0);
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 2:
        tmpVec.x = ov96_0221BC70[0];
        tmpVec.y = ov96_0221BC70[1];
        tmpVec.z = ov96_0221BC70[2];
        *(void **)(alloc + 0x18) = ov96_021EB180(*(u32 *)(alloc + 0x14), &tmpVec);
        ov96_021EB5C8(*(void **)(alloc + 0x18), 0, 0, 0, 0x200000);
        dummy = ov96_021EB5E8(*(void **)(alloc + 0x18));
        *(void **)(alloc + 0x76c) = ov96_021EA854(*(u32 *)(alloc + 0x14), 0xc, 5, *(u32 *)(alloc + 0x768), dummy);
        objP = *(void **)(alloc + 0x18);
        ov96_021EB29C(objP, 0, 0x65);
        ov96_021EB29C(objP, 1, 0x68);
        ov96_021EB29C(objP, 2, 0x66);
        ov96_021EB29C(objP, 3, 0x67);
        ov96_021EB29C(objP, 4, 0x69);
        ov96_021EB2BC(objP, 0xa7, 3, 0x65, 1);
        ov96_021EB2F4(objP, 0xa7, 0, 0x65, 1, 1);
        ov96_021EB334(objP, 0xa7, 2, 0x65);
        ov96_021EB36C(objP, 0xa7, 1, 0x65);
        ov96_021EB2BC(objP, 0xa7, 0x1c, 0x68, 1);
        ov96_021EB2F4(objP, 0xa7, 0x19, 0x68, 1, 1);
        ov96_021EB334(objP, 0xa7, 0x1b, 0x68);
        ov96_021EB36C(objP, 0xa7, 0x1a, 0x68);
        ov96_021EB2BC(objP, 0xa7, 0x20, 0x69, 2);
        ov96_021EB2F4(objP, 0xa7, 0x1d, 0x69, 2, 5);
        ov96_021EB334(objP, 0xa7, 0x1f, 0x69);
        ov96_021EB36C(objP, 0xa7, 0x1e, 0x69);
        ov96_021F3E60(*(void **)(alloc + 0x18), *(u32 *)(alloc + 0x774));
        ov96_021EB3A4(*(void **)(alloc + 0x18));
        for (i = 0; i < 8; i++) {
            ov96_021EB408(*(void **)(alloc + 0x18), 2, 1, 0x65, 2);
        }
        for (i = 0; i < 12; i++) {
            ov96_021EB408(*(void **)(alloc + 0x18), 1, 1, 0x68, 4);
            ov96_021EB408(*(void **)(alloc + 0x18), 1, 1, 0x68, 7);
        }
        ov96_021F30C4(*(u32 *)(alloc + 0x72c), *(void **)(alloc + 0x18));
        for (i = 0; i < 12; i++) {
            c = alloc + (i / 3) * 0x1b0 + (i % 3) * 0x90;
            objP = ov96_021EB4F4(*(void **)(alloc + 0x18), 0x68, 4);
            *(void **)(c + 0x24) = objP;
            Sprite_SetDrawPriority(ov96_021EB5B8(objP), 2);
            objP = ov96_021EB4F4(*(void **)(alloc + 0x18), 0x68, 7);
            *(void **)(c + 0x28) = objP;
            Sprite_SetDrawPriority(ov96_021EB5B8(objP), 4);
        }
        {
            void **spr = ov96_021E6290(param0, 0, *(void **)(alloc + 0x768), *(void **)(alloc + 0x18));
            *(void **)(alloc + 0x1c) = *spr;
            Sprite_SetDrawPriority((Sprite *)*spr, 1);
        }
        ov96_021F3EC0(*(void **)(alloc + 0x18), *(u32 *)(alloc + 0x774));
        ov96_021F3F80(*(void **)(alloc + 0x18), *(u32 *)(alloc + 0x774));
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 3:
        base = alloc + 0x20;
        for (i = 0; i < 12; i++) {
            q = i / 3;
            rem = i % 3;
            ov96_021E6168(param0, q, rem, &entries[i * 4]);
            table[5 + i] = ov96_021E6108(ov96_021E60C0(param0, q, rem));
            c = CELL(base, i);
            ov96_021E8BB4(&entries[i * 4], *(u32 *)(alloc + 0x14), c + 0x48);
            MI_CpuCopy8(c + 0x48, c + 0x68, 0x20);
            TintPalette_GrayScale((u16 *)(c + 0x68), 0x10);
        }
        table[0] = 0;
        table[1] = 1;
        table[2] = 0;
        table[3] = 1;
        table[4] = 1;
        ov96_021EA8A8(*(void **)(alloc + 0x76c), 0xc, entries, table, 0, 0);
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 4:
        if (ov96_021EAA00(*(void **)(alloc + 0x76c)) == 0) {
            break;
        }
        mode = ov96_021E5F24(param0);
        PokeathlonCourse_SetVBlankIntrCB(*(PokeathlonCourseData **)alloc);
        PokeathlonCourse_SetField1F4(param0, 1);
        ReadWholeNarcMemberByIdPair(frame.narcData, (NarcId)0xaa, 0xb);
        base = alloc + 0x20;
        for (i = 0; i < 12; i++) {
            objP = ov96_021EAA04(*(void **)(alloc + 0x76c), (u8)i);
            ov96_021EAB38(objP, 1);
            q = i / 3;
            rem = i % 3;
            idx = ov96_021E6138(ov96_021E60C0(param0, q, rem));
            off = 0xac + idx * 8;
            ov96_021EAF70(objP, ov96_021F010C_ReadFrame(&frame, entrySp, off), ov96_021F010C_ReadFrame(&frame, entrySp, off + 4));
            objP = ov96_021EAA04(*(void **)(alloc + 0x76c), (u8)i);
            dst = ov96_021EAA20(objP);
            frame.vec[0] = 0;
            frame.vec[1] = 0;
            frame.vec[2] = 0;
            c = CELL(base, i);
            *(void **)c = objP;
            *(s32 *)(c + 0x18) = 1;
            v5C = ov96_021E90FC(dst);
            if (ov96_021E8BB0(dst)[2] != 0) {
                frame.vec[0] = 2 << 16;
                half = 0x40 - v5C;
                frame.vec[1] = (v5C + half / 2) << 12;
            } else {
                frame.vec[0] = 1 << 16;
                half = 0x20 - v5C;
                frame.vec[1] = (v5C + half / 2) << 12;
            }
            sub = *(u16 *)(ov96_0221BDD4 + q * 12 + rem * 4);
            idx = *(u16 *)(ov96_0221BDD4 + q * 12 + rem * 4 + 2);
            c[0x40] = 2;
            ov96_021EAC0C(objP, 2);
            ov96_021EAF94(objP, sub, idx);
            ov96_021EAF6C(objP, ov96_021E6104());
            ov96_021EB0A4(objP, sub, idx, &l68, &l64);
            *(s32 *)(c + 0xc) = l68 << 12;
            *(s32 *)(c + 0x10) = l64 << 12;
            *(s32 *)(c + 0x28) = l68 << 12;
            *(s32 *)(c + 0x2c) = l64 << 12;
            *(s32 *)(c + 0x1c) = l68 << 12;
            *(s32 *)(c + 0x20) = l64 << 12;
            if (q == ov96_021E5F24(param0)) {
                ov96_021EABA8(objP, 5);
            } else {
                ov96_021EABA8(objP, 6);
            }
            ov96_021EABF4(objP, (VecFx32 *)frame.vec);
            if (ov96_021E5F24(param0) == 0) {
                ov96_021F0F04(alloc, ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(param0) + 0x28));
            }
            if (q == mode) {
                frame.pairs[rem * 2] = l68;
                frame.pairs[rem * 2 + 1] = l64;
                Sprite_SetDrawPriority(
                    ov96_021E64F8(param0, objP, *(void **)(alloc + 0x768), ov96_021EB5E8(*(void **)(alloc + 0x18)), 1), 3);
            }
        }
        ov96_021E634C(param0, 0, *(void **)(alloc + 0x768), *(void **)(alloc + 0x18), 1, 3, frame.pairs);
        ReadWholeNarcMemberByIdPair(narc6C, (NarcId)0xaa, 1);
        rowCell = alloc + 0x20;
        for (q = 0; q < 4; q++) {
            alloc[0x720 + q] = 0xc;
            c = rowCell;
            for (rem = 0; rem < 3; rem++) {
                ov96_021F2B24(param0, narc6C, (u8)q, (u8)rem, c);
                ov96_021F33E0(*(u32 *)(alloc + 0x770), (u8)(rem + q * 3), *(u16 *)(c + 0x8a), (u16 *)(c + 0x8e), c + 0x28, c + 0x18, c + 0x1c, *(u32 *)c);
                c += 0x90;
            }
            rowCell += 0x1b0;
        }
        *(u16 *)(alloc + 0x730) = 0;
        *(u16 *)(alloc + 0x732) = 0;
        *(u32 *)(alloc + 0x7d4) = 0xc;
        ov96_021F31F0(*(u32 *)(alloc + 0x72c), (u8) * (u16 *)(alloc + 0x730));
        G2x_SetBlendAlpha_(0x04000050, 0, 1, 0xc, 4);
        alloc[0x74b] = 0xc;
        ov96_021F0D60(alloc);
        ov96_021F424C(*(u32 *)(alloc + 0x774));
        GfGfx_EngineATogglePlanes(0x10, 1);
        GfGfx_EngineBTogglePlanes(0x10, 1);
        sub_0203A994(1);
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 5:
        return TRUE;
    }
    return FALSE;
}
