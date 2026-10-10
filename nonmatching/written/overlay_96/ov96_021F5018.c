#include "global.h"
#include "bg_window.h"
#include "filesystem.h"
#include "font.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "sprite.h"
#include "system.h"
#include "unk_0200B150.h"
#include "unk_0203A3B0.h"
#include "vram_transfer_manager.h"
#include "pokeathlon/pokeathlon.h"

extern s32 ov96_0221C0B8[3];

void ov96_021F5630(void);
void ov96_021E6670(PokeathlonCourseData *data, u32 a1);
void ov96_021E92B0(void *cfg, u32 a1, u32 a2, u32 a3, u32 a4);
void ov96_021F584C(void *bgConfig);
void ov96_021F6138(u8 *alloc);
void *ov96_021F74A4(u32 heapId);
void *ov96_021F7684(u32 heapId, u32 a1, u32 mode, void *copyArea, PokeathlonCourseData *data);
void *ov96_021EB180(u32 heapId, VecFx32 *vec);
void ov96_021EB5C8(void *obj, u32 a1, u32 a2, u32 a3, u32 a4);
u32 ov96_021EB5E8(void *obj);
void *ov96_021EA854(u32 heapId, u32 a1, u32 a2, u32 a3, u32 a4);
void ov96_021EB29C(void *obj, u32 a1, u32 a2);
void ov96_021F6C18(void *obj);
void ov96_021EB3A4(void *obj);
void ov96_021E6168(PokeathlonCourseData *data, u32 mode, u32 index, void *out);
void *ov96_021E60C0(PokeathlonCourseData *data, u32 mode, u32 index);
u32 ov96_021E6108(void *entry);
void ov96_021EA8A8(void *obj, u32 a1, void *a2, void *a3, u32 a4, u32 a5);
BOOL ov96_021EAA00(void *obj);
void *ov96_021E9A78(u32 heapId, u32 a1, u32 a2);
void **ov96_021E6290(PokeathlonCourseData *data, u32 a1, void *a2, void *a3);
void *ov96_021EAA04(void *obj, u32 index);
void ov96_021EAB38(void *obj, u32 a1);
u32 ov96_021E6138(void *entry);
void ov96_021EAF70(void *obj, u32 a1, u32 a2);
void ov96_021EAC0C(void *obj, u32 a1);
void ov96_021EAF94(void *obj, u32 a1, u32 a2);
u32 ov96_021E6104(void);
void ov96_021EAF6C(void *obj, u32 a1);
void ov96_021EB0A4(void *obj, u32 a1, u32 a2, s32 *out1, s32 *out2);
void ov96_021E634C(PokeathlonCourseData *data, u32 a1, void *a2, void *a3, u32 a4, u32 a5, void *a6);
void ov96_021F5980(u8 *alloc);
void ov96_021F6C5C(u8 *alloc, void *obj);
void ov96_021F7050(u8 *alloc);
void ov96_021F6DA4(u8 *alloc, u32 mode);
void ov96_021F715C(PokeathlonCourseData *data, void *src, u32 index, void *dst);
void ov96_021F6F3C(u8 *alloc, u32 a1);
void ov96_021F6F80(PokeathlonCourseData *data, u8 *alloc);
void ov96_021F6E38(u8 *alloc);

// Models the part of the original's stack frame that case 4 reads back through an unchecked index.
typedef struct UnkStruct_ov96_021F5018_Frame {
    u16 pairs[6];
    u32 narcData[6];
} UnkStruct_ov96_021F5018_Frame;

static u32 ov96_021F5018_ReadFrame(UnkStruct_ov96_021F5018_Frame *frame, u32 *entrySp, u32 off) {
    if (off >= 0x6c && off + 4 <= 0x90) {
        return ((u32 *)frame)[(off - 0x6c) / 4];
    }
    if (off < 0x138) {
        return 0;
    }
    return *(u32 *)((u8 *)entrySp - 0x138 + off);
}

