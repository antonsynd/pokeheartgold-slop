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
undefined4 CreateSpriteResourcesHeader();
undefined4 func_0x0200a540() __asm__("sub_0200A540");
undefined4 func_0x0200a3c8() __asm__("sub_0200A3C8");
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 SpriteTransfer_CreateCharTransferTask_AllocAtEnd();
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc();
undefined4 func_0x0200b00c() __asm__("sub_0200B00C");
undefined4 func_0x0200a740() __asm__("sub_0200A740");
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 func_0x0200a480() __asm__("sub_0200A480");
undefined4 func_0x02024714() __asm__("sub_02024714");
undefined4 AddWindow();
undefined4 GF_AssertFail();
undefined4 Sprite_SetDrawFlag();
undefined4 ov47_02259C8C();
extern undefined ov47_02259E40;

void ov47_02258DD0(int param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uStack_54;
  undefined1 *puStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined1 auStack_34 [36];

  GfGfxLoader_GXLoadPalFromOpenNarc(param_3[0x50],199,0,0,0x80,param_4);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_3[0x50],200,*param_3,0,0,0,0,param_4);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_3[0x50],0xc9,*param_3,0,0,0,0,param_4);
  uVar1 = func_0x0200a3c8(param_3[0x4c],param_3[0x50],0xcd,0,0x14,1,param_4);
  *(undefined4 *)(param_1 + 0x18) = uVar1;
  uVar1 = func_0x0200a480(param_3[0x4d],param_3[0x50],0xcc,0,0x14,1,3,param_4);
  *(undefined4 *)(param_1 + 0x1c) = uVar1;
  iVar2 = SpriteTransfer_CreateCharTransferTask_AllocAtEnd(*(undefined4 *)(param_1 + 0x18));
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  iVar2 = func_0x0200b00c(*(undefined4 *)(param_1 + 0x1c));
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  func_0x0200a740(*(undefined4 *)(param_1 + 0x18));
  func_0x0200a740(*(undefined4 *)(param_1 + 0x1c));
  uVar1 = func_0x0200a540(param_3[0x4e],param_3[0x50],0xce,0,0x14,2,param_4);
  *(undefined4 *)(param_1 + 0x20) = uVar1;
  uVar1 = func_0x0200a540(param_3[0x4f],param_3[0x50],0xcf,0,0x14,3,param_4);
  *(undefined4 *)(param_1 + 0x24) = uVar1;
  uStack_54 = 0;
  puStack_50 = (undefined1 *)0x0;
  uStack_4c = 0;
  uStack_48 = 0;
  uStack_44 = 0;
  uStack_40 = 0;
  uStack_3c = 0;
  uStack_38 = 0;
  CreateSpriteResourcesHeader
            (auStack_34,0x14,0x14,0x14,0x14,0xffffffff,0xffffffff,0,0,param_3[0x4c],param_3[0x4d],
             param_3[0x4e],param_3[0x4f],0,0);
  uStack_54 = param_3[1];
  puStack_50 = auStack_34;
  uStack_40 = 0;
  uStack_3c = 1;
  uStack_38 = param_4;
  uVar1 = func_0x02024714(&uStack_54);
  *(undefined4 *)(param_1 + 0x14) = uVar1;
  Sprite_SetDrawFlag(uVar1,0);
  AddWindow(*param_3,param_1,&ov47_02259E40);
  ov47_02259C8C(param_1 + 0x2c,1,param_4);
  return;
}

