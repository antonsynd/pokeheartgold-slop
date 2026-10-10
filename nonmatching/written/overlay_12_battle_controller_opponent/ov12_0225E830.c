typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef int BOOL;

void *BattleSystem_GetPaletteData(void *);
void *BattleSystem_GetBattleInput(void *);
u32 BattleInput_GetKeyPressed(void *);
void *BattleSystem_GetMessageIcon(void *);
void sub_0201649C(void *, u32);
void PaletteData_BeginPaletteFade(void *, u32, u32, u32, u32, u32, u32);
u32 PaletteData_GetSelectedBuffersBitmask(void *);
void ov12_02237B0C(void *);
void *Heap_Alloc(u32, u32);
void *memset(void *, int, u32);
void *BattleSystem_GetPlayerProfile(void *, u32);
void *BattleSystem_GetBag(void *);
void ov08_022225D4(void *);
void *BattleSystem_GetParty(void *, u32);
u32 BattleSystem_GetBattleType(void *);
void Party_InitWithMaxSize(void *, u32);
u32 Party_GetCount(void *);
void *BattleSystem_GetPartyMon(void *, u32, u32);
void Party_AddMon(void *, void *);
u32 BattleSystem_GetBattlerIdPartner(void *, u32);
void ov10_0221BE20(void *);
void ov12_02237BB8(void *);
void BattleInput_SetKeyPressed(void *, u32);
BOOL BattleSystem_AreBattleAnimationsOn(void *);
void sub_0200602C(u32, s32);
u32 GetItemAttr(u32, u32, u32);
void ov12_02237ED0(void *, u32);
void ov12_022632C0(void *, u32, u32);
void ov12_0226430C(void *, u32, u32);
void Heap_Free(void *);
void SysTask_Destroy(void *);
void *BattleSystem_GetMessageLoader(void *);
u32 BattleSystem_GetTextFrameDelay(void *);
u32 BattleSystem_PrintBattleMessage(void *, void *, void *, u32);
BOOL TextPrinterCheckActive(u32);
void ov12_022643C8(void *, u32, void *, u32, u32, u32, u32, u32);
void *BattleSystem_GetOpponentData(void *, u32);
void *ov12_0223A8DC(void *);
void ov12_02261B80(void *, void *, void *, void *);
void *BattleSystem_GetHpBar(void *, u32);
void MI_CpuFill8(void *, u8, u32);
u32 ov12_0223AB0C(void *, u32);
u32 BattleHpBar_Util_GetBarTypeFromBattlerSide(u32, u32);
u32 GetMonData(void *, u32, u32);
void ov12_02264DCC(void *, u32);
u32 ov12_02264E00(void *);
void ov12_0226498C(void *, u32, u32);
void ov07_0221C394(void *);
u32 ov07_0221C3B0(void *);
void ov07_0221C3C0(void *);

#define F32(p, off) (*(u32 *)((u8 *)(p) + (off)))
#define FPT(p, off) (*(void **)((u8 *)(p) + (off)))
#define F16(p, off) (*(u16 *)((u8 *)(p) + (off)))
#define F8(p, off) (*(u8 *)((u8 *)(p) + (off)))

/* The asm keeps its message/template structs in a 0x214-byte frame; STK(T, off) is its [sp, #off] (the unwritten
   bytes of those structs are read as zero from the stack, as in the original). */
typedef struct {
    u32 w[0x214 / 4];
} UnkStruct_ov12_0225E830_Frame;

#define SB(off) ((u8 *)S.w + (off))
#define STK(T, off) (*(T *)SB(off))

/* data: +0 battle system, +4 bag context, +8 party menu holder (+4 party menu context, +0xc u8[] per battler),
   +0xc u8, +0xd battler, +0xe state, +0xf battle type, +0x10 cursor, +0x11 text printer, +0x12 next state,
   +0x14..0x16 flags, +0x17 delay, +0x18 u8[6][..] party order, +0x30 u8[4] */
