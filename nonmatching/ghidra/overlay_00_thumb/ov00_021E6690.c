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
undefined4 sub_0203993C();
undefined4 sub_02038F74();
undefined4 func_0x021ed9b4() __asm__("sub_021ED9B4");
undefined4 func_0x021ec210() __asm__("sub_021EC210");
undefined4 func_0x021ec8d8() __asm__("sub_021EC8D8");
undefined4 func_0x021ec11c() __asm__("sub_021EC11C");
extern int iRam0221a680 __asm__("sub_0221A680");

int ov00_021E6690(void)

{
  int iVar1;
  int iVar2;
  undefined4 in_r3;
  int iVar3;
  int iStack_18;
  int iStack_14;
  undefined4 uStack_10;
  
  iVar3 = 0;
  uStack_10 = in_r3;
  iVar1 = func_0x021ec11c(&iStack_14,&iStack_18);
  if (iVar1 != 0) {
    if ((iStack_14 == 0) || (iVar3 = iStack_14, iStack_18 == 1)) {
      iVar3 = iVar1;
    }
    switch(iStack_18) {
    case 1:
      func_0x021ec210();
      break;
    case 2:
      func_0x021ec210();
      break;
    case 3:
    case 4:
    case 5:
    case 6:
      if (iRam0221a680 != 0) {
        switch(*(undefined4 *)(iRam0221a680 + 0x1070)) {
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xc:
        case 0x10:
        case 0x11:
        case 0x12:
          func_0x021ed9b4();
        case 0:
        case 1:
        case 2:
          iVar2 = sub_0203993C();
          if (iVar2 != 0x21) {
            func_0x021ec8d8();
          }
        default:
          func_0x021ec210();
        }
      }
      if (iRam0221a680 != 0) {
        *(undefined4 *)(iRam0221a680 + 0x1070) = 0xe;
      }
      break;
    case 7:
      if (iRam0221a680 != 0) {
        *(undefined4 *)(iRam0221a680 + 0x1070) = 0xf;
        if (*(code **)(iRam0221a680 + 0xfc0) != (code *)0x0) {
          (**(code **)(iRam0221a680 + 0xfc0))(-iStack_14);
        }
      }
    }
  }
  if (*(char *)(iRam0221a680 + 0x10de) != '\0') {
    iVar3 = 0x1a;
  }
  if (iVar1 != 0) {
    sub_02038F74(iStack_14,iStack_18,iVar1);
  }
  return iVar3;
}

