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
undefined4 bn_sqr_normal();
undefined4 BN_copy();
undefined4 bn_expand2();

undefined4 BN_sqr(int *param_1,int *param_2,int *param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  int *unaff_r7;
  int *piVar5;
  undefined1 auStack_80 [32];
  undefined1 auStack_60 [68];
  
  piVar2 = param_1;
  piVar5 = param_1;
  if (param_2 == param_1) {
    piVar2 = (int *)(*param_3 + 1);
    piVar5 = unaff_r7;
  }
  piVar3 = param_3 + *param_3 * 5 + 1;
  if (param_2 == param_1) {
    piVar5 = param_3 + (int)piVar2 * 5 + 1;
  }
  iVar4 = param_2[1];
  if (iVar4 < 1) {
    param_1[1] = 0;
    return 1;
  }
  iVar1 = iVar4 * 2;
  piVar2 = piVar5;
  if (piVar5[2] < iVar1) {
    piVar2 = (int *)bn_expand2(piVar5,iVar1);
  }
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  piVar5[1] = iVar1;
  piVar5[3] = 0;
  if (iVar4 == 4) {
    bn_sqr_normal(*piVar5,*param_2,4,auStack_80);
  }
  else if (iVar4 == 8) {
    bn_sqr_normal(*piVar5,*param_2,8,auStack_60);
  }
  else {
    piVar2 = piVar3;
    if (piVar3[2] < iVar1) {
      piVar2 = (int *)bn_expand2(piVar3,iVar1);
    }
    if (piVar2 == (int *)0x0) {
      return 0;
    }
    bn_sqr_normal(*piVar5,*param_2,iVar4,*piVar3);
  }
  if ((0 < iVar1) && (*(int *)(*piVar5 + (iVar1 + -1) * 4) == 0)) {
    piVar5[1] = piVar5[1] + -1;
  }
  if (piVar5 != param_1) {
    BN_copy(param_1,piVar5);
  }
  return 1;
}

