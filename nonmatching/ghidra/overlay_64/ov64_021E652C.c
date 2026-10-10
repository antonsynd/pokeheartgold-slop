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
undefined4 func_0x0200dcc0() __asm__("sub_0200DCC0");
undefined4 Save_HOF_TranslateRecordIdx();
undefined4 Save_HOF_GetClearDate();
undefined4 ReadMsgDataIntoString();
undefined4 BufferIntegerAsString();
undefined4 func_0x0200cb1c() __asm__("sub_0200CB1C");
undefined4 Save_HOF_GetMonStatsByIndexPair();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 StringExpandPlaceholders();
undefined4 FillWindowPixelBuffer();
undefined4 func_0x02019f74() __asm__("sub_02019F74");
undefined4 ManagedSprite_SetAnim();
undefined4 Save_HOF_RecordCountMons();
undefined4 ov64_021E677C();
undefined4 ov64_021E6C1C();
undefined4 ScheduleWindowCopyToVram();
undefined4 CopyWindowPixelsToVram_TextMode();
undefined4 AddTextPrinterParameterizedWithColor();

void ov64_021E652C(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint uVar2;
  undefined4 *puVar3;
  int iVar4;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_18;

  param_1[0x6d] = param_1[0x6d] + param_2;
  if ((int)param_1[0x6d] < 0) {
    param_1[0x6d] = 0;
  }
  else if ((int)param_1[0x6e] <= (int)param_1[0x6d]) {
    param_1[0x6d] = param_1[0x6e] + -1;
  }
  uStack_18 = param_4;
  if (param_1[0x6e] == 1) {
    ManagedSprite_SetDrawFlag(param_1[0x5d],0);
    ManagedSprite_SetDrawFlag(param_1[0x5e],0);
  }
  else {
    if (param_1[0x6d] == 0) {
      ManagedSprite_SetDrawFlag(param_1[0x5d],0);
    }
    else {
      ManagedSprite_SetDrawFlag(param_1[0x5d],1);
    }
    if (param_1[0x6d] == param_1[0x6e] + -1) {
      ManagedSprite_SetDrawFlag(param_1[0x5e],0);
    }
    else {
      ManagedSprite_SetDrawFlag(param_1[0x5e],1);
    }
  }
  uVar1 = Save_HOF_TranslateRecordIdx(*param_1,param_1[0x6d]);
  param_1[0x6c] = uVar1;
  uVar1 = Save_HOF_RecordCountMons(*param_1,param_1[0x6d]);
  param_1[0x6b] = uVar1;
  if (*(short *)((int)param_1 + 0x1c6) == 0) {
    iVar4 = 2;
    iStack_2c = 0xdcc2;
    iStack_30 = 7;
  }
  else {
    iVar4 = 8;
    iStack_2c = 0xdcc8;
    iStack_30 = 0xf;
  }
  uVar2 = 0;
  if (param_1[0x6b] != 0) {
    puVar3 = param_1 + iVar4;
    do {
      Save_HOF_GetMonStatsByIndexPair(*param_1,param_1[0x6d],uVar2,param_1 + 0x62);
      ov64_021E6C1C(param_1,iVar4,uVar2,iStack_2c + uVar2,iStack_2c + uVar2);
      func_0x0200dcc0(puVar3[0x4e],0);
      ManagedSprite_SetAnim(puVar3[0x4e],0);
      uVar2 = uVar2 + 1;
      iVar4 = iVar4 + 1;
      puVar3 = puVar3 + 1;
    } while (uVar2 < (uint)param_1[0x6b]);
  }
  uVar1 = func_0x02019f74(param_1[0x60]);
  ov64_021E677C(param_1,uVar1);
  FillWindowPixelBuffer(param_1 + iStack_30 * 4 + 2,0);
  ReadMsgDataIntoString(param_1[0x46],0,param_1[0x4a]);
  uVar1 = Save_HOF_TranslateRecordIdx(*param_1,param_1[0x6d]);
  BufferIntegerAsString(param_1[0x49],0,uVar1,4,0,1);
  Save_HOF_GetClearDate(*param_1,param_1[0x6d],&iStack_28);
  BufferIntegerAsString(param_1[0x49],1,iStack_28 + 2000,4,0,1);
  func_0x0200cb1c(param_1[0x49],2,uStack_24);
  BufferIntegerAsString(param_1[0x49],3,uStack_20,2,0,1);
  StringExpandPlaceholders(param_1[0x49],param_1[0x4b],param_1[0x4a]);
  AddTextPrinterParameterizedWithColor
            (param_1 + iStack_30 * 4 + 2,0,param_1[0x4b],0,0,0xff,0xf0200,0);
  CopyWindowPixelsToVram_TextMode(param_1 + iStack_30 * 4 + 2);
  ScheduleWindowCopyToVram(param_1 + iStack_30 * 4 + 2);
  *(ushort *)((int)param_1 + 0x1c6) = *(ushort *)((int)param_1 + 0x1c6) ^ 1;
  return;
}

