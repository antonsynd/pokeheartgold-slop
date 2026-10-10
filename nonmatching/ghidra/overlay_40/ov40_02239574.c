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
undefined4 ov40_02230DCC();
undefined4 sub_020316F0();
undefined4 String_Delete();
undefined4 NewString_ReadMsgData();
undefined4 sub_02031700();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 sub_020315B8();
undefined4 ov40_0222DAB0();
undefined4 func_0x0200cb1c() __asm__("sub_0200CB1C");
undefined4 String_New();
undefined4 BufferString();
undefined4 FillWindowPixelBuffer();
undefined4 ov40_0222E658();
undefined4 sub_020315E0();
undefined4 StringExpandPlaceholders();
undefined4 CopyU16ArrayToString();
undefined4 func_0x0200cc50() __asm__("sub_0200CC50");
undefined4 func_0x0200bc28() __asm__("sub_0200BC28");
undefined4 MessageFormat_Delete();
undefined4 sub_02031610();

void ov40_02239574(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  int iStack_230;
  undefined4 uStack_224;
  undefined1 auStack_214 [512];
  
  iVar7 = *(int *)(param_1 + 0x860);
  uVar1 = String_New(0xff,0x6d);
  uVar2 = ov40_0222DAB0(0x6d);
  FillWindowPixelBuffer(iVar7 + 0x24,0);
  if (*(int *)(iVar7 + 0x1c) == 0) {
    uVar3 = NewString_ReadMsgData
                      (*(undefined4 *)(param_1 + 0x4c),
                       *(byte *)(*(int *)(iVar7 + 0x718) + *(int *)(iVar7 + 0xc) * 0x48) - 1);
  }
  else {
    uVar3 = NewString_ReadMsgData
                      (*(undefined4 *)(param_1 + 0x4c),
                       *(byte *)(*(int *)(iVar7 + 0x714) + *(int *)(iVar7 + 0xc) * 0x1c8) - 1);
  }
  AddTextPrinterParameterizedWithColor(iVar7 + 0x24,0,uVar3,0,0,0xff,0xf0d00,0);
  ScheduleWindowCopyToVram(iVar7 + 0x24);
  String_Delete(uVar3);
  FillWindowPixelBuffer(iVar7 + 0x34,0);
  if (*(int *)(iVar7 + 0x1c) == 0) {
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),*(int *)(iVar7 + 0x14) + 0x52);
  }
  else {
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),0x5b);
  }
  AddTextPrinterParameterizedWithColor(iVar7 + 0x34,0,uVar3,0,0,0xff,0xf0d00,0);
  ScheduleWindowCopyToVram(iVar7 + 0x34);
  String_Delete(uVar3);
  uVar4 = sub_020315B8(*(undefined4 *)(param_1 + 0x88c),0x6d);
  ov40_02230DCC(param_1,uVar4);
  iVar5 = *(int *)(iVar7 + 0x14);
  if (iVar5 == 0) {
    uVar6 = sub_02031700(*(undefined4 *)(param_1 + 0x88c));
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),0x55);
    uVar6 = ov40_0222E658(uVar6,4);
    uStack_224 = NewString_ReadMsgData(*(undefined4 *)(iVar7 + 0x744),uVar6);
    BufferString(uVar2,0,uStack_224,0,1,2);
  }
  else if (iVar5 == 1) {
    uVar6 = sub_020316F0(*(undefined4 *)(param_1 + 0x88c));
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),0x56);
    uStack_224 = String_New(0xff,0x6d);
    func_0x0200cb1c(uVar2,0,uVar6);
  }
  else if (iVar5 == 2) {
    iStack_230 = sub_020315E0(*(undefined4 *)(param_1 + 0x88c));
    iVar5 = sub_02031610(*(undefined4 *)(param_1 + 0x88c));
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),0x57);
    if (iVar5 != 0) {
      iStack_230 = 0x1ee;
    }
    if (iStack_230 == 0) {
      uStack_224 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x48),0x15);
    }
    else {
      uStack_224 = String_New(0xff,0x6d);
      func_0x0200bc28(iStack_230,0x6d,auStack_214);
      CopyU16ArrayToString(uStack_224,auStack_214);
    }
    BufferString(uVar2,0,uStack_224,0,1,2);
  }
  BufferString(uVar2,1,uVar4,0,1,2);
  StringExpandPlaceholders(uVar2,uVar1,uVar3);
  AddTextPrinterParameterizedWithColor(iVar7 + 0x34,0,uVar1,0,0x10,0xff,0xf0d00,0);
  ScheduleWindowCopyToVram(iVar7 + 0x34);
  String_Delete(uVar3);
  String_Delete(uStack_224);
  String_Delete(uVar1);
  String_Delete(uVar4);
  func_0x0200cc50(uVar2);
  MessageFormat_Delete(uVar2);
  return;
}

