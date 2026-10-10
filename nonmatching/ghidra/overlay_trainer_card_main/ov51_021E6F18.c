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
undefined4 GetIGTMinutes();
undefined4 FillWindowPixelBuffer();
undefined4 ov51_021E7540();
undefined4 BufferIntegerAsString();
undefined4 BufferMonthNameAbbr();
undefined4 GetIGTHours();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 CopyU16ArrayToString();
undefined4 FontID_String_GetWidth();
undefined4 String_Delete();
undefined4 MessageFormat_New_Custom();
undefined4 ov51_021E74F4();
undefined4 String_New();
undefined4 StringExpandPlaceholders();
undefined4 ReadMsgDataIntoString();

void ov51_021E6F18(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  uint uVar7;
  
  uVar1 = *(undefined4 *)(param_1 + 0x33c4);
  uVar7 = 0;
  do {
    FillWindowPixelBuffer(param_2 + uVar7 * 0x10,0);
    if ((uVar7 != 3) || ((int)((uint)*(byte *)(param_3 + 4) << 0x1c) < 0)) {
      AddTextPrinterParameterizedWithColor
                (param_2 + uVar7 * 0x10,0,*(undefined4 *)(param_1 + uVar7 * 4 + 0x33ec),0,0,0xff,
                 0x10200,0);
    }
    uVar7 = uVar7 + 1 & 0xff;
  } while (uVar7 < 7);
  uVar2 = String_New(0x20,0x19);
  uVar3 = *(undefined4 *)(param_1 + 0x33d0);
  uVar4 = MessageFormat_New_Custom(6,0x20,0x19);
  uVar5 = *(undefined4 *)(param_1 + 0x33d4);
  ov51_021E74F4(param_2,0x60,0,0,uVar5,*(undefined2 *)(param_3 + 0x28),5,2,0xff,uVar5);
  CopyU16ArrayToString(*(undefined4 *)(param_1 + 0x33d0),param_3 + 8);
  ov51_021E7540(param_2 + 0x10,0x68,0,0,*(undefined4 *)(param_1 + 0x33d0));
  BufferIntegerAsString(uVar4,5,*(undefined4 *)(param_3 + 0x1c),6,0,1);
  ReadMsgDataIntoString(uVar1,0x13,uVar2);
  StringExpandPlaceholders(uVar4,uVar3,uVar2);
  iVar6 = FontID_String_GetWidth(0,uVar3,0);
  AddTextPrinterParameterizedWithColor(param_2 + 0x20,0,uVar3,0x88 - iVar6,0,0xff,0x10200,0);
  if ((int)((uint)*(byte *)(param_3 + 4) << 0x1c) < 0) {
    BufferIntegerAsString(uVar4,5,*(undefined4 *)(param_3 + 0x20),3,0,1);
    ReadMsgDataIntoString(uVar1,0x1a,uVar2);
    StringExpandPlaceholders(uVar4,uVar3,uVar2);
    iVar6 = FontID_String_GetWidth(0,uVar3,0);
    AddTextPrinterParameterizedWithColor(param_2 + 0x30,0,uVar3,0x88 - iVar6,0,0xff,0x10200,0);
  }
  ov51_021E74F4(param_2 + 0x40,0x88,0,0,uVar5,*(undefined4 *)(param_3 + 0x24),9,1,0xff);
  if ((int)((uint)*(byte *)(param_3 + 4) << 0x1e) < 0) {
    uVar5 = GetIGTHours(*(undefined4 *)(param_3 + 0x18));
    BufferIntegerAsString(uVar4,0,uVar5,3,1,1);
    uVar5 = GetIGTMinutes(*(undefined4 *)(param_3 + 0x18));
    BufferIntegerAsString(uVar4,1,uVar5,2,2,1);
    ReadMsgDataIntoString(uVar1,0x15,uVar2);
  }
  else {
    BufferIntegerAsString(uVar4,0,*(undefined2 *)(param_3 + 0x2a),3,1,1);
    BufferIntegerAsString(uVar4,1,*(undefined1 *)(param_3 + 0x2e),2,2,1);
    ReadMsgDataIntoString(uVar1,0x14,uVar2);
  }
  StringExpandPlaceholders(uVar4,uVar3,uVar2);
  iVar6 = FontID_String_GetWidth(0,uVar3,0);
  AddTextPrinterParameterizedWithColor(param_2 + 0x50,0,uVar3,0xe0 - iVar6,0,0xff,0x10200,0);
  BufferIntegerAsString(uVar4,2,*(undefined1 *)(param_3 + 0x2f),2,2,1);
  BufferMonthNameAbbr(uVar4,3,*(undefined1 *)(param_3 + 0x30));
  BufferIntegerAsString(uVar4,4,*(undefined1 *)(param_3 + 0x31),2,2,1);
  ReadMsgDataIntoString(uVar1,0x16,uVar2);
  StringExpandPlaceholders(uVar4,uVar3,uVar2);
  iVar6 = FontID_String_GetWidth(0,uVar3,0);
  AddTextPrinterParameterizedWithColor(param_2 + 0x60,0,uVar3,0xe0 - iVar6,0,0xff,0x10200,0);
  String_Delete(uVar2);
  MessageFormat_Delete(uVar4);
  return;
}

