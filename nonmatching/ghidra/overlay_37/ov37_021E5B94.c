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
undefined4 ov37_021E5F5C();
undefined4 Main_SetVBlankIntrCB();
undefined4 OverlayManager_GetArgs();
undefined4 MessageFormat_Delete();
undefined4 SpriteTransfer_DeleteCharTransferTask();
undefined4 SpriteTransfer_DeletePlttTransferTask();
undefined4 func_0x0202168c() __asm__("sub_0202168C");
undefined4 func_0x02022608() __asm__("sub_02022608");
undefined4 sub_02021238();
undefined4 SpriteList_Delete();
undefined4 sub_02038C1C();
undefined4 sub_02037FF0();
undefined4 Destroy2DGfxResObjMan();
undefined4 ov37_021E6540();
undefined4 OverlayManager_GetData();
undefined4 sub_0205AD24();
undefined4 DestroyMsgData();
undefined4 func_0x0200b244() __asm__("sub_0200B244");
extern ushort uRam04000304 __asm__("sub_04000304");
undefined4 OverlayManager_FreeData();
undefined4 Heap_Free();
undefined4 Heap_Destroy();
undefined4 ov37_021E5F20();
undefined4 sub_02033250();
undefined4 sub_020356EC();
undefined4 sub_0205A904();

undefined4 ov37_021E5B94(undefined4 param_1,int *param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  int iVar3;

  puVar1 = (undefined4 *)OverlayManager_GetData();
  puVar2 = (undefined4 *)OverlayManager_GetArgs(param_1);
  switch(*param_2) {
  case 0:
    Main_SetVBlankIntrCB(0,0);
    SpriteTransfer_DeleteCharTransferTask(puVar1[0x5c]);
    SpriteTransfer_DeleteCharTransferTask(puVar1[0x60]);
    SpriteTransfer_DeletePlttTransferTask(puVar1[0x5d]);
    SpriteTransfer_DeletePlttTransferTask(puVar1[0x61]);
    iVar3 = 0;
    puVar2 = puVar1;
    do {
      Destroy2DGfxResObjMan(puVar2[0x58]);
      iVar3 = iVar3 + 1;
      puVar2 = puVar2 + 1;
    } while (iVar3 < 4);
    SpriteList_Delete(puVar1[0xd]);
    func_0x0200b244();
    func_0x0202168c();
    func_0x02022608();
    ov37_021E6540(puVar1);
    ov37_021E5F5C(*puVar1);
    sub_02021238();
    DestroyMsgData(puVar1[4]);
    MessageFormat_Delete(puVar1[3]);
    *param_2 = *param_2 + 1;
    break;
  case 1:
    sub_02038C1C(1);
    sub_02037FF0();
    sub_0205AD24(*puVar2);
    uRam04000304 = uRam04000304 | 0x8000;
    sub_0205A904(0);
    sub_020356EC(0);
    *param_2 = *param_2 + 1;
    break;
  case 2:
    if (puVar1[0x2500] == 0) {
      *param_2 = *param_2 + 1;
    }
    else {
      iVar3 = sub_02033250();
      if (iVar3 == 1) {
        *param_2 = *param_2 + 1;
      }
    }
    break;
  case 3:
    sub_02038C1C(2);
    ov37_021E5F20(puVar1);
    Heap_Free(puVar1[2]);
    OverlayManager_FreeData(param_1);
    Main_SetVBlankIntrCB(0,0);
    Heap_Destroy(0x27);
    sub_02038C1C(2);
    return 1;
  }
  return 0;
}

