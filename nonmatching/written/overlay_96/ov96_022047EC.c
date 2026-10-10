#include "global.h"
#include "bg_window.h"
#include "filesystem.h"
#include "font.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "math_util.h"
#include "system.h"
#include "unk_0200B150.h"
#include "unk_0203A3B0.h"

typedef struct UnkStruct_ov96_022047EC_Group {
    void *sprites[3]; // 0x00
    u8 pad0C[0x4C];
    s32 posX; // 0x58
    s32 posY; // 0x5C
    u8 pad60[0x38];
    u32 index; // 0x98
    u8 pad9C[0x14];
    u8 unkB0; // 0xB0
    u8 padB1[7];
} UnkStruct_ov96_022047EC_Group; // size = 0xB8

typedef struct UnkStruct_ov96_022047EC {
    BgConfig *bgConfig; // 0x00
    u8 pad04[0x10];
    u32 heapId; // 0x14
    u8 pad18[0x08];
    void *unk20; // 0x20
    UnkStruct_ov96_022047EC_Group groups[4]; // 0x24
    u8 pad304[0x30];
    u32 unk334[4]; // 0x334
    void *unk344; // 0x344
    void *unk348; // 0x348
    u8 pad34C[0x20];
    void *unk36C; // 0x36C
    void *unk370; // 0x370
    u32 unk374; // 0x374
    u32 unk378; // 0x378
    u8 pad37C[0x50C - 0x37C];
    u16 unk50C; // 0x50C
    u8 pad50E[0x6C0 - 0x50E];
} UnkStruct_ov96_022047EC; // size = 0x6C0

typedef struct UnkStruct_ov96_022047EC_Cfg2 {
    u32 w0;
    u32 w1;
    u32 w2;
} UnkStruct_ov96_022047EC_Cfg2;

typedef struct UnkStruct_ov96_022047EC_Cfg4 {
    u32 w0;
    u32 w1;
    u32 w2;
    u32 w3;
} UnkStruct_ov96_022047EC_Cfg4;

typedef struct UnkStruct_ov96_022047EC_SlotCfg {
    u32 w0;
    u32 w1;
    u32 w2;
    u32 w3;
    u32 w4;
    u32 list[12];
} UnkStruct_ov96_022047EC_SlotCfg;

typedef struct UnkStruct_ov96_022047EC_Entry {
    u16 species;
    u16 unk2;
    u16 unk4;
    u8 unk6;
    u8 unk7;
    int unk8;
    u32 unkC;
} UnkStruct_ov96_022047EC_Entry; // size = 0x10

typedef struct UnkStruct_ov96_022047EC_SpeciesPair {
    u16 species;
    u16 unk2;
} UnkStruct_ov96_022047EC_SpeciesPair;

typedef struct UnkStruct_ov96_022047EC_Pair {
    u32 a;
    u32 b;
} UnkStruct_ov96_022047EC_Pair;

// Table read in case 2.
const UnkStruct_ov96_022047EC_Cfg2 ov96_0221CAD4 = { 0xBE, 4, 0x04040404 };

unsigned long long _s32_div_f(int, int);

void *PokeathlonCourse_GetHeapAllocPtr4(void *data);
u8 PokeathlonCourse_GetField1ED(void *data);
void PokeathlonCourse_IncrementField1ED(void *data);
void *PokeathlonCourse_AllocPtr4FromHeap(void *data, u32 size);
void PokeathlonCourse_SetField3A4(void *data, u32 *a, u32 *b, u32 c);
u8 PokeathlonCourse_GetParticipantCount(void *data);
u32 PokeathlonCourse_GetMode(void *data);
void PokeathlonCourse_SetVBlankIntrCB(BgConfig *bgConfig);
void PokeathlonCourse_SetField1F4(void *data, u32 value);
u8 *PokeathlonCourse_GetDataCopyArea(void *data);
BOOL ov96_021E5F24(void *data);

