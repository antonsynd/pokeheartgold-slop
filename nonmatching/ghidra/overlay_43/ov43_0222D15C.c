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
undefined4 ov43_0222D508();
undefined4 ov43_0222A318(int, unsigned char, unsigned char, ...);
undefined4 ov43_0222D654();
undefined4 ov43_0222D778();
undefined4 ov43_0222D87C();
undefined4 ov43_0222D47C();
undefined4 ov43_0222D4C4();
undefined4 ov43_0222DCC4();
undefined4 PlaySE(unsigned short);

undefined4 ov43_0222D15C(short *param_1,undefined4 *param_2,undefined4 *param_3,int param_4)

{
  undefined1 uVar1;
  int iVar2;

  switch(*(undefined1 *)(param_2 + 2)) {
  case 0:
    param_1[7] = 0;
    *param_1 = 0;
  case 1:
    ov43_0222D654(param_1,(int)param_2,param_3,param_4);
    *(undefined1 *)(param_2 + 2) = 2;
    break;
  case 2:
    uVar1 = ov43_0222D47C(param_1,param_2,param_3,param_4);
    *(undefined1 *)(param_2 + 2) = uVar1;
    break;
  case 3:
    ov43_0222D4C4(param_1,param_2,param_3,param_4);
    ov43_0222D508(param_1,param_2,param_3,param_4);
    *(undefined1 *)(param_2 + 2) = 4;
    break;
  case 4:
    iVar2 = ov43_0222D508(param_1,param_2,param_3,param_4);
    if (iVar2 == 1) {
      *(undefined1 *)(param_2 + 2) = 2;
    }
    break;
  case 5:
    if ((param_1[7] == 0) || (param_1[6] = param_1[6] + -1, param_1[6] == 0)) {
      iVar2 = ov43_0222DCC4((int)param_2,*(int *)(param_1 + 4));
      if (iVar2 != 0) {
        PlaySE(0x5e5);
        ov43_0222D87C((int)param_1,param_3);
        ov43_0222A318((int)param_2,4,1);
        param_1[7] = 1;
        return 1;
      }
      *(undefined1 *)(param_2 + 2) = 2;
    }
    break;
  case 6:
    ov43_0222D778((int)param_1,param_3);
    ov43_0222A318((int)param_2,1,9);
    return 1;
  }
  return 0;
}

