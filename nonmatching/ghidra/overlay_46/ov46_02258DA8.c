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
undefined4 IsPaletteFadeFinished();
undefined4 sub_020397C8();
undefined4 func_0x0222ed7c() __asm__("sub_0222ED7C");
undefined4 func_0x020393c8() __asm__("sub_020393C8");
undefined4 ov46_02259450();
undefined4 func_0x0222eda8() __asm__("sub_0222EDA8");
undefined4 ov46_02259374();
undefined4 OverlayManager_GetArgs();
undefined4 BeginNormalPaletteFade();
undefined4 OverlayManager_GetData();
undefined4 sub_02037D78();
undefined4 func_0x020397fc() __asm__("sub_020397FC");
undefined4 func_0x0222b270() __asm__("sub_0222B270");
undefined4 ov46_02259474();

undefined4 ov46_02258DA8(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;

  iVar1 = OverlayManager_GetData();
  iVar2 = OverlayManager_GetArgs(param_1);
  switch(*param_2) {
  case 0:
    BeginNormalPaletteFade(0,1,1,0xffff,6,1,0x77,param_4);
    *param_2 = *param_2 + 1;
    break;
  case 1:
    iVar1 = IsPaletteFadeFinished();
    if (iVar1 != 0) {
      *param_2 = 2;
    }
    break;
  case 2:
    ov46_02259374(iVar1 + 0x40,0x1a);
    iVar2 = func_0x020393c8();
    if ((iVar2 == 0) && (iVar2 = func_0x020397fc(), iVar2 == 0)) {
      *param_2 = 3;
      ov46_02259450(iVar1 + 0x40);
    }
    else {
      *param_2 = 5;
      ov46_02259450(iVar1 + 0x40);
    }
    break;
  case 3:
    func_0x0222ed7c();
    *(undefined4 *)(iVar1 + 8) = 900;
    *param_2 = 4;
    break;
  case 4:
    *(int *)(iVar1 + 8) = *(int *)(iVar1 + 8) + -1;
    iVar2 = func_0x0222eda8();
    if ((iVar2 != 0) || (*(int *)(iVar1 + 8) == 0)) {
      *param_2 = 5;
    }
    break;
  case 5:
    sub_020397C8();
    *param_2 = 6;
    break;
  case 6:
    iVar3 = sub_02037D78();
    if (iVar3 == 0) {
      ov46_02259474(iVar1 + 0x70);
      func_0x0222b270(*(undefined4 *)(iVar2 + 4));
      *param_2 = 7;
    }
    break;
  case 7:
    ov46_02259374(iVar1 + 0x40,0x1b);
    *(undefined4 *)(iVar1 + 8) = 0x5a;
    *param_2 = 8;
    break;
  case 8:
    iVar2 = *(int *)(iVar1 + 8) + -1;
    *(int *)(iVar1 + 8) = iVar2;
    if (iVar2 == 0) {
      *param_2 = 9;
    }
    break;
  case 9:
    BeginNormalPaletteFade(0,0,0,0,6,1,0x77,param_4);
    *param_2 = *param_2 + 1;
    break;
  case 10:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 != 0) {
      ov46_02259474(iVar1 + 0x40);
      return 1;
    }
  }
  return 0;
}