void ov96_02204F20(void);
void ov96_021E6670(void *data, u32 value);
void ov96_021E92B0(void *cfg, u32 a, u32 b, u32 c, u32 d);
void ov96_02204F40(BgConfig *bgConfig);
void ov96_02207740(void *state);
void *ov96_02207CCC(u32 heapId, BgConfig *bgConfig, void *data);
void *ov96_02208AA8(u32 heapId, u32 count, u32 mode);
void *ov96_021E9A78(u32 heapId, u32 flags, u32 param2);
void *ov96_021EB180(u32 heapId, void *cfg);
void ov96_021EB5C8(void *p, u32 a, u32 b, u32 c, u32 d);
u32 ov96_021EB5E8(void *p);
void *ov96_021EA854(u32 heapId, u32 a, u32 b, void *c, u32 d);
void ov96_021EB29C(void *p, u32 a, u32 b);
void ov96_02207E7C(void *a, void *b);
void ov96_022050B4(void *p);
void ov96_021EB3A4(void *p);
void **ov96_021E6290(void *data, u32 a, void *b, void *c);
void Sprite_SetDrawPriority(void *sprite, u32 priority);
void ov96_022050F8(void *state, void *p);
void ov96_02207F18(void *a, void *b, void *c);

void *ov96_021E60C0(void *data, int index, int slot);
void ov96_021E6168(void *data, int index, int slot, UnkStruct_ov96_022047EC_Entry *out);
u32 ov96_021E6108(void *p);
u32 ov96_021E6138(void *p);
u32 ov96_021E6104(void);
void ov96_022080F4(void *a, UnkStruct_ov96_022047EC_SpeciesPair *pairs);
void ov96_02208250(void *a, UnkStruct_ov96_022047EC_Entry *entry);
void ov96_022082BC(void *a, u32 b, u32 c);
void ov96_021EA8A8(void *a, u32 b, UnkStruct_ov96_022047EC_Entry *entries, UnkStruct_ov96_022047EC_SlotCfg *cfg, u32 e, u32 f);
void ov96_02208784(void *a, u32 b);
int ov96_021EAA00(void *p);
void *ov96_021EAA04(void *p, u8 index);
void ov96_021EAB38(void *sprite, u32 value);
void ov96_021EAF70(void *sprite, u32 a, u32 b);
void ov96_021EAC0C(void *sprite, u32 value);
void ov96_021EAF94(void *sprite, u32 x, u32 y);
void ov96_021EAF6C(void *sprite, u32 value);
void ov96_021EABDC(void *sprite, u32 value);
void ov96_021EB0A4(void *sprite, u32 x, u32 y, u32 *outA, u32 *outB);
void ov96_02208740(void *a, u32 b);
void ov96_022077F4(void *state);
void ov96_02206E88(void *data, void *narcBuf, u8 group, u8 slot, void *groupData);
void ov96_02208AE8(void *a, u8 group, void *groupData);
void *ov96_021E8A20(u8 *p);
void ov96_02205AFC(void *state, void *p);
void ov96_021E634C(void *data, u32 a, void *b, void *c, u32 d, u32 e, u32 *f);
void ov96_02205048(void *state);

