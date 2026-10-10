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
undefined4 ov74_02233CE4();
undefined4 ov74_022322D8();
undefined4 Save_Cancel();
undefined4 ov74_02231790();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 PmAgbCartridgeGetOffsets();
undefined4 ov74_02232F9C();
undefined4 PmAgbCartridgeUnlinkSpec();
undefined4 Main_SetVBlankIntrCB();
undefined4 ov74_02232910();
undefined4 ov74_02232A48();
undefined4 OverlayManager_GetData();
undefined4 ov74_02231BF0();
undefined4 ov74_02231BC0();
undefined4 ov74_02233F4C();
undefined4 ov74_02231CFC();
undefined4 func_0x020e10e8() __asm__("sub_020E10E8");
undefined4 ShowGBACartRemovedError();
undefined4 func_0x020e1134() __asm__("sub_020E1134");
undefined4 ov74_02233060();
undefined4 ov74_02232F5C();
undefined4 ov74_02232940();
undefined4 ov74_02231A1C();
undefined4 YesNoPrompt_Reset();
undefined4 ov74_02231930();
undefined4 ov74_0223319C();
undefined4 YesNoPrompt_HandleInput();
undefined4 ov74_02233134();
undefined4 WaitingIcon_New();
extern short sRam021d1170 __asm__("sub_021D1170");
extern uint iRam021d1154 __asm__("sub_021D1154");
undefined4 ov74_022317D8();
undefined4 sub_0200F450();
undefined4 ov74_02231FF4();
undefined4 func_0x0201a738() __asm__("sub_0201A738");
undefined4 ov74_02232758();
undefined4 ov74_02232AC8();
undefined4 ov74_02232BD4();
undefined4 ov74_022324A0();
undefined4 ov74_02232154();
undefined4 ov74_02232DC4();
undefined4 func_0x0201a728() __asm__("sub_0201A728");
undefined4 ov74_022330D0();
undefined4 PlaySE();
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
undefined4 ov74_02232DA4();
extern undefined ov74_0223C968;
undefined4 ov74_02232E3C();
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 IsPaletteFadeFinished();

undefined4 ov74_022332F4(undefined4 param_1,int *param_2)

