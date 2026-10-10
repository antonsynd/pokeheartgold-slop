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
undefined4 OverlayManager_GetData();
undefined4 ov93_022602E4();
undefined4 func_0x020135ac() __asm__("sub_020135AC");
undefined4 SpriteSystem_FreeResourcesAndManager();
undefined4 ov93_0225E860();
undefined4 FreeBgTilemapBuffer();
undefined4 GF_DestroyVramTransferManager();
undefined4 ov93_0225D6E0();
undefined4 ov93_0225DBC4();
undefined4 ov93_0225DED0();
undefined4 SpriteSystem_Free();
undefined4 RemoveWindow();
undefined4 Main_SetVBlankIntrCB();
undefined4 ov93_02260608();
undefined4 ov93_0225D9E8();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x02258c38() __asm__("sub_02258C38");
undefined4 ov93_0225DAF8();
undefined4 ov93_0225DD28();
undefined4 TextFlags_SetAutoScrollParam();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 SysTask_Destroy();
undefined4 MessageFormat_Delete();
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 PaletteData_FreeBuffers();
undefined4 ov93_0225D064();
undefined4 ov93_0225CFB8();
undefined4 sub_02021238();
undefined4 sub_0203A914();
undefined4 String_Delete();
undefined4 Heap_Free();
undefined4 PaletteData_Free();
undefined4 DestroyMsgData();
undefined4 OverlayManager_FreeData();
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");

undefined4 ov93_0225CD10(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  
  piVar1 = (int *)OverlayManager_GetData();
  *(int *)(*piVar1 + 0x24) = piVar1[0xbf4];
  func_0x02258c38(piVar1[7]);
  ov93_022602E4(piVar1);
  ov93_02260608(piVar1);
  Main_SetVBlankIntrCB(0,0);
  ov93_0225D6E0(piVar1);
  ov93_0225D9E8(piVar1);
  ov93_0225DAF8(piVar1);
  ov93_0225DBC4(piVar1);
  ov93_0225DD28(piVar1);
  ov93_0225DED0(piVar1);
  ov93_0225E860(piVar1,piVar1[0x35]);
  iVar3 = 0;
  piVar2 = piVar1 + 0xc;
  do {
    RemoveWindow(piVar2);
    iVar3 = iVar3 + 1;
    piVar2 = piVar2 + 4;
  } while (iVar3 < 5);
  GfGfx_EngineATogglePlanes(1,0);
  GfGfx_EngineATogglePlanes(2,0);
  FreeBgTilemapBuffer(piVar1[0xb],1);
  FreeBgTilemapBuffer(piVar1[0xb],2);
  FreeBgTilemapBuffer(piVar1[0xb],3);
  FreeBgTilemapBuffer(piVar1[0xb],4);
  FreeBgTilemapBuffer(piVar1[0xb],5);
  FreeBgTilemapBuffer(piVar1[0xb],6);
  FreeBgTilemapBuffer(piVar1[0xb],7);
  func_0x020135ac(piVar1[0x24]);
  SpriteSystem_FreeResourcesAndManager(piVar1[9],piVar1[10]);
  SpriteSystem_Free(piVar1[9]);
  GF_DestroyVramTransferManager();
  PaletteData_FreeBuffers(piVar1[0x23],0);
  PaletteData_FreeBuffers(piVar1[0x23],1);
  PaletteData_FreeBuffers(piVar1[0x23],2);
  PaletteData_FreeBuffers(piVar1[0x23],3);
  PaletteData_Free(piVar1[0x23]);
  String_Delete(piVar1[0x22]);
  MessageFormat_Delete(piVar1[0x21]);
  DestroyMsgData(piVar1[0x20]);
  Heap_Free(piVar1[0xb]);
  ov93_0225D064(piVar1);
  SysTask_Destroy(piVar1[0x25]);
  uRam04000000 = uRam04000000 & 0xffff1fff;
  uRam04001000 = uRam04001000 & 0xffff1fff;
  ov93_0225CFB8(piVar1[0x26]);
  sub_02021238();
  OverlayManager_FreeData(param_1);
  TextFlags_SetCanABSpeedUpPrint(0);
  TextFlags_SetAutoScrollParam(0);
  TextFlags_SetCanTouchSpeedUpPrint(0);
  sub_0203A914();
  return 1;
}

