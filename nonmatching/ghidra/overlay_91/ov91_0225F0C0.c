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
undefined4 SpriteTransfer_CreatePlttTransferTask();
undefined4 SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW_AllocAtEnd();
undefined4 Sprite_Create();
undefined4 func_0x0200a480() __asm__("sub_0200A480");
undefined4 NARC_New();
undefined4 func_0x0200a3c8() __asm__("sub_0200A3C8");
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 Sprite_SetDrawFlag();
undefined4 GF_AssertFail();
undefined4 CreateSpriteResourcesHeader();
undefined4 func_0x0200a740() __asm__("sub_0200A740");
undefined4 func_0x0200a540() __asm__("sub_0200A540");
undefined4 NARC_Delete();

void ov91_0225F0C0(undefined4 *param_1,int param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uStack_34;
  undefined4 *puStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  func_0x020e5b44(param_1,0,0x40);
  uVar1 = NARC_New(200,param_3);
  uVar2 = func_0x0200a3c8(*(undefined4 *)(param_2 + 0x148),uVar1,0x15,0,0x78,2,param_3);
  *param_1 = uVar2;
  uVar2 = func_0x0200a480(*(undefined4 *)(param_2 + 0x14c),uVar1,0x14,0,0x78,2,2,param_3);
  param_1[1] = uVar2;
  uVar2 = func_0x0200a540(*(undefined4 *)(param_2 + 0x150),uVar1,0x16,0,0x78,2,param_3);
  param_1[2] = uVar2;
  uVar2 = func_0x0200a540(*(undefined4 *)(param_2 + 0x154),uVar1,0x17,0,0x78,3,param_3);
  param_1[3] = uVar2;
  iVar3 = SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW_AllocAtEnd(*param_1);
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  iVar3 = SpriteTransfer_CreatePlttTransferTask(param_1[1]);
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  func_0x0200a740(*param_1);
  func_0x0200a740(param_1[1]);
  CreateSpriteResourcesHeader
            (param_1 + 4,0x78,0x78,0x78,0x78,0xffffffff,0xffffffff,0,0,
             *(undefined4 *)(param_2 + 0x148),*(undefined4 *)(param_2 + 0x14c),
             *(undefined4 *)(param_2 + 0x150),*(undefined4 *)(param_2 + 0x154),0,0);
  uStack_34 = *(undefined4 *)(param_2 + 0x1c);
  puStack_30 = param_1 + 4;
  uStack_2c = 0x80000;
  uStack_28 = 0x278000;
  uStack_20 = 0;
  uStack_1c = 2;
  uStack_18 = param_3;
  uVar2 = Sprite_Create(&uStack_34);
  param_1[0xd] = uVar2;
  Sprite_SetDrawFlag(uVar2,0);
  NARC_Delete(uVar1);
  return;
}

