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
undefined4 ov69_021E645C();
extern ushort uRam021d116c __asm__("sub_021D116C");
extern short sRam021d1170 __asm__("sub_021D1170");
extern ushort uRam021d116e __asm__("sub_021D116E");
extern short sRam021d1172 __asm__("sub_021D1172");

void ov69_021E6308(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uStack_20;
  uint uStack_1c;
  undefined4 uStack_18;
  uint uStack_14;
  undefined4 uStack_10;
  
  iVar1 = 0;
  *(undefined4 *)(param_1 + 0xc308) = 0;
  if ((((uRam021d116c < 0xc0) || (0x100 < uRam021d116c)) || (uRam021d116e < 0xa0)) ||
     (0xb8 < uRam021d116e)) {
    if (((uRam021d116c < 0x41) && (0x9f < uRam021d116e)) && (uRam021d116e < 0xb9)) {
      iVar1 = 0x400;
    }
  }
  else {
    iVar1 = 2;
  }
  if (sRam021d1170 != 0) {
    if (iVar1 != 0) {
      *(int *)(param_1 + 0xc308) = iVar1;
      return;
    }
    *(undefined4 *)(param_1 + 0xc30c) = 0;
    *(undefined4 *)(param_1 + 0xc318) = 0;
    *(undefined4 *)(param_1 + 0xc31c) = 0;
    *(undefined4 *)(param_1 + 0xc320) = 0;
    *(undefined4 *)(param_1 + 0xc308) = 0;
    *(uint *)(param_1 + 0xc310) = (uint)uRam021d116c;
    *(uint *)(param_1 + 0xc314) = (uint)uRam021d116e;
    *(undefined4 *)(param_1 + 0xc320) = 4;
  }
  if (sRam021d1172 == 0) {
    if (((iVar1 == 0) && (*(int *)(param_1 + 0xc320) != 0)) &&
       ((*(int *)(param_1 + 0xc318) < 4 && (*(int *)(param_1 + 0xc31c) < 4)))) {
      *(undefined4 *)(param_1 + 0xc308) = 1;
    }
    *(undefined4 *)(param_1 + 0xc30c) = 0;
    *(undefined4 *)(param_1 + 0xc318) = 0;
    *(undefined4 *)(param_1 + 0xc31c) = 0;
    *(undefined4 *)(param_1 + 0xc320) = 0;
  }
  else {
    if (*(int *)(param_1 + 0xc30c) == 0) {
      if (*(int *)(param_1 + 0xc320) == 0) {
        *(undefined4 *)(param_1 + 0xc30c) = 1;
      }
      else {
        *(int *)(param_1 + 0xc320) = *(int *)(param_1 + 0xc320) + -1;
      }
    }
    else if (*(int *)(param_1 + 0xc30c) != 1) {
      return;
    }
    if (iVar1 == 0) {
      uStack_10 = param_4;
      ov69_021E645C(*(undefined4 *)(param_1 + 0xc310),*(undefined4 *)(param_1 + 0xc314),&uStack_14,
                    &uStack_18,&uStack_1c,&uStack_20);
      *(uint *)(param_1 + 0xc308) = uStack_1c | uStack_14;
      *(undefined4 *)(param_1 + 0xc318) = uStack_18;
      *(undefined4 *)(param_1 + 0xc31c) = uStack_20;
      *(uint *)(param_1 + 0xc310) = (uint)uRam021d116c;
      *(uint *)(param_1 + 0xc314) = (uint)uRam021d116e;
      return;
    }
  }
  return;
}

