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
undefined4 ov70_0223BC7C();
undefined4 ov70_0223BAE0();
undefined4 ov70_0223B9C8();
undefined4 ov70_02242014();
undefined4 ov70_0223B7CC();
undefined4 ov70_0223F2BC();
undefined4 ov70_0223F1D8();
undefined4 ov70_0223CB1C();
undefined4 ov70_0223F864();
undefined4 BeginNormalPaletteFade();
undefined4 ov70_0223CC04();
undefined4 ov70_0223F370();
undefined4 ov70_0223F244();
undefined4 ov70_0223B8E0();

undefined4 ov70_0223B55C(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iStack_3c;
  int *piStack_38;
  int *piStack_34;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;

  uStack_c = param_4;
  ov70_0223BC7C();
  ov70_0223B7CC(param_1[1]);
  ov70_0223B8E0(param_1);
  ov70_0223BAE0(param_1);
  ov70_0223B9C8(param_1);
  iStack_3c = param_1[1];
  piStack_38 = param_1 + 0x3d6;
  piStack_34 = param_1 + 0x45a;
  iStack_30 = param_1[0x374];
  iStack_2c = param_1[0x3c1];
  iStack_28 = param_1[0x3c2];
  iStack_24 = param_1[0x373];
  iStack_20 = param_1[0x2e8];
  iStack_1c = param_1[0x2e9];
  iStack_18 = param_1[0x2ec];
  uStack_14 = *(undefined4 *)(*param_1 + 0x10);
  uStack_10 = *(undefined4 *)(param_1[0x471] + 0x14);
  iVar1 = ov70_02242014(&iStack_3c,2,1);
  param_1[0x46a] = iVar1;
  ov70_0223CB1C(param_1 + 0x416,param_1 + 0x45e,param_1[0x2e8]);
  ov70_0223CC04(param_1[1],param_1 + 0x436,param_1[0x2e8],*(undefined2 *)((int)param_1 + 0x11de));
  ov70_0223F1D8(param_1 + 0x41a,param_1[0x2e9],(int)*(short *)((int)param_1 + 0xb8a),0,0,0x10200);
  ov70_0223F2BC(param_1 + 0x422,param_1[0x2e8],(int)(char)param_1[0x2e3],1,0,0,0x10200);
  uVar2 = ov70_0223F864((int)*(char *)((int)param_1 + 0xb8d),(int)*(char *)((int)param_1 + 0xb8e),1)
  ;
  ov70_0223F370(param_1 + 0x42a,param_1[0x2e8],uVar2,0,0,0x10200,1);
  ov70_0223F244(param_1 + 0x462,param_1[0x2ec],param_1[0x2e8],param_1[0x4b3],0,0,0x10200);
  param_1[0x482] = 0x223cca5;
  if (param_1[9] == 0xd) {
    BeginNormalPaletteFade(3,1,1,0,6,1,0x3d);
  }
  param_1[0xb] = 0;
  return 2;
}

