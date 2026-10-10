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
undefined4 ov82_0223F6C4();
undefined4 sub_02030BD0();
undefined4 ov82_0223F300();
undefined4 func_0x02237920() __asm__("sub_02237920");
undefined4 ov82_0223F488();
undefined4 ov82_0223F6E4();
undefined4 ov82_0223F53C();
undefined4 PlaySE();
undefined4 ov82_0223F948();
undefined4 ov82_0223F5E0();
undefined4 func_0x0223792c() __asm__("sub_0223792C");
undefined4 BeginNormalPaletteFade();
undefined4 ScheduleBgTilemapBufferTransfer();
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 Options_GetTextFrameDelay();
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 ov82_0223EF1C();
undefined4 GF_AssertFail();
undefined4 ov82_0223FE18();
undefined4 CopyWindowToVram();
undefined4 ov82_0223EF7C();
undefined4 ov82_0223F8E4();
undefined4 ov82_0223F84C();
undefined4 Options_GetFrame();
undefined4 ov82_0223F90C();
undefined4 ov82_0223F834();
undefined4 ov82_0223FD78();
undefined4 ov82_0223F6CC();
undefined4 TextPrinterCheckActive();
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 ov82_0223F558();
undefined4 ov82_0223FCFC();
undefined4 ov82_0223F580();
undefined4 ov82_0223F224();
undefined4 ov82_0223F570();
undefined4 IsPaletteFadeFinished();
undefined4 ov82_0223FCBC();
undefined4 OverlayManager_New();
undefined4 ov82_0223E8C4();
extern undefined gOverlayTemplate_PokemonSummary;

undefined4 ov82_0223E2EC(int param_1)

