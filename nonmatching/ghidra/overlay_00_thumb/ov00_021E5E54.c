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
undefined4 ov00_021E5E34();
undefined4 sub_02034084();
undefined4 ov00_021E69A8();
undefined4 sub_0203993C();
undefined4 func_0x021ee278() __asm__("sub_021EE278");
undefined4 func_0x021f1284() __asm__("sub_021F1284");
extern int iRam0221a680 __asm__("sub_0221A680");
undefined4 ov00_021E6690();
undefined4 ov00_021E6850();

undefined4 ov00_021E5E54(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  switch(*(undefined4 *)(iRam0221a680 + 0x1070)) {
  case 5:
    if (param_1 != 0) {
      *(undefined4 *)(iRam0221a680 + 0x1070) = 6;
    }
    if (((*(int *)(iRam0221a680 + 0x1074) == 2) && (-1 < *(int *)(iRam0221a680 + 0x1094))) &&
       (*(char *)(iRam0221a680 + *(int *)(iRam0221a680 + 0x1094) + 0x1044) != '\x06')) {
      *(undefined4 *)(iRam0221a680 + 0x1070) = 10;
    }
    break;
  case 6:
  case 10:
    if (*(int *)(iRam0221a680 + 0x1074) == 0) {
      func_0x021f1284();
    }
    else {
      func_0x021ee278();
      ov00_021E5E34();
    }
    break;
  case 7:
    sub_0203993C();
    iVar1 = sub_02034084();
    if (iVar1 == 0) {
      ov00_021E69A8(*(undefined4 *)(iRam0221a680 + 0x1084));
    }
    *(ushort *)(iRam0221a680 + 0x10d4) = (ushort)(*(int *)(iRam0221a680 + 0x109c) != 0);
    *(undefined4 *)(iRam0221a680 + 0x1070) = 8;
    return 0x14;
  case 9:
    *(undefined4 *)(iRam0221a680 + 0x1070) = 4;
    *(undefined4 *)(iRam0221a680 + 0x1078) = 0;
    *(undefined4 *)(iRam0221a680 + 0x1098) = 0xffffffff;
    return 0x15;
  case 0xb:
    *(undefined4 *)(iRam0221a680 + 0x1070) = 4;
    *(undefined4 *)(iRam0221a680 + 0x1078) = 0;
    *(undefined4 *)(iRam0221a680 + 0x1098) = 0xffffffff;
    return 0x16;
  case 0xc:
    uVar2 = ov00_021E6690();
    return uVar2;
  case 0x10:
    if (*(int *)(iRam0221a680 + 0x1090) == 0) {
      func_0x021ee278();
      *(undefined4 *)(iRam0221a680 + 0x1070) = 0x11;
    }
  }
  uVar2 = ov00_021E6850();
  return uVar2;
}

