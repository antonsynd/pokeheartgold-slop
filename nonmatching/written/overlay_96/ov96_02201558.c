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
void * PokeathlonCourse_AllocPtr4FromHeap(void *, unsigned int);
undefined4 Heap_Create(int, int, unsigned int);
undefined4 PokeathlonCourse_GetField1ED();
void * Heap_Alloc(int, unsigned int);
undefined4 Main_SetVBlankIntrCB(void *, void *);
void * BgConfig_Alloc(int);
undefined4 PokeathlonCourse_GetHeapID();
undefined4 GfGfx_DisableEngineAPlanes(void);
undefined4 ov96_02201C90();
undefined4 MI_CpuFill8(void *, unsigned char, unsigned int);
undefined4 Main_SetHBlankIntrCB(void *, void *);
undefined4 ov96_021E92B0();
undefined4 GfGfx_DisableEngineBPlanes(void);
undefined4 ov96_021E6670();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
extern uint  uRam04000000 __asm__("sub_04000000");
extern uint  uRam04001000 __asm__("sub_04001000");
undefined4 FontID_Alloc(unsigned char, int);
undefined4 ov96_021EB5C8();
unsigned char PokeathlonCourse_GetParticipantCount(void *);
undefined4 OamManager_Create(int, int, int, int, int, int, int, int, int);
undefined4 ov96_02203A00();
undefined4 PokeathlonCourse_GetMode(void *);
undefined4 GfGfx_SwapDisplay(void);
undefined4 ov96_02203B44();
undefined4 ov96_021EB3A4();
undefined4 ov96_02204364();
undefined4 ov96_0220382C();
undefined4 NNS_G2dInitOamManagerModule(void);
undefined4 ov96_021EB180();
undefined4 ov96_021EB29C();
undefined4 ov96_02201E70();
undefined4 ov96_02201CB0();
undefined4 PokeathlonCourse_IncrementField1ED(void *);
undefined4 ov96_02203310();
extern unsigned char uRam021d1175 __asm__("sub_021D1175");
undefined4 ov96_02203B8C();
undefined4 ov96_021E6290();
undefined4 ov96_021EB5E8();
undefined4 ov96_021EAA00();
undefined4 ov96_021EA8A8();
undefined4 ov96_021E9A78();
undefined4 PokeathlonCourse_SetField1F4(void *, int);
undefined4 ov96_021EA854();
undefined4 ov96_021E6168();
undefined4 ov96_021E6108();
undefined4 Sprite_SetDrawPriority(void *, unsigned int);
undefined4 ov96_021E60C0();
unsigned char GetMonPicHeightBySpeciesGenderForm(unsigned short, unsigned char, unsigned char, unsigned char, unsigned int);
undefined4 ov96_02201EF0();
unsigned long long _s32_div_f(int, int);
undefined4 ov96_021E5F24(void *);
undefined4 ov96_021EB588();
undefined4 PokeathlonCourse_SetVBlankIntrCB(void *);
extern undefined ov96_0221C8C8;
undefined4 ReadWholeNarcMemberByIdPair(void *, int, int);
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 ov96_022043AC();
undefined4 ov96_021EAF94();
void * ov96_021E8A20(void *);
undefined4 ov96_021E8BB0();
undefined4 ov96_02202738();
undefined4 ov96_021EAA20();
undefined4 ov96_021EAA04();
undefined4 ov96_021EAB38();
undefined4 ov96_021EABA8();
undefined4 GfGfx_EngineBTogglePlanes(unsigned char, unsigned char);
undefined4 ov96_02201E10();
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 ov96_0220329C();
undefined4 ov96_02203D74();
undefined4 ov96_021EAC0C();
extern undefined ov96_0221CA1C;
extern undefined ov96_0221C8EC;
undefined4 BeginNormalPaletteFade(int, int, int, unsigned short, int, int, int);
undefined4 sub_0203A994(int);
undefined4 GF_AssertFail(void);
undefined4 GF_heap_c_dummy_return_true(int);
undefined4 IsPaletteFadeFinished(void);

undefined4 ov96_02201558(undefined *param_1)

