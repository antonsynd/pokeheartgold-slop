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
undefined4 SpriteTransfer_DeletePlttTransferTask();
undefined4 RemoveWindow();
undefined4 MessageFormat_Delete();
undefined4 Heap_Free();
undefined4 String_Delete();
undefined4 Destroy2DGfxResObjMan();
undefined4 SpriteList_Delete();
undefined4 ov97_0221F0E0();
undefined4 DestroyMsgData();
undefined4 FreeBgTilemapBuffer();
undefined4 SpriteTransfer_DeleteCharTransferTask();

void ov97_0221F020(int param_1)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  
  DestroyMsgData(*(undefined4 *)(param_1 + 0x6c));
  MessageFormat_Delete(*(undefined4 *)(param_1 + 0x70));
  String_Delete(*(undefined4 *)(param_1 + 0x74));
  RemoveWindow(param_1 + 8);
  RemoveWindow(param_1 + 0x18);
  RemoveWindow(param_1 + 0x28);
  RemoveWindow(param_1 + 0x38);
  RemoveWindow(param_1 + 0x48);
  RemoveWindow(param_1 + 0x58);
  FreeBgTilemapBuffer(*(undefined4 *)(param_1 + 4),4);
  FreeBgTilemapBuffer(*(undefined4 *)(param_1 + 4),5);
  FreeBgTilemapBuffer(*(undefined4 *)(param_1 + 4),6);
  FreeBgTilemapBuffer(*(undefined4 *)(param_1 + 4),7);
  iVar2 = param_1 + 0x78;
  ov97_0221F0E0(iVar2);
  uVar1 = 0;
  do {
    iVar3 = iVar2 + uVar1 * 0x18;
    SpriteTransfer_DeleteCharTransferTask(*(undefined4 *)(iVar3 + 0x148));
    SpriteTransfer_DeletePlttTransferTask(*(undefined4 *)(iVar3 + 0x14c));
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 3);
  uVar1 = 0;
  do {
    Destroy2DGfxResObjMan(*(undefined4 *)(iVar2 + uVar1 * 4 + 0x130));
    uVar1 = uVar1 + 1 & 0xff;
  } while (uVar1 < 6);
  SpriteList_Delete(*(undefined4 *)(param_1 + 0x7c));
  Heap_Free(param_1);
  return;
}

