typedef unsigned char undefined;
typedef unsigned char undefined1;
typedef unsigned short undefined2;
typedef unsigned int undefined3;
typedef unsigned int undefined4;
typedef unsigned long long undefined8;
typedef unsigned char byte;
typedef signed char sbyte;
typedef unsigned short ushort;
typedef unsigned short word;
typedef unsigned int uint;
typedef unsigned int dword;
typedef unsigned int ulong;
typedef unsigned long long ulonglong;
typedef unsigned long long qword;
typedef long long longlong;
typedef unsigned char bool;
typedef int code();
typedef void *pointer;
typedef unsigned short wchar16;
#define true 1
#define false 0
#define CONCAT11(a, b) ((unsigned short)(((unsigned)(a) << 8) | (unsigned char)(b)))
#define CONCAT12(a, b) (((unsigned)(unsigned char)(a) << 16) | (unsigned short)(b))
#define CONCAT13(a, b) (((unsigned)(unsigned char)(a) << 24) | ((unsigned)(b) & 0xffffff))
#define CONCAT21(a, b) (((unsigned)(unsigned short)(a) << 8) | (unsigned char)(b))
#define CONCAT22(a, b) (((unsigned)(unsigned short)(a) << 16) | (unsigned short)(b))
#define CONCAT31(a, b) (((unsigned)(a) << 8) | (unsigned char)(b))
#define CONCAT44(a, b) (((unsigned long long)(unsigned)(a) << 32) | (unsigned)(b))
#define SUB41(x, n) ((unsigned char)((unsigned)(x) >> ((n) * 8)))
#define SUB42(x, n) ((unsigned short)((unsigned)(x) >> ((n) * 8)))
#define SUB81(x, n) ((unsigned char)((unsigned long long)(x) >> ((n) * 8)))
#define SUB84(x, n) ((unsigned)((unsigned long long)(x) >> ((n) * 8)))
#define ZEXT14(x) ((unsigned)(unsigned char)(x))
#define ZEXT24(x) ((unsigned)(unsigned short)(x))
#define ZEXT48(x) ((unsigned long long)(unsigned)(x))
#define SEXT14(x) ((int)(signed char)(x))
#define SEXT24(x) ((int)(short)(x))
#define SEXT48(x) ((long long)(int)(x))
#define CARRY4(a, b) ((unsigned)(a) + (unsigned)(b) < (unsigned)(a))
#define SCARRY4(a, b) ((((int)(a) + (int)(b)) < (int)(a)) != ((int)(b) < 0))
#define SBORROW4(a, b) ((((int)(a) - (int)(b)) > (int)(a)) != ((int)(b) < 0))
#define POPCOUNT(x) __builtin_popcount(x)
#define LZCOUNT(x) ((x) ? __builtin_clz(x) : 32)
undefined4 GfGfx_DisableEngineAPlanes(void);
void * PokeathlonCourse_AllocPtr4FromHeap(void *, unsigned int);
undefined4 ov96_021FCEE0();
undefined4 NNS_G2dInitOamManagerModule(void);
undefined4 Main_SetHBlankIntrCB(void *, void *);
undefined4 MI_CpuFill8(void *, unsigned char, unsigned int);
void * BgConfig_Alloc(int);
undefined4 Heap_Create(int, int, unsigned int);
undefined4 GfGfx_DisableEngineBPlanes(void);
undefined4 PokeathlonCourse_GetField1ED();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 ov96_021E92B0();
undefined4 PokeathlonCourse_SetField3A4();
undefined4 ov96_021E6670();
undefined4 Main_SetVBlankIntrCB(void *, void *);
extern uint  uRam04001000 __asm__("sub_04001000");
extern uint  uRam04000000 __asm__("sub_04000000");
undefined4 ov96_02200E3C();
undefined4 PokeathlonCourse_IncrementField1ED(void *);
undefined4 PokeathlonCourse_GetMode();
undefined4 ov96_021E9A78();
undefined4 ov96_021EB29C();
undefined4 ov96_021FFD4C();
undefined4 ov96_021FCF00();
undefined4 ov96_021FFF3C();
undefined4 ov96_021EA854();
undefined4 ov96_021FD0E4();
undefined4 ov96_022000E4();
undefined4 FontID_Alloc(unsigned char, int);
undefined4 GfGfx_SwapDisplay(void);
undefined4 OamManager_Create(int, int, int, int, int, int, int, int, int);
undefined4 ov96_021EB5C8();
undefined4 ov96_021EB5E8();
undefined4 ov96_021EB180();
unsigned char PokeathlonCourse_GetParticipantCount(void *);
extern unsigned char uRam021d1175 __asm__("sub_021D1175");
undefined4 ov96_02200454();
unsigned long long _s32_div_f(int, int);
undefined4 ov96_02200B04();
undefined4 ov96_021EAA00();
undefined4 PokeathlonCourse_SetVBlankIntrCB(void *);
undefined4 ReadWholeNarcMemberByIdPair(void *, int, int);
undefined4 ov96_021EA8A8();
undefined4 ov96_02200180();
undefined4 ov96_022002F8();
undefined4 ov96_021E6290();
undefined4 PokeathlonCourse_SetField1F4(void *, int);
undefined4 ov96_021EB3A4();
undefined4 ov96_021E6108();
undefined4 Sprite_SetDrawPriority(void *, unsigned int);
undefined4 ov96_021FD128();
undefined4 ov96_021E6168();
undefined4 ov96_022003E8();
undefined4 ov96_021E5F24(void *);
undefined4 ov96_021E60C0();
undefined4 ov96_02200A64();
undefined4 ov96_021E634C();
undefined4 ov96_021EAA04();
void * ov96_021E8A20(void *);
undefined4 ov96_021FDA30();
undefined4 ov96_02200E78();
undefined4 ov96_021EB0A4();
undefined4 ov96_021E6138();
undefined4 ov96_021EAF6C();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ov96_021FEFE8();
undefined4 ov96_021EAC0C();
undefined4 ov96_021FD060();
undefined4 ov96_021FFB7C();
undefined4 ov96_021EAF70();
undefined4 ov96_021EAB38();
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 ov96_021EAF94();
undefined4 ov96_021E6104();
undefined4 ov96_02200E80();
undefined4 GF_heap_c_dummy_return_true(int);
undefined4 GfGfx_EngineBTogglePlanes(unsigned char, unsigned char);
undefined4 GF_AssertFail(void);
undefined4 sub_0203A994(int);
unsigned short LCRandom(void);

