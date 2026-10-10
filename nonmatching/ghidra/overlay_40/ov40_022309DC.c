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
undefined4 GF_AssertFail();

undefined4 ov40_022309DC(int param_1,undefined4 param_2,int param_3,int param_4)

{
  undefined4 uVar1;
  
  *(undefined4 *)(param_1 + 0x504) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(param_1 + 0x508) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(param_1 + 0x50c) = **(undefined4 **)(param_1 + 0x10);
  uVar1 = 0xc2;
  *(undefined4 *)(param_1 + 0x51c) = 1;
  if (param_4 == 0) {
    switch(param_3) {
    case 0:
      uVar1 = 0xf4;
      break;
    case 1:
      uVar1 = 0xf5;
      break;
    case 2:
      uVar1 = 0xf6;
      break;
    case 3:
      uVar1 = 0xf7;
      break;
    case 4:
      uVar1 = 0xf8;
      break;
    case 5:
      uVar1 = 0xf9;
      break;
    case 6:
      uVar1 = 0xfa;
      break;
    case 7:
      uVar1 = 0xfb;
      break;
    case 8:
      uVar1 = 0xfc;
      break;
    case 9:
      uVar1 = 0xfd;
      break;
    case 10:
      uVar1 = 0xfe;
      break;
    case 0xb:
      uVar1 = 0xff;
      break;
    case 0xc:
      uVar1 = 0x100;
      break;
    case 0xd:
      uVar1 = 0x101;
      break;
    case 0xe:
      uVar1 = 0x102;
      break;
    default:
      GF_AssertFail();
    }
  }
  else if (param_4 == 1) {
    switch(param_3) {
    case 0:
      uVar1 = 0x103;
      break;
    case 1:
      uVar1 = 0x104;
      break;
    case 2:
      uVar1 = 0x105;
      break;
    case 3:
      uVar1 = 0x106;
      break;
    case 4:
      uVar1 = 0x107;
      break;
    case 5:
      uVar1 = 0x108;
      break;
    case 6:
      uVar1 = 0x109;
      break;
    case 7:
      uVar1 = 0x10a;
      break;
    case 8:
      uVar1 = 0x10b;
      break;
    case 9:
      uVar1 = 0x10c;
      break;
    default:
      GF_AssertFail();
    }
  }
  else if (param_4 == 2) {
    switch(param_2) {
    case 0:
      switch(param_3) {
      case 0:
        break;
      case 1:
        uVar1 = 0xc3;
        break;
      case 2:
        uVar1 = 0xc4;
        break;
      case 3:
        uVar1 = 0xc5;
        break;
      case 4:
        uVar1 = 0xc6;
        break;
      case 5:
        uVar1 = 199;
        break;
      default:
        GF_AssertFail();
      }
      break;
    case 1:
      switch(param_3) {
      case 0:
        uVar1 = 200;
        break;
      case 1:
        uVar1 = 0xc9;
        break;
      case 2:
        uVar1 = 0xca;
        break;
      case 3:
        uVar1 = 0xcb;
        break;
      default:
        GF_AssertFail();
      }
      break;
    case 2:
      switch(param_3) {
      case 0:
        uVar1 = 0xcc;
        break;
      case 1:
        uVar1 = 0xcd;
        break;
      case 2:
        uVar1 = 0xce;
        break;
      case 3:
        uVar1 = 0xcf;
        break;
      case 4:
        uVar1 = 0xd0;
        break;
      case 5:
        uVar1 = 0xd1;
        break;
      case 6:
        uVar1 = 0xd2;
        break;
      default:
        GF_AssertFail();
      }
      break;
    case 3:
      switch(param_3) {
      case 0:
        uVar1 = 0xd3;
        break;
      case 1:
        uVar1 = 0xd4;
        break;
      case 2:
        uVar1 = 0xd5;
        break;
      case 3:
        uVar1 = 0xd6;
        break;
      default:
        GF_AssertFail();
      }
      break;
    case 4:
      if (param_3 == 0) {
        uVar1 = 0xd7;
      }
      else if (param_3 == 1) {
        uVar1 = 0xd8;
      }
      else if (param_3 == 2) {
        uVar1 = 0xd9;
      }
      else {
        GF_AssertFail();
      }
      break;
    case 5:
      switch(param_3) {
      case 0:
        uVar1 = 0xda;
        break;
      case 1:
        uVar1 = 0xdb;
        break;
      case 2:
        uVar1 = 0xdc;
        break;
      case 3:
        uVar1 = 0xdd;
        break;
      case 4:
        uVar1 = 0xde;
        break;
      case 5:
        uVar1 = 0xdf;
        break;
      default:
        GF_AssertFail();
      }
      break;
    case 6:
      switch(param_3) {
      case 0:
        uVar1 = 0xe0;
        break;
      case 1:
        uVar1 = 0xe1;
        break;
      case 2:
        uVar1 = 0xe2;
        break;
      case 3:
        uVar1 = 0xe3;
        break;
      case 4:
        uVar1 = 0xe4;
        break;
      case 5:
        uVar1 = 0xe5;
        break;
      case 6:
        uVar1 = 0xe6;
        break;
      case 7:
        uVar1 = 0xe7;
        break;
      default:
        GF_AssertFail();
      }
      break;
    case 7:
      switch(param_3) {
      case 0:
        uVar1 = 0xe8;
        break;
      case 1:
        uVar1 = 0xe9;
        break;
      case 2:
        uVar1 = 0xea;
        break;
      case 3:
        uVar1 = 0xeb;
        break;
      default:
        GF_AssertFail();
      }
      break;
    case 8:
      switch(param_3) {
      case 0:
        uVar1 = 0xec;
        break;
      case 1:
        uVar1 = 0xed;
        break;
      case 2:
        uVar1 = 0xee;
        break;
      case 3:
        uVar1 = 0xef;
        break;
      default:
        GF_AssertFail();
      }
      break;
    default:
      GF_AssertFail();
    }
  }
  *(undefined4 *)(param_1 + 0x510) = uVar1;
  return *(undefined4 *)(param_1 + 0x510);
}

