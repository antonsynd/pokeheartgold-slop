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
undefined4 FillWindowPixelBuffer();
undefined4 PlaySE();
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 ov87_021E71EC();
undefined4 ov87_021E7FEC();
undefined4 ov87_021E7FD4();
undefined4 sub_02021280();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 func_0x02025204() __asm__("sub_02025204");
undefined4 ov87_021E8084();
undefined4 ov87_021E71B4();
undefined4 ov87_021E803C();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov87_021E708C();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ov87_021E717C();
extern undefined ov87_021E8308;
undefined4 ov87_021E788C();
undefined4 ov87_021E6AE0();
undefined4 ov87_021E6AF4();
undefined4 ov87_021E70D0();
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
undefined4 ov87_021E75E0();
undefined4 ov87_021E7698();
undefined4 ov87_021E74F4();
undefined4 ov87_021E7490();
undefined4 ov87_021E7134();
undefined4 ov87_021E7734();
undefined4 ov87_021E7008();
undefined4 ov87_021E7550();
undefined4 func_0x02006184() __asm__("sub_02006184");
extern undefined ov87_021E8184;
extern undefined ov87_021E818C;
undefined4 ov87_021E6B28();
undefined4 ov87_021E79A0();
undefined4 ov87_021E78D8();
undefined4 System_GetTouchHeld();
undefined4 ov87_021E80B4();
undefined4 ov87_021E7990();
undefined4 YesNoPrompt_HandleInputForSave();
undefined4 sub_0200E5D4();
undefined4 ov87_021E7998();

