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
undefined4 ov70_02241330();
undefined4 ov70_0223AC98();
undefined4 ov70_0223AB3C();
undefined4 ov70_0223A7E4();
undefined4 BeginNormalPaletteFade();
undefined4 ov70_0223AE98();
undefined4 ov70_0223ACF4();
undefined4 ov70_0223A578();
undefined4 ov70_0223A72C();
undefined4 ov70_0223B258();
undefined4 Mon_GetBoxMon();
undefined4 ov70_0223B3EC();
undefined4 func_0x020cdaa8() __asm__("sub_020CDAA8");
undefined4 ov70_0223ABF4();
undefined4 ov70_0223B3BC();
extern ushort uRam04000304 __asm__("sub_04000304");

undefined4 ov70_0223A8BC(int param_1)

{
  undefined4 uVar1;
  int iVar2;

  ov70_0223AE98();
  ov70_0223AB3C(*(undefined4 *)(param_1 + 4),-0x20 - *(int *)(param_1 + 0xf14));
  ov70_0223ABF4(param_1);
  ov70_0223ACF4(param_1);
  ov70_0223AC98(param_1);
  iVar2 = *(int *)(param_1 + 300) * 0x124;
  uVar1 = Mon_GetBoxMon(param_1 + 0x260 + iVar2);
  ov70_0223A578(*(undefined4 *)(param_1 + 0xba0),*(undefined4 *)(param_1 + 0xba4),
                *(undefined4 *)(param_1 + 0xb9c),param_1 + 0x1058,uVar1,param_1 + 0x34c + iVar2);
  iVar2 = *(int *)(param_1 + 300) * 0x124;
  ov70_0223A72C(*(undefined4 *)(param_1 + 0xba0),param_1 + 0x10c8,param_1 + 0x36c + iVar2,
                param_1 + 0x260 + iVar2,param_1 + 0x1118);
  ov70_0223A7E4(param_1 + 0x260 + *(int *)(param_1 + 300) * 0x124);
  ov70_0223B3BC(*(undefined4 *)(param_1 + 0xba0),param_1 + 0x1138,0x4d);
  ov70_0223B3BC(*(undefined4 *)(param_1 + 0xba0),param_1 + 0x10e8,0x51);
  ov70_0223B3EC(*(undefined4 *)(param_1 + 0xba0),param_1 + 0xf58,0x58);
  ov70_0223B3EC(*(undefined4 *)(param_1 + 0xba0),param_1 + 0xf68,0x6d);
  ov70_0223B258(param_1);
  ov70_02241330(param_1,*(undefined4 *)(param_1 + 300),-*(int *)(param_1 + 0xf14));
  *(undefined4 *)(param_1 + 0x1208) = 0x223b4d5;
  uRam04000304 = uRam04000304 | 0x8000;
  if (*(int *)(param_1 + 0x24) == 0x11) {
    iVar2 = func_0x020cdaa8(0x400006c);
    if ((iVar2 == -0x10) && (iVar2 = func_0x020cdaa8(0x400106c), iVar2 != -0x10)) {
      BeginNormalPaletteFade(3,1,1,0,6,1,0x3d);
    }
    else {
      iVar2 = func_0x020cdaa8(0x400006c);
      if ((iVar2 == -0x10) || (iVar2 = func_0x020cdaa8(0x400106c), iVar2 != -0x10)) {
        BeginNormalPaletteFade(0,1,1,0,6,1,0x3d);
      }
      else {
        BeginNormalPaletteFade(4,1,1,0,6,1,0x3d);
      }
    }
  }
  *(undefined4 *)(param_1 + 0x2c) = 0;
  return 2;
}

