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
undefined4 ov18_021F95FC();
undefined4 ScheduleWindowCopyToVram();
undefined4 String_Delete();
undefined4 ov18_021F0428();
undefined4 ov18_021F03E0();
undefined4 FillWindowPixelBuffer();
undefined4 ov18_021E590C();
undefined4 ov18_021F9648();
undefined4 ov18_021EE35C();
undefined4 CopyWindowPixelsToVram_TextMode();
extern undefined ov18_021F9E4C;

void ov18_021F021C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;

  ov18_021EE35C(param_1,&ov18_021F9E4C,0xe);
  FillWindowPixelBuffer(param_1 + 0xc,0);
  FillWindowPixelBuffer(param_1 + 0x2c,0);
  FillWindowPixelBuffer(param_1 + 0x4c,0);
  ov18_021F9648(param_1 + 0xc,*(undefined4 *)(param_1 + 0x65c),0x8e,0,0,4,0x20100,0,param_4);
  uVar1 = ov18_021E590C(*(undefined2 *)(param_1 + 0x18a2),2,0x25);
  ov18_021F95FC(param_1 + 0x2c,uVar1,0x24,0,0,0x20100,2);
  String_Delete(uVar1);
  ov18_021F9648(param_1 + 0x4c,*(undefined4 *)(param_1 + 0x65c),0x84,0x18,0,0,0x50900,2);
  ScheduleWindowCopyToVram(param_1 + 0xc);
  ScheduleWindowCopyToVram(param_1 + 0x2c);
  ScheduleWindowCopyToVram(param_1 + 0x4c);
  if (*(int *)(param_1 + 0x1860) == 1) {
    FillWindowPixelBuffer(param_1 + 0x5c,0);
    FillWindowPixelBuffer(param_1 + 0x7c,0);
    ov18_021F9648(param_1 + 0x5c,*(undefined4 *)(param_1 + 0x65c),0x41,0x1c,0,4,0xf0c00,2);
    ov18_021F9648(param_1 + 0x7c,*(undefined4 *)(param_1 + 0x65c),0x42,0x1c,0,4,0xf0c00,2);
    ScheduleWindowCopyToVram(param_1 + 0x5c);
    ScheduleWindowCopyToVram(param_1 + 0x7c);
  }
  else {
    FillWindowPixelBuffer(param_1 + 0x6c,0);
    ov18_021F9648(param_1 + 0x6c,*(undefined4 *)(param_1 + 0x65c),0x41,0x1c,0,0,0x50900,2);
    ScheduleWindowCopyToVram(param_1 + 0x6c);
  }
  FillWindowPixelBuffer(param_1 + 0x3c,0);
  ov18_021F9648(param_1 + 0x3c,*(undefined4 *)(param_1 + 0x65c),0x80,0x38,0,0,0x20100,2);
  CopyWindowPixelsToVram_TextMode(param_1 + 0x3c);
  ov18_021F03E0(param_1);
  ov18_021F0428(param_1);
  return;
}

