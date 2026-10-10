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
undefined4 ov08_02221BD0();

void ov08_022217F0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ov08_02221BD0(param_1 + 0x1ec,param_2,0,0,0x10,6,param_4);
  ov08_02221BD0(param_1 + 0x2ac,param_2,0,6,0x10,6);
  ov08_02221BD0(param_1 + 0x36c,param_2,0,0xc,0x10,6);
  ov08_02221BD0(param_1 + 0x42c,param_2,0,0x12,0x10,6);
  ov08_02221BD0(param_1 + 0x4ec,param_2,0x10,0,0x10,6);
  ov08_02221BD0(param_1 + 0x5ac,param_2,0x10,6,0x10,6);
  ov08_02221BD0(param_1 + 0x66c,param_2,0x10,0xc,0x10,6);
  ov08_02221BD0(param_1 + 0x72c,param_2,0x10,0x12,0x10,6);
  ov08_02221BD0(param_1 + 0x7ec,param_2,0,0x27,0xd,5);
  ov08_02221BD0(param_1 + 0x86e,param_2,0,0x2c,0xd,5);
  ov08_02221BD0(param_1 + 0x8f0,param_2,0xd,0x27,0xd,5);
  ov08_02221BD0(param_1 + 0x972,param_2,0xd,0x2c,0xd,5);
  ov08_02221BD0(param_1 + 0x9f4,param_2,0,0x31,5,5);
  ov08_02221BD0(param_1 + 0xa26,param_2,5,0x31,5,5);
  ov08_02221BD0(param_1 + 0xa58,param_2,10,0x31,5,5);
  ov08_02221BD0(param_1 + 0xa8a,param_2,0xf,0x31,5,5);
  ov08_02221BD0(param_1 + 0xabc,param_2,0,0x36,5,5);
  ov08_02221BD0(param_1 + 0xaee,param_2,5,0x36,5,5);
  ov08_02221BD0(param_1 + 0xb20,param_2,10,0x36,5,5);
  ov08_02221BD0(param_1 + 0xb52,param_2,0xf,0x36,5,5);
  ov08_02221BD0(param_1 + 0xb84,param_2,0x1a,0x18,5,5);
  ov08_02221BD0(param_1 + 0xbb6,param_2,0x1a,0x1d,5,5);
  ov08_02221BD0(param_1 + 0xbe8,param_2,0x1a,0x22,5,5);
  ov08_02221BD0(param_1 + 0xc1a,param_2,0x1a,0x27,5,5);
  ov08_02221BD0(param_1 + 0x1b40,param_2,0,0x18,0x1a,5);
  ov08_02221BD0(param_1 + 0x1c44,param_2,0,0x1d,0x1a,5);
  ov08_02221BD0(param_1 + 0x1d48,param_2,0,0x22,0x1a,5);
  ov08_02221BD0(param_1 + 0x1e4c,param_2,0x14,0x31,9,4);
  ov08_02221BD0(param_1 + 0x1e94,param_2,0x14,0x35,9,4);
  ov08_02221BD0(param_1 + 0x1edc,param_2,0x14,0x39,9,4);
  ov08_02221BD0(param_1 + 0x1f24,param_2,0,0x3b,5,2);
  ov08_02221BD0(param_1 + 0x1f38,param_2,5,0x3b,5,2);
  ov08_02221BD0(param_1 + 0x1f4c,param_2,10,0x3b,5,2);
  return;
}