// Case 4 indexes a small table that lives in the original's stack frame (sp+0x4C, with the
// frame being push {r3-r7, lr} + 0x220 bytes) with a callee-supplied index that is not range
// checked, so its out-of-range reads see whatever the stack held. The table is addressed
// relative to the entry stack pointer to reproduce that, and framePad keeps this compiler's own
// locals clear of the original frame's region (compiler-layout dependent but deterministic).
BOOL ov96_022047EC(void *data)
{
    u8 framePad[0x1F0];
    UnkStruct_ov96_022047EC *state = PokeathlonCourse_GetHeapAllocPtr4(data);

    switch (PokeathlonCourse_GetField1ED(data)) {
    case 0: {
        UnkStruct_ov96_022047EC_Cfg4 cfg;

        Heap_Create(0x5c, 0x8b, 0x68000);
        Main_SetVBlankIntrCB(NULL, NULL);
        Main_SetHBlankIntrCB(NULL, NULL);
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        reg_GX_DISPCNT &= 0xFFFFE0FF;
        reg_GXS_DB_DISPCNT &= 0xFFFFE0FF;
        ov96_02204F20();
        state = PokeathlonCourse_AllocPtr4FromHeap(data, 0x6c0);
        MI_CpuFill8(state, 0, 0x6c0);
        state->bgConfig = BgConfig_Alloc(0x8b);
        PokeathlonCourse_SetField3A4(data, &state->unk374, &state->unk378, 4);
        ov96_021E6670(data, 8);
        cfg.w0 = 0xca;
        cfg.w1 = 0x40000;
        cfg.w2 = 0x4000;
        cfg.w3 = 0x8b;
        ov96_021E92B0(&cfg, 0x16, 0x8b, 0x300010, 0x10);
        NNS_G2dInitOamManagerModule();
        OamManager_Create(0, 0x7e, 0, 0x20, 0, 0x7e, 0, 0x20, 0x8b);
        state->heapId = 0x8b;
        FontID_Alloc(4, 0x8b);
        ov96_02204F40(state->bgConfig);
        ov96_02207740(state);
        gSystem.screensFlipped = 1;
        GfGfx_SwapDisplay();
        PokeathlonCourse_IncrementField1ED(data);
        break;
    }
    case 1: {
        u8 count;
        u32 mode;

        state->unk370 = ov96_02207CCC(state->heapId, state->bgConfig, data);
        count = PokeathlonCourse_GetParticipantCount(data);
        mode = PokeathlonCourse_GetMode(data);
        state->unk36C = ov96_02208AA8(state->heapId, 4 - count, mode);
        state->unk344 = ov96_021E9A78(state->heapId, 0x2bf, 1);
        PokeathlonCourse_IncrementField1ED(data);
        break;
    }
    case 2: {
        UnkStruct_ov96_022047EC_Cfg2 cfg = ov96_0221CAD4;
        u32 v;
        void **p;

        state->unk20 = ov96_021EB180(state->heapId, &cfg);
        ov96_021EB5C8(state->unk20, 0, 0, 0, 0x2bc000);
        v = ov96_021EB5E8(state->unk20);
        state->unk348 = ov96_021EA854(state->heapId, 0xc, 2, state->unk344, v);
        ov96_021EB29C(state->unk20, 0, 0x65);
        ov96_021EB29C(state->unk20, 1, 0x66);
        ov96_021EB29C(state->unk20, 2, 0x67);
        ov96_021EB29C(state->unk20, 3, 0x68);
        ov96_02207E7C(state->unk370, state->unk20);
        ov96_022050B4(state->unk20);
        ov96_021EB3A4(state->unk20);
        p = ov96_021E6290(data, 0, state->unk344, state->unk20);
        Sprite_SetDrawPriority(*p, 1);
        ov96_022050F8(state, state->unk20);
        ov96_02207F18(state->unk370, state->unk20, state->unk344);
        PokeathlonCourse_IncrementField1ED(data);
        break;
    }
    case 3: {
        UnkStruct_ov96_022047EC_SlotCfg slotCfg;
        UnkStruct_ov96_022047EC_Entry entries[12];
        UnkStruct_ov96_022047EC_SpeciesPair pairs[12];
        int i;
        u8 self;

        for (i = 0; i < 12; i++) {
            unsigned long long d;
            int rem;
            int quot;
            void *p;

            d = _s32_div_f(i, 3);
            rem = (int)(d >> 32);
            d = _s32_div_f(i, 3);
            quot = (int)d;
            ov96_021E6168(data, quot, rem, &entries[i]);
            p = ov96_021E60C0(data, quot, rem);
            slotCfg.list[i] = ov96_021E6108(p);
            pairs[i].species = entries[i].species;
            pairs[i].unk2 = entries[i].unk2;
        }
        ov96_022080F4(state->unk370, pairs);
        self = ov96_021E5F24(data);
        ov96_02208250(state->unk370, &entries[self * 3]);
        ov96_022082BC(state->unk370, 0, 1);
        ov96_022082BC(state->unk370, 1, 2);
        slotCfg.w0 = 0;
        slotCfg.w1 = 2;
        slotCfg.w2 = 0;
        slotCfg.w3 = 1;
        slotCfg.w4 = 1;
        ov96_021EA8A8(state->unk348, 0xc, entries, &slotCfg, 0, 0);
        ov96_02208784(state->unk370, ov96_021E5F24(data));
        PokeathlonCourse_IncrementField1ED(data);
        break;
    }
    case 4: {
        UnkStruct_ov96_022047EC_Pair *tbl = (UnkStruct_ov96_022047EC_Pair *)((u8 *)__builtin_frame_address(0) + 8 - 0x238 + 0x4C);
        u32 self;
        u32 stackOut;
        u8 narcBuf[100];
        int i;
        int g;
        int s;

        if (!ov96_021EAA00(state->unk348)) {
            break;
        }
        self = ov96_021E5F24(data);
        PokeathlonCourse_SetVBlankIntrCB(state->bgConfig);
        PokeathlonCourse_SetField1F4(data, 1);
        ReadWholeNarcMemberByIdPair(&tbl[1], 0xaa, 0xe);
        for (i = 0; i < 12; i++) {
            void *sprite;
            void *p;
            unsigned long long d;
            int rem1;
            int quot1;
            int rem2;
            int quot;
            u32 idx;
            UnkStruct_ov96_022047EC_Group *group;
            u32 x;

            sprite = ov96_021EAA04(state->unk348, i);
            d = _s32_div_f(i, 3);
            rem1 = (int)(d >> 32);
            if (rem1 == 0) {
                ov96_021EAB38(sprite, 1);
            }
            d = _s32_div_f(i, 3);
            quot1 = (int)d;
            d = _s32_div_f(i, 3);
            rem2 = (int)(d >> 32);
            p = ov96_021E60C0(data, quot1, rem2);
            idx = ov96_021E6138(p);
            ov96_021EAF70(sprite, tbl[idx].a, tbl[idx].b);

            sprite = ov96_021EAA04(state->unk348, i);
            d = _s32_div_f(i, 3);
            quot = (int)d;
            group = &state->groups[quot];
            group->sprites[rem1] = sprite;
            group->unkB0 = 1;
            ov96_021EAC0C(sprite, 1);
            x = quot * 32 + 0x80;
            ov96_021EAF94(sprite, x, 0x60);
            ov96_021EAF6C(sprite, ov96_021E6104());
            group->posX = (quot * 32 + 0xd0) << 12;
            group->posY = 0x1a << 16;
            ov96_021EABDC(sprite, 3000);
            if (quot == self && rem1 == 0) {
                u16 *halves;

                ov96_021EB0A4(sprite, x, 0x60, &tbl[0].a, &stackOut);
                halves = (u16 *)&tbl[0].b;
                halves[0] = 0x80;
                halves[1] = (u16)stackOut;
            }
        }
        ReadWholeNarcMemberByIdPair(narcBuf, 0xaa, 4);
        state->unk50C = 0x708;
        ov96_02208740(state->unk370, state->unk50C);
        ov96_022077F4(state);
        for (g = 0; g < 4; g++) {
            state->unk334[g] = 0;
            for (s = 0; s < 3; s++) {
                ov96_02206E88(data, narcBuf, g, s, &state->groups[g]);
            }
            if (!ov96_021E5F24(data)) {
                ov96_02208AE8(state->unk36C, g, &state->groups[g]);
            }
            state->groups[g].index = g;
        }
        if (!ov96_021E5F24(data)) {
            ov96_02205AFC(state, ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(data) + 0x28));
        }
        ov96_021E634C(data, 0, state->unk344, state->unk20, 1, 1, &tbl[0].b);
        ov96_02205048(state);
        GfGfx_EngineATogglePlanes(0x10, 1);
        GfGfx_EngineBTogglePlanes(0x10, 1);
        ScheduleSetBgPosText(state->bgConfig, 0, 0, state->groups[self].posX / 0x1000 - 0x80);
        ScheduleSetBgPosText(state->bgConfig, 0, 3, state->groups[self].posY / 0x1000 - 0x60);
        sub_0203A994(1);
        PokeathlonCourse_IncrementField1ED(data);
        break;
    }
    case 5:
        if (!ov96_021E5F24(data)) {
            unsigned long long d = _s32_div_f(LCRandom(), 0x14);

            state->unk374 = (u32)(d >> 32);
        }
        PokeathlonCourse_IncrementField1ED(data);
        break;
    case 6:
        return TRUE;
    }
    return FALSE;
}
