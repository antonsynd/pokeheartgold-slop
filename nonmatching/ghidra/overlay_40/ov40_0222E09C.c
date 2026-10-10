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
undefined4 InitWindow();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov40_02230DCC();
undefined4 String_Delete();
undefined4 NewString_ReadMsgData();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 sub_020315B8();
undefined4 ov40_022306C0();
undefined4 AddWindowParameterized();
undefined4 ov40_0222DAB0();
undefined4 String_New();
undefined4 StringExpandPlaceholders();
undefined4 BufferString();
undefined4 FillWindowPixelBuffer();
extern undefined ov40_02244F40;
extern undefined ov40_02244F10;
undefined4 sub_020316F0();
undefined4 func_0x0200cc50() __asm__("sub_0200CC50");
undefined4 MessageFormat_Delete();
undefined4 sub_0203164C();
undefined4 BufferCityName();
undefined4 func_0x0200cb1c() __asm__("sub_0200CB1C");
undefined4 BufferCountryName();
undefined4 sub_02031620();
undefined4 func_0x02015898() __asm__("sub_02015898");
undefined4 sub_0203162C();

void ov40_0222E09C(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  short sVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  int iVar9;
  undefined4 uVar10;
  ushort *puVar11;
  ushort *puVar12;
  undefined4 *puVar13;
  undefined4 *puVar14;
  undefined4 *puStack_d4;
  int iStack_c8;
  undefined1 auStack_a0 [8];
  undefined4 auStack_98 [12];
  ushort auStack_68 [40];
  undefined4 uStack_18;
  
  puVar12 = (ushort *)&ov40_02244F40;
  puVar11 = auStack_68;
  iVar9 = 0x28;
  uStack_18 = param_4;
  do {
    uVar1 = *puVar12;
    puVar12 = puVar12 + 1;
    *puVar11 = uVar1;
    puVar11 = puVar11 + 1;
    iVar9 = iVar9 + -1;
  } while (iVar9 != 0);
  puVar14 = (undefined4 *)&ov40_02244F10;
  puVar13 = auStack_98;
  iVar9 = 6;
  do {
    uVar3 = *puVar14;
    uVar10 = puVar14[1];
    puVar14 = puVar14 + 2;
    *puVar13 = uVar3;
    puVar13[1] = uVar10;
    puVar13 = puVar13 + 2;
    iVar9 = iVar9 + -1;
  } while (iVar9 != 0);
  sVar2 = 1;
  iStack_c8 = 0;
  puStack_d4 = auStack_98;
  puVar13 = param_1 + 3;
  puVar11 = auStack_68;
  do {
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),*puStack_d4);
    InitWindow(puVar13);
    AddWindowParameterized
              (*(undefined4 *)(param_2 + 0x24),puVar13,2,*puVar11 & 0xff,puVar11[1] & 0xff,
               puVar11[2] & 0xff,puVar11[3] & 0xff,0xe,sVar2);
    FillWindowPixelBuffer(puVar13,0);
    uVar10 = ov40_022306C0(puVar13,uVar3);
    AddTextPrinterParameterizedWithColor(puVar13,0,uVar3,uVar10,0,0xff,0xf0d00,0);
    ScheduleWindowCopyToVram(puVar13);
    sVar2 = sVar2 + puVar11[3] * puVar11[2];
    String_Delete(uVar3);
    puVar13 = puVar13 + 4;
    puStack_d4 = puStack_d4 + 1;
    puVar11 = puVar11 + 4;
    iStack_c8 = iStack_c8 + 1;
  } while (iStack_c8 < 8);
  uVar3 = *param_1;
  uVar10 = ov40_0222DAB0(0x6d);
  puVar13 = param_1 + 3;
  uVar4 = sub_020315B8(uVar3,0x6d);
  ov40_02230DCC(param_2,uVar4);
  uVar5 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),0xd);
  uVar6 = String_New(0xff,0x6d);
  BufferString(uVar10,0,uVar4,0,1,2);
  StringExpandPlaceholders(uVar10,uVar6,uVar5);
  FillWindowPixelBuffer(puVar13,0);
  uVar7 = ov40_022306C0(puVar13,uVar6);
  AddTextPrinterParameterizedWithColor(puVar13,0,uVar6,uVar7,0,0xff,0xf0d00,0);
  ScheduleWindowCopyToVram(puVar13);
  String_Delete(uVar4);
  String_Delete(uVar5);
  String_Delete(uVar6);
  func_0x0200cc50(uVar10);
  uVar4 = sub_020316F0(uVar3);
  puVar13 = param_1 + 0xb;
  uVar5 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),0xf);
  uVar6 = sub_020315B8(uVar3,0x6d);
  ov40_02230DCC(param_2,uVar6);
  uVar7 = String_New(0xff,0x6d);
  func_0x0200cb1c(uVar10,0,uVar4);
  StringExpandPlaceholders(uVar10,uVar7,uVar5);
  FillWindowPixelBuffer(puVar13,0);
  uVar4 = ov40_022306C0(puVar13,uVar7);
  AddTextPrinterParameterizedWithColor(puVar13,0,uVar7,uVar4,0,0xff,0xf0d00,0);
  ScheduleWindowCopyToVram(puVar13);
  String_Delete(uVar5);
  String_Delete(uVar6);
  String_Delete(uVar7);
  func_0x0200cc50(uVar10);
  puVar13 = param_1 + 0xf;
  uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),0x10);
  FillWindowPixelBuffer(puVar13,0);
  uVar5 = ov40_022306C0(puVar13,uVar4);
  AddTextPrinterParameterizedWithColor(puVar13,0,uVar4,uVar5,0,0xff,0xf0d00,0);
  ScheduleWindowCopyToVram(puVar13);
  String_Delete(uVar4);
  iVar9 = sub_02031620(uVar3);
  iVar8 = sub_0203162C(uVar3);
  puVar13 = param_1 + 0x13;
  FillWindowPixelBuffer(puVar13,0);
  if (iVar9 == 0) {
    uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),0x15);
    AddTextPrinterParameterizedWithColor(puVar13,0,uVar4,0,0,0xff,0xf0d00,0);
    ScheduleWindowCopyToVram(puVar13);
    String_Delete(uVar4);
  }
  else {
    uVar4 = String_New(0xff,0x6d);
    uVar5 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),0x16);
    BufferCountryName(uVar10,0,iVar9);
    StringExpandPlaceholders(uVar10,uVar4,uVar5);
    AddTextPrinterParameterizedWithColor(puVar13,0,uVar4,0,0,0xff,0xf0d00,0);
    ScheduleWindowCopyToVram(puVar13);
    String_Delete(uVar4);
    String_Delete(uVar5);
    if (iVar8 != 0) {
      puVar13 = param_1 + 0x17;
      FillWindowPixelBuffer(puVar13,0);
      uVar4 = String_New(0xff,0x6d);
      uVar5 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),0x17);
      BufferCityName(uVar10,0,iVar9,iVar8);
      StringExpandPlaceholders(uVar10,uVar4,uVar5);
      AddTextPrinterParameterizedWithColor(puVar13,0,uVar4,4,0,0xff,0xf0d00,0);
      ScheduleWindowCopyToVram(puVar13);
      String_Delete(uVar4);
      String_Delete(uVar5);
    }
  }
  func_0x0200cc50(uVar10);
  puVar13 = param_1 + 0x1b;
  uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_2 + 0x48),0x11);
  FillWindowPixelBuffer(puVar13,0);
  uVar5 = ov40_022306C0(puVar13,uVar4);
  AddTextPrinterParameterizedWithColor(puVar13,0,uVar4,uVar5,0,0xff,0xf0d00,0);
  ScheduleWindowCopyToVram(puVar13);
  String_Delete(uVar4);
  param_1 = param_1 + 0x1f;
  iVar9 = sub_0203164C(uVar3,auStack_a0,0x6d);
  if (iVar9 == 0) {
    iVar9 = func_0x02015898(auStack_a0,0x6d);
  }
  FillWindowPixelBuffer(param_1,0);
  AddTextPrinterParameterizedWithColor(param_1,0,iVar9,0,0,0xff,0xf0d00,0);
  ScheduleWindowCopyToVram(param_1);
  String_Delete(iVar9);
  MessageFormat_Delete(uVar10);
  return;
}

