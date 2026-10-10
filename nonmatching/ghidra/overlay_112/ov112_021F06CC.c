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
undefined4 FontID_String_GetWidth();
undefined4 func_0x0200bcdc() __asm__("sub_0200BCDC");
undefined4 CopyWindowToVram();
undefined4 CopyU16ArrayToString();
undefined4 BufferString();
undefined4 FillWindowPixelBuffer();
undefined4 BufferIntegerAsString();
undefined4 ReadMsgData_ExpandPlaceholders();
undefined4 BufferItemName();
undefined4 NewString_ReadMsgData();
undefined4 String_Delete();
undefined4 GetWindowWidth();

void ov112_021F06CC(undefined4 *param_1,int param_2)

{
  undefined1 uVar1;
  undefined2 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;

  uVar1 = *(undefined1 *)(param_2 + 0x28);
  uVar2 = *(undefined2 *)(param_2 + 0x26);
  CopyU16ArrayToString(param_1[0x1c],param_2 + 10);
  FillWindowPixelBuffer(param_1 + 0xe,0);
  AddTextPrinterParameterizedWithColor(param_1 + 0xe,0,param_1[0x1c],0,0,0xff,0x10200,0);
  CopyWindowToVram(param_1 + 0xe);
  uVar3 = func_0x0200bcdc(*(undefined2 *)(param_2 + 4),*param_1);
  BufferString(param_1[0x1b],0,uVar3,2,1,2);
  String_Delete(uVar3);
  uVar3 = ReadMsgData_ExpandPlaceholders(param_1[0x1b],param_1[0x1a],0,*param_1);
  FillWindowPixelBuffer(param_1 + 2,0);
  AddTextPrinterParameterizedWithColor(param_1 + 2,0,uVar3,0,0,0xff,0x10200,0);
  CopyWindowToVram(param_1 + 2);
  String_Delete(uVar3);
  BufferIntegerAsString(param_1[0x1b],0,uVar1,3,1,1);
  uVar3 = ReadMsgData_ExpandPlaceholders(param_1[0x1b],param_1[0x1a],3,*param_1);
  FillWindowPixelBuffer(param_1 + 6,0);
  iVar4 = GetWindowWidth(param_1 + 6);
  iVar5 = FontID_String_GetWidth(0,uVar3,0);
  AddTextPrinterParameterizedWithColor(param_1 + 6,0,uVar3,iVar4 * 8 - iVar5,0,0xff,0x10200,0);
  CopyWindowToVram(param_1 + 6);
  String_Delete(uVar3);
  if (*(char *)(param_2 + 8) == '\0') {
    uVar3 = NewString_ReadMsgData(param_1[0x1a],1);
    FillWindowPixelBuffer(param_1 + 0x12,0);
    AddTextPrinterParameterizedWithColor(param_1 + 0x12,0,uVar3,0,0,0xff,0x70800,0);
    CopyWindowToVram(param_1 + 0x12);
    String_Delete(uVar3);
  }
  else if (*(char *)(param_2 + 8) == '\x01') {
    uVar3 = NewString_ReadMsgData(param_1[0x1a],2);
    FillWindowPixelBuffer(param_1 + 0x12,0);
    AddTextPrinterParameterizedWithColor(param_1 + 0x12,0,uVar3,0,0,0xff,0x30400,0);
    CopyWindowToVram(param_1 + 0x12);
    String_Delete(uVar3);
  }
  else {
    FillWindowPixelBuffer(param_1 + 0x12,0);
    CopyWindowToVram(param_1 + 0x12);
  }
  uVar3 = NewString_ReadMsgData(param_1[0x1a],4);
  FillWindowPixelBuffer(param_1 + 10,0);
  AddTextPrinterParameterizedWithColor(param_1 + 10,0,uVar3,0,0,0xff,0x10200,0);
  CopyWindowToVram(param_1 + 10);
  String_Delete(uVar3);
  BufferItemName(param_1[0x1b],0,uVar2);
  uVar3 = ReadMsgData_ExpandPlaceholders(param_1[0x1b],param_1[0x1a],5,*param_1);
  FillWindowPixelBuffer(param_1 + 0x16,0);
  AddTextPrinterParameterizedWithColor(param_1 + 0x16,0,uVar3,0,0,0xff,0x10200,0);
  CopyWindowToVram(param_1 + 0x16);
  String_Delete(uVar3);
  return;
}

