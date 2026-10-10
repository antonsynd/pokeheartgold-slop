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
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 OverlayManager_CreateAndGetData();
undefined4 SetKeyRepeatTimers();
undefined4 sub_020210BC();
undefined4 BgConfig_Alloc();
undefined4 Heap_Create();
undefined4 GF_CreateVramTransferManager();
undefined4 Main_SetVBlankIntrCB();
undefined4 HBlankInterruptDisable();
undefined4 OverlayManager_GetArgs();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 ov75_0224725C();
extern undefined2 uRam04000050 __asm__("sub_04000050");
extern uint uRam04001000 __asm__("sub_04001000");
extern undefined2 uRam04001050 __asm__("sub_04001050");
extern uint uRam04000000 __asm__("sub_04000000");
undefined4 sub_02039528();
undefined4 ov75_02246BE0();
undefined4 ov75_02247450();
undefined4 BeginNormalPaletteFade();
undefined4 func_0x0200bd18() __asm__("sub_0200BD18");
undefined4 sub_02021148();
undefined4 NewMsgDataFromNarc();
undefined4 func_0x021ec5b4() __asm__("sub_021EC5B4");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 sub_0203A880();
undefined4 String_New();
undefined4 sub_0203A05C();
undefined4 ov75_02247790();
undefined4 GfGfx_SwapDisplay();
undefined4 NewString_ReadMsgData();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov75_02246BE8();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 func_0x02002b50() __asm__("sub_02002B50");
undefined4 TextFlags_SetCanTouchSpeedUpPrint();

undefined4 ov75_02246F0C(undefined4 param_1)

{
  int *piVar1;
  int iVar2;

  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffff00ff;
  uRam04001000 = uRam04001000 & 0xffff00ff;
  uRam04000050 = 0;
  uRam04001050 = 0;
  Heap_Create(3,0x74,0x70000);
  piVar1 = (int *)OverlayManager_CreateAndGetData(param_1,0x41c,0x74);
  func_0x020d4994(piVar1,0,0x41c);
  iVar2 = OverlayManager_GetArgs(param_1);
  *piVar1 = iVar2;
  iVar2 = BgConfig_Alloc(0x74);
  piVar1[1] = iVar2;
  GF_CreateVramTransferManager(0x40,0x74);
  SetKeyRepeatTimers(4,8);
  ov75_0224725C(piVar1[1]);
  sub_020210BC();
  sub_02021148(4);
  iVar2 = func_0x0200bd18(0xb,0x40,0x74);
  piVar1[8] = iVar2;
  iVar2 = NewMsgDataFromNarc(0,0x1b,0x307,0x74);
  piVar1[9] = iVar2;
  iVar2 = NewMsgDataFromNarc(0,0x1b,0x30a,0x74);
  piVar1[0xb] = iVar2;
  iVar2 = NewMsgDataFromNarc(0,0x1b,800,0x74);
  piVar1[0xc] = iVar2;
  iVar2 = NewMsgDataFromNarc(0,0x1b,0xed,0x74);
  piVar1[10] = iVar2;
  iVar2 = NewMsgDataFromNarc(0,0x1b,0xbc,0x74);
  piVar1[0xd] = iVar2;
  iVar2 = String_New(0x10e,0x74);
  piVar1[0xe] = iVar2;
  iVar2 = String_New(0x100,0x74);
  piVar1[0x10] = iVar2;
  iVar2 = NewString_ReadMsgData(piVar1[9],0x1f);
  piVar1[0xf] = iVar2;
  ov75_02247450(piVar1);
  ov75_02247790(piVar1);
  iVar2 = ov75_02246BE8(*piVar1);
  if (iVar2 == 0xc) {
    iVar2 = func_0x021ec5b4();
    if ((iVar2 == 0) && (iVar2 = sub_0203A05C(*(undefined4 *)(*piVar1 + 4)), iVar2 == 1)) {
      piVar1[2] = 0xc;
      sub_02039528(*(undefined4 *)(*piVar1 + 4));
      sub_0203A880();
    }
    else {
      piVar1[2] = 0;
    }
  }
  else if (iVar2 == 0x16) {
    piVar1[0x3a] = 0;
    sub_0203A880();
    iVar2 = ov75_02246BE8(*piVar1);
    piVar1[2] = iVar2;
  }
  else {
    iVar2 = ov75_02246BE8(*piVar1);
    piVar1[2] = iVar2;
  }
  ov75_02246BE0(*piVar1,0);
  BeginNormalPaletteFade(0,1,1,0,6,1,0x74);
  GfGfx_EngineATogglePlanes(1,1);
  GfGfx_EngineATogglePlanes(2,1);
  GfGfx_EngineBTogglePlanes(1,1);
  GfGfx_EngineBTogglePlanes(2,1);
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  uRam021d1175 = 1;
  GfGfx_SwapDisplay();
  TextFlags_SetCanABSpeedUpPrint(1);
  func_0x02002b50(0);
  TextFlags_SetCanTouchSpeedUpPrint(0);
  Main_SetVBlankIntrCB(0x2247235,piVar1);
  return 1;
}

