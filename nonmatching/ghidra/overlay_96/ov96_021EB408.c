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

undefined4
ov96_021EB408(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
             byte param_5)

{
  undefined4 uVar1;
  undefined4 uStack_68;
  undefined1 *puStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined2 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined1 auStack_38 [36];
  
  if ((int)param_1[2] <= (int)param_1[1]) {
    GF_AssertFail();
  }
  CreateSpriteResourcesHeader
            (auStack_38,param_4,param_4,param_4,param_4,0xffffffff,0xffffffff,0,param_2,
             param_1[0x50],param_1[0x51],param_1[0x52],param_1[0x53],0,0);
  uStack_68 = param_1[5];
  puStack_64 = auStack_38;
  uStack_3c = *param_1;
  uStack_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = 0x1000;
  uStack_50 = 0x1000;
  uStack_4c = 0x1000;
  uStack_48 = 0;
  uStack_44 = 0;
  uStack_40 = param_3;
  uVar1 = Sprite_CreateAffine(&uStack_68);
  Sprite_SetAnimActiveFlag(uVar1,1);
  Sprite_SetAnimCtrlSeq(uVar1,0);
  Sprite_SetDrawFlag(uVar1,0);
  *(undefined2 *)(param_1[0x55] + param_1[1] * 0xc) = 0;
  *(undefined2 *)(param_1[0x55] + param_1[1] * 0xc + 2) = 0;
  *(undefined4 *)(param_1[0x55] + param_1[1] * 0xc + 4) = uVar1;
  *(ushort *)(param_1[0x55] + param_1[1] * 0xc + 8) = (ushort)param_5;
  *(short *)(param_1[0x55] + param_1[1] * 0xc + 10) = (short)param_4;
  param_1[1] = param_1[1] + 1;
  return uVar1;
}

