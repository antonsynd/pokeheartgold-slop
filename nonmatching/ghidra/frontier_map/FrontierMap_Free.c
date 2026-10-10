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
undefined4 ToggleBgLayer();
undefined4 PaletteData_Free();
undefined4 SysTask_Destroy();
undefined4 ov80_0223927C();
undefined4 ov80_0222ADB4();
undefined4 FreeBgTilemapBuffer();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ov80_02239980();
undefined4 GF_DestroyVramTransferManager();
undefined4 ov80_022393E8();
undefined4 PaletteData_FreeBuffers();
undefined4 Frontier_GetLaunchArgs();
undefined4 ov80_0223937C();
undefined4 Heap_Free();
undefined4 sub_02021238();
extern uint uRam04000000 __asm__("sub_04000000");
extern uint uRam04001000 __asm__("sub_04001000");
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 Main_SetVBlankIntrCB();
undefined4 Heap_Destroy();
undefined4 func_0x02002b50() __asm__("sub_02002B50");
undefined4 HBlankInterruptDisable();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 func_0x020d4790() __asm__("sub_020D4790");
undefined4 sub_0203A914();
extern undefined2 uRam04000050 __asm__("sub_04000050");
extern undefined2 uRam04001050 __asm__("sub_04001050");

void FrontierMap_Free(undefined4 *param_1)

{
  Frontier_GetLaunchArgs(param_1[2]);
  ov80_0222ADB4(param_1,param_1 + 0x24,*(undefined1 *)((int)param_1 + 0xc1));
  ov80_0223927C(param_1);
  GfGfx_EngineATogglePlanes(1,0);
  GfGfx_EngineATogglePlanes(2,0);
  FreeBgTilemapBuffer(*param_1,1);
  FreeBgTilemapBuffer(*param_1,2);
  FreeBgTilemapBuffer(*param_1,3);
  ToggleBgLayer(4,0);
  FreeBgTilemapBuffer(*param_1,4);
  ov80_022393E8(param_1);
  ov80_02239980(param_1[4]);
  GF_DestroyVramTransferManager();
  PaletteData_FreeBuffers(param_1[1],0);
  PaletteData_FreeBuffers(param_1[1],1);
  PaletteData_FreeBuffers(param_1[1],2);
  PaletteData_FreeBuffers(param_1[1],3);
  PaletteData_Free(param_1[1]);
  Heap_Free(*param_1);
  SysTask_Destroy(param_1[0x25]);
  SysTask_Destroy(param_1[0x26]);
  SysTask_Destroy(param_1[0x27]);
  SysTask_Destroy(param_1[0x28]);
  ov80_0223937C(param_1[3]);
  sub_02021238();
  Heap_Free(param_1);
  uRam04000000 = uRam04000000 & 0xffff1fff;
  uRam04001000 = uRam04001000 & 0xffff1fff;
  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  Heap_Destroy(0x65);
  TextFlags_SetCanABSpeedUpPrint(0);
  func_0x02002b50(0);
  TextFlags_SetCanTouchSpeedUpPrint(0);
  sub_0203A914();
  func_0x020d4790(0x7fff,0x5000000,0x200);
  func_0x020d4790(0x7fff,0x5000200,0x200);
  func_0x020d4790(0x7fff,0x5000400,0x200);
  func_0x020d4790(0x7fff,0x5000600,0x200);
  uRam04000050 = 0;
  uRam04001050 = 0;
  return;
}

