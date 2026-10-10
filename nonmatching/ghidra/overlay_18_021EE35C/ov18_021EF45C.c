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
undefined4 ScheduleWindowCopyToVram();
undefined4 ov18_021EF34C();
undefined4 ov18_021E613C();
undefined4 FillWindowPixelBuffer();
undefined4 ov18_021EF25C();
undefined4 ov18_021EF310();
undefined4 ov18_021EF298();
undefined4 ov18_021EF388();
undefined4 ov18_021EF1E4();
undefined4 ov18_021EF220();
undefined4 ov18_021EF2D4();

void ov18_021EF45C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;

  ov18_021E613C(param_1,0,param_3,param_4,param_4);
  FillWindowPixelBuffer(param_1 + 0x14c,0);
  FillWindowPixelBuffer(param_1 + 0x15c,0);
  FillWindowPixelBuffer(param_1 + 0x16c,0);
  FillWindowPixelBuffer(param_1 + 0x17c,0);
  FillWindowPixelBuffer(param_1 + 0x18c,0);
  FillWindowPixelBuffer(param_1 + 0x19c,0);
  FillWindowPixelBuffer(param_1 + 0x1ac,0);
  ov18_021EF1E4(param_1,0x14);
  ov18_021EF220(param_1,0x15);
  ov18_021EF25C(param_1,0x16);
  ov18_021EF298(param_1,0x17);
  ov18_021EF2D4(param_1,0x18);
  ov18_021EF310(param_1,0x19);
  ov18_021EF34C(param_1,0x1a);
  ov18_021EF388(param_1,0x11,0x23);
  ov18_021EF388(param_1,0x12,0x24);
  ov18_021EF388(param_1,0x13,0x25);
  uVar1 = 0x14;
  param_1 = param_1 + 0x14c;
  do {
    ScheduleWindowCopyToVram(param_1);
    uVar1 = uVar1 + 1;
    param_1 = param_1 + 0x10;
  } while (uVar1 < 0x1b);
  return;
}

