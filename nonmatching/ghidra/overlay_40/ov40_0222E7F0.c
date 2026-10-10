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
undefined4 sub_02031620();
undefined4 sub_0203162C();

void ov40_0222E7F0(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;

  iVar1 = sub_02031620(*(undefined4 *)(param_2 + 0x88c));
  iVar2 = sub_0203162C(*(undefined4 *)(param_2 + 0x88c));
  if ((iVar1 == 0) && (iVar2 == 0)) {
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),0x7d);
  }
  else {
    uVar4 = ov40_0222DAB0(0x6d);
    if (iVar2 == 0) {
      uVar3 = String_New(0xff,0x6d);
      uVar5 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),0x16);
      BufferCountryName(uVar4,0,iVar1);
      StringExpandPlaceholders(uVar4,uVar3,uVar5);
    }
    else {
      uVar3 = String_New(0xff,0x6d);
      uVar5 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),0x17);
      BufferCityName(uVar4,0,iVar1,iVar2);
      StringExpandPlaceholders(uVar4,uVar3,uVar5);
    }
    String_Delete(uVar5);
    MessageFormat_Delete(uVar4);
  }
  AddTextPrinterParameterizedWithColor
            (param_1 + 0x18,0,uVar3,0,0x10,0xff,0xf0d00,0,iVar1,uVar3,param_4);
  ScheduleWindowCopyToVram(param_1 + 0x18);
  String_Delete(uVar3);
  return;
}

