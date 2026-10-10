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
undefined4 func_0x0225f598() __asm__("sub_0225F598");
undefined4 ov27_0225BEB0();
undefined4 Heap_AllocAtEnd();
undefined4 SpriteTransfer_DeletePlttTransferTask();
undefined4 SpriteList_Delete();
undefined4 MessageFormat_Delete();
undefined4 func_0x020d8d60() __asm__("sub_020D8D60");
undefined4 RemoveWindow();
undefined4 func_0x0225f430() __asm__("sub_0225F430");
undefined4 FreeBgTilemapBuffer();
undefined4 DestroyMsgData();
undefined4 ov27_0225BC34();
undefined4 FontID_Release();
undefined4 SysTask_GetData();
undefined4 SpriteTransfer_DeleteCharTransferTask();
undefined4 DestroySysTaskAndEnvironment();
undefined4 Destroy2DGfxResObjMan();
undefined4 func_0x020d8db4() __asm__("sub_020D8DB4");
undefined4 Heap_Destroy();
undefined4 func_0x0225f688() __asm__("sub_0225F688");

void ov27_0225A19C(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = SysTask_GetData(param_2);
  func_0x020d8d60(0,0x7b);
  iVar2 = func_0x0225f430(0x225c239);
  if (iVar2 != 0) {
    Heap_AllocAtEnd(3,1000);
  }
  ov27_0225BEB0(iVar1 + 0x520);
  DestroyMsgData(*(undefined4 *)(iVar1 + 0x4a8));
  MessageFormat_Delete(*(undefined4 *)(iVar1 + 0x4ac));
  iVar3 = 0;
  iVar2 = iVar1;
  do {
    SpriteTransfer_DeleteCharTransferTask(*(undefined4 *)(iVar2 + 0x154));
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 0x10;
  } while (iVar3 < 0xb);
  iVar3 = 0;
  iVar2 = iVar1;
  do {
    SpriteTransfer_DeletePlttTransferTask(*(undefined4 *)(iVar2 + 0x158));
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 0x10;
  } while (iVar3 < 0xb);
  iVar3 = 0;
  iVar2 = iVar1;
  do {
    Destroy2DGfxResObjMan(*(undefined4 *)(iVar2 + 0x144));
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar3 < 4);
  iVar2 = func_0x0225f598(0x225c249);
  if (iVar2 == 0) {
    Heap_AllocAtEnd(3,1000);
  }
  SpriteList_Delete(*(undefined4 *)(iVar1 + 0x18));
  iVar3 = 0;
  iVar2 = iVar1 + 0x3f0;
  do {
    RemoveWindow(iVar2);
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 0x10;
  } while (iVar3 < 8);
  RemoveWindow(iVar1 + 0x3e0);
  RemoveWindow(iVar1 + 0x3d0);
  ov27_0225BC34(iVar1);
  FontID_Release(4);
  DestroySysTaskAndEnvironment(param_2);
  FreeBgTilemapBuffer(param_1,5);
  FreeBgTilemapBuffer(param_1,4);
  Heap_Destroy(8);
  iVar1 = func_0x0225f688(0x225c24d);
  if (iVar1 == 0) {
    Heap_AllocAtEnd(3,1000);
  }
  func_0x020d8db4(0,0x7b);
  return;
}