undefined4 ov87_021E6080(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  undefined2 uVar5;
  int iVar6;

  switch(*(undefined1 *)(param_1 + 8)) {
  case 0:
    if (*(char *)(param_1 + 0xe) == '\x02') {
      ClearWindowTilemapAndCopyToVram(param_1 + 300);
      ov87_021E71B4(param_1);
      ov87_021E7FEC(*(undefined4 *)(param_1 + 0x33c),0x58,0xa0);
      ov87_021E803C(*(undefined4 *)(param_1 + 0x33c),0);
    }
    else {
      ClearWindowTilemapAndCopyToVram(param_1 + 0x13c);
      ov87_021E717C(param_1);
    }
    *(undefined1 *)(param_1 + 0xf) = 0x1e;
    ov87_021E7FD4(*(undefined4 *)(param_1 + 0x340),1);
    ov87_021E708C(param_1);
    uVar2 = 0;
    do {
      ov87_021E71EC(param_1,uVar2 & 0xff);
      uVar2 = uVar2 + 1;
    } while ((int)uVar2 < 4);
    ov87_021E7FD4(*(undefined4 *)(param_1 + 0x33c),1);
    ov87_021E8084(*(undefined4 *)(param_1 + 0x33c),0);
    PlaySE(0x562);
    *(undefined1 *)(param_1 + 8) = 1;
    break;
  case 1:
    GfGfx_EngineATogglePlanes(4,1,param_3,param_4,param_4);
    GfGfx_EngineBTogglePlanes(1,1);
    *(undefined1 *)(param_1 + 8) = 2;
    break;
  case 2:
    if (*(char *)(param_1 + 0xf) == '\0') {
      ov87_021E7FD4(*(undefined4 *)(param_1 + 0x340),0);
      FillWindowPixelBuffer(param_1 + 0xfc,0);
      ScheduleWindowCopyToVram(param_1 + 0xfc);
      *(undefined1 *)(param_1 + 8) = 3;
    }
    else {
      *(char *)(param_1 + 0xf) = *(char *)(param_1 + 0xf) + -1;
    }
    break;
  case 3:
    sub_02021280(param_1 + 0x3b8,4,2);
    uVar2 = func_0x02025204(&ov87_021E8308);
    if (uVar2 == 0xffffffff) {
      func_0x02006154(0x55f,0);
    }
    else {
      uVar3 = ov87_021E7490(param_1);
      if (uVar3 < 3) {
        *(undefined1 *)(param_1 + uVar2 + 0x394) = 1;
      }
      if (*(char *)(param_1 + uVar2 + 0x394) == '\x01') {
        ov87_021E7550(param_1);
        ov87_021E75E0(param_1,uVar2 & 0xff);
        ov87_021E74F4(param_1,uVar2);
        iVar4 = func_0x02006184(0x55f);
        if (iVar4 == 0) {
          PlaySE(0x55f);
        }
      }
      iVar4 = ov87_021E7734(param_1);
      if (iVar4 == 1) {
        func_0x02006154(0x55f,0);
        ov87_021E7FD4(*(undefined4 *)(param_1 + 0x340),1);
        *(undefined2 *)(*(int *)(param_1 + 0x378) + (uint)*(byte *)(param_1 + 0xe) * 2) =
             *(undefined2 *)(param_1 + (uint)*(byte *)(param_1 + 0x39f) * 2 + 0x36a);
        if (*(short *)(param_1 + (uint)*(byte *)(param_1 + 0x39f) * 2 + 0x36a) == 0x5c) {
          uVar5 = 1;
        }
        else {
          uVar5 = 3;
        }
        *(undefined2 *)(*(int *)(param_1 + 0x37c) + (uint)*(byte *)(param_1 + 0xe) * 2) = uVar5;
        iVar4 = ov87_021E788C(param_1);
        if (iVar4 == 1) {
          uVar1 = 0x1e;
        }
        else {
          uVar1 = 0;
        }
        *(undefined1 *)(param_1 + 0xf) = uVar1;
        ov87_021E70D0(param_1);
        *(undefined1 *)(param_1 + 8) = 4;
        return 0;
      }
      if (2 < *(byte *)(param_1 + 0x3a1)) {
        func_0x02006154(0x55f,0);
        *(undefined1 *)(param_1 + 0xf) = 0x3c;
        ov87_021E7FD4(*(undefined4 *)(param_1 + 0x340),1);
        ov87_021E7134(param_1);
        *(undefined1 *)(param_1 + 8) = 7;
        return 0;
      }
    }
    if ((*(byte *)(param_1 + 0x3a0) & 1) == 1) {
      ov87_021E7698(param_1);
    }
    if (*(char *)(param_1 + 0xe) == '\x02') {
      iVar4 = TouchscreenHitbox_FindRectAtTouchNew(&ov87_021E8184);
      if (iVar4 != -1) {
        ov87_021E8084(*(undefined4 *)(param_1 + 0x33c),1);
        ov87_021E7008(param_1);
        PlaySE(0x5e4);
        ov87_021E803C(*(undefined4 *)(param_1 + 0x33c),0);
        ov87_021E6AE0(param_1);
        ov87_021E6AF4(param_1);
        *(undefined1 *)(param_1 + 8) = 10;
      }
    }
    else {
      iVar4 = TouchscreenHitbox_FindRectAtTouchNew(&ov87_021E818C);
      if (iVar4 != -1) {
        ov87_021E8084(*(undefined4 *)(param_1 + 0x33c),1);
        ov87_021E7008(param_1);
        PlaySE(0x5e4);
        ov87_021E803C(*(undefined4 *)(param_1 + 0x33c),1);
        ov87_021E6AE0(param_1);
        ov87_021E6AF4(param_1);
        *(undefined1 *)(param_1 + 8) = 9;
      }
    }
    break;
  case 4:
    if (*(char *)(param_1 + 0xf) == '\0') {
      iVar4 = ov87_021E78D8(param_1,0);
      if (iVar4 == 0) {
        *(undefined1 *)(param_1 + 8) = 5;
      }
    }
    else {
      *(char *)(param_1 + 0xf) = *(char *)(param_1 + 0xf) + -1;
    }
    break;
  case 5:
    iVar4 = ov87_021E78D8(param_1,1);
    if (iVar4 == 0) {
      *(undefined1 *)(param_1 + 0xf) = 0;
      *(undefined1 *)(param_1 + 8) = 6;
    }
    break;
  case 6:
    iVar4 = ov87_021E80B4(*(undefined4 *)(param_1 + 0x35c));
    if (iVar4 != 1) {
      if (*(char *)(param_1 + 0xf) == '\0') {
        iVar6 = 0;
        iVar4 = param_1;
        do {
          ov87_021E7FD4(*(undefined4 *)(iVar4 + 0x350),0);
          iVar6 = iVar6 + 1;
          iVar4 = iVar4 + 4;
        } while (iVar6 < 3);
        ov87_021E7FD4(*(undefined4 *)(param_1 + 0x35c),0);
        ov87_021E7998(param_1);
        ov87_021E79A0(param_1);
        return 1;
      }
      *(char *)(param_1 + 0xf) = *(char *)(param_1 + 0xf) + -1;
    }
    break;
  case 7:
    if (*(char *)(param_1 + 0xf) == '\0') {
      GfGfx_EngineATogglePlanes(1,0,param_3,param_4,param_4);
      ov87_021E7998(param_1);
      ov87_021E79A0(param_1);
      *(undefined1 *)(param_1 + 0xf) = 0x1e;
      *(undefined1 *)(param_1 + 8) = 8;
    }
    else {
      *(char *)(param_1 + 0xf) = *(char *)(param_1 + 0xf) + -1;
    }
    break;
  case 8:
    if (*(char *)(param_1 + 0xf) == '\0') {
      return 1;
    }
    *(char *)(param_1 + 0xf) = *(char *)(param_1 + 0xf) + -1;
    break;
  case 9:
    iVar4 = YesNoPrompt_HandleInputForSave(*(undefined4 *)(param_1 + 0x390));
    if (iVar4 == 1) {
      ov87_021E8084(*(undefined4 *)(param_1 + 0x33c),0);
      sub_0200E5D4(param_1 + 0x5c,0);
      ClearWindowTilemapAndCopyToVram(param_1 + 0x5c);
      ov87_021E7998(param_1);
      ov87_021E6B28(param_1);
      return 1;
    }
    if (iVar4 == 2) {
      ov87_021E8084(*(undefined4 *)(param_1 + 0x33c),0);
      sub_0200E5D4(param_1 + 0x5c,0);
      ClearWindowTilemapAndCopyToVram(param_1 + 0x5c);
      ov87_021E6B28(param_1);
      *(undefined1 *)(param_1 + 8) = 0xb;
    }
    break;
  case 10:
    iVar4 = YesNoPrompt_HandleInputForSave(*(undefined4 *)(param_1 + 0x390));
    if (iVar4 == 1) {
      ov87_021E8084(*(undefined4 *)(param_1 + 0x33c),0);
      sub_0200E5D4(param_1 + 0x5c,0);
      ClearWindowTilemapAndCopyToVram(param_1 + 0x5c);
      ov87_021E7990(param_1);
      ov87_021E6B28(param_1);
      return 1;
    }
    if (iVar4 == 2) {
      ov87_021E8084(*(undefined4 *)(param_1 + 0x33c),0);
      sub_0200E5D4(param_1 + 0x5c,0);
      ClearWindowTilemapAndCopyToVram(param_1 + 0x5c);
      ov87_021E6B28(param_1);
      *(undefined1 *)(param_1 + 8) = 0xb;
    }
    break;
  case 0xb:
    iVar4 = System_GetTouchHeld();
    if (iVar4 == 0) {
      *(undefined1 *)(param_1 + 8) = 3;
    }
  }
  return 0;
}