{
  undefined1 uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;

  switch(*(undefined1 *)(param_1 + 8)) {
  case 0:
    *(undefined1 *)(param_1 + 0xb) = 0;
    *(undefined1 *)(param_1 + 8) = 1;
    break;
  case 1:
    ov82_0223F300(param_1,uRam021d1154);
    iVar4 = ov82_0223F53C(param_1);
    if ((iVar4 != 0) || (iVar4 = ov82_0223F488(param_1), iVar4 != 0)) {
      iVar4 = func_0x02237920(*(undefined1 *)(param_1 + 0xd));
      if (iVar4 == 0xfe) {
        PlaySE(0x5dd);
        BeginNormalPaletteFade(0,0,0,0,6,1,0x69);
        *(undefined2 *)(param_1 + 0x10) = 1;
        *(undefined1 *)(param_1 + 8) = 7;
      }
      else {
        iVar4 = ov82_0223F6E4(param_1);
        if (iVar4 == 1) {
          iVar4 = func_0x02237920();
          if (iVar4 != 9) {
            PlaySE(0x5f3);
            return 0;
          }
        }
        else {
          uVar5 = ov82_0223F6C4(*(undefined1 *)(param_1 + 0xd));
          uVar2 = sub_02030BD0(uVar5,*(undefined4 *)(param_1 + 0x218));
          if (9 < uVar2) {
            PlaySE(0x5f3);
            return 0;
          }
          iVar4 = func_0x02237920(*(undefined1 *)(param_1 + 0xd));
          if (iVar4 == 9) {
            PlaySE(0x5f3);
            return 0;
          }
        }
        PlaySE(0x5dd);
        iVar4 = func_0x0223792c(*(undefined1 *)(param_1 + 9));
        if (iVar4 == 0) {
          ov82_0223F5E0(*(undefined4 *)(param_1 + 0x48),*(undefined1 *)(param_1 + 0xd),1);
          ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 0x48),3);
        }
        *(undefined2 *)(param_1 + 0x14) = 0;
        *(undefined1 *)(param_1 + 8) = 2;
      }
    }
    break;
  case 2:
    *(short *)(param_1 + 0x14) = *(short *)(param_1 + 0x14) + 1;
    ov82_0223F948(-(int)*(short *)(param_1 + 0x14));
    if (*(short *)(param_1 + 0x14) == 8) {
      iVar4 = func_0x0223792c(*(undefined1 *)(param_1 + 9));
      if (iVar4 != 0) {
        uVar5 = Options_GetFrame(*(undefined4 *)(param_1 + 0x9c));
        ov82_0223FD78(param_1 + 0x4c,uVar5);
        uVar1 = ov82_0223EF7C(param_1,0,1);
        *(undefined1 *)(param_1 + 10) = uVar1;
        *(undefined1 *)(param_1 + 0x1a) = *(undefined1 *)(param_1 + 0xd);
        *(undefined1 *)(param_1 + 0x17) = 1;
        return 1;
      }
      ov82_0223F84C(param_1);
      *(undefined1 *)(param_1 + 8) = 3;
    }
    break;
  case 3:
    iVar4 = ov82_0223FE18(*(undefined4 *)(param_1 + 0x8c));
    if (iVar4 != 0) {
      if (iVar4 == 1) {
        ov82_0223F834(param_1);
        iVar4 = ov82_0223F6CC(param_1);
        if ((iVar4 != 1) || (iVar4 = ov82_0223F6E4(param_1), iVar4 != 0)) {
          func_0x02006154(0x5dc,0);
          PlaySE(0x623);
          if (*(char *)(param_1 + 0x1f) != 'u') {
            *(char *)(param_1 + 0xd) = *(char *)(param_1 + 0x1f);
          }
          return 1;
        }
        *(undefined1 *)(param_1 + 0x1f) = *(undefined1 *)(param_1 + 0xd);
        *(undefined1 *)(param_1 + 8) = 5;
      }
      else if (iVar4 == 2) {
        ov82_0223F834(param_1);
        *(undefined1 *)(param_1 + 8) = 4;
      }
    }
    break;
  case 4:
    *(short *)(param_1 + 0x14) = *(short *)(param_1 + 0x14) + -1;
    ov82_0223F948(-(int)*(short *)(param_1 + 0x14));
    if (*(short *)(param_1 + 0x14) < 1) {
      ov82_0223F8E4(param_1);
      if (*(char *)(param_1 + 0x1e) == '\x01') {
        *(undefined1 *)(param_1 + 8) = 0;
      }
      else if (*(char *)(param_1 + 0x1e) == '\0') {
        *(undefined1 *)(param_1 + 8) = 1;
      }
      else {
        GF_AssertFail();
      }
    }
    break;
  case 5:
    uVar5 = Options_GetFrame(*(undefined4 *)(param_1 + 0x9c));
    ov82_0223FD78(param_1 + 0x4c,uVar5);
    Save_PlayerData_GetOptionsAddr(*(undefined4 *)(param_1 + 0xa0));
    uVar5 = Options_GetTextFrameDelay();
    uVar1 = ov82_0223EF1C(param_1,param_1 + 0x4c,0x20,1,1,uVar5,1,2,0xf,1);
    *(undefined1 *)(param_1 + 10) = uVar1;
    CopyWindowToVram(param_1 + 0x4c);
    *(undefined1 *)(param_1 + 8) = 6;
    break;
  case 6:
    iVar4 = TextPrinterCheckActive(*(undefined1 *)(param_1 + 10));
    if (iVar4 == 0) {
      *(undefined1 *)(param_1 + 0x1e) = 1;
      ov82_0223F90C(param_1);
      ov82_0223FCFC(*(undefined4 *)(param_1 + 0x204),1);
      ov82_0223F5E0(*(undefined4 *)(param_1 + 0x48),0x13,0);
      ov82_0223F580(param_1,*(undefined4 *)(param_1 + 0x48));
      *(undefined1 *)(param_1 + 0xd) = 0x13;
      uVar5 = ov82_0223F558(param_1);
      uVar3 = ov82_0223F570(param_1);
      ov82_0223FCBC(*(undefined4 *)(param_1 + 0x204),uVar5,uVar3);
      *(undefined1 *)(param_1 + 8) = 4;
    }
    break;
  case 7:
    iVar4 = IsPaletteFadeFinished();
    if (iVar4 == 1) {
      ov82_0223F224(param_1);
      ov82_0223E8C4(param_1);
      uVar5 = OverlayManager_New(&gOverlayTemplate_PokemonSummary,*(undefined4 *)(param_1 + 0xa4),
                                 0x69);
      *(undefined4 *)(param_1 + 4) = uVar5;
      *(undefined1 *)(param_1 + 0xb) = 1;
      return 1;
    }
  }
  return 0;
}

