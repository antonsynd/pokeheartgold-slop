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
undefined4 sub_0205C1A0();
undefined4 ov86_021E68B8();
undefined4 FrontierSave_GetStat();
undefined4 ov86_021E6024();
undefined4 FillWindowPixelBuffer();
undefined4 sub_0205C1F0();
undefined4 sub_0205C240();
undefined4 ov86_021E5FBC();
undefined4 sub_0205C1C8();
undefined4 sub_0205C268();
undefined4 Save_Frontier_GetStatic();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov86_021E6064();

void ov86_021E66D0(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  FillWindowPixelBuffer(param_1 + 0x10,0);
  FillWindowPixelBuffer(param_1 + 0x20,0);
  FillWindowPixelBuffer(param_1 + 0x30,0);
  FillWindowPixelBuffer(param_1 + 0x40,0);
  ov86_021E6024(param_1,0,0x17,0,0,0,0xf0200,0);
  if (*(char *)(param_1 + 6) == '\0') {
    uVar3 = 0x1a;
  }
  else if (*(char *)(param_1 + 6) == '\x01') {
    uVar3 = 0x1b;
  }
  else {
    uVar3 = 0x1c;
  }
  ov86_021E6024(param_1,0,uVar3,0xe0,0,0,0xf0200,1);
  ov86_021E6024(param_1,1,0x31,0x70,0,0,0x10200,1);
  uVar3 = ov86_021E68B8(param_1);
  ov86_021E6024(param_1,2,uVar3,0,0,0,0x10200,0);
  uVar3 = sub_0205C1A0(*(undefined1 *)(param_1 + 6));
  uVar3 = FrontierSave_GetStat(*(undefined4 *)(param_1 + 0x228),uVar3,0xff);
  ov86_021E5FBC(param_1,0,uVar3);
  ov86_021E6064(param_1,2,0x36,0x70,0,0,0x10200,2);
  uVar3 = Save_Frontier_GetStatic(*(undefined4 *)(param_1 + 0x224));
  uVar1 = sub_0205C1F0(*(undefined1 *)(param_1 + 6));
  sub_0205C1F0(*(undefined1 *)(param_1 + 6));
  uVar2 = sub_0205C268();
  uVar3 = FrontierSave_GetStat(uVar3,uVar1,uVar2);
  ov86_021E5FBC(param_1,0,uVar3);
  ov86_021E6064(param_1,2,0x35,0xe0,0,0,0x10200,1);
  ov86_021E6024(param_1,3,0x2b,0,0,0,0x10200,0);
  uVar3 = sub_0205C1C8(*(undefined1 *)(param_1 + 6));
  uVar3 = FrontierSave_GetStat(*(undefined4 *)(param_1 + 0x228),uVar3,0xff);
  ov86_021E5FBC(param_1,0,uVar3);
  ov86_021E6064(param_1,3,0x36,0x70,0,0,0x10200,2);
  uVar3 = Save_Frontier_GetStatic(*(undefined4 *)(param_1 + 0x224));
  uVar1 = sub_0205C240(*(undefined1 *)(param_1 + 6));
  sub_0205C240(*(undefined1 *)(param_1 + 6));
  uVar2 = sub_0205C268();
  uVar3 = FrontierSave_GetStat(uVar3,uVar1,uVar2);
  ov86_021E5FBC(param_1,0,uVar3);
  ov86_021E6064(param_1,3,0x35,0xe0,0,0,0x10200,1);
  ScheduleWindowCopyToVram(param_1 + 0x10);
  ScheduleWindowCopyToVram(param_1 + 0x20);
  ScheduleWindowCopyToVram(param_1 + 0x30);
  ScheduleWindowCopyToVram(param_1 + 0x40);
  return;
}

