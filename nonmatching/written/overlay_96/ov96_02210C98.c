typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef int BOOL;
typedef unsigned long long u64;

extern u8 gSystem[];
extern const u8 ov96_0221D238[];
extern const u8 ov96_0221D1F4[];
extern const u8 ov96_0221D3D8[];
extern const u8 ov96_0221D4B4[];
extern const u8 ov96_0221D3A8[];
extern const u8 ov96_0221D408[];
extern const u8 ov96_0221D220[];
extern const u8 ov96_0221D250[];
extern const u8 ov96_0221D208[];

void *PokeathlonCourse_GetHeapAllocPtr4(void *);
u8 PokeathlonCourse_GetField1ED(void *);
void PokeathlonCourse_IncrementField1ED(void *);
BOOL Heap_Create(u32, u32, u32);
void Main_SetVBlankIntrCB(void *, void *);
void Main_SetHBlankIntrCB(void *, void *);
void GfGfx_DisableEngineAPlanes(void);
void GfGfx_DisableEngineBPlanes(void);
void ov96_022117CC(void);
void *PokeathlonCourse_AllocPtr4FromHeap(void *, u32);
void MI_CpuFill8(void *, u8, u32);
void *Heap_Alloc(u32, u32);
void *BgConfig_Alloc(u32);
void ov96_021E6670(void *, u32);
void ov96_021E92B0(void *, u32, u32, u32, u32);
void NNS_G2dInitOamManagerModule(void);
void *OamManager_Create(u32, u32, u32, u32, u32, u32, u32, u32, u32);
void FontID_Alloc(u32, u32);
void ov96_022118C4(void *);
void ov96_0221362C(void *);
void ov96_022140F4(void *);
void ov96_02214044(void *, u8, u32);
void ov96_022141F8(void *);
void GfGfx_SwapDisplay(void);
void *ov96_0221464C(u32, void *, void *);
u32 PokeathlonCourse_GetParticipantCount(void *);
u32 PokeathlonCourse_GetMode(void *);
void *ov96_02214A24(u32, u32, u32);
void *ov96_021E9A78(u32, u32, u32);
void ov96_021E64B8(void *);
void *ov96_021EB180(u32, void *);
void ov96_021EB5C8(void *, u32, u32, u32, u32);
u32 ov96_021EB5E8(void *);
void *ov96_021EA854(u32, u32, u32, void *, u32);
void ov96_021EB29C(void *, u32, u32);
void ov96_021EB2BC(void *, u32, u32, u32, u32);
void ov96_021EB2F4(void *, u32, u32, u32, u32, u32);
void ov96_021EB334(void *, u32, u32, u32);
void ov96_021EB36C(void *, u32, u32, u32);
void ov96_021EB3A4(void *);
u64 _s32_div_f(s32, s32);
void *ov96_021EB3E4(void *, u32, u32, u32, u32);
void ov96_021EB630(void *, u32);
void ov96_021EB564(void *, u32);
void ov96_02213444(void *);
void ov96_021EB588(void *, void *);
void ov96_021EB52C(void *, u32, u32);
void ov96_021EB5AC(void *, u16, u32);
void **ov96_021E6290(void *, u32, void *, void *);
void Sprite_SetDrawPriority(void *, u32);
void ov96_02214718(void *, void *, void *);
void ov96_021E6168(void *, u32, u32, void *);
void *ov96_021E60C0(void *, u32, u32);
u32 ov96_021E6108(void *);
void ov96_021EA8A8(void *, u32, void *, void *, u32, u32);
BOOL ov96_021EAA00(void *);
u32 ov96_021E5F24(void *);
void PokeathlonCourse_SetVBlankIntrCB(void *);
void PokeathlonCourse_SetField1F4(void *, u32);
void ReadWholeNarcMemberByIdPair(void *, u32, u32);
void *ov96_021EAA04(void *, u8);
void ov96_021EAB38(void *, u32);
u32 ov96_021E6138(void *);
void ov96_021EAF70(void *, u32, u32);
void *ov96_021EAA20(void *);
void *ov96_021EAF8C(void *);
void ov96_021E90FC(void *);
void ov96_021EAC0C(void *, u32);
void ov96_021EAF94(void *, u32, u32);
u32 ov96_021E6104(void);
void ov96_021EAF6C(void *, u32);
void ov96_021EB0A4(void *, u32, u32, void *, void *);
void ov96_021EABA8(void *, u32);
void ov96_021EABDC(void *, u32);
void ov96_021E64F8(void *, void *, void *, u32, u32);
void ov96_021E634C(void *, u32, void *, void *, u32, u32, void *);
void ov96_0221359C(void *, void *, u8, u8, void *);
void ov96_02214A6C(void *, u8, void *);
void ov96_02214B74(void *, void *);
void ov96_02214A9C(void *);
void VEC_Normalize(void *, void *);
u8 *PokeathlonCourse_GetDataCopyArea(void *);
void *ov96_021E8A20(void *);
void ov96_02211DE4(void *, void *);
void ov96_02211A24(void *);
void ov96_022147FC(void *);
void GfGfx_EngineATogglePlanes(u32, u32);
void GfGfx_EngineBTogglePlanes(u32, u32);
void ov96_0221490C(void *, u32);
void sub_0203A994(u32);
void BeginNormalPaletteFade(u32, u32, u32, u32, u32, u32, u32);
BOOL IsPaletteFadeFinished(void);

