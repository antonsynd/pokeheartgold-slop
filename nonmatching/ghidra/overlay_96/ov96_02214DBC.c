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
unsigned short LCRandom(void);
undefined4 GF_AssertFail(void);
undefined4 func_0x020f2998() __asm__("sub_020F2998");

undefined4 ov96_02214DBC(int param_1,int param_2,undefined4 param_3,int param_4)

{
  undefined4 uVar1;
  uint uVar2;
  uint extraout_r1;
  int iVar3;

  uVar1 = LCRandom();
  func_0x020f2998(uVar1,100); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
  uVar2 = extraout_r1 & 0xff;
  switch(param_3) {
  case 0:
  case 8:
    break;
  case 1:
  case 9:
    if (param_4 == 4) {
      GF_AssertFail();
    }
    else {
      iVar3 = (3U - param_4 & 0xff) * 0xc;
      *(uint *)(param_1 + 0x24) = (uint)*(ushort *)(iVar3 + 0x221d678) << 0xc;
      *(uint *)(param_1 + 0x28) = (uint)*(ushort *)(iVar3 + 0x221d67a) << 0xc;
    }
    break;
  case 2:
    if (uVar2 < 0x3c) {
      return 0;
    }
    if (uVar2 < 0x50) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(param_2 + 8);
      *(undefined4 *)(param_1 + 0x28) = uVar1;
      *(undefined4 *)(param_1 + 0x2c) = *(undefined4 *)(param_2 + 0x10);
      return 10;
    }
    uVar1 = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(param_2 + 8);
    *(undefined4 *)(param_1 + 0x28) = uVar1;
    *(undefined4 *)(param_1 + 0x2c) = *(undefined4 *)(param_2 + 0x10);
    *(undefined4 *)(param_1 + 0x78) = 1;
    return 10;
  case 3:
    if (uVar2 < 0x14) {
      return 0;
    }
    if (uVar2 < 0x5a) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(param_2 + 8);
      *(undefined4 *)(param_1 + 0x28) = uVar1;
      *(undefined4 *)(param_1 + 0x2c) = *(undefined4 *)(param_2 + 0x10);
      return 3;
    }
    uVar1 = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(param_2 + 8);
    *(undefined4 *)(param_1 + 0x28) = uVar1;
    *(undefined4 *)(param_1 + 0x2c) = *(undefined4 *)(param_2 + 0x10);
    *(undefined4 *)(param_1 + 0x78) = 1;
    return 3;
  case 4:
  case 0xd:
    uVar1 = *(undefined4 *)(param_2 + 0xc);
    *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(param_2 + 8);
    *(undefined4 *)(param_1 + 0x28) = uVar1;
    *(undefined4 *)(param_1 + 0x2c) = *(undefined4 *)(param_2 + 0x10);
    *(undefined4 *)(param_1 + 0x78) = 1;
    break;
  default:
    GF_AssertFail();
  }
  return 0;
}