BOOL ov96_021F5018(PokeathlonCourseData *param0) {
    u32 *entrySp = (u32 *)((u8 *)__builtin_frame_address(0) + 8);
    u8 *alloc = PokeathlonCourse_GetHeapAllocPtr4(param0);
    u32 mode;
    int i;
    int j;
    int m;
    u32 cfg[4];
    VecFx32 tmpVec;
    u8 sp90[48] __attribute__((aligned(4)));
    s32 spdc[8];
    UnkStruct_ov96_021F5018_Frame frame __attribute__((aligned(4)));
    s32 l28;
    s32 l2C;
    u32 narc30[6];
    void *obj;
    u8 *entry;
    u8 *slot;
    u32 idx;
    u32 off;
    int fixed;
    s32 x;
    s32 y;

    switch (PokeathlonCourse_GetField1ED(param0)) {
    case 0:
        Heap_Create((enum HeapID)0x5c, (enum HeapID)0x8f, 0x50000);
        Main_SetVBlankIntrCB(NULL, NULL);
        Main_SetHBlankIntrCB(NULL, NULL);
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        *(vu32 *)0x04000000 &= 0xFFFFE0FF;
        *(vu32 *)0x04001000 &= 0xFFFFE0FF;
        ov96_021F5630();
        alloc = PokeathlonCourse_AllocPtr4FromHeap(param0, 0x1004);
        MI_CpuFill8(alloc, 0, 0x1004);
        *(BgConfig **)alloc = BgConfig_Alloc((enum HeapID)0x8f);
        ov96_021E6670(param0, 8);
        cfg[0] = 0xd5;
        cfg[1] = 0x40000;
        cfg[2] = 0x4000;
        cfg[3] = PokeathlonCourse_GetHeapID(param0);
        ov96_021E92B0(cfg, 0xf, 0x8f, 0x00300010, 0x00300010);
        NNS_G2dInitOamManagerModule();
        OamManager_Create(0, 0x7e, 0, 0x20, 0, 0x7e, 0, 0x20, (enum HeapID)0x8f);
        *(u32 *)(alloc + 0x54) = 0x8f;
        FontID_Alloc(4, (enum HeapID) * (u32 *)(alloc + 0x54));
        ov96_021F584C(*(void **)alloc);
        ov96_021F6138(alloc);
        gSystem.screensFlipped = 1;
        GfGfx_SwapDisplay();
        GF_CreateVramTransferManager(0xc, (enum HeapID) * (u32 *)(alloc + 0x54));
        *(void **)(alloc + 0x1000) = sub_02020654(0xc, (enum HeapID) * (u32 *)(alloc + 0x54));
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 1:
        *(void **)(alloc + 0x8c) = ov96_021F74A4(*(u32 *)(alloc + 0x54));
        i = PokeathlonCourse_GetParticipantCount(param0);
        mode = PokeathlonCourse_GetMode(param0);
        obj = PokeathlonCourse_GetDataCopyArea(param0);
        *(void **)(alloc + 0x138) = ov96_021F7684(*(u32 *)(alloc + 0x54), 4 - i, mode, obj, param0);
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 2:
        tmpVec.x = ov96_0221C0B8[0];
        tmpVec.y = ov96_0221C0B8[1];
        tmpVec.z = ov96_0221C0B8[2];
        *(void **)(alloc + 0x60) = ov96_021EB180(*(u32 *)(alloc + 0x54), &tmpVec);
        ov96_021EB5C8(*(void **)(alloc + 0x60), 0, 0xC0000, 0, 0);
        obj = (void *)ov96_021EB5E8(*(void **)(alloc + 0x60));
        *(void **)(alloc + 0x18c) = ov96_021EA854(*(u32 *)(alloc + 0x54), 3, 0xa, 0, (u32)obj);
        ov96_021EB29C(*(void **)(alloc + 0x60), 0, 0x65);
        ov96_021F6C18(*(void **)(alloc + 0x60));
        ov96_021EB3A4(*(void **)(alloc + 0x60));
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 3:
        mode = (u8)ov96_021E5F24(param0);
        for (i = 0; i < 3; i++) {
            ov96_021E6168(param0, mode, i, sp90 + i * 0x10);
            obj = ov96_021E60C0(param0, mode, i);
            spdc[5 + i] = ov96_021E6108(obj);
        }
        spdc[0] = 0;
        spdc[1] = 1;
        spdc[2] = 1;
        spdc[3] = 3;
        spdc[4] = 3;
        ov96_021EA8A8(*(void **)(alloc + 0x18c), 3, sp90, spdc, 0, 0);
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 4:
        if (ov96_021EAA00(*(void **)(alloc + 0x18c)) == 0) {
            break;
        }
        *(void **)(alloc + 0x188) = ov96_021E9A78(*(u32 *)(alloc + 0x54), 0x3a1, 1);
        obj = ov96_021E6290(param0, 0xc0, *(void **)(alloc + 0x188), *(void **)(alloc + 0x60));
        Sprite_SetDrawPriority(*(Sprite **)obj, 1);
        PokeathlonCourse_SetVBlankIntrCB(*(PokeathlonCourseData **)alloc);
        PokeathlonCourse_SetField1F4(param0, 1);
        ReadWholeNarcMemberByIdPair(frame.narcData, (NarcId)0xaa, 0x10);
        slot = alloc + 0x90;
        x = 0x40;
        for (i = 0; i < 3; i++) {
            obj = ov96_021EAA04(*(void **)(alloc + 0x18c), (u8)i);
            ov96_021EAB38(obj, 1);
            *(void **)slot = obj;
            entry = ov96_021E60C0(param0, 0, i);
            idx = ov96_021E6138(entry);
            off = 0x70 + idx * 8;
            ov96_021EAF70(obj, ov96_021F5018_ReadFrame(&frame, entrySp, off), ov96_021F5018_ReadFrame(&frame, entrySp, off + 4));
            ov96_021EAC0C(obj, 2);
            ov96_021EAF94(obj, x, 0x120);
            ov96_021EAF6C(obj, ov96_021E6104());
            *(s32 *)(slot + 8) = x << 12;
            *(s32 *)(slot + 0xc) = 0x12 << 16;
            *(s32 *)(slot + 0x1c) = x << 12;
            ov96_021EB0A4(obj, x, (0x12 << 16) >> 12, &l2C, &l28);
            frame.pairs[i * 2] = l2C;
            frame.pairs[i * 2 + 1] = l28;
            x += 0x40;
            slot += 0x38;
        }
        ov96_021E634C(param0, 0, *(void **)(alloc + 0x188), *(void **)(alloc + 0x60), 1, 3, frame.pairs);
        alloc[0x140] = 3;
        ov96_021F5980(alloc);
        ov96_021F6C5C(alloc, *(void **)(alloc + 0x60));
        ov96_021F7050(alloc);
        ov96_021F6DA4(alloc, (u8)ov96_021E5F24(param0));
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 5:
        GfGfx_EngineATogglePlanes(1, 1);
        GfGfx_EngineATogglePlanes(0x10, 1);
        GfGfx_EngineBTogglePlanes(0x10, 1);
        ReadWholeNarcMemberByIdPair(narc30, (NarcId)0xaa, 6);
        slot = alloc + 0x90;
        for (i = 0; i < 3; i++) {
            ov96_021F715C(param0, narc30, (u8)i, slot);
            slot += 0x38;
        }
        ov96_021E5F24(param0);
        *(u32 *)(alloc + 0x13c) = 0x708;
        ov96_021F6F3C(alloc, (u16) * (u32 *)(alloc + 0x13c));
        ov96_021F6F80(param0, alloc);
        for (i = 0; i < 0x80; i++) {
            *(u32 *)(alloc + i * 4 + 0x1a0) = 0;
            *(u32 *)(alloc + i * 4 + 0x3a0) = 0;
            *(u32 *)(alloc + i * 4 + 0x5a0) = 0;
            *(u32 *)(alloc + i * 4 + 0x7a0) = 0;
            *(u32 *)(alloc + i * 4 + 0x9a0) = 0;
            *(u32 *)(alloc + i * 4 + 0xba0) = 0;
            *(u32 *)(alloc + i * 4 + 0xda0) = 0;
        }
        x = 0x40;
        for (m = 0; m < 3; m++) {
            *(u32 *)(alloc + m * 0x1c + 0xfb4) = 0;
            *(s32 *)(alloc + m * 4 + 0xfa0) = x / 2;
            *(s32 *)(alloc + m * 0x1c + 0xfb0) = (s32)(4096.0 * ((double)(float)x / 64.0 - 2.0));
            alloc[m * 0x38 + 0xb8] = 1;
            x += 0x40;
        }
        sub_0203A994(1);
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 6:
        ov96_021F6E38(alloc);
        return TRUE;
    }
    return FALSE;
}
