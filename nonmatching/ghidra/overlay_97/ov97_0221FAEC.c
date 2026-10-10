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
undefined4 Sprite_SetAnimActiveFlag();
undefined4 Sprite_SetPriority();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_CreateAffine();
undefined4 CreateSpriteResourcesHeader();
undefined4 Sprite_SetDrawFlag();
undefined4 ov97_0221FB80();

undefined4
ov97_0221FAEC(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
             int param_5,int param_6,undefined4 param_7,undefined4 param_8)

{
  undefined4 uVar1;
  undefined1 auStack_64 [36];
  undefined1 auStack_40 [8];
  int iStack_38;
  int iStack_34;
  undefined4 uStack_1c;
  undefined4 uStack_10;

  uStack_10 = param_4;
  CreateSpriteResourcesHeader
            (auStack_64,param_2,param_2,param_2,param_2,0xffffffff,0xffffffff,0,param_4,
             param_1[0x4c],param_1[0x4d],param_1[0x4e],param_1[0x4f],0,0);
  ov97_0221FB80(auStack_40,param_1[1],auStack_64,2,*param_1);
  iStack_38 = param_5 << 0xc;
  iStack_34 = param_6 * 0x1000 + 0x100000;
  uStack_1c = param_3;
  uVar1 = Sprite_CreateAffine(auStack_40);
  Sprite_SetAnimActiveFlag(uVar1,1);
  Sprite_SetAnimCtrlSeq(uVar1,param_7);
  Sprite_SetPriority(uVar1,1);
  Sprite_SetDrawFlag(uVar1,param_8);
  return uVar1;
}

