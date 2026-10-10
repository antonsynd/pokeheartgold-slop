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
undefined4 func_0x020f2ba4() __asm__("sub_020F2BA4");
undefined4 BN_num_bits_word();

uint bn_div_words(uint param_1,uint param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  bool bVar9;
  
  uVar7 = 0;
  iVar5 = 2;
  if (param_3 == 0) {
    return 0xffffffff;
  }
  uVar1 = BN_num_bits_word(param_3);
  if ((uVar1 != 0x20) && ((uint)(1 << (uVar1 & 0xff)) < param_1)) {
    return 0;
  }
  uVar1 = 0x20 - uVar1;
  if (param_3 <= param_1) {
    param_1 = param_1 - param_3;
  }
  if (uVar1 != 0) {
    param_1 = param_1 << (uVar1 & 0xff) | param_2 >> (0x20 - uVar1 & 0xff);
    param_3 = param_3 << (uVar1 & 0xff);
  }
  if (uVar1 != 0) {
    param_2 = param_2 << (uVar1 & 0xff);
  }
  uVar1 = param_3 >> 0x10;
  uVar6 = param_3 & 0xffff;
  while( true ) {
    uVar2 = 0xffff;
    if (param_1 >> 0x10 != uVar1) {
      uVar2 = func_0x020f2ba4(param_1,uVar1);
    }
    uVar4 = uVar2 * uVar6;
    for (iVar8 = uVar2 * uVar1;
        ((param_1 - iVar8 & 0xffff0000) == 0 &&
        ((param_2 >> 0x10) + (param_1 - iVar8) * 0x10000 < uVar4)); iVar8 = iVar8 - uVar1) {
      uVar4 = uVar4 - uVar6;
      uVar2 = uVar2 - 1;
    }
    uVar4 = uVar2 * uVar6;
    uVar3 = uVar2 * uVar1 + (uVar4 >> 0x10);
    if (param_2 < uVar4 * 0x10000) {
      uVar3 = uVar3 + 1;
    }
    bVar9 = param_1 < uVar3;
    if (bVar9) {
      param_1 = param_1 + param_3;
    }
    if (bVar9) {
      uVar2 = uVar2 - 1;
    }
    iVar5 = iVar5 + -1;
    if (iVar5 == 0) break;
    param_1 = (param_1 - uVar3) * 0x10000 | param_2 + (uVar4 & 0xffff) * -0x10000 >> 0x10;
    uVar7 = uVar2 << 0x10;
    param_2 = param_2 << 0x10;
  }
  return uVar7 | uVar2;
}

