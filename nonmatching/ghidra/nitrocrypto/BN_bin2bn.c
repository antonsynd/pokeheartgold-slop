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
undefined4 bn_fix_top();
undefined4 BN_new();
undefined4 bn_expand2();

int * BN_bin2bn(byte *param_1,int param_2,int *param_3)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  byte *pbVar4;
  int iVar5;
  bool bVar6;
  
  if (param_3 == (int *)0x0) {
    param_3 = (int *)BN_new();
  }
  if (param_3 == (int *)0x0) {
    return (int *)0x0;
  }
  uVar3 = 0;
  if (param_2 == 0) {
    param_3[1] = 0;
    return param_3;
  }
  iVar5 = (param_2 + 2) * 8;
  piVar1 = param_3;
  if (param_3[2] < (int)(iVar5 + 0x1f + ((uint)(iVar5 + 0x1f >> 4) >> 0x1b)) >> 5) {
    piVar1 = (int *)bn_expand2(param_3,((int)(iVar5 + ((uint)(iVar5 >> 4) >> 0x1b)) >> 5) + 1);
  }
  if (piVar1 == (int *)0x0) {
    return (int *)0x0;
  }
  iVar5 = (param_2 - 1U >> 2) + 1;
  param_3[1] = iVar5;
  uVar2 = param_2 - 1U & 3;
  while (param_2 != 0) {
    param_2 = param_2 + -1;
    pbVar4 = param_1 + 1;
    bVar6 = uVar2 == 0;
    uVar2 = uVar2 - 1;
    uVar3 = (uint)*param_1 | uVar3 << 8;
    param_1 = pbVar4;
    if (bVar6) {
      iVar5 = iVar5 + -1;
      *(uint *)(*param_3 + iVar5 * 4) = uVar3;
      uVar3 = 0;
      uVar2 = 3;
    }
  }
  bn_fix_top(param_3);
  return param_3;
}

