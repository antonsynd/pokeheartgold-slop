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
undefined4 func_0x020cbe9c() __asm__("sub_020CBE9C");
undefined4 PlaySE();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 func_0x02006184() __asm__("sub_02006184");
undefined4 ov92_02260428();
undefined4 ov92_02260628();

void ov92_0225CB2C(int param_1,int param_2,int param_3)

{
  int iVar1;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  if ((param_2 == 0) && (param_3 == 0)) {
    *(undefined4 *)(param_1 + 0x1fd4) = 0;
    *(undefined4 *)(param_1 + 0x1fd8) = 0;
    if (*(int *)(param_1 + 0x30c) != 0) {
      ov92_02260628(param_1 + 0x114,0x3f800000);
      uStack_20 = 0;
      uStack_1c = 0x64000;
      uStack_18 = 0;
      func_0x020cbe9c(&uStack_20,param_1 + 0x4d0,param_1 + 0x1fc8);
      return;
    }
    *(undefined4 *)(param_1 + 0x310) = 0;
    *(undefined4 *)(param_1 + 0x314) = 0;
    ov92_02260428(param_1 + 0x114,*(undefined4 *)(param_1 + 0x1fd4),
                  *(undefined4 *)(param_1 + 0x1fd8),*(undefined4 *)(param_1 + 0x1fd4),
                  *(undefined4 *)(param_1 + 0x1fd8),0x3ff0a3d7,0);
    ov92_02260428(param_1 + 800,*(undefined4 *)(param_1 + 0x1fd4),*(undefined4 *)(param_1 + 0x1fd8),
                  *(undefined4 *)(param_1 + 0x1fd4),*(undefined4 *)(param_1 + 0x1fd8),0x3e6147ae,0);
    return;
  }
  func_0x020f2998(100 - (*(int *)(param_1 + 0x1fcc) >> 0xc),0x28);
  func_0x020f2178();
  if (*(int *)(param_1 + 0x1fd4) == 0) {
    *(int *)(param_1 + 0x1fd4) = param_2;
    *(int *)(param_1 + 0x1fd8) = param_3;
  }
  ov92_02260428(param_1 + 0x114,param_2,param_3,*(undefined4 *)(param_1 + 0x1fd4),
                *(undefined4 *)(param_1 + 0x1fd8),0x40000000,1);
  uStack_2c = 0;
  uStack_28 = 0x64000;
  uStack_24 = 0;
  func_0x020cbe9c(&uStack_2c,param_1 + 0x4d0,param_1 + 0x1fc8);
  iVar1 = func_0x02006184(0x58a);
  if (iVar1 == 0) {
    PlaySE(0x58a);
  }
  *(int *)(param_1 + 0x1fd4) = param_2;
  *(int *)(param_1 + 0x1fd8) = param_3;
  return;
}

