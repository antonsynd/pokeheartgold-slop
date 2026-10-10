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
undefined4 String_New(undefined4, undefined4);
undefined4 Mon_GetBoxMon(undefined4);
undefined4 ScheduleWindowCopyToVram(undefined4);
undefined4 AddTextPrinterParameterizedWithColor(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 NewString_ReadMsgData(undefined4, undefined4);
undefined4 String_Delete(undefined4);
undefined4 BufferBoxMonNickname(undefined4, undefined4, undefined4);
undefined4 FontID_String_GetWidth(undefined4, undefined4, undefined4);
undefined4 GetWindowWidth(undefined4);
undefined4 StringExpandPlaceholders(undefined4, undefined4, undefined4);
extern undefined ov08_02224FF4;

void ov08_0221DDCC(int *param_1,int param_2,int param_3,int param_4,undefined1 param_5,
                  undefined1 param_6)

{
  byte bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  
  iVar7 = param_1[0x81c];
  param_2 = param_2 * 0x10;
  uVar2 = String_New(0xc,*(undefined4 *)(*param_1 + 0xc));
  uVar3 = NewString_ReadMsgData(param_1[0x7ea],*(undefined4 *)(&ov08_02224FF4 + param_4 * 4));
  uVar4 = Mon_GetBoxMon(param_1[param_4 * 0x14 + 1]);
  BufferBoxMonNickname(param_1[0x7eb],0,uVar4);
  StringExpandPlaceholders(param_1[0x7eb],uVar2,uVar3);
  if (param_3 == 0) {
    AddTextPrinterParameterizedWithColor(iVar7 + param_2,0,uVar2,param_5,param_6,0xff,0xf0e00,0);
  }
  else {
    AddTextPrinterParameterizedWithColor
              (iVar7 + param_2,param_3,uVar2,param_5,param_6,0xff,0x70809,0);
  }
  String_Delete(uVar3);
  String_Delete(uVar2);
  if (-1 < (int)((uint)*(byte *)((int)param_1 + param_4 * 0x50 + 0x1a) << 0x18)) {
    bVar1 = *(byte *)((int)param_1 + param_4 * 0x50 + 0x1b);
    if (-1 < (int)((uint)bVar1 << 0x18)) {
      if ((bVar1 & 7) == 0) {
        uVar2 = NewString_ReadMsgData(param_1[0x7ea],0x10);
        iVar5 = GetWindowWidth(iVar7 + param_2);
        iVar6 = FontID_String_GetWidth(0,uVar2,0);
        iVar6 = iVar5 * 8 - iVar6;
        if (param_3 == 0) {
          AddTextPrinterParameterizedWithColor(iVar7 + param_2,0,uVar2,iVar6,param_6,0xff,0x70800,0)
          ;
        }
        else {
          AddTextPrinterParameterizedWithColor(iVar7 + param_2,0,uVar2,iVar6,param_6,0xff,0xa0b00,0)
          ;
        }
        String_Delete(uVar2);
      }
      else if ((bVar1 & 7) == 1) {
        uVar2 = NewString_ReadMsgData(param_1[0x7ea],0x11);
        iVar5 = GetWindowWidth(iVar7 + param_2);
        iVar6 = FontID_String_GetWidth(0,uVar2,0);
        iVar6 = iVar5 * 8 - iVar6;
        if (param_3 == 0) {
          AddTextPrinterParameterizedWithColor(iVar7 + param_2,0,uVar2,iVar6,param_6,0xff,0x30400,0)
          ;
        }
        else {
          AddTextPrinterParameterizedWithColor(iVar7 + param_2,0,uVar2,iVar6,param_6,0xff,0xc0d00,0)
          ;
        }
        String_Delete(uVar2);
      }
    }
  }
  ScheduleWindowCopyToVram(iVar7 + param_2);
  return;
}

