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
undefined4 GfGfx_DisableEngineBPlanes(void);
undefined4 ov96_021FC0E4();
undefined4 ov96_021FC028();
undefined4 Heap_Create(int, int, unsigned int);
undefined4 ov96_021F9E3C();
undefined4 MI_CpuFill8(void *, unsigned char, unsigned int);
void * BgConfig_Alloc(int);
undefined4 ov96_021FC618();
void * PokeathlonCourse_AllocPtr4FromHeap(void *, unsigned int);
undefined4 ov96_021FC0E8();
undefined4 Main_SetHBlankIntrCB(void *, void *);
undefined4 PokeathlonCourse_GetField1ED();
undefined4 Main_SetVBlankIntrCB(void *, void *);
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
extern uint  uRam04000000 __asm__("sub_04000000");
extern uint  uRam04001000 __asm__("sub_04001000");
undefined4 ov96_021FC0F4();
undefined4 PokeathlonCourse_IncrementField1ED(void *);
undefined4 OamManager_Create(int, int, int, int, int, int, int, int, int);
undefined4 GfGfx_SwapDisplay(void);
undefined4 ov96_021FB7C8();
undefined4 ov96_021EB29C();
undefined4 ov96_021E92B0();
undefined4 ov96_021E6670();
undefined4 NNS_G2dInitOamManagerModule(void);
undefined4 FontID_Alloc(unsigned char, int);
undefined4 ov96_021EB2F4();
undefined4 ov96_021EB2BC();
undefined4 PokeathlonCourse_SetField3A4();
undefined4 ov96_021EB36C();
undefined4 ov96_021EB5C8();
undefined4 ov96_021EB180();
undefined4 ov96_021EB334();
undefined4 ov96_021F9E5C();
extern unsigned char uRam021d1175 __asm__("sub_021D1175");
undefined4 ov96_021EA854();
undefined4 Sprite_SetAnimCtrlSeq(void *, int);
undefined4 ov96_021EB630();
undefined4 Sprite_SetDrawFlag(void *, int);
undefined4 ov96_021EB564();
undefined4 Sprite_SetDrawPriority(void *, unsigned int);
undefined4 ov96_021EA374();
undefined4 ov96_021EB408();
undefined4 ov96_021EB588();
undefined4 ov96_021EB5E8();
undefined4 ov96_021EB3A4();
undefined4 Sprite_SetMatrix(void *, void *);
undefined4 ov96_021EB3E4();
undefined4 ov96_021E9A78();
undefined4 ov96_021EB52C();
undefined4 ov96_021FC630();
extern undefined ov96_0221C3F4;
extern undefined ov96_0221C3EC;
undefined4 ov96_021FC188();
undefined4 ov96_021EAA00();
undefined4 ov96_021E6108();
undefined4 ov96_021FC2B4();
undefined4 ov96_021F9FE8();
undefined4 ov96_021E5F24(void *);
undefined4 PokeathlonCourse_SetVBlankIntrCB(void *);
undefined4 ov96_021FA020();
undefined4 ov96_021FC214();
undefined4 ov96_021E60C0();
undefined4 ov96_021EA8A8();
undefined4 ov96_021E6168();
void * PokeathlonCourse_GetParticipantUnk04(void *, int);
extern uint  uRam04001014 __asm__("sub_04001014");
extern uint  uRam04001018 __asm__("sub_04001018");
extern uint  uRam04000018 __asm__("sub_04000018");
extern uint  uRam04001010 __asm__("sub_04001010");
extern uint  uRam04000010 __asm__("sub_04000010");
extern uint  uRam04000014 __asm__("sub_04000014");
undefined4 sub_0203A994(int);
undefined4 ov96_021FA0E8();
undefined4 BeginNormalPaletteFade(int, int, int, unsigned short, int, int, int);
undefined4 ov96_021E634C();
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 ov96_021EAB38();
undefined4 ReadWholeNarcMemberByIdPair(void *, int, int);
undefined4 GfGfx_EngineBTogglePlanes(unsigned char, unsigned char);
undefined4 ov96_021FC07C();
undefined4 PokeathlonCourse_SetField1F4(void *, int);
undefined4 ov96_021EAA04();
undefined4 ov96_021FBBB4();
void * ov96_021E8A20(void *);
undefined4 ov96_021FC144();
undefined4 ov96_021E6290();
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 IsPaletteFadeFinished(void);

