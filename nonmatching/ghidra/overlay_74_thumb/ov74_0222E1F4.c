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
undefined4 ov74_0222DB70();
undefined4 Options_GetFrame();
undefined4 ov74_0222DAF8();
undefined4 Save_MysteryGift_Get();
undefined4 ov74_0222D7F0();
undefined4 OverlayManager_GetArgs();
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 ov74_0222FCC4();
undefined4 OverlayManager_GetData();
undefined4 SaveMysteryGift_CardGetByIdx();
undefined4 ov74_0222D824();
undefined4 func_0x02020080() __asm__("sub_02020080");
undefined4 LoadUserFrameGfx1();
undefined4 LoadFontPal0();
undefined4 LoadUserFrameGfx2();
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 ov74_0222D0EC();
undefined4 DrawFrameAndWindow2();
undefined4 ov74_0222D448();
undefined4 ov74_0222DE8C();
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 ov74_0222D7A4();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ov74_0222DC60();
undefined4 ov74_0222D9E0();
undefined4 ov74_0222DF2C();
undefined4 PlaySE();
undefined4 RemoveWindow();
undefined4 ov74_0222DEF0();
undefined4 ov74_0222D104();
undefined4 DrawFrameAndWindow1();
undefined4 ov74_0223615C();
undefined4 ov74_0222D024();
undefined4 ov74_0222CFFC();
undefined4 CopyWindowToVram();
undefined4 ov74_0222E0D4();
undefined4 sub_0203A880();
undefined4 ov74_0222D248();
undefined4 ov74_0222E8B4();
undefined4 sub_020373B4();
undefined4 ov74_0222EA88();
undefined4 FillWindowPixelBuffer();
undefined4 ov74_02229D0C();
undefined4 ov74_02235ED0();
undefined4 sub_02037D78();
undefined4 sub_020358B8();
undefined4 ov74_0222D098();
undefined4 ov74_0222E7EC();
undefined4 sub_02037AC0();
undefined4 ov74_0222E060();
undefined4 sub_0200F450();
undefined4 sub_02037B38();
undefined4 IsPaletteFadeFinished();
undefined4 ov74_0222EB28();
undefined4 sub_020398D4();
undefined4 ov74_022358BC();
undefined4 ov74_0222E898();
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 ov74_02236128();

