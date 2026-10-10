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
undefined4 MessageFormat_Delete();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 FillWindowPixelBuffer();
undefined4 FontID_String_GetWidth();
undefined4 String_Delete();
undefined4 BufferString();
undefined4 MessageFormat_New_Custom();
undefined4 ov51_021E74F4();
undefined4 String_New();
undefined4 BufferIntegerAsString();
undefined4 BufferMonthNameAbbr();
undefined4 StringExpandPlaceholders();
undefined4 ReadMsgDataIntoString();

void ov51_021E7208(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;

  uVar1 = *(undefined4 *)(param_1 + 0x33c4);
  uVar5 = 7;
  do {
    FillWindowPixelBuffer(param_2 + uVar5 * 0x10,0);
    AddTextPrinterParameterizedWithColor
              (param_2 + uVar5 * 0x10,0,*(undefined4 *)(param_1 + uVar5 * 4 + 0x33ec),0,0,0xff,
               0x10200,0);
    uVar5 = uVar5 + 1 & 0xff;
  } while (uVar5 < 0xb);
  uVar2 = String_New(0x20,0x19);
  uVar6 = *(undefined4 *)(param_1 + 0x33d0);
  uVar3 = MessageFormat_New_Custom(6,0x20,0x19);
  if (*(char *)(param_3 + 0x33) == '\0') {
    ReadMsgDataIntoString(uVar1,0xc,uVar2);
    BufferString(uVar3,0,uVar2,0,0,2);
    BufferString(uVar3,1,uVar2,0,0,2);
    ReadMsgDataIntoString(uVar1,0x19,uVar6);
  }
  else {
    BufferIntegerAsString(uVar3,2,*(undefined1 *)(param_3 + 0x32),2,2,1);
    BufferMonthNameAbbr(uVar3,3,*(undefined1 *)(param_3 + 0x33));
    BufferIntegerAsString(uVar3,4,*(undefined1 *)(param_3 + 0x34),2,2,1);
    BufferIntegerAsString(uVar3,0,*(undefined2 *)(param_3 + 0x2c),3,1,1);
    BufferIntegerAsString(uVar3,1,*(undefined1 *)(param_3 + 0x35),2,2,1);
    ReadMsgDataIntoString(uVar1,0x16,uVar2);
    StringExpandPlaceholders(uVar3,uVar6,uVar2);
  }
  iVar4 = FontID_String_GetWidth(0,uVar6,0);
  AddTextPrinterParameterizedWithColor(param_2 + 0x70,0,uVar6,0xe0 - iVar4,0,0xff,0x10200,0);
  ReadMsgDataIntoString(uVar1,0x14,uVar2);
  StringExpandPlaceholders(uVar3,uVar6,uVar2);
  iVar4 = FontID_String_GetWidth(0,uVar6,0);
  AddTextPrinterParameterizedWithColor(param_2 + 0x70,0,uVar6,0xe0 - iVar4,0x10,0xff,0x10200,0);
  BufferIntegerAsString(uVar3,5,*(undefined4 *)(param_3 + 0x38),6,0,1);
  ReadMsgDataIntoString(uVar1,0x1b,uVar2);
  StringExpandPlaceholders(uVar3,uVar6,uVar2);
  iVar4 = FontID_String_GetWidth(0,uVar6,0);
  AddTextPrinterParameterizedWithColor(param_2 + 0x80,0,uVar6,0xe0 - iVar4,0,0xff,0x10200,0);
  ReadMsgDataIntoString(uVar1,0x17,uVar6);
  AddTextPrinterParameterizedWithColor(param_2 + 0x90,0,uVar6,0x70,0,0xff,0x10200,0);
  ov51_021E74F4(param_2 + 0x90,0xe0,0,0,uVar6,*(undefined4 *)(param_3 + 0x40),4,1,0xff);
  ReadMsgDataIntoString(uVar1,0x18,uVar6);
  AddTextPrinterParameterizedWithColor(param_2 + 0x90,0,uVar6,0xb0,0,0xff,0x10200,0);
  ov51_021E74F4(param_2 + 0x90,0xe0,0x40,0,uVar6,*(undefined4 *)(param_3 + 0x3c),4,1,0xff);
  BufferIntegerAsString(uVar3,5,*(undefined4 *)(param_3 + 0x44),6,0,1);
  ReadMsgDataIntoString(uVar1,0x1b,uVar2);
  StringExpandPlaceholders(uVar3,uVar6,uVar2);
  iVar4 = FontID_String_GetWidth(0,uVar6,0);
  AddTextPrinterParameterizedWithColor(param_2 + 0xa0,0,uVar6,0xe0 - iVar4,0,0xff,0x10200,0);
  String_Delete(uVar2);
  MessageFormat_Delete(uVar3);
  return;
}

