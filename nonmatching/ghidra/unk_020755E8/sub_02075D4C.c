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
undefined4 Heap_Free();
undefined4 sub_020771A0();
undefined4 RemoveWindow();
undefined4 sub_0200FBF4();
undefined4 sub_02075770();
undefined4 DestroyMsgData();
undefined4 PaletteData_FreeBuffers();
undefined4 NARC_Delete();
undefined4 MessageFormat_Delete();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 GF_3DVramMan_Delete();
undefined4 sub_02016F2C();
undefined4 sub_020164C4();
undefined4 WindowArray_Delete();
undefined4 PaletteData_Free();
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 FontID_Release();
undefined4 Main_SetVBlankIntrCB();
undefined4 PokepicManager_Delete();
undefined4 GfGfx_SwapDisplay();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");

void sub_02075D4C(undefined4 *param_1)

{
  sub_0200FBF4(0,0);
  sub_0200FBF4(1,0);
  Main_SetVBlankIntrCB(0,0);
  FontID_Release(4);
  sub_02075770(param_1);
  WindowArray_Delete(param_1[1],1);
  RemoveWindow(param_1 + 0x23);
  RemoveWindow(param_1 + 0x27);
  PaletteData_FreeBuffers(param_1[5],0);
  PaletteData_FreeBuffers(param_1[5],1);
  PaletteData_FreeBuffers(param_1[5],2);
  PaletteData_Free(param_1[5]);
  PokepicManager_Delete(param_1[6]);
  sub_02016F2C(param_1[0x11]);
  GF_3DVramMan_Delete(param_1[0xd]);
  sub_020771A0(*param_1);
  DestroyMsgData(param_1[2]);
  MessageFormat_Delete(param_1[3]);
  Heap_Free(param_1[4]);
  Heap_Free(param_1[0xf]);
  sub_020164C4(param_1[0x16]);
  Heap_Free(*param_1);
  NARC_Delete(param_1[0x21]);
  Heap_Free(param_1);
  TextFlags_SetCanABSpeedUpPrint(0);
  TextFlags_SetCanTouchSpeedUpPrint(0);
  uRam021d1175 = 1;
  GfGfx_SwapDisplay();
  return;
}