undefined4 ov74_0222E1F4(undefined4 param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  
  puVar1 = (undefined4 *)OverlayManager_GetData();
  switch(*param_2) {
  case 0:
    iVar3 = OverlayManager_GetArgs(param_1);
    puVar1[0xae9] = *(undefined4 *)(iVar3 + 8);
    uVar2 = Save_MysteryGift_Get(puVar1[0xae9]);
    puVar1[0xae8] = uVar2;
    uVar2 = Save_PlayerData_GetOptionsAddr(puVar1[0xae9]);
    puVar1[0xaea] = uVar2;
    uVar2 = Options_GetFrame(puVar1[0xaea]);
    puVar1[0xaeb] = uVar2;
    uVar2 = SaveMysteryGift_CardGetByIdx(puVar1[0xae8],0);
    puVar1[0xaed] = uVar2;
    uVar2 = SaveMysteryGift_CardGetByIdx(puVar1[0xae8],1);
    puVar1[0xaee] = uVar2;
    uVar2 = SaveMysteryGift_CardGetByIdx(puVar1[0xae8],2);
    puVar1[0xaef] = uVar2;
    uVar2 = ov74_0222DAF8(puVar1,puVar1[0xaf0],1);
    puVar1[0xaf0] = uVar2;
    *param_2 = 1;
    break;
  case 1:
    ov74_0222FCA4();
    ov74_0222FCC4(puVar1[0xa7f]);
    *param_2 = 2;
    break;
  case 2:
    func_0x02020080();
    ov74_0222DB70(puVar1,0);
    LoadFontPal0(0,0x1e0,0x55);
    LoadUserFrameGfx1(puVar1[0xa7f],0,1,0xd,0,0x55);
    LoadUserFrameGfx1(puVar1[0xa7f],0,10,0xe,1,0x55);
    LoadUserFrameGfx2(puVar1[0xa7f],0,0x13,10,puVar1[0xaeb] & 0xff,0x55);
    ov74_0222D824(puVar1,1,0);
    ov74_0222D7F0(puVar1,1,3,param_2);
    break;
  case 3:
    iVar3 = puVar1[0xaf0];
    if ((uRam021d1154 & 0x40) == 0) {
      if ((uRam021d1154 & 0x80) == 0) {
        if ((uRam021d1154 & 2) == 0) {
          if ((uRam021d1154 & 1) != 0) {
            PlaySE(0x5dc);
            *param_2 = 4;
          }
        }
        else {
          PlaySE(0x5dc);
          ov74_0222D7F0(puVar1,0,0x1d,param_2);
        }
      }
      else {
        iVar3 = ov74_0222DAF8(puVar1,iVar3,1);
      }
    }
    else {
      iVar3 = ov74_0222DAF8(puVar1,iVar3,0xffffffff);
    }
    if (puVar1[0xaf0] != iVar3) {
      PlaySE(0x5ff);
      puVar1[0xaf0] = iVar3;
      ov74_0222D824(puVar1,1,0);
    }
    break;
  case 4:
    uVar2 = ov74_0222D9E0(puVar1,puVar1 + 0xaf4,7,0x280);
    puVar1[0xafc] = uVar2;
    ov74_0222D9E0(puVar1,puVar1 + 0xaf8,8,puVar1[0xafc]);
    *param_2 = 5;
    break;
  case 5:
    ov74_0222DC60(param_1,param_2,0);
    if ((uRam021d1154 & 2) != 0) {
      PlaySE(0x5dc);
      *param_2 = 0xb;
    }
    break;
  case 6:
    PlaySE(0x5ff);
    GfGfx_EngineATogglePlanes(0x10,0);
    ov74_0222D104(puVar1 + 0xaf4,0);
    ov74_0222D0EC(puVar1 + 0xaf8,0);
    ov74_0222DE8C(puVar1,1,0x1000,0x66);
    *param_2 = 7;
    break;
  case 7:
    iVar3 = ov74_0222DF2C();
    if (iVar3 != 0) {
      ov74_0222D824(puVar1,1,1);
      ov74_0222DE8C(puVar1,0,0x708000,0x384000);
      *param_2 = 8;
    }
    break;
  case 8:
    ov74_0222DF2C();
    if ((uRam021d1154 & 3) != 0) {
      PlaySE(0x5ff);
      ov74_0222DE8C(puVar1,1,0x1000,0x66);
      *param_2 = 9;
    }
    break;
  case 9:
    iVar3 = ov74_0222DF2C();
    if (iVar3 != 0) {
      ov74_0222D824(puVar1,1,0);
      ov74_0222DE8C(puVar1,0,0x708000,0x384000);
      GfGfx_EngineATogglePlanes(0x10,0);
      *param_2 = 10;
    }
    break;
  case 10:
    iVar3 = ov74_0222DF2C();
    if (iVar3 != 0) {
      DrawFrameAndWindow2(puVar1 + 0xaf4,0,0x13,10);
      DrawFrameAndWindow1(puVar1 + 0xaf8,0,10,0xe);
      GfGfx_EngineATogglePlanes(0x10,1);
      ov74_0222DEF0(puVar1);
      *param_2 = 5;
    }
    break;
  case 0xb:
    ov74_0222D448();
    ov74_0222D104(puVar1 + 0xaf4,0);
    ClearWindowTilemapAndCopyToVram(puVar1 + 0xaf4);
    RemoveWindow(puVar1 + 0xaf4);
    *param_2 = 3;
    break;
  case 0xc:
    ov74_0222DC60(param_1,param_2,0x222d415);
    break;
  case 0xd:
    if ((uRam021d1154 & 3) != 0) {
      ov74_0222D104(puVar1 + 0xaf4,0);
      ClearWindowTilemapAndCopyToVram(puVar1 + 0xaf4);
      RemoveWindow(puVar1 + 0xaf4);
      *param_2 = 3;
    }
    break;
  case 0xe:
    ov74_0222DC60(param_1,param_2,0x222d415);
    break;
  case 0xf:
    ov74_0222D7A4(puVar1,puVar1 + 0xaf8,0x10200);
    *param_2 = 0xe;
    break;
  case 0x10:
    ov74_0222D7F0(puVar1,0,0x11,param_2);
    break;
  case 0x11:
    ov74_0222D448();
    ov74_0222D104(puVar1 + 0xaf4,0);
    ClearWindowTilemapAndCopyToVram(puVar1 + 0xaf4);
    RemoveWindow(puVar1 + 0xaf4);
    ov74_0222D824(puVar1,0,3);
    ov74_0222D248(puVar1[0xa7f]);
    ov74_0222CFFC(puVar1);
    ov74_0222D098(puVar1);
    *param_2 = 0x12;
    break;
  case 0x12:
    ov74_0222E7EC();
    sub_0203A880();
    ov74_0222D7F0(puVar1,1,0x13,param_2);
    break;
  case 0x13:
    iVar4 = 0;
    iVar3 = sub_020373B4(0);
    if (iVar3 != 0) {
      sub_020358B8(puVar1 + 0x24);
      iVar4 = ov74_0222E8B4(puVar1,puVar1 + 0xac2);
      if ((iVar4 == 0) && (puVar1[0xb0c] != 0)) {
        FillWindowPixelBuffer(puVar1 + 0xac2,0);
        CopyWindowToVram(puVar1 + 0xac2);
        puVar1[0xb0c] = 0;
      }
      ov74_0222EA88(puVar1,puVar1 + 0xabe,iVar4);
      puVar1[0xb0c] = iVar4;
    }
    ov74_0222E0D4(puVar1,iVar4,param_2);
    break;
  case 0x14:
    ov74_0222D7F0(puVar1,0,0x15,param_2);
    break;
  case 0x15:
    ov74_0222D024();
    ov74_0222D104(puVar1 + 0xaf4,0);
    ov74_0222D0EC(puVar1 + 0xaf8,0);
    ov74_0222D824(puVar1,1,0);
    LoadFontPal0(0,0x1e0,0x55);
    ov74_0222D7F0(puVar1,1,4,param_2);
    break;
  case 0x16:
    puVar1[0xb0d] = puVar1[0xb0d] + -1;
    if (puVar1[0xb0d] == 0) {
      ov74_02235ED0(puVar1 + 0x24,puVar1 + 0xb76,*puVar1);
      ov74_02229D0C(puVar1 + 0xb76,0x358);
      ov74_0222E060(puVar1);
      *param_2 = 0x18;
    }
    break;
  case 0x17:
    iVar3 = sub_02037D78();
    if (iVar3 == 0) {
      *param_2 = puVar1[0xb10];
    }
    break;
  case 0x18:
    iVar3 = ov74_0223615C();
    if (iVar3 == 4) {
      sub_02037AC0(0x93);
      sub_020398D4(1,1);
      *param_2 = 0x19;
    }
    break;
  case 0x19:
    iVar3 = ov74_0222E898();
    if ((iVar3 == 0) || (iVar3 = sub_02037B38(0x93), iVar3 == 1)) {
      sub_020398D4(0,0);
      ov74_02236128();
      ov74_0222D9E0(puVar1,puVar1 + 0xaf4,0x12,0x280);
      sub_0200F450(puVar1[0xf54]);
      ov74_0222EB28(puVar1,param_2,0x1a);
    }
    break;
  case 0x1a:
    if ((uRam021d1154 & 3) != 0) {
      *param_2 = 0x14;
    }
    break;
  case 0x1b:
    ov74_0222D7F0(puVar1,0,0x1d,param_2);
    break;
  case 0x1c:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 != 0) {
      *param_2 = puVar1[0xb10];
    }
    break;
  case 0x1d:
    ov74_0222D024();
    ov74_0222DEF0(puVar1);
    return 1;
  }
  if (puVar1[0xb11] != 0) {
    SpriteList_RenderAndAnimateSprites();
  }
  ov74_022358BC();
  if ((code *)puVar1[0xf52] != (code *)0x0) {
    (*(code *)puVar1[0xf52])(puVar1);
  }
  return 0;
}

