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
undefined4 ov74_0222FCA4();
undefined4 Options_GetFrame();
undefined4 Save_MysteryGift_Get();
undefined4 ov74_0222F314();
undefined4 OverlayManager_GetArgs();
undefined4 ov74_0222F024();
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 ov74_0222EFF0();
undefined4 ov74_0222FCC4();
undefined4 OverlayManager_GetData();
undefined4 SaveMysteryGift_CardGetByIdx();
undefined4 func_0x02020080() __asm__("sub_02020080");
undefined4 LoadFontPal0();
undefined4 LoadUserFrameGfx1();
undefined4 PlaySE();
undefined4 LoadUserFrameGfx2();
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 ov74_0222F624();
undefined4 DrawFrameAndWindow2();
undefined4 ov74_0222EDC0();
undefined4 ov74_0222F688();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ov74_022358BC();
undefined4 RemoveWindow();
undefined4 ov74_0222ECEC();
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 ov74_0222F6C4();
undefined4 sub_02037D78();
undefined4 IsPaletteFadeFinished();
undefined4 ov74_0222ECD4();
undefined4 ov74_0222F1BC();
undefined4 ov74_0222EC60();
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 ov74_0222F404();
undefined4 DrawFrameAndWindow1();

undefined4 ov74_0222F7D4(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;

  iVar1 = OverlayManager_GetData();
  switch(*param_2) {
  case 0:
    iVar3 = OverlayManager_GetArgs(param_1);
    *(undefined4 *)(iVar1 + 0x2ba4) = *(undefined4 *)(iVar3 + 8);
    uVar2 = Save_MysteryGift_Get(*(undefined4 *)(iVar1 + 0x2ba4));
    *(undefined4 *)(iVar1 + 0x2ba0) = uVar2;
    uVar2 = Save_PlayerData_GetOptionsAddr(*(undefined4 *)(iVar1 + 0x2ba4));
    *(undefined4 *)(iVar1 + 0x2ba8) = uVar2;
    uVar2 = Options_GetFrame(*(undefined4 *)(iVar1 + 0x2ba8));
    *(undefined4 *)(iVar1 + 0x2bac) = uVar2;
    uVar2 = SaveMysteryGift_CardGetByIdx(*(undefined4 *)(iVar1 + 0x2ba0),4);
    *(undefined4 *)(iVar1 + 0x2bb4) = uVar2;
    *param_2 = 1;
    break;
  case 1:
    ov74_0222FCA4();
    ov74_0222FCC4(*(undefined4 *)(iVar1 + 0x29fc));
    *param_2 = 2;
    break;
  case 2:
    func_0x02020080();
    ov74_0222F314(iVar1,0);
    LoadFontPal0(0,0x1e0,0x55);
    LoadUserFrameGfx1(*(undefined4 *)(iVar1 + 0x29fc),0,1,0xd,0,0x55);
    LoadUserFrameGfx1(*(undefined4 *)(iVar1 + 0x29fc),0,10,0xe,1,0x55);
    LoadUserFrameGfx2(*(undefined4 *)(iVar1 + 0x29fc),0,0x13,10,*(uint *)(iVar1 + 0x2bac) & 0xff,
                      0x55);
    ov74_0222F024(iVar1,1,0);
    ov74_0222EFF0(iVar1,1,3,param_2);
    break;
  case 3:
    if ((uRam021d1154 & 2) == 0) {
      if ((uRam021d1154 & 1) != 0) {
        PlaySE(0x5dc);
        *param_2 = 4;
      }
    }
    else {
      PlaySE(0x5dc);
      ov74_0222EFF0(iVar1,0,0x1d,param_2);
    }
    break;
  case 4:
    uVar2 = ov74_0222F1BC(iVar1,iVar1 + 0x2bc4,7,0x280);
    *(undefined4 *)(iVar1 + 0x2be4) = uVar2;
    ov74_0222F1BC(iVar1,iVar1 + 0x2bd4,8,*(undefined4 *)(iVar1 + 0x2be4));
    *param_2 = 5;
    break;
  case 5:
    ov74_0222F404(param_1,param_2,0);
    if ((uRam021d1154 & 2) != 0) {
      PlaySE(0x5dc);
      *param_2 = 0xb;
    }
    break;
  case 6:
    PlaySE(0x5ff);
    GfGfx_EngineATogglePlanes(0x10,0);
    ov74_0222ECEC(iVar1 + 0x2bc4,0);
    ov74_0222ECD4(iVar1 + 0x2bd4,0);
    ov74_0222F624(iVar1,1,0x1000,0x66);
    *param_2 = 7;
    break;
  case 7:
    iVar3 = ov74_0222F6C4();
    if (iVar3 != 0) {
      ov74_0222F024(iVar1,1,1);
      ov74_0222F624(iVar1,0,0x708000,0x384000);
      *param_2 = 8;
    }
    break;
  case 8:
    ov74_0222F6C4();
    if ((uRam021d1154 & 3) != 0) {
      PlaySE(0x5ff);
      ov74_0222F624(iVar1,1,0x1000,0x66);
      *param_2 = 9;
    }
    break;
  case 9:
    iVar3 = ov74_0222F6C4();
    if (iVar3 != 0) {
      ov74_0222F024(iVar1,1,0);
      ov74_0222F624(iVar1,0,0x708000,0x384000);
      GfGfx_EngineATogglePlanes(0x10,0);
      *param_2 = 10;
    }
    break;
  case 10:
    iVar3 = ov74_0222F6C4();
    if (iVar3 != 0) {
      DrawFrameAndWindow2(iVar1 + 0x2bc4,0,0x13,10);
      DrawFrameAndWindow1(iVar1 + 0x2bd4,0,10,0xe);
      GfGfx_EngineATogglePlanes(0x10,1);
      ov74_0222F688(iVar1);
      *param_2 = 5;
    }
    break;
  case 0xb:
    ov74_0222EDC0();
    ov74_0222ECEC(iVar1 + 0x2bc4,0);
    ClearWindowTilemapAndCopyToVram(iVar1 + 0x2bc4);
    RemoveWindow(iVar1 + 0x2bc4);
    *param_2 = 3;
    break;
  case 0xd:
    if ((uRam021d1154 & 3) != 0) {
      ov74_0222ECEC(iVar1 + 0x2bc4,0);
      ClearWindowTilemapAndCopyToVram(iVar1 + 0x2bc4);
      RemoveWindow(iVar1 + 0x2bc4);
      *param_2 = 3;
    }
    break;
  case 0x14:
    ov74_0222EFF0(iVar1,0,0x15,param_2);
    break;
  case 0x15:
    ov74_0222EC60();
    ov74_0222ECEC(iVar1 + 0x2bc4,0);
    ov74_0222ECD4(iVar1 + 0x2bd4,0);
    ov74_0222F024(iVar1,1,0);
    LoadFontPal0(0,0x1e0,0x55);
    ov74_0222EFF0(iVar1,1,4,param_2);
    break;
  case 0x17:
    iVar3 = sub_02037D78();
    if (iVar3 == 0) {
      *param_2 = *(undefined4 *)(iVar1 + 0x2bf8);
    }
    break;
  case 0x1b:
    ov74_0222EFF0(iVar1,0,0x1d,param_2);
    break;
  case 0x1c:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 != 0) {
      *param_2 = *(undefined4 *)(iVar1 + 0x2bf8);
    }
    break;
  case 0x1d:
    ov74_0222EC60();
    ov74_0222F688(iVar1);
    return 1;
  }
  if (*(int *)(iVar1 + 0x2bfc) != 0) {
    SpriteList_RenderAndAnimateSprites();
  }
  ov74_022358BC();
  if (*(code **)(iVar1 + 0x3d00) != (code *)0x0) {
    (**(code **)(iVar1 + 0x3d00))(iVar1);
  }
  return 0;
}

