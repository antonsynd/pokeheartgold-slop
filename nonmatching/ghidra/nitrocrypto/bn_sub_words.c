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

int bn_sub_words(int *param_1,uint *param_2,uint *param_3,int param_4)

{
  int iVar1;
  uint uVar2;
  uint uVar3;

  if (param_4 < 1) {
    return 0;
  }
  iVar1 = 0;
  while( true ) {
    uVar3 = *param_2;
    uVar2 = *param_3;
    *param_1 = (uVar3 - uVar2) - iVar1;
    if (uVar3 != uVar2) {
      if (uVar3 < uVar2) {
        iVar1 = 1;
      }
      else {
        iVar1 = 0;
      }
    }
    if (param_4 + -1 < 1) {
      return iVar1;
    }
    uVar3 = param_2[1];
    uVar2 = param_3[1];
    param_1[1] = (uVar3 - uVar2) - iVar1;
    if (uVar3 != uVar2) {
      if (uVar3 < uVar2) {
        iVar1 = 1;
      }
      else {
        iVar1 = 0;
      }
    }
    if (param_4 + -2 < 1) break;
    uVar3 = param_2[2];
    uVar2 = param_3[2];
    param_1[2] = (uVar3 - uVar2) - iVar1;
    if (uVar3 != uVar2) {
      if (uVar3 < uVar2) {
        iVar1 = 1;
      }
      else {
        iVar1 = 0;
      }
    }
    if (param_4 + -3 < 1) {
      return iVar1;
    }
    uVar3 = param_2[3];
    uVar2 = param_3[3];
    param_1[3] = (uVar3 - uVar2) - iVar1;
    if (uVar3 != uVar2) {
      if (uVar3 < uVar2) {
        iVar1 = 1;
      }
      else {
        iVar1 = 0;
      }
    }
    param_4 = param_4 + -4;
    if (param_4 < 1) {
      return iVar1;
    }
    param_2 = param_2 + 4;
    param_3 = param_3 + 4;
    param_1 = param_1 + 4;
  }
  return iVar1;
}

