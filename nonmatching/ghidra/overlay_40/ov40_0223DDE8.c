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
undefined4 ScheduleWindowCopyToVram();
undefined4 String_Delete();
undefined4 NewString_ReadMsgData();
undefined4 MessageFormat_Delete();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 BufferCityName();
undefined4 ov40_0222DAB0();
undefined4 String_New();
undefined4 StringExpandPlaceholders();
undefined4 BufferCountryName();
undefined4 FillWindowPixelBuffer();

void ov40_0223DDE8(int param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  
  iVar4 = *(int *)(param_1 + 0x860);
  FillWindowPixelBuffer(iVar4 + 0x664,0);
  if ((param_2 == 0xff) && (param_3 == 0xff)) {
    uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),0x7d);
  }
  else {
    uVar2 = ov40_0222DAB0(0x6d);
    if (param_3 == 0) {
      uVar1 = String_New(0xff,0x6d);
      uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),0x16);
      BufferCountryName(uVar2,0,param_2);
      StringExpandPlaceholders(uVar2,uVar1,uVar3);
    }
    else {
      uVar1 = String_New(0xff,0x6d);
      uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),0x17);
      BufferCityName(uVar2,0,param_2,param_3);
      StringExpandPlaceholders(uVar2,uVar1,uVar3);
    }
    String_Delete(uVar3);
    MessageFormat_Delete(uVar2);
  }
  AddTextPrinterParameterizedWithColor
            (iVar4 + 0x664,0,uVar1,0,0,0xff,0xf0d00,0,param_2,uVar1,param_4);
  ScheduleWindowCopyToVram(iVar4 + 0x664);
  String_Delete(uVar1);
  return;
}

