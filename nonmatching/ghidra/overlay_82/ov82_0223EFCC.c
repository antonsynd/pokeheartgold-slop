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
undefined4 Party_GetMonByIndex();
undefined4 String_New();
undefined4 CopyU16ArrayToString();
undefined4 GetMonData();
undefined4 String_Delete();
undefined4 CopyWindowToVram();
undefined4 FillWindowPixelBuffer();

void ov82_0223EFCC(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,byte param_5
                  ,byte param_6,byte param_7,undefined1 param_8)

{
  undefined4 uVar1;
  undefined1 auStack_30 [24];
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar1 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x214),0);
  GetMonData(uVar1,0xb3,auStack_30);
  FillWindowPixelBuffer(param_2,param_7);
  uVar1 = String_New(0xb,0x69);
  CopyU16ArrayToString(uVar1,auStack_30);
  AddTextPrinterParameterizedWithColor
            (param_2,param_8,uVar1,param_3,param_4,0,
             (uint)param_5 << 0x10 | (uint)param_6 << 8 | (uint)param_7,0);
  String_Delete(uVar1);
  CopyWindowToVram(param_2);
  return;
}

