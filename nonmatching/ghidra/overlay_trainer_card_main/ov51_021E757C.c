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
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 GF_AssertFail();
undefined4 FontID_String_GetWidth();
undefined4 FillWindowPixelRect();
undefined4 String_Delete();
undefined4 MessageFormat_New_Custom();
undefined4 NewMsgDataFromNarc();
undefined4 String_New();
undefined4 BufferIntegerAsString();
undefined4 DestroyMsgData();
undefined4 GetIGTHours();
undefined4 StringExpandPlaceholders();
undefined4 ReadMsgDataIntoString();

void ov51_021E757C(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;

  if (*(int *)(param_2 + 0x18) == 0) {
    GF_AssertFail();
  }
  GetIGTHours(*(undefined4 *)(param_2 + 0x18));
  FillWindowPixelRect(param_1 + 0x50,0,0xb8,0,0x28,0x10);
  uVar1 = NewMsgDataFromNarc(0,0x1b,0x2d7,0x19);
  uVar2 = String_New(0x20,0x19);
  uVar3 = String_New(0x20,0x19);
  uVar4 = MessageFormat_New_Custom(2,0x20,0x19);
  uVar5 = GetIGTHours(*(undefined4 *)(param_2 + 0x18));
  BufferIntegerAsString(uVar4,0,uVar5,3,1,1);
  uVar5 = GetIGTMinutes(*(undefined4 *)(param_2 + 0x18));
  BufferIntegerAsString(uVar4,1,uVar5,2,2,1);
  ReadMsgDataIntoString(uVar1,0x15,uVar3);
  StringExpandPlaceholders(uVar4,uVar2,uVar3);
  iVar6 = FontID_String_GetWidth(0,uVar2,0);
  AddTextPrinterParameterizedWithColor(param_1 + 0x50,0,uVar2,0xe0 - iVar6,0,0,0x10200,0);
  DestroyMsgData(uVar1);
  String_Delete(uVar2);
  String_Delete(uVar3);
  MessageFormat_Delete(uVar4);
  return;
}

