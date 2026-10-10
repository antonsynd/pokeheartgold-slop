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
undefined4 FontID_String_GetCenterAlignmentX();
undefined4 ReadMsgDataIntoString();
undefined4 sub_0208C87C();
undefined4 ClearWindowTilemapAndScheduleTransfer();
undefined4 FillWindowPixelBuffer();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 sub_0208C778();
undefined4 Pokedex_ConvertToCurrentDexNo();

void sub_0208CC88(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  ScheduleWindowCopyToVram(param_1 + 0x174);
  if (*(int *)(param_1 + 0x280) << 3 < 0) {
    ClearWindowTilemapAndScheduleTransfer(param_1 + 4);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0x74);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0x84);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0x94);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0xa4);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0xb4);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0xc4);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0xd4);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0xe4);
    ClearWindowTilemapAndScheduleTransfer(*(undefined4 *)(param_1 + 0x224));
    ClearWindowTilemapAndScheduleTransfer(*(int *)(param_1 + 0x224) + 0x10);
    ClearWindowTilemapAndScheduleTransfer(*(int *)(param_1 + 0x224) + 0x20);
    ClearWindowTilemapAndScheduleTransfer(*(int *)(param_1 + 0x224) + 0x30);
    ClearWindowTilemapAndScheduleTransfer(*(int *)(param_1 + 0x224) + 0x40);
    ClearWindowTilemapAndScheduleTransfer(*(int *)(param_1 + 0x224) + 0x50);
    return;
  }
  ScheduleWindowCopyToVram(param_1 + 4);
  ScheduleWindowCopyToVram(param_1 + 0x74);
  ScheduleWindowCopyToVram(param_1 + 0x84);
  ScheduleWindowCopyToVram(param_1 + 0x94);
  ScheduleWindowCopyToVram(param_1 + 0xa4);
  ScheduleWindowCopyToVram(param_1 + 0xb4);
  ScheduleWindowCopyToVram(param_1 + 0xc4);
  ScheduleWindowCopyToVram(param_1 + 0xd4);
  ScheduleWindowCopyToVram(param_1 + 0xe4);
  FillWindowPixelBuffer(*(undefined4 *)(param_1 + 0x224),0);
  FillWindowPixelBuffer(*(int *)(param_1 + 0x224) + 0x10,0);
  FillWindowPixelBuffer(*(int *)(param_1 + 0x224) + 0x20,0);
  FillWindowPixelBuffer(*(int *)(param_1 + 0x224) + 0x30,0);
  FillWindowPixelBuffer(*(int *)(param_1 + 0x224) + 0x40,0);
  FillWindowPixelBuffer(*(int *)(param_1 + 0x224) + 0x50,0);
  iVar1 = Pokedex_ConvertToCurrentDexNo
                    (*(undefined4 *)(*(int *)(param_1 + 0x22c) + 0x1c),
                     *(undefined2 *)(param_1 + 0x23c));
  if (iVar1 == 0) {
    ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x7a0),0x16,*(undefined4 *)(param_1 + 0x7ac));
  }
  else {
    sub_0208C87C(param_1,9,iVar1,3,2);
  }
  if (*(int *)(param_1 + 0x280) << 2 < 0) {
    sub_0208C778(param_1,*(undefined4 *)(param_1 + 0x224),0x50600,2);
  }
  else {
    sub_0208C778(param_1,*(undefined4 *)(param_1 + 0x224),0x10200,2);
  }
  uVar2 = FontID_String_GetCenterAlignmentX(0,*(undefined4 *)(param_1 + 0x230),0,0x48);
  AddTextPrinterParameterizedWithColor
            (*(int *)(param_1 + 0x224) + 0x10,0,*(undefined4 *)(param_1 + 0x230),uVar2,0,0xff,
             0x10200,0);
  if (*(char *)(param_1 + 0x274) == '\0') {
    uVar2 = FontID_String_GetCenterAlignmentX(0,*(undefined4 *)(param_1 + 0x238),0,0x48);
    AddTextPrinterParameterizedWithColor
              (*(int *)(param_1 + 0x224) + 0x20,0,*(undefined4 *)(param_1 + 0x238),uVar2,0,0xff,
               0x30400,0);
  }
  else {
    uVar2 = FontID_String_GetCenterAlignmentX(0,*(undefined4 *)(param_1 + 0x238),0,0x48);
    AddTextPrinterParameterizedWithColor
              (*(int *)(param_1 + 0x224) + 0x20,0,*(undefined4 *)(param_1 + 0x238),uVar2,0,0xff,
               0x50600,0);
  }
  sub_0208C87C(param_1,0x10,*(uint *)(param_1 + 0x244) & 0xffff,5,2);
  sub_0208C778(param_1,*(int *)(param_1 + 0x224) + 0x30,0x10200,2);
  sub_0208C87C(param_1,0x12,*(undefined4 *)(param_1 + 0x248),7,0);
  sub_0208C778(param_1,*(int *)(param_1 + 0x224) + 0x40,0x10200,1);
  if ((*(byte *)(param_1 + 0x242) & 0x7f) < 100) {
    sub_0208C87C(param_1,0x15,*(int *)(param_1 + 0x250) - *(int *)(param_1 + 0x248),7,0);
  }
  else {
    sub_0208C87C(param_1,0x15,0,7,0);
  }
  sub_0208C778(param_1,*(int *)(param_1 + 0x224) + 0x50,0x10200,1);
  ScheduleWindowCopyToVram(*(undefined4 *)(param_1 + 0x224));
  ScheduleWindowCopyToVram(*(int *)(param_1 + 0x224) + 0x10);
  ScheduleWindowCopyToVram(*(int *)(param_1 + 0x224) + 0x20);
  ScheduleWindowCopyToVram(*(int *)(param_1 + 0x224) + 0x30);
  ScheduleWindowCopyToVram(*(int *)(param_1 + 0x224) + 0x40);
  ScheduleWindowCopyToVram(*(int *)(param_1 + 0x224) + 0x50);
  return;
}

