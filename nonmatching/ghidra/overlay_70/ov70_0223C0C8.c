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
undefined4 ov70_0223CC04();
undefined4 ov70_02237F58();
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 ov70_02241184();
undefined4 func_0x020399ec() __asm__("sub_020399EC");
undefined4 ov70_02237F38();

undefined4 ov70_0223C0C8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = ov70_02237F38();
  if (iVar1 == 0) {
    *(int *)(param_1 + 0x1604) = *(int *)(param_1 + 0x1604) + 1;
    if (*(int *)(param_1 + 0x1604) == 0xe10) {
      func_0x020399ec();
    }
  }
  else {
    iVar1 = ov70_02237F58();
    *(undefined4 *)(param_1 + 0x1604) = 0;
    switch(iVar1) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      *(int *)(param_1 + 0x128) = iVar1;
      func_0x02006154(0x5fe);
      ov70_02241184(param_1,iVar1,1);
      if (iVar1 == 0) {
        ov70_0223CC04(*(undefined4 *)(param_1 + 4),param_1 + 0x10d8,*(undefined4 *)(param_1 + 0xba0)
                      ,0,param_4);
      }
      else {
        ov70_0223CC04(*(undefined4 *)(param_1 + 4),param_1 + 0x10d8,*(undefined4 *)(param_1 + 0xba0)
                      ,1,param_4);
      }
      *(undefined4 *)(param_1 + 0x2c) = 0x12;
      break;
    case -0xf:
    case -0xc:
      *(undefined4 *)(param_1 + 0x2c) = 0x14;
      break;
    case -0xe:
    case -2:
      *(undefined4 *)(param_1 + 0x2c) = 0x1b;
      break;
    case -0xd:
      func_0x020399ec();
    }
  }
  return 3;
}

