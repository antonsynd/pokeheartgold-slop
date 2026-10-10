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
undefined4 ov112_021F22B0();
undefined4 ov112_021F2204();
undefined4 ov112_021F22D0();
undefined4 ov112_021F1F3C();
undefined4 ov112_021F1F54();
undefined4 ov112_021F1624();

void ov112_021F2A78(int param_1,uint param_2)

{
  ushort uVar1;
  undefined4 uVar2;

  uVar1 = *(ushort *)(*(int *)(param_1 + (uint)*(byte *)(param_1 + 0x13d) * 4 + 0xc0) + 0x78);
  if (uVar1 < 300) {
    ov112_021F2204(param_1,0,1);
    ov112_021F1F54(param_1 + 0x98,0x80,0x48,0);
    ov112_021F1F3C(param_1 + 0x98,0);
    ov112_021F22D0(param_1,0,8,10);
    if (((param_2 < 0x14) || (0x18 < param_2)) && (7 < param_2)) {
      if ((param_2 < 0xc) || (0x10 < param_2)) {
        uVar2 = 0x55;
      }
      else {
        uVar2 = 0x54;
      }
    }
    else {
      uVar2 = 0x53;
    }
  }
  else {
    ov112_021F2204(param_1,0,1);
    ov112_021F22B0(*(undefined4 *)(param_1 + 0x84),*(uint *)(param_1 + 0xc) & 0xff,3);
    if (uVar1 < 4000) {
      if (uVar1 < 2000) {
        if (uVar1 < 1000) {
          uVar2 = 0x52;
        }
        else {
          uVar2 = 0x51;
        }
      }
      else {
        uVar2 = 0x50;
      }
    }
    else {
      uVar2 = 0x4f;
    }
  }
  ov112_021F1624(param_1,uVar2,0);
  return;
}

