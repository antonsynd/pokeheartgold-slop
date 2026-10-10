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
undefined4 func_0x02013910() __asm__("sub_02013910");
undefined4 func_0x0200a480() __asm__("sub_0200A480");
undefined4 func_0x0201d494() __asm__("sub_0201D494");
undefined4 Sprite_SetDrawFlag();
undefined4 AddPlttResObjFromNarc();
undefined4 CreateSpriteResourcesHeader();
undefined4 func_0x0200a740() __asm__("sub_0200A740");
undefined4 Sprite_Create();
undefined4 func_0x02013948() __asm__("sub_02013948");
undefined4 func_0x0200a3c8() __asm__("sub_0200A3C8");
undefined4 GF_AssertFail();
undefined4 func_0x02021ac8() __asm__("sub_02021AC8");
undefined4 func_0x0200a540() __asm__("sub_0200A540");
undefined4 String_New();
undefined4 ov91_0225D40C();
undefined4 TextOBJ_Create();
undefined4 RemoveWindow();
undefined4 func_0x020137c0() __asm__("sub_020137C0");
undefined4 SpriteTransfer_GetPaletteProxy();

void ov91_02261580(undefined4 *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uStack_64;
  undefined4 *puStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 *puStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  param_1[0x27] = param_4;
  uVar1 = func_0x0200a3c8(param_2[0x52],param_3,10,0,0x8c,1,param_4);
  *param_1 = uVar1;
  uVar1 = func_0x0200a480(param_2[0x53],param_3,0xb,0,0x8c,1,1,param_4);
  param_1[1] = uVar1;
  uVar1 = func_0x0200a540(param_2[0x54],param_3,9,0,0x8c,2,param_4);
  param_1[2] = uVar1;
  uVar1 = func_0x0200a540(param_2[0x55],param_3,8,0,0x8c,3,param_4);
  param_1[3] = uVar1;
  iVar2 = SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW_AllocAtEnd(*param_1);
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  iVar2 = SpriteTransfer_CreatePlttTransferTask(param_1[1]);
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  func_0x0200a740(*param_1);
  func_0x0200a740(param_1[1]);
  CreateSpriteResourcesHeader
            (param_1 + 4,0x8c,0x8c,0x8c,0x8c,0xffffffff,0xffffffff,0,0,param_2[0x52],param_2[0x53],
             param_2[0x54],param_2[0x55],0,0);
  uStack_34 = param_2[7];
  puStack_30 = param_1 + 4;
  uStack_2c = 0xfffc0000;
  uStack_28 = 0x30000;
  uStack_20 = 1;
  uStack_1c = 1;
  uStack_18 = param_4;
  uVar1 = Sprite_Create(&uStack_34);
  param_1[0xd] = uVar1;
  Sprite_SetDrawFlag(uVar1,0);
  uVar1 = String_New(0x10,param_4);
  param_1[0x17] = uVar1;
  func_0x0201d494(*param_2,param_1 + 0xe,3,2,0,0);
  uVar1 = func_0x02013910(param_1 + 0xe,param_4);
  param_1[0x13] = uVar1;
  uVar1 = func_0x02013948(uVar1,1);
  iVar2 = func_0x02021ac8(uVar1,1,1,param_1 + 0x14);
  if (iVar2 != 1) {
    GF_AssertFail();
  }
  uVar1 = AddPlttResObjFromNarc(param_2[0x53],0x10,7,0,0x96,1,1,param_4);
  param_1[0x18] = uVar1;
  iVar2 = SpriteTransfer_CreatePlttTransferTask();
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  func_0x0200a740(param_1[0x18]);
  uStack_64 = param_2[99];
  puStack_60 = param_1 + 0xe;
  uStack_5c = param_2[7];
  uStack_58 = SpriteTransfer_GetPaletteProxy(param_1[0x18],0);
  uStack_54 = param_1[0xd];
  uStack_50 = param_1[0x15];
  uStack_4c = 0xfffffff9;
  uStack_48 = 0xfffffffb;
  uStack_44 = 0;
  uStack_40 = 0;
  uStack_3c = 1;
  uStack_38 = param_4;
  uVar1 = TextOBJ_Create(&uStack_64,param_1[0x13]);
  param_1[0x12] = uVar1;
  func_0x020137c0(uVar1,0);
  RemoveWindow(param_1 + 0xe);
  ov91_0225D40C(param_1 + 0x19,0xfffc0000,0x20000,0x24000,8);
  ov91_0225D40C(param_1 + 0x1f,0x30000,0x30000,0xc000,4);
  *(undefined2 *)(param_1 + 0x25) = 0;
  *(undefined2 *)((int)param_1 + 0x96) = 4;
  return;
}

