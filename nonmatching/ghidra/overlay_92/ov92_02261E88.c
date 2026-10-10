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
undefined4 ov92_022619C4();
undefined4 ov92_02260860();
undefined4 ManagedSprite_GetPositionFxXYWithSubscreenOffset();
undefined4 func_0x0200df44() __asm__("sub_0200DF44");
undefined4 ov92_02260870();

undefined4 ov92_02261E88(undefined4 *param_1,undefined4 param_2,int param_3,int param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  
  iStack_18 = param_4;
  if (param_1[1] == 0) {
    ManagedSprite_GetPositionFxXYWithSubscreenOffset(*param_1,&iStack_1c,&iStack_20,0x100000);
    if (param_3 == 0) {
      uVar1 = ov92_022619C4(param_2);
      ov92_02260860(param_1 + 8,iStack_1c,iStack_1c + -0xb4000,uVar1);
    }
    else {
      uVar1 = ov92_022619C4(param_2);
      ov92_02260860(param_1 + 8,iStack_1c,iStack_1c + 0xb4000,uVar1);
    }
    if (param_4 == 2) {
      uVar1 = ov92_022619C4(param_2);
      ov92_02260860(param_1 + 0xe,iStack_20,iStack_20 + -0x18000,uVar1);
    }
    else {
      uVar1 = ov92_022619C4(param_2);
      ov92_02260860(param_1 + 0xe,iStack_20,iStack_20 + 0x18000,uVar1);
    }
    param_1[1] = param_1[1] + 1;
  }
  else if (param_1[1] != 1) {
    return 1;
  }
  iVar2 = ov92_02260870(param_1 + 8);
  ov92_02260870(param_1 + 0xe);
  func_0x0200df44(*param_1,param_1[8],param_1[0xe],0x100000);
  if (iVar2 != 0) {
    return 1;
  }
  return 0;
}

