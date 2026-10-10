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
typedef void code(void);
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
undefined4 String_Delete(undefined4);
undefined4 BufferIntegerAsString(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 FillWindowPixelBuffer(undefined4, undefined4);
undefined4 ScheduleWindowCopyToVram(undefined4);
undefined4 AddTextPrinterParameterizedWithColor(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 FontID_String_GetWidth(undefined4, undefined4, undefined4);
undefined4 NewString_ReadMsgData(undefined4, undefined4);
undefined4 GetWindowWidth(undefined4);
undefined4 StringExpandPlaceholders(undefined4, undefined4, undefined4);

void ov08_022237C4(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  
  FillWindowPixelBuffer(param_1[0xb] + 400,0);
  iVar4 = param_1[0xb];
  uVar1 = NewString_ReadMsgData(param_1[4],0x1c);
  iVar2 = FontID_String_GetWidth(0,uVar1,0);
  iVar3 = GetWindowWidth(iVar4 + 400);
  uVar5 = (uint)(iVar3 * 8 - iVar2) >> 1;
  AddTextPrinterParameterizedWithColor(iVar4 + 400,0,uVar1,uVar5,4,0xff,0x10200,0);
  String_Delete(uVar1);
  uVar1 = NewString_ReadMsgData(param_1[4],0x1d);
  BufferIntegerAsString
            (param_1[5],0,*(byte *)((int)param_1 + *(byte *)((int)param_1 + 0x114d) + 0x1154) + 1,2,
             0,1);
  StringExpandPlaceholders(param_1[5],param_1[6],uVar1);
  AddTextPrinterParameterizedWithColor(iVar4 + 400,0,param_1[6],uVar5 + iVar2,4,0xff,0x10200,0);
  String_Delete(uVar1);
  uVar1 = NewString_ReadMsgData(param_1[4],0x1e);
  BufferIntegerAsString
            (param_1[5],0,*(byte *)(*param_1 + (uint)*(byte *)((int)param_1 + 0x114d) + 0x2c) + 1,2,
             0,1);
  StringExpandPlaceholders(param_1[5],param_1[6],uVar1);
  iVar2 = FontID_String_GetWidth(0,param_1[6],0);
  AddTextPrinterParameterizedWithColor(iVar4 + 400,0,param_1[6],uVar5 - iVar2,4,0xff,0x10200,0);
  String_Delete(uVar1);
  ScheduleWindowCopyToVram(iVar4 + 400);
  return;
}

