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
undefined4 PlaySE();
undefined4 ov71_022481EC();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov71_022476C4();
undefined4 ov71_022476EC();

void ov71_0224820C(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  if (param_2[9] == 0) {
    param_2[3] = param_2[3] + param_2[7];
    iVar1 = param_2[7];
    if (iVar1 < 0) {
      param_2[7] = iVar1 + -0x780;
      if ((int)param_2[3] < -0x3fff) {
        param_2[3] = 0xffffc000;
        iVar1 = func_0x020f2998(param_2[7] * 0x2c,100,param_3,param_4,param_4);
        param_2[7] = -iVar1;
        if (-iVar1 < 4000) {
          param_2[9] = 1;
        }
        PlaySE(0x5e6);
        iVar1 = param_2[8] + 1;
        param_2[8] = iVar1;
        if (iVar1 == 1) {
          *(undefined2 *)(param_2 + 0xb) = 0xb0;
        }
        else if (iVar1 == 3) {
          *(short *)(param_2 + 0xb) = *(short *)(param_2 + 0xb) + 0x50;
        }
      }
    }
    else {
      param_2[7] = iVar1 + -0x780;
    }
  }
  *(short *)(param_2 + 5) = *(short *)(param_2 + 5) + *(short *)(param_2 + 0xb);
  *(short *)(param_2 + 6) = *(short *)(param_2 + 6) - *(short *)(param_2 + 0xb);
  ov71_022476EC(param_2[1],param_2 + 5);
  param_2[2] = param_2[2] + *(short *)(param_2 + 0xb) * 5;
  param_2[4] = param_2[4] + *(short *)(param_2 + 0xb) * 5;
  ov71_022476C4(param_2[1],param_2 + 2);
  if (param_2[9] != 0) {
    *(short *)(param_2 + 0xb) = *(short *)(param_2 + 0xb) + -0xe;
    iVar1 = param_2[10];
    param_2[10] = iVar1 + 1;
    if (0x1e < iVar1 + 1) {
      ov71_022481EC(*param_2);
    }
  }
  return;
}

