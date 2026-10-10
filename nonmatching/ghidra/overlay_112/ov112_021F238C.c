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
undefined4 ov112_021F1EFC();
undefined4 GF_AssertFail();
undefined4 ov112_021F1F3C();
undefined4 ov112_021F1F54();

void ov112_021F238C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(param_1 + 0x148);
  if ((int)(uVar2 << 0x1f) < 0) {
    uVar1 = (uVar2 & 0x1ff) >> 1;
    if (uVar1 == 0) {
      ov112_021F1F54(param_1 + 0xac,0x98,
                     (0x48 - *(char *)((uVar2 >> 0x10) + 0x21ff4c8)) * 0x10000 >> 0x10,1,param_4);
      *(uint *)(param_1 + 0x148) =
           ((*(uint *)(param_1 + 0x148) >> 0x10) + 1) * 0x10000 |
           *(uint *)(param_1 + 0x148) & 0xffff;
      if (*(char *)((*(uint *)(param_1 + 0x148) >> 0x10) + 0x21ff4c8) == 'o') {
        *(uint *)(param_1 + 0x148) = *(uint *)(param_1 + 0x148) & 0xffff;
        *(uint *)(param_1 + 0x148) =
             *(uint *)(param_1 + 0x148) & 0xffff01ff |
             (((*(uint *)(param_1 + 0x148) & 0xffff) >> 9) + 1 & 0x7f) << 9;
        if (1 < (*(uint *)(param_1 + 0x148) & 0xffff) >> 9) {
          ov112_021F1F3C(param_1 + 0xac,3);
          *(uint *)(param_1 + 0x148) = *(uint *)(param_1 + 0x148) & 0xffff01ff;
          *(uint *)(param_1 + 0x148) =
               *(uint *)(param_1 + 0x148) & 0xfffffe01 |
               (((*(uint *)(param_1 + 0x148) & 0x1ff) >> 1) + 1 & 0xff) << 1;
          return;
        }
      }
    }
    else {
      if (uVar1 == 1) {
        *(uint *)(param_1 + 0x148) = ((uVar2 >> 0x10) + 1) * 0x10000 | uVar2 & 0xffff;
        uVar1 = *(uint *)(param_1 + 0x148) >> 0x10;
        if (4 < uVar1) {
          ov112_021F1EFC(param_1 + 0xac,(uVar1 & 1) == 1);
        }
        if (6 < *(uint *)(param_1 + 0x148) >> 0x10) {
          ov112_021F1EFC(param_1 + 0xac,0);
          *(uint *)(param_1 + 0x148) = *(uint *)(param_1 + 0x148) & 0xffff;
          *(uint *)(param_1 + 0x148) =
               *(uint *)(param_1 + 0x148) & 0xfffffe01 |
               (((*(uint *)(param_1 + 0x148) & 0x1ff) >> 1) + 1 & 0xff) << 1;
          return;
        }
        ov112_021F1F54(param_1 + 0xac,(int)(((uVar2 >> 0x10) * 8 + 0x98) * 0x10000) >> 0x10,0x48,0,
                       param_4);
        return;
      }
      if (uVar1 != 2) {
        GF_AssertFail();
      }
    }
  }
  return;
}

