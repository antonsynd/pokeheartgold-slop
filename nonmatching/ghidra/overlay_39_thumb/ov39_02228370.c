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
undefined4 sub_02021238();
undefined4 sub_0203A914();
undefined4 Heap_Destroy();
undefined4 ov39_022285A8();
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 OverlayManager_GetData();
undefined4 String_Delete();
undefined4 Main_SetVBlankIntrCB();
undefined4 ov39_02228948();
undefined4 OverlayManager_FreeData();
undefined4 GF_DestroyVramTransferManager();
undefined4 DestroyMsgData();
undefined4 MessageFormat_Delete();
undefined4 Heap_Free();
undefined4 HBlankInterruptDisable();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 func_0x02002b50() __asm__("sub_02002B50");
undefined4 SysTask_Destroy();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");
undefined4 GfGfx_SwapDisplay();

undefined4 ov39_02228370(undefined4 param_1)

{
  int iVar1;
  
  iVar1 = OverlayManager_GetData();
  if (*(int *)(iVar1 + 0xa8) != 0) {
    SysTask_Destroy();
    *(undefined4 *)(iVar1 + 0xa8) = 0;
    *(undefined4 *)(iVar1 + 0xac) = 0;
  }
  DestroyMsgData(*(undefined4 *)(iVar1 + 0x2c));
  DestroyMsgData(*(undefined4 *)(iVar1 + 0x28));
  DestroyMsgData(*(undefined4 *)(iVar1 + 0x24));
  MessageFormat_Delete(*(undefined4 *)(iVar1 + 0x20));
  String_Delete(*(undefined4 *)(iVar1 + 0x38));
  String_Delete(*(undefined4 *)(iVar1 + 0x3c));
  String_Delete(*(undefined4 *)(iVar1 + 0x34));
  ov39_02228948(iVar1);
  Heap_Free(*(undefined4 *)(iVar1 + 4));
  ov39_022285A8(*(undefined4 *)(iVar1 + 4));
  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  GF_DestroyVramTransferManager();
  sub_02021238();
  TextFlags_SetCanABSpeedUpPrint(0);
  func_0x02002b50(0);
  TextFlags_SetCanTouchSpeedUpPrint(0);
  sub_0203A914();
  OverlayManager_FreeData(param_1);
  Heap_Destroy(0x7c);
  uRam021d1175 = 0;
  GfGfx_SwapDisplay();
  return 1;
}

