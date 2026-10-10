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
undefined4 AddWindowParameterized();
undefined4 Options_GetTextFrameDelay();
undefined4 ReadMsgData_ExpandPlaceholders();
undefined4 DrawFrameAndWindow2();
undefined4 Options_GetFrame();
undefined4 GetWindowBgId();
undefined4 GF_AssertFail();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 LoadUserFrameGfx2();
undefined4 FillWindowPixelBuffer();

undefined4
ov111_021E6A74(int param_1,int *param_2,undefined4 *param_3,undefined4 param_4,undefined4 param_5,
              undefined4 param_6,undefined1 param_7,undefined4 param_8,int param_9)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar2 = param_4;
  if (param_1 == 0) {
    GF_AssertFail();
  }
  if (param_9 == 0) {
    GF_AssertFail();
  }
  if (*param_2 == 0) {
    AddWindowParameterized(param_1,param_2,param_7,2,0x13,0x1b,4,0xf,1,param_4,uVar2);
    uVar2 = GetWindowBgId(param_2);
    uVar1 = Options_GetFrame(param_9);
    LoadUserFrameGfx2(param_1,uVar2,0x3d2,0xd,uVar1,param_8);
  }
  uVar2 = Options_GetTextFrameDelay(param_9);
  FillWindowPixelBuffer(param_2,0xf);
  uVar3 = ReadMsgData_ExpandPlaceholders(param_4,param_5,param_6,param_8);
  *param_3 = uVar3;
  uVar2 = AddTextPrinterParameterizedWithColor(param_2,1,*param_3,0,0,uVar2,0x1020f,0);
  DrawFrameAndWindow2(param_2,0,0x3d2,0xd);
  return uVar2;
}

