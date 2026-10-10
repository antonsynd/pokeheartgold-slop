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
undefined4 FrontierSave_GetStat();
undefined4 sub_0205C2E8();
undefined4 ov86_021E6024();
undefined4 ov86_021E6A34();
undefined4 FillWindowPixelBuffer();
undefined4 sub_0205C2C0();
undefined4 ov86_021E5FBC();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov86_021E6064();

void ov86_021E690C(int param_1)

{
  undefined4 uVar1;
  
  FillWindowPixelBuffer(param_1 + 0x10,0);
  FillWindowPixelBuffer(param_1 + 0x20,0);
  FillWindowPixelBuffer(param_1 + 0x30,0);
  ov86_021E6024(param_1,0,0x19,0,0,0,0xf0200,0);
  if (*(char *)(param_1 + 6) == '\0') {
    uVar1 = 0x1a;
  }
  else if (*(char *)(param_1 + 6) == '\x01') {
    uVar1 = 0x1b;
  }
  else {
    uVar1 = 0x1c;
  }
  ov86_021E6024(param_1,0,uVar1,0xe0,0,0,0xf0200,1);
  uVar1 = ov86_021E6A34(param_1);
  ov86_021E6024(param_1,1,uVar1,0,0,0,0x10200,0);
  uVar1 = sub_0205C2C0(*(undefined1 *)(param_1 + 6));
  uVar1 = FrontierSave_GetStat(*(undefined4 *)(param_1 + 0x228),uVar1,0xff);
  ov86_021E5FBC(param_1,0,uVar1);
  ov86_021E6064(param_1,1,0x37,0x70,0,0,0x10200,2);
  ov86_021E6024(param_1,2,0x2b,0,0,0,0x10200,0);
  uVar1 = sub_0205C2E8(*(undefined1 *)(param_1 + 6));
  uVar1 = FrontierSave_GetStat(*(undefined4 *)(param_1 + 0x228),uVar1,0xff);
  ov86_021E5FBC(param_1,0,uVar1);
  ov86_021E6064(param_1,2,0x37,0x70,0,0,0x10200,2);
  ScheduleWindowCopyToVram(param_1 + 0x10);
  ScheduleWindowCopyToVram(param_1 + 0x20);
  ScheduleWindowCopyToVram(param_1 + 0x30);
  return;
}