{
  byte bVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined *puVar7;
  int iVar8;
  uint extraout_r1;
  undefined4 extraout_r1_00;
  uint extraout_r1_01;
  unsigned long long divRem;
  int divStep;
  uint divQ;
  int iVar9;
  ushort *puVar10;
  uint uVar11;
  int iStack_1f8;
  byte *pbStack_1e8;
  int *piStack_1e4;
  int *piStack_1e0;
  int iStack_1d8;
  int iStack_1d0;
  uint uStack_1c0;
  int iStack_1bc;
  int iStack_1a8;
  int iStack_1a4;
  undefined4 uStack_1a0;
  int aiStack_19c [13];
  undefined auStack_168 [80];
  undefined4 uStack_118;
  undefined4 uStack_114;
  undefined4 uStack_110;
  undefined4 uStack_10c;
  undefined4 uStack_108;
  undefined4 auStack_104 [12];
  ushort auStack_d4 [96]; /* 12 records of 16 bytes: sp+0x13c up to the saved registers */
  undefined1 auStack_44 [48];

  puVar2 = (undefined4 *)PokeathlonCourse_GetHeapAllocPtr4(param_1);
  bVar1 = PokeathlonCourse_GetField1ED(param_1);
  switch(bVar1) {
  case 0:
    Heap_Create(0x5c,0x92,0x40000);
    Main_SetVBlankIntrCB((undefined *)0x0,(undefined *)0x0);
    Main_SetHBlankIntrCB((undefined *)0x0,(undefined *)0x0);
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    uRam04000000 = uRam04000000 & 0xffffe0ff;
    uRam04001000 = uRam04001000 & 0xffffe0ff;
    ov96_02201C90();
    puVar2 = (undefined4 *)PokeathlonCourse_AllocPtr4FromHeap(param_1,0x5f4);
    MI_CpuFill8((undefined *)puVar2,0,0x5f4);
    puVar7 = Heap_Alloc(0x92,0x28);
    puVar2[0x166] = puVar7;
    MI_CpuFill8((undefined *)puVar2[0x166],0,0x28);
    puVar7 = BgConfig_Alloc(0x92);
    *puVar2 = puVar7;
    ov96_021E6670(param_1,8);
    aiStack_19c[9] = 0x73;
    aiStack_19c[10] = 0x40000;
    aiStack_19c[0xb] = 0x4000;
    aiStack_19c[0xc] = PokeathlonCourse_GetHeapID(param_1);
    ov96_021E92B0(aiStack_19c + 9,0x16,0x92,0x300010,0x300010);
    NNS_G2dInitOamManagerModule();
    OamManager_Create(0,0x7e,0,0x20,0,0x7e,0,0x20,0x92);
    puVar2[0x11] = 0x92;
    FontID_Alloc(4,0x92);
    ov96_02201CB0(*puVar2);
    ov96_02203310(puVar2);
    ov96_0220382C(puVar2,param_1);
    uRam021d1175 = 0;
    GfGfx_SwapDisplay();
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 1:
    uVar5 = ov96_02203A00(puVar2[0x11],*puVar2,param_1);
    puVar2[0x178] = uVar5;
    bVar1 = PokeathlonCourse_GetParticipantCount(param_1);
    uVar11 = PokeathlonCourse_GetMode(param_1);
    uVar5 = ov96_02204364(puVar2[0x11],4 - (uint)bVar1,uVar11);
    puVar2[0x177] = uVar5;
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 2:
    aiStack_19c[6] = 0x73;
    aiStack_19c[7] = 3;
    aiStack_19c[8] = 0x3030303;
    uVar5 = ov96_021EB180(puVar2[0x11],aiStack_19c + 6);
    puVar2[0x12] = uVar5;
    ov96_021EB5C8(puVar2[0x12],0,0,0,0x120000);
    ov96_021EB29C(puVar2[0x12],0,0x6a);
    ov96_021EB29C(puVar2[0x12],1,0x65);
    ov96_021EB29C(puVar2[0x12],2,0x69);
    ov96_02201E70(puVar2[0x12]);
    ov96_02203B44(puVar2[0x178],puVar2[0x12]);
    ov96_021EB3A4(puVar2[0x12]);
    uVar5 = ov96_021E9A78(puVar2[0x11],0x4e7,1);
    puVar2[0x175] = uVar5;
    uVar5 = ov96_021EB5E8(puVar2[0x12]);
    uVar5 = ov96_021EA854(puVar2[0x11],9,0x20,puVar2[0x175],uVar5);
    puVar2[0x176] = uVar5;
    puVar3 = (undefined4 *)ov96_021E6290(param_1,0,puVar2[0x175],puVar2[0x12]);
    Sprite_SetDrawPriority((undefined *)*puVar3,1);
    uVar11 = ov96_021E5F24(param_1);
    ov96_02201EF0(puVar2,puVar2[0x12],uVar11 & 0xff);
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 3:
    uVar11 = ov96_021E5F24(param_1);
    iStack_1bc = 0;
    divRem = _s32_div_f(((uVar11 & 0xff) + 1) * 3, 0xc);
    divStep = (int)((uint)(divRem >> 32) & 0xff);
    puVar10 = auStack_d4;
    puVar3 = &uStack_118;
    do {
      divRem = _s32_div_f(divStep, 0xc);
      uVar4 = (uint)(divRem >> 32) & 0xff;
      divRem = _s32_div_f(uVar4, 3);
      extraout_r1_00 = (uint)(divRem >> 32);
      divRem = _s32_div_f(uVar4, 3);
      uVar4 = (uint)divRem;
      ov96_021E6168(param_1,uVar4,extraout_r1_00,puVar10);
      ov96_021E60C0(param_1,uVar4,extraout_r1_00);
      uVar5 = ov96_021E6108();
      puVar3[5] = uVar5;
      puVar10 = puVar10 + 8;
      puVar3 = puVar3 + 1;
      divStep = divStep + 1;
      iStack_1bc = iStack_1bc + 1;
    } while (iStack_1bc < 0xc);
    ov96_02203B8C(puVar2[0x178],puVar2[0x12],auStack_44);
    iStack_1f8 = 0;
    iVar8 = 0x10;
    puVar3 = puVar2 + (uVar11 & 0xff) * 0x18;
    do {
      aiStack_19c[3] = 0;
      aiStack_19c[4] = 0;
      aiStack_19c[5] = 0;
      iVar6 = iStack_1f8 + 9;
      bVar1 = GetMonPicHeightBySpeciesGenderForm
                        (auStack_d4[iVar6 * 8],((byte *)auStack_d4)[iVar6 * 0x10 + 7],0,
                         (byte)auStack_d4[iVar6 * 8 + 1],*(uint *)((byte *)auStack_d4 + iVar6 * 0x10 + 0xc));
      aiStack_19c[3] = iVar8 << 0xc;
      aiStack_19c[4] = (bVar1 + 0x178) * 0x1000 + -0x10000;
      ov96_021EB588(puVar3[0x106],aiStack_19c + 3);
      iVar8 = iVar8 + 0x32;
      iStack_1f8 = iStack_1f8 + 1;
      puVar3 = puVar3 + 8;
    } while (iStack_1f8 < 3);
    uStack_114 = 3;
    uStack_118 = 0;
    uStack_110 = 0;
    uStack_10c = 1;
    uStack_108 = 1;
    ov96_021EA8A8(puVar2[0x176],9,auStack_d4,&uStack_118,0,0);
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 4:
    iVar8 = ov96_021EAA00(puVar2[0x176]);
    if (iVar8 != 0) {
      aiStack_19c[0] = 3;
      aiStack_19c[1] = 2;
      aiStack_19c[2] = 4;
      PokeathlonCourse_SetVBlankIntrCB((undefined *)*puVar2);
      PokeathlonCourse_SetField1F4(param_1,1);
      uVar11 = ov96_021E5F24(param_1);
      uStack_1c0 = 0;
      divRem = _s32_div_f((uVar11 + 1) * 3, 0xc);
      divStep = (int)((uint)(divRem >> 32) & 0xff);
      piStack_1e0 = (int *)&ov96_0221C8C8;
      piStack_1e4 = (int *)&ov96_0221C8EC;
      pbStack_1e8 = &ov96_0221CA1C;
      puVar3 = puVar2;
      do {
        uVar5 = ov96_021EAA04(puVar2[0x176],uStack_1c0 & 0xff);
        puVar3[0x25] = uVar5;
        uVar5 = puVar3[0x25];
        ov96_021EAB38(uVar5,1);
        divRem = _s32_div_f(divStep, 0xc);
        divQ = (uint)(divRem >> 32) & 0xff;
        iVar8 = *piStack_1e0;
        iVar9 = *piStack_1e4;
        divRem = _s32_div_f(uStack_1c0, 3);
        uVar11 = (uint)divRem;
        ov96_021EAC0C(uVar5,aiStack_19c[uVar11]);
        ov96_021EAF94(uVar5,iVar8,iVar9);
        iStack_1a8 = 0;
        iStack_1a4 = 0;
        uStack_1a0 = 0;
        ov96_021EAA20(uVar5);
        iVar6 = ov96_021E8BB0();
        if (*(short *)(iVar6 + 4) == 0) {
          iVar9 = iVar9 + -0x19;
        }
        else {
          iVar9 = iVar9 + -0x28;
        }
        iStack_1a4 = iVar9 * 0x1000;
        iStack_1a8 = iVar8 << 0xc;
        ov96_021EB588(puVar2[divQ * 8 + 0x106],&iStack_1a8);
        ov96_021EB588(puVar3[0x1c],&iStack_1a8);
        ov96_021EABA8(uVar5,*pbStack_1e8 + 0x20);
        puVar3 = puVar3 + 1;
        divStep = divStep + 1;
        piStack_1e0 = piStack_1e0 + 1;
        piStack_1e4 = piStack_1e4 + 1;
        pbStack_1e8 = pbStack_1e8 + 1;
        uStack_1c0 = uStack_1c0 + 1;
      } while ((int)uStack_1c0 < 9);
      ReadWholeNarcMemberByIdPair(auStack_168,0xaa,3);
      *(undefined2 *)(puVar2 + 0x17a) = 0x708;
      iStack_1d0 = 0;
      iStack_1d8 = 0;
      do {
        iVar8 = 0;
        *(undefined1 *)((int)puVar2 + iStack_1d0 + 0x5cc) = 0xc;
        do {
          uVar11 = iVar8 + iStack_1d8;
          puVar3 = puVar2 + uVar11 * 8 + 0x106;
          ov96_0220329C(param_1,auStack_168,(uint)iStack_1d0 & 0xff,(uint)iVar8 & 0xff,puVar3);
          iVar6 = ov96_021E5F24(param_1);
          if (iVar6 == 0) {
            ov96_022043AC(puVar2[0x177],uVar11 & 0xff,puVar2 + uVar11 * 8 + 0x106,
                          puVar2 + uVar11 * 0x12 + 0x2e);
          }
          iVar8 = iVar8 + 1;
        } while (iVar8 < 3);
        iStack_1d8 = iStack_1d8 + 3;
        iStack_1d0 = iStack_1d0 + 1;
      } while (iStack_1d0 < 4);
      iVar8 = ov96_021E5F24(param_1);
      if (iVar8 == 0) {
        puVar7 = PokeathlonCourse_GetDataCopyArea(param_1);
        puVar7 = ov96_021E8A20(puVar7 + 0x28);
        ov96_02202738(puVar2,puVar7);
      }
      ov96_02203D74(puVar2[0x178],puVar2[0x12],puVar2[0x175]);
      uVar11 = ov96_021E5F24(param_1);
      ov96_02201E10(puVar2,uVar11 & 0xff);
      GfGfx_EngineATogglePlanes(0x10,1);
      GfGfx_EngineBTogglePlanes(0x10,1);
      sub_0203A994(1);
      BeginNormalPaletteFade(2,3,3,0,6,1,puVar2[0x11]);
      PokeathlonCourse_IncrementField1ED(param_1);
    }
    break;
  case 5:
    iVar8 = IsPaletteFadeFinished();
    if (iVar8 != 0) {
      iVar8 = GF_heap_c_dummy_return_true(0x5c);
      if (iVar8 == 0) {
        GF_AssertFail();
      }
      return 1;
    }
  }
  return 0;
}

