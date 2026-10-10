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
undefined4 sub_0208C7F8();
undefined4 sub_0208C850();
undefined4 FillWindowPixelBuffer();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 ReadMsgDataIntoString();

void sub_0208C9A4(int param_1)

{
  sub_0208C850(param_1,0,7,0xe0f00,0);
  sub_0208C850(param_1,1,0x17,0xe0f00,0);
  sub_0208C850(param_1,2,0x6d,0xe0f00,0);
  sub_0208C850(param_1,3,0x7e,0xe0f00,0);
  sub_0208C850(param_1,4,0x80,0xe0f00,0);
  if (*(int *)(*(int *)(param_1 + 0x22c) + 0x34) == 0) {
    FillWindowPixelBuffer(param_1 + 0x54,0);
  }
  else {
    sub_0208C850(param_1,5,0x9d,0xe0f00,0);
  }
  sub_0208C850(param_1,6,4,0xe0f00,0);
  sub_0208C850(param_1,7,8,0xe0f00,0);
  sub_0208C850(param_1,8,10,0xe0f00,0);
  sub_0208C850(param_1,9,0xc,0xe0f00,0);
  sub_0208C850(param_1,10,0xd,0xe0f00,0);
  sub_0208C850(param_1,0xb,0xf,0xe0f00,0);
  sub_0208C850(param_1,0xc,0x11,0xe0f00,0);
  sub_0208C850(param_1,0xd,0x13,0xe0f00,0);
  sub_0208C850(param_1,0xf,0x6e,0xe0f00,0);
  sub_0208C7F8(param_1,0x10,0x6f,0,0);
  sub_0208C7F8(param_1,0x11,0x70,1,0);
  sub_0208C7F8(param_1,0x12,0x71,3,0);
  sub_0208C7F8(param_1,0x13,0x72,4,0);
  sub_0208C7F8(param_1,0x14,0x73,2,0);
  ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x7a0),0x74,*(undefined4 *)(param_1 + 0x7ac));
  AddTextPrinterParameterizedWithColor
            (param_1 + 0x154,0,*(undefined4 *)(param_1 + 0x7ac),3,0,0xff,0xe0f00,0);
  ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x7a0),0x92,*(undefined4 *)(param_1 + 0x7ac));
  AddTextPrinterParameterizedWithColor
            (param_1 + 0x174,4,*(undefined4 *)(param_1 + 0x7ac),0,0,0xff,0xe0f00,0);
  sub_0208C850(param_1,0x18,0x95,0xe0f00,0);
  sub_0208C850(param_1,0x19,0x93,0xe0f00,0);
  sub_0208C850(param_1,0x1a,0x94,0xe0f00,0);
  sub_0208C850(param_1,0x1b,0xa2,0xe0f00,2);
  sub_0208C850(param_1,0x1c,0xa0,0x10200,2);
  sub_0208C850(param_1,0x1d,0xb6,0x10200,0);
  sub_0208C850(param_1,0x1e,0xb3,0xe0f00,0);
  return;
}

