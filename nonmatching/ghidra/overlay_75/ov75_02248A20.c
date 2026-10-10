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
undefined4 ov75_02247878();
undefined4 func_0x02237f38() __asm__("sub_02237F38");
undefined4 sub_020399EC();
undefined4 func_0x02237f58() __asm__("sub_02237F58");

undefined4 ov75_02248A20(int *param_1)

{
  int iVar1;
  
  iVar1 = func_0x02237f38();
  if (iVar1 == 0) {
    param_1[0x3a] = param_1[0x3a] + 1;
    if (param_1[0x3a] == 0xe10) {
      sub_020399EC();
    }
  }
  else {
    iVar1 = func_0x02237f58();
    param_1[0x3a] = 0;
    switch(iVar1) {
    case 0:
      iVar1 = *(int *)(*param_1 + 0xfc);
      if (iVar1 == 0) {
        switch(*(undefined4 *)(*param_1 + 0x100)) {
        case 0:
          ov75_02247878(param_1);
          param_1[4] = -0x138a;
          param_1[2] = 0x20;
          break;
        case 1:
          param_1[2] = 0x13;
          break;
        case 2:
          ov75_02247878(param_1);
          param_1[4] = -0x1389;
          param_1[2] = 0x20;
          break;
        case 3:
          ov75_02247878(param_1);
          param_1[4] = -0x138b;
          param_1[2] = 0x20;
          break;
        default:
          sub_020399EC();
        }
      }
      else if (iVar1 == 1) {
        ov75_02247878(param_1);
        param_1[4] = -0x138c;
        param_1[2] = 0x20;
      }
      else if (iVar1 == 2) {
        ov75_02247878(param_1);
        param_1[4] = -0x138d;
        param_1[2] = 0x20;
      }
      else {
        ov75_02247878(param_1);
        sub_020399EC();
      }
      break;
    case 1:
      ov75_02247878(param_1);
      param_1[4] = iVar1;
      param_1[2] = 0x20;
      break;
    case -0xf:
    case -0xc:
      ov75_02247878(param_1);
      param_1[4] = iVar1;
      param_1[2] = 0x20;
      break;
    case -0xe:
    case -2:
      ov75_02247878(param_1);
      param_1[4] = iVar1;
      param_1[2] = 0x20;
      break;
    default:
      ov75_02247878(param_1);
      sub_020399EC();
      break;
    case -1:
    case 2:
      ov75_02247878(param_1);
      param_1[4] = iVar1;
      param_1[2] = 0x20;
    }
  }
  return 0;
}