undefined4
ov96_021F94A8(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 *puVar1;
  byte bVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  undefined2 *puVar6;
  undefined4 *puVar7;
  undefined4 uVar8;
  undefined *puVar9;
  undefined *puVar10;
  int iVar11;
  int iVar12;
  uint uVar13;
  int *piVar14;
  undefined2 *puVar15;
  byte *pbVar16;
  int iStack_184;
  byte *pbStack_180;
  undefined1 *puStack_17c;
  int *piStack_178;
  uint uStack_174;
  undefined auStack_170 [24];
  undefined2 auStack_158 [6];
  undefined4 auStack_14c [3];
  undefined1 auStack_140 [48];
  undefined2 auStack_110 [24];
  int aiStack_e0 [13];
  undefined auStack_ac [80];
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 auStack_48 [12];
  undefined4 uStack_18;
  { uint nug_r3; int nug_k; __asm__ volatile("movs %0, r3" : "=l"(nug_r3) : : "cc");
    for (nug_k = 0; nug_k < (int)sizeof(uStack_18) && 0 + nug_k < 4; nug_k++) ((unsigned char *)&uStack_18)[nug_k] = (unsigned char)(nug_r3 >> (8 * (0 + nug_k)));
  }


  uStack_18 = param_4;
  piVar3 = (int *)PokeathlonCourse_GetHeapAllocPtr4(param_1);
  bVar2 = PokeathlonCourse_GetField1ED(param_1);
  switch(bVar2) {
  case 0:
    Heap_Create(0x5c,0x8a,0x48000);
    Main_SetVBlankIntrCB((undefined *)0x0,(undefined *)0x0);
    Main_SetHBlankIntrCB((undefined *)0x0,(undefined *)0x0);
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    uRam04000000 = uRam04000000 & 0xffffe0ff;
    uRam04001000 = uRam04001000 & 0xffffe0ff;
    ov96_021F9E3C();
    puVar7 = (undefined4 *)PokeathlonCourse_AllocPtr4FromHeap(param_1,0x3c8);
    MI_CpuFill8((undefined *)puVar7,0,0x3c8);
    puVar9 = BgConfig_Alloc(0x8a);
    puVar7[1] = puVar9;
    uVar8 = ov96_021FC028(*puVar7);
    puVar7[0x36] = uVar8;
    uVar8 = ov96_021FC618(*puVar7);
    puVar7[0x37] = uVar8;
    uVar13 = ov96_021FC0E4(puVar7[0x36]);
    uVar4 = ov96_021FC0E8(puVar7[0x36]);
    uVar5 = ov96_021FC0F4(puVar7[0x36]);
    PokeathlonCourse_SetField3A4(param_1,uVar13,uVar4,uVar5);
    ov96_021E6670(param_1,8);
    aiStack_e0[9] = 0x6b;
    aiStack_e0[10] = 0x40000;
    aiStack_e0[0xb] = 0x4000;
    aiStack_e0[0xc] = 0x8a;
    ov96_021E92B0(aiStack_e0 + 9,0x12,0x8a,0x300010,0x300010);
    NNS_G2dInitOamManagerModule();
    OamManager_Create(0,0x7e,0,0x20,0,0x7e,0,0x20,0x8a);
    *puVar7 = 0x8a;
    FontID_Alloc(4,0x8a);
    ov96_021F9E5C(puVar7[1]);
    ov96_021FB7C8(puVar7);
    uRam021d1175 = 1;
    GfGfx_SwapDisplay();
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 1:
    aiStack_e0[6] = 0x6b;
    aiStack_e0[7] = 6;
    aiStack_e0[8] = 0x6060606;
    iVar11 = ov96_021EB180(*piVar3,aiStack_e0 + 6);
    piVar3[0x89] = iVar11;
    ov96_021EB5C8(piVar3[0x89],0,0x110000,0,0);
    ov96_021EB29C(piVar3[0x89],0,0x65);
    ov96_021EB29C(piVar3[0x89],1,0x66);
    ov96_021EB29C(piVar3[0x89],2,0x67);
    ov96_021EB29C(piVar3[0x89],3,0x68);
    ov96_021EB29C(piVar3[0x89],4,0x69);
    ov96_021EB29C(piVar3[0x89],5,0x6a);
    ov96_021EB2BC(piVar3[0x89],0x9c,9,0x65,3);
    ov96_021EB2F4(piVar3[0x89],0x9c,6,0x65,3,1);
    ov96_021EB334(piVar3[0x89],0x9c,8,0x65);
    ov96_021EB36C(piVar3[0x89],0x9c,7,0x65);
    ov96_021EB2BC(piVar3[0x89],0x9c,0x10,0x66,1);
    ov96_021EB2F4(piVar3[0x89],0x9c,0xd,0x66,1,1);
    ov96_021EB334(piVar3[0x89],0x9c,0xf,0x66);
    ov96_021EB36C(piVar3[0x89],0x9c,0xe,0x66);
    ov96_021EB2BC(piVar3[0x89],0x9c,0xc,0x67,1);
    ov96_021EB2F4(piVar3[0x89],0x9c,6,0x67,1,1);
    ov96_021EB334(piVar3[0x89],0x9c,0xb,0x67);
    ov96_021EB36C(piVar3[0x89],0x9c,10,0x67);
    ov96_021EB2BC(piVar3[0x89],0x9c,0x14,0x69,1);
    ov96_021EB2F4(piVar3[0x89],0x9c,0x11,0x69,1,1);
    ov96_021EB334(piVar3[0x89],0x9c,0x13,0x69);
    ov96_021EB36C(piVar3[0x89],0x9c,0x12,0x69);
    ov96_021EB2BC(piVar3[0x89],0x9c,0x1c,0x68,1);
    ov96_021EB2F4(piVar3[0x89],0x9c,0x19,0x68,1,1);
    ov96_021EB334(piVar3[0x89],0x9c,0x1b,0x68);
    ov96_021EB36C(piVar3[0x89],0x9c,0x1a,0x68);
    ov96_021EB2BC(piVar3[0x89],0x9c,0x20,0x6a,1);
    ov96_021EB2F4(piVar3[0x89],0x9c,0x1d,0x6a,1,1);
    ov96_021EB334(piVar3[0x89],0x9c,0x1f,0x6a);
    ov96_021EB36C(piVar3[0x89],0x9c,0x1e,0x6a);
    ov96_021EB3A4(piVar3[0x89]);
    iVar11 = ov96_021E9A78(*piVar3,0x2e7,1);
    piVar3[0xe8] = iVar11;
    uVar8 = ov96_021EB5E8(piVar3[0x89]);
    iVar11 = ov96_021EA854(*piVar3,3,4,piVar3[0xe8],uVar8);
    piVar3[0xe9] = iVar11;
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 2:
    iVar11 = 0;
    do {
      puVar9 = (undefined *)ov96_021EB408(piVar3[0x89],1,3,0x65,2);
      Sprite_SetDrawPriority(puVar9,0x1b);
      puVar9 = (undefined *)ov96_021EB408(piVar3[0x89],1,1,0x67,6);
      Sprite_SetDrawPriority(puVar9,0x1b);
      iVar11 = iVar11 + 1;
    } while (iVar11 < 0xc);
    iVar11 = 0;
    do {
      ov96_021EB408(piVar3[0x89],1,1,0x66,5);
      ov96_021EB408(piVar3[0x89],1,1,0x68,7);
      ov96_021EB408(piVar3[0x89],1,1,0x69,8);
      iVar11 = iVar11 + 1;
    } while (iVar11 < 3);
    iVar11 = ov96_021EB3E4(piVar3[0x89],1,1,0x6a,9);
    piVar3[0xea] = iVar11;
    ov96_021EB564(piVar3[0xea],0);
    aiStack_e0[5] = 0;
    aiStack_e0[3] = 0xa0000;
    aiStack_e0[4] = 0x1c8000;
    ov96_021EB588(piVar3[0xea],aiStack_e0 + 3);
    ov96_021EB52C(piVar3[0xea],1,1);
    ov96_021EB630(piVar3[0xea],1);
    iStack_184 = 0;
    pbVar16 = &ov96_0221C3EC;
    pbStack_180 = &ov96_0221C3F4;
    piVar14 = piVar3;
    do {
      uVar8 = ov96_021EB5E8(piVar3[0x89]);
      iVar11 = ov96_021EA374(piVar3[0xe8],uVar8,0,*piVar3);
      piVar14[0xeb] = iVar11;
      Sprite_SetDrawFlag((undefined *)piVar14[0xeb],1);
      aiStack_e0[0] = (uint)*pbStack_180 << 0xc;
      aiStack_e0[1] = 0x1c8000;
      aiStack_e0[2] = 0;
      Sprite_SetMatrix((undefined *)piVar14[0xeb],(undefined *)aiStack_e0);
      Sprite_SetAnimCtrlSeq((undefined *)piVar14[0xeb],(uint)*pbVar16);
      piVar14 = piVar14 + 1;
      pbStack_180 = pbStack_180 + 1;
      pbVar16 = pbVar16 + 1;
      iStack_184 = iStack_184 + 1;
    } while (iStack_184 < 6);
    ov96_021FC630(piVar3[0x37],piVar3[0x89],1);
    iVar11 = ov96_021FC188(*piVar3);
    piVar3[0x8a] = iVar11;
    iVar11 = 0;
    puVar15 = auStack_110;
    do {
      puVar6 = (undefined2 *)PokeathlonCourse_GetParticipantUnk04(param_1,iVar11);
      iVar12 = 0;
      do {
        iVar12 = iVar12 + 1;
        *puVar15 = *puVar6;
        puVar1 = puVar6 + 1;
        puVar6 = puVar6 + 0x14;
        puVar15[1] = *puVar1;
        puVar15 = puVar15 + 2;
      } while (iVar12 < 3);
      iVar11 = iVar11 + 1;
    } while (iVar11 < 4);
    ov96_021FC214(piVar3[0x8a],auStack_110);
    ov96_021FC2B4(piVar3[0x8a],0);
    puStack_17c = auStack_140;
    iVar11 = 0;
    puVar7 = &uStack_5c;
    do {
      iVar12 = ov96_021E5F24(param_1);
      ov96_021E6168(param_1,iVar12,iVar11,puStack_17c);
      iVar12 = ov96_021E5F24(param_1);
      ov96_021E60C0(param_1,iVar12,iVar11);
      uVar8 = ov96_021E6108();
      puVar7[5] = uVar8;
      iVar11 = iVar11 + 1;
      puStack_17c = puStack_17c + 0x10;
      puVar7 = puVar7 + 1;
    } while (iVar11 < 3);
    uStack_5c = 0;
    uStack_58 = 1;
    uStack_54 = 0;
    uStack_50 = 1;
    uStack_4c = 1;
    ov96_021EA8A8(piVar3[0xe9],3,auStack_140,&uStack_5c,0,0);
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 3:
    iVar11 = ov96_021EAA00(piVar3[0xe9]);
    if (iVar11 != 0) {
      PokeathlonCourse_SetVBlankIntrCB((undefined *)piVar3[1]);
      ov96_021F9FE8(piVar3[1],*piVar3);
      PokeathlonCourse_IncrementField1ED(param_1);
    }
    break;
  case 4:
    ov96_021FA020(piVar3[1],*piVar3);
    uRam04000010 = 0x1400000;
    uRam04000014 = 0x1400000;
    uRam04000018 = 0x1400000;
    uRam04001010 = 0x300000;
    uRam04001014 = 0x300000;
    uRam04001018 = 0x300000;
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 5:
    GfGfx_EngineATogglePlanes(0x10,1);
    GfGfx_EngineBTogglePlanes(0x10,1);
    PokeathlonCourse_SetField1F4(param_1,1);
    uVar13 = 0;
    do {
      uVar8 = ov96_021EAA04(piVar3[0xe9],uVar13 & 0xff);
      ov96_021EAB38(uVar8,1);
      uVar13 = uVar13 + 1;
    } while ((int)uVar13 < 3);
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 6:
    iVar11 = ov96_021E5F24(param_1);
    if (iVar11 == 0) {
      ov96_021FC144(piVar3[0x36]);
    }
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 7:
    ov96_021FC07C(piVar3[0x36],piVar3[0x89]);
    puVar7 = (undefined4 *)ov96_021E6290(param_1,0x110,piVar3[0xe8],piVar3[0x89]);
    Sprite_SetDrawPriority((undefined *)*puVar7,1);
    auStack_14c[0] = 0x30;
    auStack_14c[1] = 0x80;
    auStack_14c[2] = 0xd0;
    ReadWholeNarcMemberByIdPair(auStack_170,0xaa,10);
    ReadWholeNarcMemberByIdPair(auStack_ac,0xaa,0);
    uStack_174 = 0;
    piStack_178 = piVar3 + 0x38;
    puVar7 = auStack_14c;
    puVar15 = auStack_158;
    do {
      ov96_021FA0E8(param_1,auStack_ac,auStack_170,piVar3[0x36],piVar3[0x89],piVar3[0xe9],
                    uStack_174 & 0xff,piStack_178);
      uVar8 = *puVar7;
      puVar7 = puVar7 + 1;
      *puVar15 = (short)uVar8;
      puVar15[1] = 0x188;
      puVar15 = puVar15 + 2;
      piStack_178 = piStack_178 + 0x1b;
      uStack_174 = uStack_174 + 1;
    } while ((int)uStack_174 < 3);
    ov96_021E634C(param_1,0,piVar3[0xe8],piVar3[0x89],1,3,auStack_158);
    iVar11 = ov96_021E5F24(param_1);
    if (iVar11 == 0) {
      ov96_021FBBB4(param_1,auStack_ac);
    }
    puVar9 = PokeathlonCourse_GetDataCopyArea(param_1);
    puVar10 = ov96_021E8A20(puVar9 + 0xf0);
    uVar13 = 0;
    do {
      puVar10[uVar13 + 0x1c] = 0x11;
      uVar13 = uVar13 + 1 & 0xff;
    } while (uVar13 < 6);
    iVar11 = ov96_021E5F24(param_1);
    if (iVar11 == 0) {
      puVar9 = ov96_021E8A20(puVar9 + 0x28);
      uVar13 = 0;
      do {
        puVar9[uVar13 + 0x1c] = 0x11;
        uVar13 = uVar13 + 1 & 0xff;
      } while (uVar13 < 6);
    }
    sub_0203A994(1);
    BeginNormalPaletteFade(2,3,3,0,6,1,*piVar3);
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 8:
    iVar11 = IsPaletteFadeFinished();
    if (iVar11 != 0) {
      return 1;
    }
  }
  return 0;
}

