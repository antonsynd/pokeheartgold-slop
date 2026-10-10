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
undefined4 Heap_Create();
undefined4 HBlankInterruptDisable();
undefined4 sub_02021148();
undefined4 func_0x0201a728() __asm__("sub_0201A728");
undefined4 SetKeyRepeatTimers();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 ov112_021E795C();
undefined4 Main_SetVBlankIntrCB();
undefined4 OverlayManager_CreateAndGetData();
undefined4 OverlayManager_GetArgs();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 sub_020210BC();
extern undefined2 uRam04001050 __asm__("sub_04001050");
extern uint uRam04000000 __asm__("sub_04000000");
extern undefined2 uRam04000050 __asm__("sub_04000050");
extern uint uRam04001000 __asm__("sub_04001000");
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 ov112_021E7768();

undefined4
ov112_021E76CC(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  
  Main_SetVBlankIntrCB(0,0,param_3,param_4,param_4);
  HBlankInterruptDisable();
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffffe0ff;
  uRam04001000 = uRam04001000 & 0xffffe0ff;
  uRam04000050 = 0;
  uRam04001050 = 0;
  func_0x0201a728(0x10);
  Heap_Create(3,0x9a,0x70000);
  iVar1 = OverlayManager_CreateAndGetData(param_1,0x1f378,0x9a);
  func_0x020e5b44(iVar1,0,0x1f378);
  iVar2 = OverlayManager_GetArgs(param_1);
  *(undefined4 *)(iVar1 + 0x20) = *(undefined4 *)(iVar2 + 8);
  ov112_021E795C(iVar1);
  SetKeyRepeatTimers(3,8);
  sub_020210BC();
  sub_02021148(4);
  ov112_021E7768(iVar1);
  TextFlags_SetCanABSpeedUpPrint(1);
  return 1;
}

