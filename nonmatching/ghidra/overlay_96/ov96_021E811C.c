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
undefined4 LCRandom();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 GF_AssertFail();
extern undefined ov96_0221A934;
extern undefined ov96_0221A95C;

void ov96_021E811C(int param_1,uint param_2,undefined1 *param_3)

{
  bool bVar1;
  undefined4 uVar2;
  uint extraout_r1;
  uint uVar3;
  uint uVar4;

  *param_3 = 10;
  uVar4 = (uint)*(byte *)(param_1 + 0xc);
  bVar1 = false;
  if (*(int *)(param_1 + 4) == 1) {
    switch(uVar4) {
    default:
      GF_AssertFail();
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
      bVar1 = true;
    }
  }
  else {
    switch(uVar4) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
      bVar1 = true;
      break;
    default:
      GF_AssertFail();
    }
  }
  if (bVar1) {
    if (uVar4 == 10) {
      uVar2 = LCRandom();
      func_0x020f2998(uVar2,10);
      uVar4 = 0;
      if (param_2 != 0) {
        do {
          param_3[uVar4] = (&ov96_0221A95C)[uVar4 + (extraout_r1 & 0xff) * 4];
          uVar4 = uVar4 + 1 & 0xff;
        } while (uVar4 < param_2);
        return;
      }
    }
    else {
      uVar3 = 0;
      if (param_2 != 0) {
        do {
          param_3[uVar3] = (&ov96_0221A934)[uVar3 + uVar4 * 4];
          uVar3 = uVar3 + 1 & 0xff;
        } while (uVar3 < param_2);
      }
    }
  }
  return;
}