#define F32(p, off) (*(u32 *)((u8 *)(p) + (off)))
#define FPT(p, off) (*(void **)((u8 *)(p) + (off)))
#define F16(p, off) (*(u16 *)((u8 *)(p) + (off)))
#define F8(p, off) (*(u8 *)((u8 *)(p) + (off)))

/* The asm keeps its locals in a 0x294-byte frame under {r4-r7, lr}, so the frame starts at entry_sp-0x2a8. S mirrors it:
   STK(T, off) is the asm's [sp, #off]. Two stack accesses use an unchecked index (the table at sp+0x9c read with
   ov96_021E6138's result, and the halfword pairs written at sp+0xb4 + 4*remainder); STKX reproduces them: inside
   the frame it is the S slot, outside it the same absolute address (entry sp = frame address + 8 under the
   check's clang -O0 Thumb build), so an out-of-table index reads and writes what the original does. */
typedef struct {
    u32 w[0x294 / 4];
} UnkStruct_ov96_02210C98_Frame;

#define SB(off) ((u8 *)S.w + (off))
#define STK(T, off) (*(T *)SB(off))
#define STKX(T, off) (*(T *)(((u32)(off) < 0x294) ? SB((u32)(off)) : ((u8 *)entrySp - 0x2a8 + (u32)(off))))

