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
undefined4 SysTask_Destroy();
undefined4 SpriteTransfer_DeletePlttTransferTask();
undefined4 func_0x02022608() __asm__("sub_02022608");
undefined4 func_0x0200b244() __asm__("sub_0200B244");
undefined4 DestroyMsgData();
undefined4 SpriteList_Delete();
undefined4 ov85_021E8E00();
undefined4 ov85_021E9FEC();
undefined4 Main_SetVBlankIntrCB();
undefined4 MessageFormat_Delete();
undefined4 OverlayManager_GetData();
undefined4 ov85_021E9FD0();
undefined4 SpriteTransfer_DeleteCharTransferTask();
undefined4 ov85_021E9288();
undefined4 ov85_021E8E38();
undefined4 Destroy2DGfxResObjMan();
undefined4 func_0x0202168c() __asm__("sub_0202168C");
extern ushort uRam04000304 __asm__("sub_04000304");
undefined4 Heap_Destroy();
undefined4 OverlayManager_FreeData();

undefined4 ov85_021E8B08(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;

  iVar1 = OverlayManager_GetData();
  SysTask_Destroy(*(undefined4 *)(iVar1 + 0x30));
  SpriteTransfer_DeleteCharTransferTask(*(undefined4 *)(iVar1 + 0x1bc));
  SpriteTransfer_DeletePlttTransferTask(*(undefined4 *)(iVar1 + 0x1c0));
  iVar3 = 0;
  iVar4 = iVar1;
  do {
    Destroy2DGfxResObjMan(*(undefined4 *)(iVar4 + 0x18c));
    iVar3 = iVar3 + 1;
    iVar4 = iVar4 + 4;
  } while (iVar3 < 4);
  SpriteList_Delete(*(undefined4 *)(iVar1 + 0x60));
  func_0x0200b244();
  func_0x0202168c();
  func_0x02022608();
  ov85_021E9288(iVar1);
  ov85_021E8E38(*(undefined4 *)(iVar1 + 0x14));
  DestroyMsgData(*(undefined4 *)(iVar1 + 0x38));
  MessageFormat_Delete(*(undefined4 *)(iVar1 + 0x34));
  uRam04000304 = uRam04000304 | 0x8000;
  Main_SetVBlankIntrCB(0,0);
  *(undefined4 *)(*(int *)(iVar1 + 0xc) + 0x10) = *(undefined4 *)(iVar1 + 8);
  uVar2 = ov85_021E9FD0();
  *(undefined4 *)(*(int *)(iVar1 + 0xc) + 8) = uVar2;
  uVar2 = ov85_021E9FEC();
  *(undefined4 *)(*(int *)(iVar1 + 0xc) + 0xc) = uVar2;
  ov85_021E8E00(iVar1);
  OverlayManager_FreeData(param_1);
  Heap_Destroy(0x66);
  return 1;
}