void ov12_0225E830(void *task, void *data)
{
    UnkStruct_ov12_0225E830_Frame S;
    void *pal;
    void *bsys;
    u8 *bag;
    u8 *pm;
    u8 *hp;
    void *party;
    void *mon;
    void *loader;
    u32 item;
    u32 battler;
    u32 r7;
    u32 r6;
    u32 r5;
    u32 delay;
    u32 x;
    u8 *p;

    pal = BattleSystem_GetPaletteData(FPT(data, 0));
    if (F8(data, 0xe) > 0x1e) {
        return;
    }
    bsys = FPT(data, 0);
    battler = F8(data, 0xd);
    switch (F8(data, 0xe)) {
    case 0:
        F8(data, 0x10) = BattleInput_GetKeyPressed(BattleSystem_GetBattleInput(FPT(data, 0)));
        sub_0201649C(BattleSystem_GetMessageIcon(FPT(data, 0)), 1);
        PaletteData_BeginPaletteFade(pal, 5, 0xc00, (u32)-8, 0, 7, 0);
        PaletteData_BeginPaletteFade(pal, 0xa, 0xFFFF, (u32)-8, 0, 0x10, 0);
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 1:
        if (PaletteData_GetSelectedBuffersBitmask(pal) != 0) {
            return;
        }
        ov12_02237B0C(FPT(data, 0));
        FPT(data, 4) = Heap_Alloc(5, 0x34);
        memset(FPT(data, 4), 0, 0x34);
        FPT(FPT(data, 4), 0) = FPT(data, 0);
        FPT(FPT(data, 4), 4) = BattleSystem_GetPlayerProfile(FPT(data, 0), F8(data, 0xd));
        F32(FPT(data, 4), 0xc) = 5;
        F8(FPT(data, 4), 0x26) = 0;
        FPT(FPT(data, 4), 8) = BattleSystem_GetBag(FPT(data, 0));
        F32(FPT(data, 4), 0x10) = F8(data, 0xd);
        F8(FPT(data, 4), 0x25) = F8(data, 0x10);
        F8(FPT(data, 4), 0x22) = F8(data, 0x14);
        F8(FPT(data, 4), 0x23) = F8(data, 0x15);
        F8(FPT(data, 4), 0x24) = F8(data, 0x16);
        F32(FPT(data, 4), 0x18) = F8(data, 0x30 + F8(data, 0xd));
        ov08_022225D4(FPT(data, 4));
        F8(data, 0xe) = 3;
        return;
    case 2:
        F8(FPT(data, 4), 0x25) = F8(data, 0x10);
        ov08_022225D4(FPT(data, 4));
        F8(data, 0xe) = F8(data, 0xe) + 1;
        /* fall through */
    case 3:
        bag = (u8 *)FPT(data, 4);
        if (F8(bag, 0x26) == 0) {
            return;
        }
        F8(bag, 0x26) = 0;
        F8(data, 0x10) = F8(FPT(data, 4), 0x25);
        bag = (u8 *)FPT(data, 4);
        if (F16(bag, 0x1c) == 0) {
            F8(data, 0xe) = 6;
            return;
        }
        if (F8(bag, 0x1e) > 3) {
            return;
        }
        switch (F8(bag, 0x1e)) {
        case 0:
        case 1:
            F8(data, 0xe) = 4;
            return;
        case 2:
        case 3:
            F8(data, 0xe) = 6;
            return;
        }
        return;
    case 4:
        party = BattleSystem_GetParty(FPT(data, 0), F8(data, 0xd));
        if ((BattleSystem_GetBattleType(FPT(data, 0)) & 2) && !(BattleSystem_GetBattleType(FPT(data, 0)) & 8)) {
            r7 = F8(data, 0xd) & 1;
        } else {
            r7 = F8(data, 0xd);
        }
        Party_InitWithMaxSize(FPT(FPT(FPT(data, 8), 4), 0), 6);
        r6 = 0;
        if ((s32)Party_GetCount(party) > 0) {
            p = (u8 *)data + 6 * r7;
            do {
                mon = BattleSystem_GetPartyMon(FPT(data, 0), r7, F8(p, 0x18));
                Party_AddMon(FPT(FPT(FPT(data, 8), 4), 0), mon);
                F8(FPT(FPT(data, 8), 4), r6 + 0x2c) = F8(p, 0x18);
                p = p + 1;
                r6 = r6 + 1;
            } while ((s32)r6 < (s32)Party_GetCount(party));
        }
        pm = (u8 *)FPT(FPT(data, 8), 4);
        FPT(pm, 8) = FPT(data, 0);
        F32(FPT(FPT(data, 8), 4), 0xc) = 5;
        F8(FPT(FPT(data, 8), 4), 0x11) = 0;
        F8(FPT(FPT(data, 8), 4), 0x36) = 0;
        F16(FPT(FPT(data, 8), 4), 0x24) = 0;
        F8(FPT(FPT(data, 8), 4), 0x35) = 2;
        F16(FPT(FPT(data, 8), 4), 0x22) = F16(FPT(data, 4), 0x1c);
        F8(FPT(FPT(data, 8), 4), 0x33) = F8(FPT(data, 4), 0x1e);
        F32(FPT(FPT(data, 8), 4), 0x28) = F32(FPT(data, 4), 0x10);
        F8(FPT(FPT(data, 8), 4), 0x32) = F8(data, 0x10);
        F8(FPT(FPT(data, 8), 4), 0x14) = F8(FPT(data, 8), F8(data, 0xd) + 0xc);
        p = (u8 *)FPT(data, 8);
        x = BattleSystem_GetBattlerIdPartner(FPT(data, 0), F8(data, 0xd));
        F8(FPT(p, 4), 0x15) = F8(p + x, 0xc);
        if (F8(data, 0xf) == 4) {
            x = BattleSystem_GetBattlerIdPartner(FPT(data, 0), F8(data, 0xd));
            F32(FPT(FPT(data, 8), 4), 0x18) = F8(data, 0x30 + x);
            x = F8(data, 0xd);
        } else {
            F32(FPT(FPT(data, 8), 4), 0x18) = F8(data, 0x30 + F8(data, 0xd));
            x = BattleSystem_GetBattlerIdPartner(FPT(data, 0), F8(data, 0xd));
        }
        F32(FPT(FPT(data, 8), 4), 0x1c) = F8(data, 0x30 + x);
        ov10_0221BE20(FPT(FPT(data, 8), 4));
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 5:
        pm = (u8 *)FPT(FPT(data, 8), 4);
        if (F8(pm, 0x36) == 0) {
            return;
        }
        F8(data, 0x10) = F8(pm, 0x32);
        F8(FPT(FPT(data, 8), 4), 0x36) = 0;
        if (F8(FPT(FPT(data, 8), 4), 0x11) == 6) {
            F8(data, 0xe) = 2;
            return;
        }
        F8(data, 0xe) = 6;
        return;
    case 6:
        ov12_02237BB8(FPT(data, 0));
        BattleInput_SetKeyPressed(BattleSystem_GetBattleInput(FPT(data, 0)), F8(data, 0x10));
        PaletteData_BeginPaletteFade(pal, 5, 0xc00, (u32)-8, 7, 0, 0);
        PaletteData_BeginPaletteFade(pal, 0xa, 0xFFFF, (u32)-8, 0x10, 0, 0);
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 7:
        if (PaletteData_GetSelectedBuffersBitmask(pal) != 0) {
            return;
        }
        sub_0201649C(BattleSystem_GetMessageIcon(FPT(data, 0)), 0);
        if (F16(FPT(data, 4), 0x1c) == 0) {
            F8(data, 0xe) = 8;
        } else {
            F8(data, 0xe) = 9;
            switch (F8(FPT(data, 4), 0x1e)) {
            case 0:
                pm = (u8 *)FPT(FPT(data, 8), 4);
                if (F8(pm, 0x11) < 2) {
                    if (BattleSystem_GetBattleType(FPT(data, 0)) == 3 || BattleSystem_GetBattleType(FPT(data, 0)) == 0x13) {
                        goto case0_check;
                    }
                }
                if (F8(FPT(FPT(data, 8), 4), 0x11) >= 1) {
                    F8(data, 0xe) = 8;
                    break;
                }
            case0_check:
                if (GetItemAttr(F16(FPT(data, 4), 0x1c), 0x26, 5) == 0) {
                    F8(data, 0xe) = 8;
                    break;
                }
                if (BattleSystem_AreBattleAnimationsOn(FPT(data, 0)) == 1) {
                    F16(data, 0x12) = 0x11;
                } else {
                    sub_0200602C(0x5EC, ~0x74);
                    F16(data, 0x12) = 0x15;
                }
                break;
            case 1:
                item = F16(FPT(data, 4), 0x1c);
                if ((u16)(item + 0xFFE4) <= 1) {
                    F8(data, 0xe) = 8;
                    break;
                }
                pm = (u8 *)FPT(FPT(data, 8), 4);
                if (F8(pm, 0x11) < 2) {
                    if (BattleSystem_GetBattleType(FPT(data, 0)) == 3 || BattleSystem_GetBattleType(FPT(data, 0)) == 0x13) {
                        goto case1_play;
                    }
                }
                if (F8(FPT(FPT(data, 8), 4), 0x11) >= 1) {
                    F8(data, 0xe) = 8;
                    break;
                }
            case1_play:
                if (F16(FPT(data, 4), 0x1c) == 0x17) {
                    if (BattleSystem_AreBattleAnimationsOn(FPT(data, 0)) == 1) {
                        F16(data, 0x12) = 0x11;
                    } else {
                        sub_0200602C(0x5EC, ~0x74);
                        F16(data, 0x12) = 0x15;
                    }
                } else {
                    if (BattleSystem_AreBattleAnimationsOn(FPT(data, 0)) == 1) {
                        F16(data, 0x12) = 0x19;
                    } else {
                        sub_0200602C(0x5EC, ~0x74);
                        F16(data, 0x12) = 0x1d;
                    }
                }
                break;
            case 2:
                F8(data, 0xe) = 8;
                break;
            case 3:
                item = F16(FPT(data, 4), 0x1c);
                if ((u16)(item + 0xFFC1) <= 1) {
                    F8(data, 0xe) = 8;
                    break;
                }
                if (item == 0x37) {
                    if (BattleSystem_AreBattleAnimationsOn(FPT(data, 0)) == 1) {
                        F16(data, 0x12) = 0xd;
                    } else {
                        sub_0200602C(0x5EC, ~0x74);
                        F16(data, 0x12) = 0xf;
                    }
                } else {
                    if (BattleSystem_AreBattleAnimationsOn(FPT(data, 0)) == 1) {
                        F16(data, 0x12) = 0xb;
                    } else {
                        sub_0200602C(0x5EC, ~0x74);
                        F16(data, 0x12) = 0xf;
                    }
                }
                break;
            default:
                break;
            }
        }
        if (F8(data, 0xe) == 8) {
            return;
        }
        ov12_02237ED0(FPT(data, 0), 0);
        return;
    case 8:
        bag = (u8 *)FPT(data, 4);
        if (F16(bag, 0x1c) == 0) {
            STK(u16, 0x1c) = 0xff;
        } else {
            STK(u16, 0x1c) = F16(bag, 0x1c);
            STK(u8, 0x1e) = F8(bag, 0x1e);
            if (F8(bag, 0x1e) <= 1) {
                pm = (u8 *)FPT(FPT(data, 8), 4);
                STK(u8, 0x1f) = F8(pm, F8(pm, 0x11) + 0x2c) + 1;
            }
        }
        ov12_022632C0(FPT(data, 0), F8(data, 0xd), STK(u16, 0x1c) | ((u32)STK(u16, 0x1e) << 16));
        ov12_0226430C(FPT(data, 0), F8(data, 0xd), F8(data, 0xc));
        Heap_Free(FPT(FPT(FPT(data, 8), 4), 0));
        Heap_Free(FPT(FPT(data, 8), 4));
        Heap_Free(FPT(data, 8));
        Heap_Free(FPT(data, 4));
        Heap_Free(data);
        SysTask_Destroy(task);
        return;
    case 9:
        STK(u16, 0x8e) = 0x4B6;
        STK(u8, 0x8d) = 5;
        STK(u32, 0x90) = F16(FPT(data, 4), 0x1c);
        loader = BattleSystem_GetMessageLoader(FPT(data, 0));
        delay = BattleSystem_GetTextFrameDelay(FPT(data, 0));
        F8(data, 0x11) = BattleSystem_PrintBattleMessage(FPT(data, 0), loader, SB(0x8c), delay);
        F8(data, 0x17) = 0x1e;
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 10:
        if (TextPrinterCheckActive(F8(data, 0x11))) {
            return;
        }
        F8(data, 0x17) = F8(data, 0x17) - 1;
        if (F8(data, 0x17) != 0) {
            return;
        }
        F8(data, 0xe) = F16(data, 0x12);
        return;
    case 11:
        ov12_022643C8(FPT(data, 0), 0, SB(0x1b8), 1, 9, F8(data, 0xd), F8(data, 0xd), 0);
        r5 = (u32)BattleSystem_GetOpponentData(FPT(data, 0), F8(data, 0xd));
        ov12_02261B80(FPT(data, 0), (void *)r5, ov12_0223A8DC(FPT(data, 0)), SB(0x1b8));
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 17:
    case 25:
        r5 = F8(FPT(FPT(data, 8), 4), 0x11) << 1;
        ov12_022643C8(FPT(data, 0), 0, SB(0x160), 1, 9, r5, r5, 0);
        r5 = (u32)BattleSystem_GetOpponentData(FPT(data, 0), r5);
        ov12_02261B80(FPT(data, 0), (void *)r5, ov12_0223A8DC(FPT(data, 0)), SB(0x160));
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 13:
        item = F16(FPT(data, 4), 0x1c);
        if (item == 0x37) {
            ov12_022643C8(FPT(data, 0), 0, SB(0x108), 0, 0, F8(data, 0xd), F8(data, 0xd), 0x36);
        } else if (item == 0x38) {
            ov12_022643C8(FPT(data, 0), 0, SB(0x108), 0, 0, F8(data, 0xd), F8(data, 0xd), 0x74);
        } else {
            ov12_022643C8(FPT(data, 0), 0, SB(0x108), 1, 0xc, F8(data, 0xd), F8(data, 0xd), 0);
        }
        r5 = (u32)BattleSystem_GetOpponentData(FPT(data, 0), F8(data, 0xd));
        ov12_02261B80(FPT(data, 0), (void *)r5, ov12_0223A8DC(FPT(data, 0)), SB(0x108));
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 15:
        x = 0x4B3;
        STK(u16, 0x6a) = x;
        STK(u8, 0x69) = 0xc;
        STK(u32, 0x6c) = F8(data, 0xd) | (F8(FPT(data, 8), F8(data, 0xd) + 0xc) << 8);
        item = F16(FPT(data, 4), 0x1c) - 0x37;
        if (item <= 7) {
            switch (item) {
            case 0:
                STK(u16, 0x6a) = x + 1;
                STK(u8, 0x69) = 0;
                break;
            case 1:
                STK(u16, 0x6a) = x + 2;
                STK(u8, 0x69) = 2;
                break;
            case 2:
                STK(u32, 0x70) = 1;
                break;
            case 3:
                STK(u32, 0x70) = 2;
                break;
            case 4:
                STK(u32, 0x70) = 3;
                break;
            case 5:
                STK(u32, 0x70) = 6;
                break;
            case 6:
                STK(u32, 0x70) = 4;
                break;
            case 7:
                STK(u32, 0x70) = 5;
                break;
            }
        }
        loader = BattleSystem_GetMessageLoader(FPT(data, 0));
        delay = BattleSystem_GetTextFrameDelay(FPT(data, 0));
        F8(data, 0x11) = BattleSystem_PrintBattleMessage(FPT(data, 0), loader, SB(0x68), delay);
        F8(data, 0x17) = 0x1e;
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 19:
    case 27:
        r5 = F8(FPT(FPT(data, 8), 4), 0x11) << 1;
        ov12_022643C8(FPT(data, 0), 0, SB(0xb0), 1, 0xe, r5, r5, 0);
        r5 = (u32)BattleSystem_GetOpponentData(FPT(data, 0), r5);
        ov12_02261B80(FPT(data, 0), (void *)r5, ov12_0223A8DC(FPT(data, 0)), SB(0xb0));
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 21:
        pm = (u8 *)FPT(FPT(data, 8), 4);
        r6 = F8(pm, 0x11) << 1;
        r7 = F8(pm, F8(pm, 0x11) + 0x2c);
        hp = (u8 *)BattleSystem_GetHpBar(FPT(data, 0), r6);
        MI_CpuFill8(hp, 0, 1);
        x = ov12_0223AB0C(FPT(data, 0), r6);
        F8(hp, 0x25) = BattleHpBar_Util_GetBarTypeFromBattlerSide(x, BattleSystem_GetBattleType(FPT(data, 0)));
        mon = BattleSystem_GetPartyMon(FPT(data, 0), r6, r7);
        F32(hp, 0x28) = GetMonData(mon, 0xa3, 0) - F16(FPT(FPT(data, 8), 4), 0x20);
        F32(hp, 0x2c) = GetMonData(mon, 0xa4, 0);
        F32(hp, 0x30) = F16(FPT(FPT(data, 8), 4), 0x20);
        if (GetMonData(mon, 0xa0, 0) == 0) {
            F8(hp, 0x4a) = 0;
        }
        ov12_02264DCC(hp, F32(hp, 0x30));
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 22:
        hp = (u8 *)BattleSystem_GetHpBar(FPT(data, 0), F8(FPT(FPT(data, 8), 4), 0x11) << 1);
        if (ov12_02264E00(hp) != 0xFFFFFFFF) {
            return;
        }
        ov12_0226498C(hp, 0, 0x100);
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 23:
        loader = BattleSystem_GetMessageLoader(FPT(data, 0));
        pm = (u8 *)FPT(FPT(data, 8), 4);
        r6 = F8(pm, 0x11) << 1;
        if (F16(pm, 0x20) != 0) {
            STK(u16, 0x46) = 0x4BE;
            STK(u8, 0x45) = 0x11;
            STK(u32, 0x48) = r6 | (F8(FPT(data, 8), r6 + 0xc) << 8);
            STK(u32, 0x4c) = F16(FPT(FPT(data, 8), 4), 0x20);
        } else {
            STK(u16, 0x46) = 0x4E2;
            STK(u8, 0x45) = 2;
            STK(u32, 0x48) = r6 | (F8(FPT(data, 8), r6 + 0xc) << 8);
        }
        delay = BattleSystem_GetTextFrameDelay(FPT(data, 0));
        F8(data, 0x11) = BattleSystem_PrintBattleMessage(FPT(data, 0), loader, SB(0x44), delay);
        F8(data, 0x17) = 0x1e;
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 29:
        pm = (u8 *)FPT(FPT(data, 8), 4);
        r7 = F8(pm, 0x11) << 1;
        r5 = 0;
        hp = (u8 *)BattleSystem_GetHpBar(FPT(data, 0), r7);
        STK(u32, 0x10) = (u32)hp;
        mon = BattleSystem_GetPartyMon(FPT(data, 0), r7, F8(pm, F8(pm, 0x11) + 0x2c));
        if (GetMonData(mon, 0xa0, 0) == 0) {
            F8((u8 *)STK(u32, 0x10), 0x4a) = 0;
        }
        ov12_0226498C((void *)STK(u32, 0x10), F32((u8 *)STK(u32, 0x10), 0x28), 0x100);
        STK(u8, 0x21) = 2;
        STK(u32, 0x24) = r7 | (F8(FPT(data, 8), r7 + 0xc) << 8);
        if (GetItemAttr(F16(FPT(data, 4), 0x1c), 0xf, 5) != 0) {
            r6 = 0;
            r5 = r5 + 1;
        }
        if (GetItemAttr(F16(FPT(data, 4), 0x1c), 0x10, 5) != 0) {
            r6 = 1;
            r5 = r5 + 1;
        }
        if (GetItemAttr(F16(FPT(data, 4), 0x1c), 0x11, 5) != 0) {
            r6 = 2;
            r5 = r5 + 1;
        }
        if (GetItemAttr(F16(FPT(data, 4), 0x1c), 0x12, 5) != 0) {
            r6 = 3;
            r5 = r5 + 1;
        }
        if (GetItemAttr(F16(FPT(data, 4), 0x1c), 0x13, 5) != 0) {
            r6 = 4;
            r5 = r5 + 1;
        }
        if (GetItemAttr(F16(FPT(data, 4), 0x1c), 0x14, 5) != 0) {
            r6 = 5;
            r5 = r5 + 1;
        }
        if (GetItemAttr(F16(FPT(data, 4), 0x1c), 0x15, 5) != 0) {
            r6 = 6;
            r5 = r5 + 1;
        }
        if (r5 != 1) {
            STK(u16, 0x22) = 0x4CD;
        } else if (r6 <= 6) {
            switch (r6) {
            case 0:
                STK(u16, 0x22) = 0x4BA;
                break;
            case 1:
                STK(u16, 0x22) = 0x4B7;
                break;
            case 2:
                STK(u16, 0x22) = 0x4B9;
                break;
            case 3:
                STK(u16, 0x22) = 0x4BB;
                break;
            case 4:
                STK(u16, 0x22) = 0x4B8;
                break;
            case 5:
                STK(u16, 0x22) = 0x4BC;
                break;
            case 6:
                STK(u16, 0x22) = 0x4BD;
                break;
            }
        }
        loader = BattleSystem_GetMessageLoader(FPT(data, 0));
        delay = BattleSystem_GetTextFrameDelay(FPT(data, 0));
        F8(data, 0x11) = BattleSystem_PrintBattleMessage(FPT(data, 0), loader, SB(0x20), delay);
        F8(data, 0x17) = 0x1e;
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 12:
    case 14:
    case 18:
    case 20:
    case 26:
    case 28:
        ov07_0221C394(ov12_0223A8DC(FPT(data, 0)));
        if (ov07_0221C3B0(ov12_0223A8DC(FPT(data, 0))) != 0) {
            return;
        }
        ov07_0221C3C0(ov12_0223A8DC(FPT(data, 0)));
        F8(data, 0xe) = F8(data, 0xe) + 1;
        return;
    case 16:
    case 24:
    case 30:
        if (TextPrinterCheckActive(F8(data, 0x11))) {
            return;
        }
        F8(data, 0x17) = F8(data, 0x17) - 1;
        if (F8(data, 0x17) != 0) {
            return;
        }
        ov12_02237ED0(FPT(data, 0), 1);
        F8(data, 0xe) = 8;
        return;
    }
}
