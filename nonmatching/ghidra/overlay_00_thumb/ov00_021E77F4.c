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
undefined4 func_0x020c8af0() __asm__("sub_020C8AF0");
undefined4 ov00_021E733C();
undefined4 ov00_021E77CC();
extern int iRam0221a688 __asm__("sub_0221A688");
undefined4 func_0x021ee490() __asm__("sub_021EE490");
undefined4 sub_02034084();
undefined4 GF_AssertFail();
undefined4 func_0x020b4874() __asm__("sub_020B4874");
undefined4 func_0x020b1cf8() __asm__("sub_020B1CF8");
undefined4 sub_0203993C();
undefined4 func_0x020c8d88() __asm__("sub_020C8D88");
undefined4 ov00_021E79B4();
undefined4 func_0x020b1d9c() __asm__("sub_020B1D9C");
undefined4 func_0x020c8b78() __asm__("sub_020C8B78");

void ov00_021E77F4(undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uStack_40;
  undefined1 uStack_3c;
  undefined1 uStack_3b;
  undefined1 uStack_3a;
  int iStack_38;
  int iStack_34;
  undefined4 uStack_30;
  byte bStack_2c;
  undefined4 uStack_28;
  int iStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_3c = 0;
  uStack_3b = 0;
  uStack_3a = 0;
  uStack_18 = param_4;
  if (iRam0221a688 == 0) {
    uStack_40 = 0;
    ov00_021E77CC(&uStack_40,0x221a688,0x1ab0,param_1);
    *(undefined4 *)(iRam0221a688 + 0x880) = uStack_40;
    ov00_021E77CC(iRam0221a688 + 0x888,iRam0221a688 + 0x884,param_3 * 0x23c0 + 0x20,param_1);
    *(undefined4 *)(iRam0221a688 + 0x19f4) = param_1;
    *(undefined4 *)(iRam0221a688 + 0x198c) = 0;
    ov00_021E733C();
  }
  *(undefined4 *)(iRam0221a688 + 0x1a5c) = 3;
  *(int *)(iRam0221a688 + 0x1a60) = iRam0221a688;
  *(undefined4 *)(iRam0221a688 + 0x1a64) = 0x880;
  *(undefined4 *)(iRam0221a688 + 0x1a68) = 0x1040;
  *(undefined4 *)(iRam0221a688 + 0x1a6c) = 1;
  *(undefined4 *)(iRam0221a688 + 0x1a70) = 0;
  *(undefined4 *)(iRam0221a688 + 0x1a74) = 0;
  *(undefined1 *)(iRam0221a688 + 0x1a59) = 1;
  func_0x020c8af0(iRam0221a688 + 0x19f8,1,&uStack_3c);
  func_0x020c8d88(iRam0221a688 + 0x19f8,0);
  func_0x020c8b78(iRam0221a688 + 0x19f8,1,iRam0221a688 + 0x88c,0x880,0x41,2,0x21e73e9,iRam0221a688);
  *(undefined4 *)(iRam0221a688 + 0x19ec) = 0;
  *(undefined4 *)(iRam0221a688 + 0x1a54) = 0;
  sub_0203993C();
  iVar1 = sub_02034084();
  if (iVar1 == 0) {
    uStack_30 = 1;
  }
  else {
    uStack_30 = 3;
  }
  *(undefined4 *)(iRam0221a688 + 0x19e8) = uStack_30;
  iStack_38 = iRam0221a688 + 0x1990;
  iStack_34 = param_3;
  bStack_2c = func_0x021ee490();
  if (bStack_2c == 0xffffffff) {
    GF_AssertFail();
  }
  if (*(int *)(iRam0221a688 + 0x19e8) == 3) {
    uStack_20 = 0x21e7545;
  }
  else {
    uStack_20 = 0x21e756d;
  }
  uStack_1c = 0;
  uStack_28 = *(undefined4 *)(iRam0221a688 + 0x884);
  iStack_24 = param_3 * 0x23c0 + 0x20;
  func_0x020b4874(&iStack_38);
  *(undefined4 *)(iRam0221a688 + 0x19f0) = 0;
  func_0x020b1cf8(param_2);
  ov00_021E79B4();
  func_0x020b1d9c(1);
  return;
}

