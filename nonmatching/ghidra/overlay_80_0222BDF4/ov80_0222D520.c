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
undefined4 ov80_0223AF60();
undefined4 WindowArray_Delete();
undefined4 ov80_0223AC24();
undefined4 sub_0200FBF4();
undefined4 ov80_0223B1D4();
undefined4 ov80_0223AF30();
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 BG_ClearCharDataRange();
undefined4 ov80_0223AF80();
undefined4 AddWindowParameterized();
undefined4 func_0x02003d5c() __asm__("sub_02003D5C");
undefined4 IsPaletteFadeFinished();
undefined4 FillWindowPixelBuffer();
undefined4 ScheduleWindowCopyToVram();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 AllocWindows();
undefined4 RemoveWindow();

undefined4 ov80_0222D520(int *param_1)

{
  int iVar1;
  
  switch(param_1[1]) {
  case 0:
    ov80_0223AC24(1,0x10,0xfffffff0,param_1 + 3,2);
    param_1[1] = param_1[1] + 1;
    break;
  case 1:
    if (param_1[3] == 0) {
      return 1;
    }
    iVar1 = AllocWindows(0xb,1);
    param_1[10] = iVar1;
    AddWindowParameterized(*(undefined4 *)*param_1,param_1[10],1,0,0,0x20,0x20,0,0);
    func_0x02003d5c(*(undefined4 *)(*param_1 + 4),0,2,0,0,0x10);
    FillWindowPixelBuffer(param_1[10],0);
    ScheduleWindowCopyToVram(param_1[10]);
    iVar1 = ov80_0223AF30(0xb);
    param_1[0xb] = iVar1;
    param_1[1] = param_1[1] + 1;
  case 2:
    ov80_0223AF80(param_1[0xb],1,1,param_1[10],0xf);
    param_1[1] = param_1[1] + 1;
    break;
  case 3:
    iVar1 = ov80_0223B1D4(param_1[0xb]);
    ScheduleWindowCopyToVram(param_1[10]);
    if (iVar1 != 0) {
      param_1[1] = param_1[1] + 1;
    }
    break;
  default:
    iVar1 = IsPaletteFadeFinished();
    if (iVar1 == 1) {
      ov80_0223AF60(param_1[0xb]);
      ClearWindowTilemapAndCopyToVram(param_1[10]);
      RemoveWindow(param_1[10]);
      WindowArray_Delete(param_1[10],1);
      sub_0200FBF4(0,0);
      sub_0200FBF4(1,0);
      BG_ClearCharDataRange(1,0x20,0,0xb);
      BgClearTilemapBufferAndCommit(*(undefined4 *)*param_1,1);
      return 0;
    }
  }
  return 1;
}

