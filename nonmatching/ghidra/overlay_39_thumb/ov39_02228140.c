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
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 BgConfig_Alloc();
undefined4 GF_CreateVramTransferManager();
undefined4 HBlankInterruptDisable();
undefined4 OverlayManager_CreateAndGetData();
undefined4 SetKeyRepeatTimers();
undefined4 sub_020210BC();
undefined4 Main_SetVBlankIntrCB();
undefined4 OverlayManager_GetArgs();
undefined4 ov39_02228440();
undefined4 Heap_Create();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 GfGfx_DisableEngineBPlanes();
extern undefined2 uRam04001050 __asm__("sub_04001050");
extern uint uRam04000000 __asm__("sub_04000000");
extern undefined2 uRam04000050 __asm__("sub_04000050");
extern uint uRam04001000 __asm__("sub_04001000");
undefined4 GfGfx_SwapDisplay();
undefined4 NewString_ReadMsgData();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 sub_02021148();
undefined4 ov39_022285CC();
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 ov39_02228B6C();
undefined4 sub_0203A880();
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 NewMsgDataFromNarc();
undefined4 String_New();
undefined4 func_0x0200bd18() __asm__("sub_0200BD18");
undefined4 ov39_022288A0();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 func_0x02002b50() __asm__("sub_02002B50");
undefined4 BeginNormalPaletteFade();
undefined4 Options_GetTextFrameDelay();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");

undefined4 ov39_02228140(undefined4 param_1)

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
  Heap_Create(3,0x7c,0x50000);
  piVar1 = (int *)OverlayManager_CreateAndGetData(param_1,0x3d8,0x7c);
  func_0x020d4994(piVar1,0,0x3d8);
  iVar2 = OverlayManager_GetArgs(param_1);
  *piVar1 = iVar2;
  iVar2 = BgConfig_Alloc(0x7c);
  piVar1[1] = iVar2;
  GF_CreateVramTransferManager(0x40,0x7c);
  SetKeyRepeatTimers(4,8);
  ov39_02228440(piVar1[1]);
  sub_020210BC();
  sub_02021148(4);
  iVar2 = func_0x0200bd18(0xb,0x40,0x7c);
  piVar1[8] = iVar2;
  iVar2 = NewMsgDataFromNarc(0,0x1b,0x307,0x7c);
  piVar1[9] = iVar2;
  iVar2 = NewMsgDataFromNarc(0,0x1b,0x30a,0x7c);
  piVar1[10] = iVar2;
  iVar2 = NewMsgDataFromNarc(0,0x1b,800,0x7c);
  piVar1[0xb] = iVar2;
  iVar2 = String_New(0xb4,0x7c);
  piVar1[0xd] = iVar2;
  iVar2 = String_New(0x100,0x7c);
  piVar1[0xf] = iVar2;
  iVar2 = NewString_ReadMsgData(piVar1[9],0x1f);
  piVar1[0xe] = iVar2;
  ov39_022285CC(piVar1);
  ov39_022288A0(piVar1);
  BeginNormalPaletteFade(0,1,1,0,6,1,0x7c);
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineATogglePlanes(1,1);
  GfGfx_EngineATogglePlanes(2,1);
  GfGfx_EngineBTogglePlanes(1,1);
  GfGfx_EngineBTogglePlanes(2,1);
  uRam021d1175 = 1;
  GfGfx_SwapDisplay();
  TextFlags_SetCanABSpeedUpPrint(1);
  func_0x02002b50(0);
  TextFlags_SetCanTouchSpeedUpPrint(1);
  Main_SetVBlankIntrCB(0x2228419,piVar1);
  if (((int *)*piVar1)[1] == 0) {
    if (*(int *)(*(int *)*piVar1 + 8) == 0) {
      piVar1[2] = 0;
    }
    else {
      piVar1[2] = 1;
    }
  }
  else {
    sub_0203A880();
    ov39_02228B6C(piVar1,0xd,8);
  }
  Save_PlayerData_GetOptionsAddr(*(undefined4 *)(*(int *)*piVar1 + 4));
  iVar2 = Options_GetTextFrameDelay();
  piVar1[0x24] = iVar2;
  *(undefined4 *)(*piVar1 + 0x7c) = 0;
  return 1;
}

