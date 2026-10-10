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
undefined4 func_0x0222a2cc() __asm__("sub_0222A2CC");
undefined4 func_0x0222a4c0() __asm__("sub_0222A4C0");
undefined4 func_0x0222a394() __asm__("sub_0222A394");
undefined4 func_0x0222a200() __asm__("sub_0222A200");
undefined4 func_0x0222a1c0() __asm__("sub_0222A1C0");
undefined4 func_0x0222a164() __asm__("sub_0222A164");
undefined4 func_0x0222a48c() __asm__("sub_0222A48C");
undefined4 func_0x0222a33c() __asm__("sub_0222A33C");
undefined4 func_0x0222a268() __asm__("sub_0222A268");
undefined4 GF_AssertFail();
undefined4 func_0x0222a2ec() __asm__("sub_0222A2EC");
undefined4 func_0x0222a3dc() __asm__("sub_0222A3DC");
undefined4 func_0x0222a434() __asm__("sub_0222A434");

int ov39_022278D4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(param_1 + 1000);
  iVar2 = 0;
  if (iVar1 < 0x55f1) {
    if (21999 < iVar1) {
      iVar2 = func_0x0222a2cc(*(undefined4 *)(param_1 + 0x3b4));
      goto LAB_02227a38;
    }
    if (iVar1 < 0x5209) {
      if (20999 < iVar1) {
        iVar2 = func_0x0222a200(*(undefined1 *)(param_1 + 0x3ac),param_1 + 400,
                                *(undefined4 *)(param_1 + 0x3b4));
        goto LAB_02227a38;
      }
      if ((iVar1 < 0x4e22) && (19999 < iVar1)) {
        if (iVar1 == 20000) {
          iVar2 = func_0x0222a164(param_1 + 400,*(undefined4 *)(param_1 + 0x3b4));
          goto LAB_02227a38;
        }
        if (iVar1 == 0x4e21) {
          iVar2 = func_0x0222a1c0(*(undefined2 *)(param_1 + 0x3ac),*(undefined4 *)(param_1 + 0x3b4))
          ;
          goto LAB_02227a38;
        }
      }
    }
    else if (iVar1 == 0x5209) {
      iVar2 = func_0x0222a268(*(undefined1 *)(param_1 + 0x3ac),*(undefined4 *)(param_1 + 0x3b4));
      goto LAB_02227a38;
    }
  }
  else if (iVar1 < 0x59d9) {
    if (22999 < iVar1) {
      iVar2 = func_0x0222a33c(*(undefined4 *)(param_1 + 400),*(undefined4 *)(param_1 + 0x3b4));
      goto LAB_02227a38;
    }
    if (iVar1 == 0x55f1) {
      iVar2 = func_0x0222a2ec(param_1 + 400,*(undefined4 *)(param_1 + 0x3b4));
      goto LAB_02227a38;
    }
  }
  else if ((iVar1 < 0x59dc) && (23000 < iVar1)) {
    if (iVar1 == 0x59d9) {
      iVar1 = *(int *)(param_1 + 0x3f0);
      if (iVar1 == 0) {
        iVar2 = func_0x0222a394(param_1 + 400,*(undefined4 *)(param_1 + 0x3b4),0x59d9,0x3b4,param_4)
        ;
      }
      else if (iVar1 == 1) {
        iVar2 = func_0x0222a3dc(param_1 + 400,*(undefined4 *)(param_1 + 0x3b4));
      }
      else if (iVar1 == 2) {
        iVar2 = func_0x0222a434(param_1 + 400,*(undefined4 *)(param_1 + 0x3b4));
      }
      goto LAB_02227a38;
    }
    if (iVar1 == 0x59da) {
      iVar2 = func_0x0222a48c(*(undefined4 *)(param_1 + 0x3ac),*(undefined4 *)(param_1 + 0x3b0),
                              0x140,*(undefined4 *)(param_1 + 0x3b4));
      goto LAB_02227a38;
    }
    if (iVar1 == 0x59db) {
      iVar2 = func_0x0222a4c0(*(undefined4 *)(param_1 + 0x3ac),*(undefined4 *)(param_1 + 0x3b0),
                              *(undefined4 *)(param_1 + 0x3b4));
      goto LAB_02227a38;
    }
  }
  GF_AssertFail();
LAB_02227a38:
  if (iVar2 == 1) {
    *(undefined4 *)(param_1 + 0x3ec) = *(undefined4 *)(param_1 + 1000);
  }
  return iVar2;
}