{
  int *piVar1;
  int iVar2;
  int iVar3;

  piVar1 = (int *)OverlayManager_GetData();
  func_0x020e1134();
  func_0x020e10e8();
  if (piVar1[0x3a24] - 3U < 2) {
    Save_Cancel(piVar1[4]);
  }
  ShowGBACartRemovedError(0x4c);
  piVar1[3] = piVar1[3] + 1;
  switch(*param_2) {
  case 0:
    PmAgbCartridgeUnlinkSpec();
    iVar3 = PmAgbCartridgeGetOffsets(piVar1 + 300);
    piVar1[0x12a] = iVar3;
    if (piVar1[0x12a] == 0) {
      iVar3 = ov74_02233CE4();
      piVar1[299] = iVar3;
      if (piVar1[299] == 0) {
        iVar3 = ov74_02233F4C();
        piVar1[0x3a20] = iVar3;
        piVar1[0x3a21] = (uint)*(byte *)piVar1[0x3a20];
      }
      else {
        piVar1[1] = 1;
      }
    }
    ov74_02231790(piVar1);
    *param_2 = 1;
    break;
  case 1:
    ov74_02232A48(piVar1);
    ov74_02231BC0();
    ov74_02231BF0(piVar1);
    ov74_02231CFC(piVar1);
    ov74_022322D8(piVar1);
    Main_SetVBlankIntrCB(0x2233025,piVar1);
    GfGfx_EngineATogglePlanes(0x10,0);
    if (piVar1[1] == 1) {
      ov74_02232910(piVar1,1,0xb,param_2);
    }
    else {
      *param_2 = 2;
    }
    break;
  case 2:
    ov74_02232F9C(piVar1);
    ov74_02232910(piVar1,1,3,param_2);
    break;
  case 3:
    iVar3 = YesNoPrompt_HandleInput(piVar1[0x3a23]);
    if (iVar3 == 1) {
      YesNoPrompt_Reset(piVar1[0x3a23]);
      piVar1[2] = 0x22;
      *param_2 = 4;
    }
    else if (iVar3 == 2) {
      YesNoPrompt_Reset(piVar1[0x3a23]);
      ov74_02232940(piVar1,0,0x18,param_2);
    }
    break;
  case 4:
    iVar3 = ov74_0223319C(piVar1,1);
    if (iVar3 != 0) {
      ov74_02232F5C(piVar1);
      *param_2 = 5;
    }
    break;
  case 5:
    iVar3 = YesNoPrompt_HandleInput(piVar1[0x3a23]);
    if (iVar3 == 1) {
      YesNoPrompt_Reset(piVar1[0x3a23]);
      iVar3 = ov74_02233060(piVar1);
      piVar1[1] = iVar3;
      if (iVar3 == 0) {
        piVar1[2] = 6;
        *param_2 = 6;
      }
      else if (iVar3 - 3U < 2) {
        *param_2 = 8;
      }
      else {
        *param_2 = 0xb;
      }
    }
    else if (iVar3 == 2) {
      YesNoPrompt_Reset(piVar1[0x3a23]);
      ov74_02232940(piVar1,0,0x18,param_2);
    }
    break;
  case 6:
    iVar3 = ov74_0223319C(piVar1,1);
    if (iVar3 != 0) {
      *param_2 = 7;
    }
    break;
  case 7:
    if ((sRam021d1170 != 0) || (iRam021d1154 != 0)) {
      ov74_02232910(piVar1,0,0xc,param_2);
    }
    break;
  case 8:
    iVar3 = ov74_02233134(piVar1,piVar1[1]);
    if (iVar3 != 0) {
      *param_2 = 9;
    }
    break;
  case 9:
    iVar3 = YesNoPrompt_HandleInput(piVar1[0x3a23]);
    if (iVar3 == 1) {
      YesNoPrompt_Reset(piVar1[0x3a23]);
      piVar1[0x11c] = 0;
      piVar1[0x118] = 0x28;
      ov74_02231A1C(piVar1,piVar1 + 0x10b);
      iVar3 = WaitingIcon_New(piVar1 + 0x126,0x3d2);
      piVar1[0x3a26] = iVar3;
      *param_2 = 10;
    }
    else if (iVar3 == 2) {
      YesNoPrompt_Reset(piVar1[0x3a23]);
      ov74_02232940(piVar1,0,0x18,param_2);
    }
    break;
  case 10:
    ov74_02231930(piVar1);
    sub_0200F450(piVar1[0x3a26]);
    piVar1[1] = 7;
    *param_2 = 0xb;
    break;
  case 0xb:
    iVar3 = ov74_022330D0(piVar1,piVar1[1]);
    if (iVar3 != 0) {
      *param_2 = 0x16;
    }
    break;
  case 0xc:
    ov74_02232DA4(piVar1 + 0x126);
    ov74_02232AC8(piVar1);
    ov74_02232154(piVar1);
    ov74_02231FF4(piVar1);
    Main_SetVBlankIntrCB(0x2233025,piVar1);
    GfGfx_EngineATogglePlanes(0x10,1);
    ov74_02232758(piVar1,0);
    ov74_02232910(piVar1,1,0xd,param_2);
    break;
  case 0xd:
    iVar3 = TouchscreenHitbox_FindRectAtTouchNew(piVar1 + 0xc4);
    if (iVar3 != -1) {
      if (iVar3 < 0x1e) {
        iVar2 = ov74_022324A0(piVar1,iVar3);
        if (iVar2 == 1) {
          ov74_02232758(piVar1,piVar1[0x3a20] + 4 + piVar1[0x3a21] * 0x960 + iVar3 * 0x50);
          if (piVar1[0x104] == 6) {
            piVar1[0x3a22] = 0x2d;
            *param_2 = 0xf;
          }
        }
        else if (iVar2 == 2) {
          ov74_02232758(piVar1,0);
        }
        else if (iVar2 == 4) {
          piVar1[2] = 8;
          *param_2 = 0xe;
        }
        else if (iVar2 == 5) {
          piVar1[2] = 9;
          *param_2 = 0xe;
        }
        else if (iVar2 == 6) {
          piVar1[2] = 0x26;
          *param_2 = 0xe;
        }
        else if (iVar2 == 7) {
          piVar1[2] = 0x26;
          *param_2 = 0xe;
        }
      }
      else if (iVar3 == 0x1e) {
        ov74_02232940(piVar1,0,0x18,param_2);
        PlaySE(0x5dc);
      }
      else if (iVar3 == 0x1f) {
        if (piVar1[0x3a21] == 0) {
          iVar3 = 0xd;
        }
        else {
          iVar3 = piVar1[0x3a21] + -1;
        }
        piVar1[0x3a21] = iVar3;
        ov74_02231FF4(piVar1);
        PlaySE(0x5dc);
      }
      else if (iVar3 == 0x20) {
        piVar1[0x3a21] = piVar1[0x3a21] + 1;
        if (piVar1[0x3a21] == 0xe) {
          piVar1[0x3a21] = 0;
        }
        ov74_02231FF4(piVar1);
        PlaySE(0x5dc);
      }
    }
    break;
  case 0xe:
    iVar3 = ov74_0223319C(piVar1,0);
    if (iVar3 != 0) {
      ov74_02232DA4(piVar1 + 0x126);
      *param_2 = 0xd;
    }
    break;
  case 0xf:
    piVar1[0x3a22] = piVar1[0x3a22] + -1;
    if (piVar1[0x3a22] == 0) {
      ov74_02232910(piVar1,0,0x10,param_2);
    }
    break;
  case 0x10:
    ov74_02232BD4(piVar1);
    ov74_02232910(piVar1,1,0x11,param_2);
    ov74_02232F5C(piVar1);
    break;
  case 0x11:
    iVar3 = YesNoPrompt_HandleInput(piVar1[0x3a23]);
    if (iVar3 == 1) {
      YesNoPrompt_Reset(piVar1[0x3a23]);
      *param_2 = 0x12;
    }
    else if (iVar3 == 2) {
      YesNoPrompt_Reset(piVar1[0x3a23]);
      ov74_02232910(piVar1,0,0x14,param_2);
    }
    break;
  case 0x12:
    piVar1[0x118] = 0xb;
    ov74_02231A1C(piVar1,piVar1 + 0x10b,0);
    ov74_02232F5C(piVar1);
    PlaySE(0x5dc);
    *param_2 = 0x13;
    break;
  case 0x13:
    iVar3 = YesNoPrompt_HandleInput(piVar1[0x3a23]);
    if (iVar3 == 1) {
      piVar1[0x118] = *(int *)(&ov74_0223C968 + *piVar1 * 4);
      ov74_02231A1C(piVar1,piVar1 + 0x10b,0);
      YesNoPrompt_Reset(piVar1[0x3a23]);
      piVar1[0x3a24] = 0;
      iVar3 = WaitingIcon_New(piVar1 + 0x126,0x3d2);
      piVar1[0x3a26] = iVar3;
      *param_2 = 0x15;
      func_0x0201a728(4);
    }
    else if (iVar3 == 2) {
      YesNoPrompt_Reset(piVar1[0x3a23]);
      ov74_02232910(piVar1,0,0x14,param_2);
    }
    break;
  case 0x14:
    ov74_02232DC4(piVar1);
    *param_2 = 0xc;
    break;
  case 0x15:
    iVar3 = ov74_022317D8(piVar1);
    if (iVar3 != 10) {
      sub_0200F450(piVar1[0x3a26]);
      PlaySE(0x61a);
      if (iVar3 == 0xb) {
        iVar3 = 0x1d;
      }
      else {
        iVar3 = 0x24;
      }
      piVar1[0x118] = iVar3;
      ov74_02231A1C(piVar1,piVar1 + 0x10b,0);
      *param_2 = 0x16;
      func_0x0201a738(4);
    }
    break;
  case 0x16:
    if ((sRam021d1170 != 0) || (iRam021d1154 != 0)) {
      ov74_02232940(piVar1,0,0x18,param_2);
      PlaySE(0x5dc);
    }
    break;
  case 0x17:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 != 0) {
      *param_2 = piVar1[9];
    }
    break;
  case 0x18:
    ov74_02232E3C(piVar1);
    return 1;
  }
  if (piVar1[10] != 0) {
    SpriteList_RenderAndAnimateSprites();
  }
  return 0;
}

