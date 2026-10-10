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
undefined4 Sprite_CreateAffine();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_SetDrawFlag();
undefined4 CreateSpriteResourcesHeader();
undefined4 GF_AssertFail();

void ov96_021E8EE4(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int param_4,
                  undefined1 param_5,byte param_6)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uStack_64;
  undefined1 *puStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined2 uStack_44;
  undefined4 uStack_40;
  int iStack_3c;
  undefined4 uStack_38;
  undefined1 auStack_34 [36];
  int iStack_10;
  
  iStack_10 = param_4;
  CreateSpriteResourcesHeader
            (auStack_34,param_5,param_5,param_5,param_5,0xffffffff,0xffffffff,param_3,param_2,
             param_1[0x51],param_1[0x52],param_1[0x53],param_1[0x54],0,0);
  if (param_4 == 3) {
    param_4 = 1;
  }
  uStack_64 = param_1[6];
  puStack_60 = auStack_34;
  uStack_38 = *param_1;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = 0;
  uStack_50 = 0x1000;
  uStack_4c = 0x1000;
  uStack_48 = 0x1000;
  uStack_44 = 0;
  uStack_40 = 0;
  iVar2 = (uint)param_6 * 0x2c;
  iStack_3c = param_4;
  uVar1 = Sprite_CreateAffine(&uStack_64);
  *(undefined4 *)(param_1[0x55] + iVar2 + 0x10) = uVar1;
  if (*(int *)(param_1[0x55] + iVar2 + 0x10) == 0) {
    GF_AssertFail();
  }
  Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1[0x55] + iVar2 + 0x10),1);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1[0x55] + iVar2 + 0x10),0);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1[0x55] + iVar2 + 0x10),0);
  return;
}

