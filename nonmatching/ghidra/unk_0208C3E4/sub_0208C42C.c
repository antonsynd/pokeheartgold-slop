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
undefined4 AllocWindows();
undefined4 AddWindow();
extern undefined UNK_02104d04 __asm__("sub_02104D04");
extern undefined UNK_02104cc4 __asm__("sub_02104CC4");
extern undefined UNK_02104c84 __asm__("sub_02104C84");

void sub_0208C42C(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  undefined *unaff_r7;

  switch(*(undefined1 *)(param_1 + 0x1ef)) {
  case 0:
    unaff_r7 = &UNK_02104cc4;
    param_1[0x8a] = 8;
    break;
  case 1:
    unaff_r7 = &UNK_02104d04;
    param_1[0x8a] = 0x12;
    break;
  case 2:
    unaff_r7 = &UNK_02104c84;
    param_1[0x8a] = 8;
    break;
  case 3:
    if ((*(char *)(param_1[0x8b] + 0x12) != '\x03') && (*(char *)(param_1[0x8b] + 0x12) != '\x04'))
    {
      return;
    }
    param_1[0x8a] = 3;
    break;
  default:
    goto LAB_0208c4ce;
  }
  uVar1 = AllocWindows(0x13,param_1[0x8a] & 0xff,param_3,param_4,param_4);
  param_1[0x89] = uVar1;
  uVar2 = 0;
  if (param_1[0x8a] != 0) {
    iVar3 = 0;
    do {
      AddWindow(*param_1,param_1[0x89] + iVar3,unaff_r7);
      uVar2 = uVar2 + 1;
      unaff_r7 = unaff_r7 + 8;
      iVar3 = iVar3 + 0x10;
    } while (uVar2 < (uint)param_1[0x8a]);
  }
LAB_0208c4ce:
  return;
}

