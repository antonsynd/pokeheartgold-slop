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
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 ScheduleWindowCopyToVram();
undefined4 FillWindowPixelBuffer();
undefined4 String_Delete();
undefined4 func_0x020f2ba4() __asm__("sub_020F2BA4");
undefined4 String_New();
undefined4 func_0x02026464() __asm__("sub_02026464");
undefined4 GF_AssertFail();

void ov15_021FEDEC(int param_1,uint param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  if (999 < *(short *)(param_1 + 0x680)) {
    GF_AssertFail();
  }
  uVar1 = String_New(2,6);
  if (param_2 == 2) {
    iVar3 = 10;
  }
  else {
    iVar3 = 100;
  }
  iVar5 = (int)*(short *)(param_1 + 0x680);
  uVar4 = 0;
  if (param_2 != 0) {
    param_1 = param_1 + 0xb4;
    do {
      iVar2 = func_0x020f2ba4(iVar5,iVar3);
      func_0x02026464(uVar1,iVar2,1,0,1);
      iVar5 = iVar5 - iVar3 * iVar2;
      iVar3 = func_0x020f2ba4(iVar3,10);
      iVar2 = (uVar4 + 0x11) * 0x10;
      FillWindowPixelBuffer(param_1 + iVar2,0);
      AddTextPrinterParameterizedWithColor(param_1 + iVar2,0,uVar1,0,4,0xff,0x10200,0);
      ScheduleWindowCopyToVram(param_1 + iVar2);
      uVar4 = uVar4 + 1;
    } while (uVar4 < param_2);
  }
  String_Delete(uVar1);
  return;
}

