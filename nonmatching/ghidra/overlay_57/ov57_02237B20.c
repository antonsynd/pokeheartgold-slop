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
undefined4 ov57_02237E80();
undefined4 ov57_02238714();
undefined4 Heap_Free();
undefined4 sub_02016F2C();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 PaletteData_Free();
undefined4 ov57_022383AC();
undefined4 GF_DestroyVramTransferManager();
undefined4 ov57_022390F4();
undefined4 TouchHitboxController_Destroy();
undefined4 MenuInputStateMgr_SetState();
undefined4 PokepicManager_Delete();
undefined4 NARC_Delete();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 PaletteData_FreeBuffers();
undefined4 FreeBgTilemapBuffer();
undefined4 OverlayManager_GetData();
undefined4 ov57_02237CDC();
undefined4 GF_3DVramMan_Delete();
undefined4 OverlayManager_FreeData();
undefined4 func_0x02006f7c() __asm__("sub_02006F7C");
undefined4 Heap_Destroy();
undefined4 sub_02021238();

undefined4 ov57_02237B20(undefined4 param_1)

{
  int *piVar1;
  
  piVar1 = (int *)OverlayManager_GetData();
  GfGfx_EngineATogglePlanes(1,0);
  GfGfx_EngineATogglePlanes(2,0);
  GfGfx_EngineATogglePlanes(4,0);
  GfGfx_EngineATogglePlanes(8,0);
  GfGfx_EngineBTogglePlanes(1,0);
  GfGfx_EngineBTogglePlanes(2,0);
  GfGfx_EngineBTogglePlanes(4,0);
  GfGfx_EngineBTogglePlanes(8,0);
  FreeBgTilemapBuffer(piVar1[0x39],1);
  FreeBgTilemapBuffer(piVar1[0x39],2);
  FreeBgTilemapBuffer(piVar1[0x39],3);
  FreeBgTilemapBuffer(piVar1[0x39],4);
  FreeBgTilemapBuffer(piVar1[0x39],5);
  FreeBgTilemapBuffer(piVar1[0x39],6);
  FreeBgTilemapBuffer(piVar1[0x39],7);
  Heap_Free(piVar1[0x39]);
  PaletteData_FreeBuffers(piVar1[0x3a],0);
  PaletteData_FreeBuffers(piVar1[0x3a],1);
  PaletteData_FreeBuffers(piVar1[0x3a],2);
  PaletteData_FreeBuffers(piVar1[0x3a],3);
  PaletteData_Free(piVar1[0x3a]);
  ov57_02237E80(*piVar1,piVar1[0xfb] & 0xff);
  Heap_Free(piVar1[0x116]);
  ov57_022383AC(piVar1);
  TouchHitboxController_Destroy(piVar1[0x7b]);
  PokepicManager_Delete(piVar1[0x71]);
  sub_02016F2C(piVar1[0xa1]);
  ov57_02238714(piVar1);
  ov57_022390F4(piVar1 + 0x35);
  GF_DestroyVramTransferManager();
  GF_3DVramMan_Delete(piVar1[0x96]);
  ov57_02237CDC(0x34);
  NARC_Delete(piVar1[0x117]);
  MenuInputStateMgr_SetState(*(undefined4 *)(*piVar1 + 0x2c),piVar1[0x103]);
  OverlayManager_FreeData(param_1);
  sub_02021238();
  Heap_Destroy(0x34);
  func_0x02006f7c(6);
  func_0x02006f7c(7);
  return 1;
}