BOOL ov96_02210C98(void *course)
{
    UnkStruct_ov96_02210C98_Frame S;
    u8 *entrySp;
    u8 *work;
    u8 *alloc;
    u8 *entry;
    u8 *entries;
    u8 *obj;
    u8 *p;
    u8 *q;
    u8 *r;
    void *sub;
    u32 quot;
    u32 rem;
    u32 i;
    u32 j;
    u32 m;
    u32 a;
    u32 b;
    u32 c;
    u32 idx;
    u32 x;
    u32 y;
    u32 saved;
    u64 dv;
    u8 *d3d8;
    u8 *d4b4;
    u8 *d3a8;
    u16 *shorts;
    u32 pri;

    entrySp = (u8 *)__builtin_frame_address(0) + 8;
    work = (u8 *)PokeathlonCourse_GetHeapAllocPtr4(course);
    switch (PokeathlonCourse_GetField1ED(course)) {
    case 0:
        Heap_Create(0x5c, 0x93, 0x50000);
        Main_SetVBlankIntrCB(0, 0);
        Main_SetHBlankIntrCB(0, 0);
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        *(volatile u32 *)0x04000000 &= 0xFFFFE0FF;
        *(volatile u32 *)0x04001000 &= 0xFFFFE0FF;
        ov96_022117CC();
        alloc = (u8 *)PokeathlonCourse_AllocPtr4FromHeap(course, 0x820);
        MI_CpuFill8(alloc, 0, 0x820);
        FPT(alloc, 0x81c) = Heap_Alloc(0x93, 0x28);
        MI_CpuFill8(FPT(alloc, 0x81c), 0, 0x28);
        FPT(alloc, 4) = BgConfig_Alloc(0x93);
        ov96_021E6670(course, 8);
        STK(u32, 0x108) = 0x85;
        STK(u32, 0x10c) = 0x40000;
        STK(u32, 0x110) = 0x4000;
        STK(u32, 0x114) = 0x93;
        ov96_021E92B0(SB(0x108), 0x10, 0x93, 0x300010, 0x10);
        NNS_G2dInitOamManagerModule();
        OamManager_Create(0, 0x7e, 0, 0x20, 1, 0x7e, 0, 0x20, 0x93);
        F32(alloc, 0x58) = 0x93;
        FontID_Alloc(4, 0x93);
        ov96_022118C4(FPT(alloc, 4));
        ov96_0221362C(alloc);
        ov96_022140F4(course);
        {
            u8 k;
            for (k = 0; k < 4; k = k + 1) {
                ov96_02214044(alloc, k, 0);
            }
        }
        ov96_022141F8(alloc);
        F8(gSystem, 0x69) = 1;
        GfGfx_SwapDisplay();
        PokeathlonCourse_IncrementField1ED(course);
        return 0;
    case 1:
        FPT(work, 0x750) = ov96_0221464C(F32(work, 0x58), FPT(work, 4), course);
        saved = PokeathlonCourse_GetParticipantCount(course);
        FPT(work, 0x74c) = ov96_02214A24(F32(work, 0x58), 4 - saved, PokeathlonCourse_GetMode(course));
        FPT(work, 0x744) = ov96_021E9A78(F32(work, 0x58), 0xAAF, 1);
        ov96_021E64B8(course);
        PokeathlonCourse_IncrementField1ED(course);
        return 0;
    case 2:
        {
            const u32 *src = (const u32 *)ov96_0221D238;
            STK(u32, 0xfc) = src[0];
            STK(u32, 0x100) = src[1];
            STK(u32, 0x104) = src[2];
        }
        FPT(work, 0) = ov96_021EB180(F32(work, 0x58), SB(0xfc));
        ov96_021EB5C8(FPT(work, 0), 0, 0, 0, 0x200000);
        sub = (void *)(u32)ov96_021EB5E8(FPT(work, 0));
        FPT(work, 0x748) = ov96_021EA854(F32(work, 0x58), 0xc, 8, FPT(work, 0x744), (u32)sub);
        ov96_021EB29C(FPT(work, 0), 0, 0x65);
        ov96_021EB29C(FPT(work, 0), 1, 0x66);
        ov96_021EB2BC(FPT(work, 0), 0xec, 0x12, 0x65, 1);
        ov96_021EB2F4(FPT(work, 0), 0xec, 0xf, 0x65, 1, 2);
        ov96_021EB334(FPT(work, 0), 0xec, 0x11, 0x65);
        ov96_021EB36C(FPT(work, 0), 0xec, 0x10, 0x65);
        ov96_021EB2BC(FPT(work, 0), 0xec, 0xe, 0x66, 2);
        ov96_021EB2F4(FPT(work, 0), 0xec, 0xb, 0x66, 2, 1);
        ov96_021EB334(FPT(work, 0), 0xec, 0xd, 0x66);
        ov96_021EB36C(FPT(work, 0), 0xec, 0xc, 0x66);
        ov96_021EB3A4(FPT(work, 0));
        for (i = 0; (s32)i < 12; i++) {
            dv = _s32_div_f(i, 3);
            quot = (u32)dv;
            dv = _s32_div_f(i, 3);
            rem = (u32)(dv >> 32);
            entry = work + quot * 0x174 + rem * 0x7c;
            sub = ov96_021EB3E4(FPT(work, 0), 1, 1, 0x65, 2);
            FPT(entry, 0x60) = sub;
            ov96_021EB630(sub, 5);
            for (j = 0; (s32)j < 3; j++) {
                sub = ov96_021EB3E4(FPT(work, 0), 1, 1, 0x65, 7);
                FPT(entry, 0x64) = sub;
                ov96_021EB630(sub, 0x2f);
                entry = entry + 4;
            }
        }
        obj = work + 0x62c;
        for (i = 0; (s32)i < 2; i++) {
            STK(u32, 0xf0) = 0;
            STK(u32, 0xf4) = 0;
            STK(u32, 0xf8) = 0;
            FPT(obj, 0) = ov96_021EB3E4(FPT(work, 0), 1, 1, 0x65, 3);
            FPT(obj, 4) = ov96_021EB3E4(FPT(work, 0), 1, 1, 0x65, 8);
            ov96_021EB564(FPT(obj, 0), 0xa);
            ov96_021EB564(FPT(obj, 4), 0xd);
            ov96_021EB630(FPT(obj, 0), 0x2e);
            ov96_021EB630(FPT(obj, 4), 0x2d);
            ov96_02213444(obj);
            F8(obj, 0x39) = 0;
            STK(u32, 0xf0) = 0x80000;
            STK(u32, 0xf4) = 0x68000;
            ov96_021EB588(FPT(obj, 0), SB(0xf0));
            ov96_021EB588(FPT(obj, 4), SB(0xf0));
            F32(obj, 8) = STK(u32, 0xf0);
            F32(obj, 0xc) = STK(u32, 0xf4);
            F32(obj, 0x10) = STK(u32, 0xf8);
            F8(obj, 0x42) = 7;
            if (i == 0) {
                ov96_021EB52C(FPT(obj, 0), 1, 1);
                F8(obj, 0x38) = 1;
            }
            obj = obj + 0x4c;
        }
        STK(u16, 0x70) = *(const u16 *)(ov96_0221D1F4 + 0xc);
        STK(u16, 0x72) = *(const u16 *)(ov96_0221D1F4 + 0xe);
        STK(u16, 0x74) = *(const u16 *)(ov96_0221D1F4 + 0x10);
        STK(u16, 0x76) = *(const u16 *)(ov96_0221D1F4 + 0x12);
        {
            const u32 *src = (const u32 *)ov96_0221D3D8;
            for (i = 0; i < 12; i++) {
                STK(u32, 0xc0 + i * 4) = src[i];
            }
        }
        d3d8 = SB(0xc0);
        shorts = (u16 *)SB(0x70);
        d4b4 = (u8 *)ov96_0221D4B4;
        d3a8 = (u8 *)ov96_0221D3A8;
        p = work;
        c = 2;
        for (m = 0; (s32)m < 4; m++) {
            FPT(p, 0x6c4) = ov96_021EB3E4(FPT(work, 0), 1, 1, 0x65, 5);
            ov96_021EB52C(FPT(p, 0x6c4), 1, 1);
            ov96_021EB564(FPT(p, 0x6c4), 1);
            ov96_021EB588(FPT(p, 0x6c4), d3d8);
            ov96_021EB5AC(FPT(p, 0x6c4), *shorts, 1);
            ov96_021EB630(FPT(p, 0x6c4), 3);
            q = d4b4;
            for (j = 0; (s32)j < 2; j++) {
                sub = ov96_021EB3E4(FPT(work, 0), 1, 1, 0x65, 6);
                ov96_021EB52C(sub, 1, 1);
                ov96_021EB564(sub, j + c);
                ov96_021EB588(sub, q);
                ov96_021EB630(sub, 0x67);
                q = q + 0xc;
            }
            FPT(p, 0x6d4) = ov96_021EB3E4(FPT(work, 0), 1, 1, 0x65, 0xb);
            ov96_021EB588(FPT(p, 0x6d4), d3a8);
            ov96_021EB630(FPT(p, 0x6d4), 2);
            FPT(p, 0x6e4) = ov96_021EB3E4(FPT(work, 0), 1, 1, 0x65, 0xc);
            ov96_021EB588(FPT(p, 0x6e4), d3d8);
            ov96_021EB630(FPT(p, 0x6e4), 0x66);
            p = p + 4;
            d3d8 = d3d8 + 0xc;
            shorts = shorts + 1;
            c = c + 2;
            d4b4 = d4b4 + 0x18;
            d3a8 = d3a8 + 0xc;
        }
        {
            void **spr = ov96_021E6290(course, 0, FPT(work, 0x744), FPT(work, 0));
            Sprite_SetDrawPriority(*spr, 1);
        }
        ov96_02214718(FPT(work, 0), FPT(work, 0x750), FPT(work, 0x744));
        PokeathlonCourse_IncrementField1ED(course);
        return 0;
    case 3:
        for (i = 0; (s32)i < 12; i++) {
            dv = _s32_div_f(i, 3);
            rem = (u32)(dv >> 32);
            dv = _s32_div_f(i, 3);
            quot = (u32)dv;
            ov96_021E6168(course, quot, rem, SB(0x1d4 + i * 0x10));
            STK(u32, 0x1a4 + i * 4) = ov96_021E6108(ov96_021E60C0(course, quot, rem));
        }
        STK(u32, 0x190) = 0;
        STK(u32, 0x194) = 1;
        STK(u32, 0x198) = 0;
        STK(u32, 0x19c) = 1;
        STK(u32, 0x1a0) = 1;
        ov96_021EA8A8(FPT(work, 0x748), 0xc, SB(0x1d4), SB(0x190), 0, 0);
        PokeathlonCourse_IncrementField1ED(course);
        return 0;
    case 4:
        if (ov96_021EAA00(FPT(work, 0x748)) == 0) {
            return 0;
        }
        saved = ov96_021E5F24(course);
        PokeathlonCourse_SetVBlankIntrCB(FPT(work, 4));
        PokeathlonCourse_SetField1F4(course, 1);
        ReadWholeNarcMemberByIdPair(SB(0x9c), 0xaa, 0xb);
        entries = work + 0x5c;
        for (i = 0; (s32)i < 12; i++) {
            obj = (u8 *)ov96_021EAA04(FPT(work, 0x748), (u8)i);
            ov96_021EAB38(obj, 1);
            dv = _s32_div_f(i, 3);
            quot = (u32)dv;
            dv = _s32_div_f(i, 3);
            rem = (u32)(dv >> 32);
            idx = ov96_021E6138(ov96_021E60C0(course, quot, rem));
            ov96_021EAF70(obj, STKX(u32, 0x9c + idx * 8 - 8), STKX(u32, 0x9c + idx * 8 - 4));
            obj = (u8 *)ov96_021EAA04(FPT(work, 0x748), (u8)i);
            sub = ov96_021EAA20(obj);
            dv = _s32_div_f(i, 3);
            rem = (u32)(dv >> 32);
            dv = _s32_div_f(i, 3);
            quot = (u32)dv;
            entry = entries + quot * 0x174 + rem * 0x7c;
            FPT(entry, 0) = obj;
            FPT(entry, 0x20) = ov96_021EAF8C(obj);
            F32(entry, 0x78) = 0;
            ov96_021E90FC(sub);
            x = *(const u16 *)(ov96_0221D408 + quot * 0xc + rem * 4);
            y = *(const u16 *)(ov96_0221D408 + quot * 0xc + rem * 4 + 2);
            F16(entry, 0x5c) = 2;
            ov96_021EAC0C(obj, 2);
            ov96_021EAF94(obj, x, y);
            ov96_021EAF6C(obj, ov96_021E6104());
            ov96_021EB0A4(obj, x, y, SB(0x6c), SB(0x68));
            F32(entry, 0x14) = STK(u32, 0x6c) << 12;
            F32(entry, 0x18) = STK(u32, 0x68) << 12;
            F32(entry, 0x30) = STK(u32, 0x6c) << 12;
            F32(entry, 0x34) = STK(u32, 0x68) << 12;
            F32(entry, 0x24) = STK(u32, 0x6c) << 12;
            F32(entry, 0x28) = STK(u32, 0x68) << 12;
            if (quot == ov96_021E5F24(course)) {
                ov96_021EABA8(obj, 8);
            } else {
                ov96_021EABA8(obj, 0x10);
            }
            ov96_021EABDC(obj, 0x14);
            if (quot == saved) {
                STKX(u16, 0xb4 + rem * 4) = STK(u32, 0x6c);
                STKX(u16, 0xb4 + rem * 4 + 2) = STK(u32, 0x68);
                ov96_021E64F8(course, obj, FPT(work, 0x744), ov96_021EB5E8(FPT(work, 0)), 1);
            }
        }
        ov96_021E634C(course, 0, FPT(work, 0x744), FPT(work, 0), 1, 3, SB(0xb4));
        if (ov96_021E5F24(course) == 0) {
            ReadWholeNarcMemberByIdPair(SB(0x118), 0xaa, 8);
            entries = work + 0x5c;
            b = 0;
            for (a = 0; (s32)a < 4; a++) {
                F8(work + a, 0x734) = 0xc;
                r = entries;
                for (c = 0; (s32)c < 3; c++) {
                    ov96_0221359C(course, SB(0x118), (u8)a, (u8)c, r);
                    ov96_02214A6C(FPT(work, 0x74c), (u8)(c + b), r);
                    r = r + 0x7c;
                }
                entries = entries + 0x174;
                b = b + 3;
            }
            ov96_02214B74(FPT(work, 0x74c), work + 0x62c);
            ov96_02214A9C(FPT(work, 0x74c));
            {
                const u32 *src = (const u32 *)ov96_0221D220;
                STK(u32, 0x90) = src[0];
                STK(u32, 0x94) = src[1];
                STK(u32, 0x98) = src[2];
            }
            VEC_Normalize(SB(0x90), SB(0x90));
            {
                const u32 *src = (const u32 *)ov96_0221D250;
                STK(u32, 0x84) = src[0];
                STK(u32, 0x88) = src[1];
                STK(u32, 0x8c) = src[2];
            }
            for (i = 0; i < 3; i++) {
                F32(work, 0x754 + i * 4) = STK(u32, 0x84 + i * 4);
            }
            for (i = 0; i < 3; i++) {
                F32(work, 0x760 + i * 4) = STK(u32, 0x84 + i * 4);
            }
            F32(work, 0x760) = F32(work, 0x760) * (u32)-1;
            {
                const u32 *src = (const u32 *)ov96_0221D208;
                STK(u32, 0x78) = src[0];
                STK(u32, 0x7c) = src[1];
                STK(u32, 0x80) = src[2];
            }
            for (i = 0; i < 3; i++) {
                F32(work, 0x76c + i * 4) = STK(u32, 0x78 + i * 4);
            }
            for (i = 0; i < 3; i++) {
                F32(work, 0x778 + i * 4) = STK(u32, 0x78 + i * 4);
            }
            F32(work, 0x77c) = F32(work, 0x77c) * (u32)-1;
            for (i = 0; i < 3; i++) {
                F32(work, 0x784 + i * 4) = STK(u32, 0x90 + i * 4);
            }
            for (i = 0; i < 3; i++) {
                F32(work, 0x790 + i * 4) = STK(u32, 0x90 + i * 4);
            }
            F32(work, 0x790) = F32(work, 0x790) * (u32)-1;
            for (i = 0; i < 3; i++) {
                F32(work, 0x79c + i * 4) = STK(u32, 0x90 + i * 4);
            }
            F32(work, 0x7a0) = F32(work, 0x7a0) * (u32)-1;
            for (i = 0; i < 3; i++) {
                F32(work, 0x7a8 + i * 4) = STK(u32, 0x90 + i * 4);
            }
            F32(work, 0x7a8) = F32(work, 0x7a8) * (u32)-1;
            F32(work, 0x7ac) = F32(work, 0x7ac) * (u32)-1;
        }
        if (ov96_021E5F24(course) == 0) {
            ov96_02211DE4(work, ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(course) + 0x28));
        }
        ov96_02211A24(work);
        ov96_022147FC(FPT(work, 0x750));
        GfGfx_EngineATogglePlanes(0x10, 1);
        GfGfx_EngineBTogglePlanes(0x10, 1);
        F32(work, 0x738) = 0xa8c;
        ov96_0221490C(FPT(work, 0x750), F32(work, 0x738));
        sub_0203A994(2);
        BeginNormalPaletteFade(2, 3, 3, 0, 6, 1, F32(work, 0x58));
        PokeathlonCourse_IncrementField1ED(course);
        return 0;
    case 5:
        if (IsPaletteFadeFinished() == 0) {
            return 0;
        }
        return 1;
    }
    return 0;
}