/* word at byte offset `off` from the asm's sp, in the stack frame modelled by `pf` (which starts at sp+0x44 and
   runs to the entry stack pointer), or in the caller's memory past it */
static unsigned int PairWord(void *pf, unsigned char *entrySp, unsigned int off)
{
  unsigned int rel = off - 0x44;
  if (rel < 0x270 - 0x44) {
    return *(unsigned int *)((unsigned char *)pf + rel);
  }
  return *(unsigned int *)(entrySp - 0x270 + off);
}

undefined4
ov96_021FC768(undefined *param_1)

{
  undefined2 *puVar1;
  byte bVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  uint uVar5;
  undefined4 uVar6;
  uint uVar7;
  undefined4 uVar8;
  int iVar9;
  undefined *puVar10;
  int iVar11;
  undefined4 extraout_r1;
  int extraout_r1_00;
  undefined4 extraout_r1_01;
  uint extraout_r1_02;
  unsigned long long divRem;
  undefined2 *puVar12;
  uint uVar13;
  undefined2 *puVar14;
  undefined4 *puStack_254;
  undefined4 *puStack_250;
  undefined4 *puStack_24c;
  uint uStack_248;
  /* the asm's stack from sp+0x44 up to the entry stack pointer: x44, x48, x4c, the 24-byte NARC buffer at
     sp+0x50 and the rest of the frame.  ov96_021E6138() picks an unchecked pair index into the table that starts
     at sp+0x48, so the read can run over the whole frame and past it. */
  struct { unsigned int x44; unsigned int x48; unsigned int x4c; unsigned char buf[24]; unsigned char rest[0x208]; } pf;
  unsigned char *entrySp;
  undefined2 auStack_208 [24];
  undefined4 uStack_1d8;
  undefined4 uStack_1d4;
  undefined4 uStack_1d0;
  undefined4 uStack_1cc;
  undefined4 uStack_1c8;
  undefined4 uStack_1c4;
  undefined4 uStack_1c0;
  undefined auStack_1bc [160];
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined4 uStack_114;
  undefined4 uStack_110;
  undefined4 uStack_10c;
  undefined2 auStack_d8 [96];
  undefined4 uStack_18;
  { uint nug_r3; int nug_k; __asm__ volatile("movs %0, r3" : "=l"(nug_r3) : : "cc");
    for (nug_k = 0; nug_k < (int)sizeof(uStack_18) && 0 + nug_k < 4; nug_k++) ((unsigned char *)&uStack_18)[nug_k] = (unsigned char)(nug_r3 >> (8 * (0 + nug_k)));
  }

  { unsigned int callerR4, callerR5, callerR6, *saved = (unsigned int *)(pf.rest + 0x208 - 24);
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");
    /* clang -O0 Thumb: the frame record (caller's r7, lr) sits just below the entry stack pointer */
    entrySp = (unsigned char *)__builtin_frame_address(0) + 8;
    saved[0] = uStack_18; /* the r3 pushed by the asm's prologue, read above */
    saved[1] = callerR4;
    saved[2] = callerR5;
    saved[3] = callerR6;
    saved[4] = *(unsigned int *)__builtin_frame_address(0);
    saved[5] = (unsigned int)__builtin_return_address(0);
  }
  puVar3 = (undefined4 *)PokeathlonCourse_GetHeapAllocPtr4(param_1);
  bVar2 = PokeathlonCourse_GetField1ED(param_1);
  switch(bVar2) {
  case 0:
    Heap_Create(0x5c,0x90,0x68000);
    Main_SetVBlankIntrCB((undefined *)0x0,(undefined *)0x0);
    Main_SetHBlankIntrCB((undefined *)0x0,(undefined *)0x0);
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    uRam04000000 = uRam04000000 & 0xffffe0ff;
    uRam04001000 = uRam04001000 & 0xffffe0ff;
    ov96_021FCEE0();
    puVar3 = (undefined4 *)PokeathlonCourse_AllocPtr4FromHeap(param_1,0x648);
    MI_CpuFill8((undefined *)puVar3,0,0x648);
    puVar10 = BgConfig_Alloc(0x90);
    *puVar3 = puVar10;
    PokeathlonCourse_SetField3A4(param_1,(uint)(puVar3 + 0xf9),(uint)(puVar3 + 0x117),0x78);
    ov96_021E6670(param_1,8);
    uStack_1cc = 0x97;
    uStack_1c8 = 0x40000;
    uStack_1c4 = 0x4000;
    uStack_1c0 = 0x90;
    ov96_021E92B0(&uStack_1cc,0x16,0x90,0x300010,0x10);
    NNS_G2dInitOamManagerModule();
    OamManager_Create(0,0x7e,0,0x20,0,0x7e,0,0x20,0x90);
    puVar3[5] = 0x90;
    FontID_Alloc(4,0x90);
    ov96_021FCF00(*puVar3);
    ov96_021FFD4C(puVar3);
    uRam021d1175 = 1;
    GfGfx_SwapDisplay();
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 1:
    uVar6 = ov96_021FFF3C(puVar3[5],*puVar3,param_1);
    puVar3[0xf8] = uVar6;
    bVar2 = PokeathlonCourse_GetParticipantCount(param_1);
    uVar5 = PokeathlonCourse_GetMode(param_1);
    uVar6 = ov96_02200E3C(puVar3[5],4 - (uint)bVar2,uVar5);
    puVar3[0xf7] = uVar6;
    uVar6 = ov96_021E9A78(puVar3[5],0x2bf,1);
    puVar3[0xf1] = uVar6;
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 2:
    uStack_1d8 = 0x8b;
    uStack_1d4 = 4;
    uStack_1d0 = 0x4040404;
    uVar6 = ov96_021EB180(puVar3[5],&uStack_1d8);
    puVar3[6] = uVar6;
    ov96_021EB5C8(puVar3[6],0,0,0,0x200000);
    uVar6 = ov96_021EB5E8(puVar3[6]);
    uVar6 = ov96_021EA854(puVar3[5],0xc,4,puVar3[0xf1],uVar6);
    puVar3[0xf2] = uVar6;
    ov96_021EB29C(puVar3[6],0,0x65);
    ov96_021EB29C(puVar3[6],1,0x66);
    ov96_021EB29C(puVar3[6],2,0x67);
    ov96_021EB29C(puVar3[6],3,0x68);
    ov96_022000E4(puVar3[0xf8],puVar3[6]);
    ov96_021FD0E4(puVar3[6]);
    ov96_021EB3A4(puVar3[6]);
    puVar4 = (undefined4 *)ov96_021E6290(param_1,0,puVar3[0xf1],puVar3[6]);
    Sprite_SetDrawPriority((undefined *)*puVar4,1);
    ov96_021FD128(puVar3,puVar3[6]);
    ov96_02200180(puVar3[0xf8],puVar3[6],puVar3[0xf1]);
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 3:
    puStack_254 = &uStack_11c;
    iVar11 = 0;
    puVar12 = auStack_d8;
    puVar14 = auStack_208;
    do {
      divRem = _s32_div_f(iVar11, 3);
      extraout_r1 = (uint)(divRem >> 32);
      divRem = _s32_div_f(iVar11, 3);
      iVar9 = (int)divRem;
      ov96_021E6168(param_1,iVar9,extraout_r1,puVar12);
      ov96_021E60C0(param_1,iVar9,extraout_r1);
      uVar6 = ov96_021E6108();
      iVar11 = iVar11 + 1;
      puStack_254[5] = uVar6;
      *puVar14 = *puVar12;
      puVar1 = puVar12 + 1;
      puVar12 = puVar12 + 8;
      puVar14[1] = *puVar1;
      puStack_254 = puStack_254 + 1;
      puVar14 = puVar14 + 2;
    } while (iVar11 < 0xc);
    ov96_022002F8(puVar3[0xf8],auStack_208);
    uVar5 = ov96_021E5F24(param_1);
    ov96_022003E8(puVar3[0xf8],auStack_d8 + (uVar5 & 0xff) * 0x18);
    ov96_02200454(puVar3[0xf8],0,1);
    ov96_02200454(puVar3[0xf8],1,2);
    uStack_118 = 2;
    uStack_11c = 0;
    uStack_114 = 0;
    uStack_110 = 1;
    uStack_10c = 1;
    ov96_021EA8A8(puVar3[0xf2],0xc,auStack_d8,&uStack_11c,0,0);
    iVar11 = ov96_021E5F24(param_1);
    ov96_02200B04(puVar3[0xf8],iVar11);
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 4:
    iVar11 = ov96_021EAA00(puVar3[0xf2]);
    if (iVar11 != 0) {
      uVar5 = ov96_021E5F24(param_1);
      PokeathlonCourse_SetVBlankIntrCB((undefined *)*puVar3);
      PokeathlonCourse_SetField1F4(param_1,1);
      ReadWholeNarcMemberByIdPair((undefined *)pf.buf,0xaa,0xc);
      uVar13 = 0;
      do {
        uVar6 = ov96_021EAA04(puVar3[0xf2],uVar13 & 0xff);
        divRem = _s32_div_f(uVar13, 3);
        extraout_r1_00 = (int)(divRem >> 32);
        if (extraout_r1_00 == 0) {
          ov96_021EAB38(uVar6,1);
        }
        divRem = _s32_div_f(uVar13, 3);
        uVar7 = (uint)divRem;
        divRem = _s32_div_f(uVar13, 3);
        extraout_r1_01 = (undefined4)(divRem >> 32);
        ov96_021E60C0(param_1,uVar7,extraout_r1_01);
        iVar11 = ov96_021E6138();
        ov96_021EAF70(uVar6,PairWord(&pf,entrySp,0x48 + (uint)iVar11 * 8),PairWord(&pf,entrySp,0x4c + (uint)iVar11 * 8));
        uVar6 = ov96_021EAA04(puVar3[0xf2],uVar13 & 0xff);
        divRem = _s32_div_f(uVar13, 3);
        uVar7 = (uint)divRem;
        puVar3[uVar7 * 0x35 + extraout_r1_00 + 0xc] = uVar6;
        *(undefined1 *)(puVar3 + uVar7 * 0x35 + 0x2e) = 4;
        iVar11 = (uVar7 + 1) * 0x1b + 0x28;
        ov96_021EAC0C(uVar6,4);
        ov96_021EAF94(uVar6,0x50,iVar11);
        uVar8 = ov96_021E6104();
        ov96_021EAF6C(uVar6,uVar8);
        puVar3[uVar7 * 0x35 + 0x2b] = 0;
        puVar3[uVar7 * 0x35 + 0x2c] = iVar11 * 0x1000;
        if ((uVar7 == uVar5) && (extraout_r1_00 == 0)) {
          ov96_021EB0A4(uVar6,0x50,iVar11,&pf.x48,&pf.x44);
          (*(ushort *)((char *)&pf.x4c + 0)) = (undefined2)pf.x48;
          (*(ushort *)((char *)&pf.x4c + 2)) = (*(ushort *)((char *)&pf.x44 + 0));
        }
        uVar13 = uVar13 + 1;
      } while ((int)uVar13 < 0xc);
      iVar11 = 0;
      puVar4 = puVar3 + 0xc;
      do {
        iVar9 = ov96_021E5F24(param_1);
        ov96_021FFB7C(puVar4,(int)(puVar4[0x20] + ((uint)((int)puVar4[0x20] >> 0xb) >> 0x14)) >> 0xc
                             & 0xff,iVar11 == iVar9);
        iVar11 = iVar11 + 1;
        puVar4 = puVar4 + 0x35;
      } while (iVar11 < 4);
      ReadWholeNarcMemberByIdPair(auStack_1bc,0xaa,2);
      *(undefined2 *)(puVar3 + 400) = 0xa8c;
      ov96_02200A64(puVar3[0xf8],*(undefined2 *)(puVar3 + 400));
      uStack_248 = 0;
      puVar4 = puVar3 + 0xc;
      puStack_250 = puVar3;
      puStack_24c = puVar3;
      do {
        puStack_24c[0xec] = 0;
        uVar5 = 0;
        do {
          ov96_021FEFE8(param_1,auStack_1bc,uStack_248 & 0xff,uVar5 & 0xff,puVar4);
          uVar5 = uVar5 + 1;
        } while ((int)uVar5 < 3);
        iVar11 = ov96_021E5F24(param_1);
        if (iVar11 == 0) {
          ov96_02200E78(puVar3[0xf7],uStack_248 & 0xff,puVar4);
        }
        *(char *)(puStack_250 + 0x40) = (char)uStack_248;
        puVar4 = puVar4 + 0x35;
        puStack_24c = puStack_24c + 1;
        puStack_250 = puStack_250 + 0x35;
        uStack_248 = uStack_248 + 1;
      } while ((int)uStack_248 < 4);
      iVar11 = ov96_021E5F24(param_1);
      if (iVar11 == 0) {
        puVar10 = PokeathlonCourse_GetDataCopyArea(param_1);
        puVar10 = ov96_021E8A20(puVar10 + 0x28);
        ov96_021FDA30(puVar3,puVar10);
      }
      ov96_021E634C(param_1,0,puVar3[0xf1],puVar3[6],1,1,&pf.x4c);
      ov96_021FD060(puVar3);
      GfGfx_EngineATogglePlanes(0x10,1);
      GfGfx_EngineBTogglePlanes(0x10,1);
      sub_0203A994(1);
      PokeathlonCourse_IncrementField1ED(param_1);
    }
    break;
  case 5:
    iVar11 = ov96_021E5F24(param_1);
    if (iVar11 == 0) {
      divRem = _s32_div_f(LCRandom(), 10);
      extraout_r1_02 = (uint)(divRem >> 32);
      ReadWholeNarcMemberByIdPair((undefined *)(puVar3 + 0xf9),0xe5,extraout_r1_02 & 0xff);
      ov96_02200E80(puVar3[0xf7],puVar3 + 0xf9);
    }
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 6:
    iVar11 = GF_heap_c_dummy_return_true(0x5c);
    if (iVar11 == 0) {
      GF_AssertFail();
    }
    return 1;
  }
  return 0;
}

