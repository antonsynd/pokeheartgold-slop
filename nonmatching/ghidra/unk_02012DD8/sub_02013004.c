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
undefined4 func_0x020f2998() __asm__("sub_020F2998");
extern undefined FX_SinCosTable_;

void sub_02013004(undefined4 param_1,int param_2,int param_3,int param_4,int param_5,int param_6,
                 int *param_7,int *param_8)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;

  iVar1 = param_2 + (*(short *)(&FX_SinCosTable_ + ((param_5 >> 4) * 2 + 1) * 2) * 0xffff >> 0xc);
  iVar5 = param_3 + (*(short *)(&FX_SinCosTable_ + (param_5 >> 4) * 4) * 0xffff >> 0xc);
  iVar2 = param_2 + (*(short *)(&FX_SinCosTable_ + ((param_6 >> 4) * 2 + 1) * 2) * 0xffff >> 0xc);
  iVar3 = param_3 + (*(short *)(&FX_SinCosTable_ + (param_6 >> 4) * 4) * 0xffff >> 0xc);
  if (param_6 - param_5 == 0x7fff) {
    if ((-1 < param_4) && (param_4 < param_3)) {
      *param_7 = 0;
      *param_8 = 0xff;
      return;
    }
  }
  else {
    if ((-1 < param_6) && (param_6 < 0x7fff)) {
      iVar4 = param_3;
      if (iVar5 < param_3) {
        iVar4 = iVar5;
      }
      iVar6 = param_3;
      if (param_3 < iVar5) {
        iVar6 = iVar5;
      }
      if ((param_4 < iVar4) || (iVar6 < param_4)) {
        iVar3 = func_0x020f2998((iVar2 - param_2) * (param_4 - iVar3),iVar3 - param_3);
        *param_7 = iVar2 + iVar3;
      }
      else {
        iVar3 = func_0x020f2998((iVar1 - param_2) * (param_4 - iVar5),iVar5 - param_3);
        *param_7 = iVar1 + iVar3;
      }
      iVar3 = *param_7;
      if (iVar3 < 0x100) {
        if (iVar3 < 0) {
          iVar3 = 0;
        }
      }
      else {
        iVar3 = 0xff;
      }
      *param_7 = iVar3;
      *param_8 = 0xff;
      return;
    }
    iVar4 = param_3;
    if (iVar5 < param_3) {
      iVar4 = iVar5;
    }
    iVar6 = param_3;
    if (param_3 < iVar5) {
      iVar6 = iVar5;
    }
    if ((param_4 < iVar4) || (iVar6 < param_4)) {
      *param_7 = 0;
    }
    else {
      iVar5 = func_0x020f2998((iVar1 - param_2) * (param_4 - iVar5),iVar5 - param_3);
      iVar1 = iVar1 + iVar5;
      *param_7 = iVar1;
      if (iVar1 < 0x100) {
        if (iVar1 < 0) {
          iVar1 = 0;
        }
      }
      else {
        iVar1 = 0xff;
      }
      *param_7 = iVar1;
    }
    iVar1 = param_3;
    if (iVar3 < param_3) {
      iVar1 = iVar3;
    }
    iVar5 = iVar3;
    if (iVar3 <= param_3) {
      iVar5 = param_3;
    }
    if ((param_4 < iVar1) || (iVar5 < param_4)) {
      *param_8 = *param_7;
    }
    else {
      iVar3 = func_0x020f2998((iVar2 - param_2) * (param_4 - iVar3),iVar3 - param_3);
      iVar2 = iVar2 + iVar3;
      *param_8 = iVar2;
      if (iVar2 < 0x100) {
        if (iVar2 < 0) {
          iVar2 = 0;
        }
      }
      else {
        iVar2 = 0xff;
      }
      *param_8 = iVar2;
    }
    iVar3 = *param_7;
    if (*param_8 < iVar3) {
      *param_7 = *param_8;
      *param_8 = iVar3;
    }
  }
  return;
}

