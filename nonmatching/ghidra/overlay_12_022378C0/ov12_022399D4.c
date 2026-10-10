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
typedef void code(void);
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
undefined4 GfGfx_SetBanks(undefined4);
undefined4 SetBothScreensModesAndDisable(undefined4, undefined4, undefined4, undefined4);
undefined4 InitBgFromTemplate(undefined4, undefined4, undefined4, undefined4);
undefined4 BgClearTilemapBufferAndCommit(undefined4, undefined4);
undefined4 Options_GetFrame(undefined4);
undefined4 OverlayManager_CreateAndGetData(undefined4, undefined4, undefined4);
undefined4 PaletteData_SetAutoTransparent(undefined4, undefined4);
undefined4 BgConfig_Alloc(undefined4);
undefined4 func_0x020d4790(undefined4, undefined4, undefined4) __asm__("sub_020D4790");
undefined4 AllocWindows(undefined4, undefined4);
undefined4 func_0x020d47ec(undefined4, undefined4, undefined4) __asm__("sub_020D47EC");
undefined4 PaletteData_AllocBuffers(undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x02003d5c(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_02003D5C");
undefined4 sub_0200EB80(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 sub_02074EC4(undefined4);
undefined4 GfGfx_DisableEngineAPlanes(void);
undefined4 PaletteData_Init(undefined4);
undefined4 PaletteData_LoadNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
extern undefined ov12_0226C080;
undefined4 AddWindowParameterized(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Main_SetVBlankIntrCB(undefined4, undefined4);
undefined4 NewMsgDataFromNarc(undefined4, undefined4, undefined4, undefined4);
undefined4 GfGfx_EngineATogglePlanes(undefined4, undefined4);
undefined4 ReadMsgDataIntoString(undefined4, undefined4, undefined4);
undefined4 PaletteData_BeginPaletteFade(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 AddTextPrinterParameterized(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 FillWindowPixelBuffer(undefined4, undefined4);
undefined4 sub_0200E640(undefined4);
undefined4 String_Delete(undefined4);
undefined4 GfGfx_BothDispOn(void);
undefined4 String_New(undefined4, undefined4);
undefined4 DrawFrameAndWindow2(undefined4, undefined4, undefined4, undefined4);
undefined4 ov12_0223A7A0(void);
undefined4 DestroyMsgData(undefined4);
undefined4 WaitingIcon_New(undefined4, undefined4);
extern undefined4 uRam04000304 __asm__("sub_04000304");

void ov12_022399D4(undefined4 param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 auStack_38 [10];
  
  piVar1 = (int *)OverlayManager_CreateAndGetData(param_1,0x1028,5);
  *piVar1 = param_2;
  *(undefined1 *)(piVar1 + 0x408) = 0;
  *(undefined1 *)((int)piVar1 + 0x1021) = 0;
  *(undefined2 *)((int)piVar1 + 0x1022) = 0;
  iVar2 = PaletteData_Init(5);
  piVar1[3] = iVar2;
  PaletteData_SetAutoTransparent(iVar2,1);
  PaletteData_AllocBuffers(piVar1[3],0,0x200,5);
  func_0x02003d5c(piVar1[3],0,2,0,0,0x100);
  iVar2 = BgConfig_Alloc(5);
  piVar1[1] = iVar2;
  iVar2 = AllocWindows(5,1);
  piVar1[2] = iVar2;
  sub_02074EC4(piVar1);
  GfGfx_DisableEngineAPlanes();
  puVar7 = (undefined4 *)&ov12_0226C080;
  puVar6 = auStack_38;
  iVar2 = 5;
  do {
    uVar3 = *puVar7;
    uVar5 = puVar7[1];
    puVar7 = puVar7 + 2;
    *puVar6 = uVar3;
    puVar6[1] = uVar5;
    puVar6 = puVar6 + 2;
    iVar2 = iVar2 + -1;
  } while (iVar2 != 0);
  GfGfx_SetBanks(auStack_38);
  func_0x020d47ec(0,0x6000000,0x80000);
  func_0x020d47ec(0,0x6200000,0x20000);
  func_0x020d47ec(0,0x6400000,0x40000);
  func_0x020d47ec(0,0x6600000,0x20000);
  func_0x020d4790(0,0x5000000,0x200);
  uStack_48 = 1;
  uStack_44 = 0;
  uStack_40 = 0;
  uStack_3c = 1;
  SetBothScreensModesAndDisable(&uStack_48,1,&uStack_48,auStack_38);
  uStack_64 = 0;
  uStack_60 = 0;
  uStack_5c = 0x800;
  uStack_58 = 0;
  uStack_54 = 0x1000001;
  uStack_50 = 0;
  uStack_4c = 0;
  InitBgFromTemplate(piVar1[1],1,&uStack_64,0);
  BgClearTilemapBufferAndCommit(piVar1[1],1);
  uVar4 = Options_GetFrame(*(undefined4 *)(param_2 + 0x130));
  sub_0200EB80(piVar1[1],1,1,10,uVar4 & 0xff,5);
  PaletteData_LoadNarc(piVar1[3],0x10,8,5,0,0x20,0xb0);
  uVar3 = sub_0200E640(uVar4);
  PaletteData_LoadNarc(piVar1[3],0x26,uVar3,5,0,0x20,0xa0);
  func_0x02003d5c(piVar1[3],0,0,0,0,0x100);
  GfGfx_BothDispOn();
  GfGfx_EngineATogglePlanes(0x10,1);
  uRam04000304 = uRam04000304 | 0x8000;
  AddWindowParameterized(piVar1[1],piVar1[2],1,2,0x13,0x1b,4,0xb,0x1f);
  FillWindowPixelBuffer(piVar1[2],0xff);
  DrawFrameAndWindow2(piVar1[2],0,1,10);
  uVar3 = NewMsgDataFromNarc(1,0x1b,0xc5,5);
  uVar5 = String_New(0x100,5);
  ReadMsgDataIntoString(uVar3,0x39b,uVar5);
  AddTextPrinterParameterized(piVar1[2],1,uVar5,0,0,0,0);
  String_Delete(uVar5);
  DestroyMsgData(uVar3);
  Main_SetVBlankIntrCB(0x22397e5,piVar1);
  PaletteData_BeginPaletteFade(piVar1[3],5,0xffff,0,0x10,0,0);
  iVar2 = WaitingIcon_New(piVar1[2],1);
  piVar1[0x409] = iVar2;
  ov12_0223A7A0();
  return;
}

