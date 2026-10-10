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
undefined4 func_0x0200b244() __asm__("sub_0200B244");
undefined4 ov73_021E5F0C();
undefined4 ov73_021E6048();
undefined4 SpriteTransfer_DeleteCharTransferTask();
undefined4 sub_02038C1C();
undefined4 FontID_Release();
undefined4 MessageFormat_Delete();
undefined4 OverlayManager_GetData();
undefined4 SysTask_Destroy();
undefined4 sub_0205AD24();
undefined4 SpriteTransfer_DeletePlttTransferTask();
undefined4 func_0x0202168c() __asm__("sub_0202168C");
undefined4 ov73_021E6400();
undefined4 Destroy2DGfxResObjMan();
undefined4 func_0x02022608() __asm__("sub_02022608");
undefined4 DestroyMsgData();
undefined4 sub_02021238();
undefined4 SpriteList_Delete();
undefined4 sub_02037FF0();
undefined4 ov73_021E5ED4();
undefined4 sub_0205A904();
undefined4 Main_SetVBlankIntrCB();
undefined4 Heap_Destroy();
undefined4 MenuInputStateMgr_SetState();
undefined4 OverlayManager_FreeData();
extern ushort uRam04000304 __asm__("sub_04000304");

undefined4 ov73_021E5BAC(undefined4 param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  
  puVar1 = (undefined4 *)OverlayManager_GetData();
  SysTask_Destroy(puVar1[8]);
  SpriteTransfer_DeleteCharTransferTask(puVar1[0x6b]);
  SpriteTransfer_DeletePlttTransferTask(puVar1[0x6c]);
  iVar2 = 0;
  puVar3 = puVar1;
  do {
    Destroy2DGfxResObjMan(puVar3[0x5f]);
    iVar2 = iVar2 + 1;
    puVar3 = puVar3 + 1;
  } while (iVar2 < 4);
  SpriteList_Delete(puVar1[0x14]);
  func_0x0200b244();
  func_0x0202168c();
  func_0x02022608();
  ov73_021E6400(puVar1);
  ov73_021E6048(puVar1);
  ov73_021E5F0C(*puVar1);
  sub_02038C1C(2);
  sub_02037FF0();
  sub_0205AD24(*(undefined4 *)(puVar1[2] + 4));
  sub_02021238();
  FontID_Release(4);
  DestroyMsgData(puVar1[10]);
  MessageFormat_Delete(puVar1[9]);
  MenuInputStateMgr_SetState(*(undefined4 *)(puVar1[2] + 0x10),puVar1[0xc5]);
  ov73_021E5ED4(puVar1);
  OverlayManager_FreeData(param_1);
  uRam04000304 = uRam04000304 | 0x8000;
  sub_0205A904(0);
  Main_SetVBlankIntrCB(0,0);
  Heap_Destroy(0x32);
  return 1;
}

