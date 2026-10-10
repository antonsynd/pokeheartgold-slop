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
undefined4 ov08_0222458C();

void ov08_02224254(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ov08_0222458C(param_1 + 0x328,param_2,0,0,0x10,9,param_4);
  ov08_0222458C(param_1 + 0x448,param_2,0,9,0x10,9);
  ov08_0222458C(param_1 + 0x568,param_2,0,0x12,0x10,9);
  ov08_0222458C(param_1 + 0x688,param_2,0,0x1b,0x1a,5);
  ov08_0222458C(param_1 + 0x78c,param_2,0,0x20,0x1a,5);
  ov08_0222458C(param_1 + 0x890,param_2,0,0x25,0x1a,5);
  ov08_0222458C(param_1 + 0x994,param_2,0,0x2a,0x1a,5);
  ov08_0222458C(param_1 + 0xa98,param_2,0,0x39,5,5);
  ov08_0222458C(param_1 + 0xaca,param_2,5,0x39,5,5);
  ov08_0222458C(param_1 + 0xafc,param_2,10,0x39,5,5);
  ov08_0222458C(param_1 + 0xb2e,param_2,0x10,0,0x10,6);
  ov08_0222458C(param_1 + 0xbee,param_2,0x10,6,0x10,6);
  ov08_0222458C(param_1 + 0xcae,param_2,0x10,0xc,0x10,6);
  ov08_0222458C(param_1 + 0xd6e,param_2,0x10,0x12,0x10,6);
  ov08_0222458C(param_1 + 0xe2e,param_2,0,0x2f,5,5);
  ov08_0222458C(param_1 + 0xe60,param_2,5,0x2f,5,5);
  ov08_0222458C(param_1 + 0xe92,param_2,10,0x2f,5,5);
  ov08_0222458C(param_1 + 0xec4,param_2,0xf,0x2f,5,5);
  ov08_0222458C(param_1 + 0xef6,param_2,0,0x34,5,5);
  ov08_0222458C(param_1 + 0xf28,param_2,5,0x34,5,5);
  ov08_0222458C(param_1 + 0xf5a,param_2,10,0x34,5,5);
  ov08_0222458C(param_1 + 0xf8c,param_2,0xf,0x34,5,5);
  ov08_0222458C(param_1 + 0xfbe,param_2,0x14,0x2f,4,4);
  ov08_0222458C(param_1 + 0xfde,param_2,0x18,0x2f,4,4);
  ov08_0222458C(param_1 + 0xffe,param_2,0x1c,0x2f,4,4);
  ov08_0222458C(param_1 + 0x101e,param_2,0x14,0x33,4,4);
  ov08_0222458C(param_1 + 0x103e,param_2,0x18,0x33,4,4);
  ov08_0222458C(param_1 + 0x105e,param_2,0x1c,0x33,4,4);
  ov08_0222458C(param_1 + 0x107e,param_2,0x14,0x37,4,4);
  ov08_0222458C(param_1 + 0x109e,param_2,0x18,0x37,4,4);
  ov08_0222458C(param_1 + 0x10be,param_2,0x1c,0x37,4,4);
  ov08_0222458C(param_1 + 0x10de,param_2,0x14,0x3b,4,4);
  ov08_0222458C(param_1 + 0x10fe,param_2,0x18,0x3b,4,4);
  ov08_0222458C(param_1 + 0x111e,param_2,0x1c,0x3b,4,4);
  return;
}

