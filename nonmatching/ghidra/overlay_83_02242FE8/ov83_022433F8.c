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
undefined4 ov83_02245094();
undefined4 ov83_02244A98();
undefined4 TouchscreenListMenu_HandleInput();
undefined4 ov83_02247AD4();
undefined4 ov83_02244C58();
undefined4 ov83_02244C4C();
undefined4 ov83_02247B04();
undefined4 ov83_022477B0();
undefined4 ov83_02244C88();
undefined4 ov83_022453C0();
undefined4 ov83_02244C9C();
undefined4 ov83_02247630();
undefined4 ov83_022469D8();
undefined4 ov83_022448AC();
undefined4 ov83_02247768();
undefined4 PlaySE();
undefined4 ov83_02246CC0();
undefined4 ov83_02244BEC();
undefined4 ov83_02244A88();
undefined4 ov83_02246114();
undefined4 ov83_02244AB0();
undefined4 ov83_02245748();
undefined4 Party_GetMonByIndex();
undefined4 ov83_022478B4();
undefined4 ov83_022453DC();
undefined4 func_0x02237fa4() __asm__("sub_02237FA4");
undefined4 func_0x0205c1f0() __asm__("sub_0205C1F0");
undefined4 sub_0205C268();
undefined4 FrontierSave_GetStat();
undefined4 ov83_02246988();
undefined4 func_0x02237d8c() __asm__("sub_02237D8C");
undefined4 ov83_02244A74();
undefined4 YesNoPrompt_HandleInput();
undefined4 Mon_GetBoxMon();
undefined4 ov83_02245554();
undefined4 ov83_02245838();
undefined4 Options_GetFrame();
undefined4 ov83_02244CCC();
undefined4 ov83_02244A90();
undefined4 ov83_02246D40();
undefined4 ov83_0224777C();
undefined4 ov83_02245A40();
undefined4 ov83_02245068();
undefined4 ov83_02247944();
undefined4 ov83_02245ACC();
undefined4 ov83_022459A0();
undefined4 ov83_02244E24();
undefined4 ov83_02247CF0();
undefined4 ov83_022448E4();
extern uint uRam021d1154 __asm__("sub_021D1154");

undefined4 ov83_022433F8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  undefined1 uVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;

  switch(*(undefined1 *)(param_1 + 8)) {
  case 0:
    *(undefined1 *)(param_1 + 0xb) = 0;
    *(undefined1 *)(param_1 + 8) = 1;
    bVar1 = *(byte *)(param_1 + 0xf) >> 3;
    if (bVar1 == 1) {
      ov83_02245094(param_1 + 0xc0);
      ov83_02244BEC(param_1);
    }
    else if (bVar1 == 2) {
      ov83_02245094(param_1 + 0xc0);
      ov83_02244C9C(param_1);
      ov83_02247630(*(undefined4 *)(param_1 + 0x540),200,0x69);
      *(undefined1 *)(param_1 + 8) = 6;
    }
    else if (bVar1 == 3) {
      *(undefined1 *)(param_1 + 8) = 0xe;
    }
    *(byte *)(param_1 + 0xf) = *(byte *)(param_1 + 0xf) & 7;
    break;
  case 1:
    iVar7 = ov83_02247AD4(*(undefined4 *)(param_1 + 0x5f0));
    switch(iVar7) {
    case 0:
    case 1:
    case 2:
    case 3:
      ov83_02244C4C(param_1);
      ov83_02244C58(param_1);
      *(undefined1 *)(param_1 + 8) = 2;
      break;
    case 4:
      PlaySE(0x5dc);
      return 1;
    default:
      if ((iVar7 == -2) && (*(char *)(param_1 + 0xd) != *(char *)(param_1 + 0x15))) {
        ov83_02247B04(*(undefined4 *)(param_1 + 0x5f0));
        ov83_022469D8(param_1,4,*(undefined1 *)(param_1 + 0xd));
      }
    }
    break;
  case 2:
    uVar6 = TouchscreenListMenu_HandleInput(*(undefined4 *)(param_1 + 0x5f8));
    ov83_022477B0(uVar6,0x5dc);
    ov83_02246CC0(param_1);
    if (0xfffffffe < uVar6) {
      return 0;
    }
    if (uVar6 < 0xfffffffe) {
      switch(uVar6) {
      case 0:
        *(char *)(param_1 + 0x13) = (char)uVar6;
        iVar7 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),*(undefined1 *)(param_1 + 0xd));
        if (*(char *)(*(int *)(param_1 + 0x54c) + iVar7) == '\0') {
          ov83_02244C88(param_1);
          ov83_022453C0(param_1);
          ov83_02244A98(param_1,0,1,4,0);
          uVar2 = ov83_022448AC(param_1,0x10,1);
          *(undefined1 *)(param_1 + 10) = uVar2;
          ov83_02244A74(param_1);
          *(undefined1 *)(param_1 + 8) = 3;
        }
        else {
          ov83_02244C88(param_1);
          uVar4 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),*(undefined1 *)(param_1 + 0xd));
          uVar4 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x55c),uVar4);
          ov83_022453C0(param_1);
          uVar4 = Mon_GetBoxMon(uVar4);
          ov83_02244AB0(param_1,0,uVar4);
          uVar2 = ov83_022448AC(param_1,0x14,1);
          *(undefined1 *)(param_1 + 10) = uVar2;
          *(undefined1 *)(param_1 + 8) = 0x10;
        }
        break;
      case 1:
        *(char *)(param_1 + 0x13) = (char)uVar6;
        ov83_02244C88(param_1);
        ov83_022453C0(param_1);
        ov83_02244AB0(param_1,0,*(undefined4 *)(param_1 + 0x5c0));
        uVar2 = ov83_022448AC(param_1,0x15,1);
        *(undefined1 *)(param_1 + 10) = uVar2;
        ov83_02244A88(param_1);
        *(undefined1 *)(param_1 + 8) = 4;
        break;
      case 2:
        ov83_02244C88(param_1);
        ov83_02244C9C(param_1);
        *(undefined1 *)(param_1 + 8) = 6;
        break;
      case 6:
        goto code_r0x0224360c;
      }
    }
    else {
code_r0x0224360c:
      ov83_02244C88(param_1);
      ov83_02244BEC(param_1);
      *(undefined1 *)(param_1 + 8) = 0;
    }
    break;
  case 3:
    iVar7 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x604));
    if (iVar7 == 1) {
      ov83_022478B4(param_1 + 0x604);
      ov83_02245094(param_1 + 0xc0);
      uVar4 = func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
      func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
      uVar5 = sub_0205C268();
      iVar7 = FrontierSave_GetStat(*(undefined4 *)(param_1 + 4),uVar4,uVar5);
      if (iVar7 == 0) {
        ov83_022453C0(param_1);
        uVar2 = ov83_022448AC(param_1,0x1c,1);
        *(undefined1 *)(param_1 + 10) = uVar2;
        *(undefined1 *)(param_1 + 8) = 0x10;
      }
      else {
        iVar7 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
        if (iVar7 != 0) {
          *(undefined1 *)(param_1 + 0x10) = 1;
          return 1;
        }
        func_0x02237fa4(*(undefined4 *)(param_1 + 4),*(undefined1 *)(param_1 + 9),1);
        ov83_022453DC(param_1,param_1 + 0x50);
        ov83_02245748(param_1,*(undefined1 *)(param_1 + 0xd));
        ov83_02246988(param_1);
        ov83_02246114(param_1,0);
        *(undefined1 *)(param_1 + 8) = 0xb;
      }
    }
    else if (iVar7 == 2) {
      ov83_022478B4(param_1 + 0x604);
      ov83_02245094(param_1 + 0xc0);
      ov83_02244C58(param_1);
      *(undefined1 *)(param_1 + 8) = 2;
    }
    break;
  case 4:
    uVar6 = TouchscreenListMenu_HandleInput(*(undefined4 *)(param_1 + 0x5f8));
    ov83_022477B0(uVar6,0x5dc);
    if (uVar6 != 0xffffffff) {
      if (uVar6 < 0xfffffffe) {
        if (2 < uVar6) {
          return 0;
        }
        if (uVar6 == 0) {
          uVar4 = func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
          func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
          uVar5 = sub_0205C268();
          FrontierSave_GetStat(*(undefined4 *)(param_1 + 4),uVar4,uVar5);
          ov83_02244A90(param_1);
          iVar7 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),*(undefined1 *)(param_1 + 0xd));
          if (*(char *)(*(int *)(param_1 + 0x550) + iVar7) == '\x01') {
            ov83_022453C0(param_1);
            uVar2 = ov83_022448AC(param_1,0x1d,1);
            *(undefined1 *)(param_1 + 10) = uVar2;
            *(undefined1 *)(param_1 + 8) = 0x10;
            return 0;
          }
          ov83_02245554(param_1,1);
          *(undefined1 *)(param_1 + 8) = 5;
          return 0;
        }
        if (uVar6 == 1) {
          uVar4 = func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
          func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
          uVar5 = sub_0205C268();
          FrontierSave_GetStat(*(undefined4 *)(param_1 + 4),uVar4,uVar5);
          ov83_02244A90(param_1);
          iVar7 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),*(undefined1 *)(param_1 + 0xd));
          if (*(char *)(*(int *)(param_1 + 0x550) + iVar7) == '\x02') {
            ov83_022453C0(param_1);
            uVar2 = ov83_022448AC(param_1,0x1e,1);
            *(undefined1 *)(param_1 + 10) = uVar2;
            *(undefined1 *)(param_1 + 8) = 0x10;
            return 0;
          }
          ov83_02245554(param_1,2);
          *(undefined1 *)(param_1 + 8) = 5;
          return 0;
        }
        if (uVar6 != 2) {
          return 0;
        }
      }
      ov83_02245094(param_1 + 0xc0);
      ov83_02244A90(param_1);
      ov83_02244C58(param_1);
      *(undefined1 *)(param_1 + 8) = 2;
    }
    break;
  case 5:
    iVar7 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x604));
    if (iVar7 == 1) {
      ov83_022478B4(param_1 + 0x604);
      uVar4 = func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
      func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
      uVar5 = sub_0205C268();
      uVar6 = FrontierSave_GetStat(*(undefined4 *)(param_1 + 4),uVar4,uVar5);
      uVar3 = ov83_02245068(*(undefined1 *)(param_1 + 0xe));
      if (uVar6 < uVar3) {
        ov83_022453C0(param_1);
        uVar2 = ov83_022448AC(param_1,0x1c,1);
        *(undefined1 *)(param_1 + 10) = uVar2;
        *(undefined1 *)(param_1 + 8) = 0x10;
        return 0;
      }
      *(undefined1 *)(param_1 + 0x12) = *(undefined1 *)(param_1 + 0xe);
      iVar7 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
      if (iVar7 != 0) {
        *(undefined1 *)(param_1 + 0x10) = 1;
        return 1;
      }
      ov83_02245094(param_1 + 0xc0);
      uVar4 = ov83_02245068(*(undefined1 *)(param_1 + 0xe));
      func_0x02237fa4(*(undefined4 *)(param_1 + 4),*(undefined1 *)(param_1 + 9),uVar4);
      ov83_022453DC(param_1,param_1 + 0x50);
      ov83_02245838(param_1,*(undefined1 *)(param_1 + 0xd),*(undefined1 *)(param_1 + 0xe));
      *(undefined1 *)(param_1 + 8) = 0xc;
    }
    else if (iVar7 == 2) {
      ov83_022478B4(param_1 + 0x604);
      ov83_02245094(param_1 + 0xc0);
      ov83_02244C58(param_1);
      *(undefined1 *)(param_1 + 8) = 2;
    }
    break;
  case 6:
    uVar6 = TouchscreenListMenu_HandleInput(*(undefined4 *)(param_1 + 0x5f8));
    ov83_022477B0(uVar6,0x5dc);
    ov83_02246D40(param_1);
    if (uVar6 != 0xffffffff) {
      if (uVar6 < 0xfffffffe) {
        if ((uVar6 < 6) && (2 < uVar6)) {
          if (uVar6 == 3) {
            *(undefined1 *)(param_1 + 0x13) = 3;
            ov83_02244CCC(param_1);
            iVar7 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),*(undefined1 *)(param_1 + 0xd));
            if (*(char *)(*(int *)(param_1 + 0x554) + iVar7) == '\0') {
              ov83_022453C0(param_1);
              ov83_02244A98(param_1,0,2,4,0);
              uVar2 = ov83_022448AC(param_1,0x2b,1);
              *(undefined1 *)(param_1 + 10) = uVar2;
              ov83_02244A74(param_1);
              *(undefined1 *)(param_1 + 8) = 7;
            }
            else {
              *(undefined1 *)(param_1 + 8) = 0x11;
            }
          }
          else if (uVar6 == 4) {
            *(undefined1 *)(param_1 + 0x13) = 4;
            ov83_02244CCC(param_1);
            iVar7 = ov83_0224777C(*(undefined4 *)(param_1 + 700),*(undefined1 *)(param_1 + 9),2);
            if (iVar7 == 1) {
              uVar2 = ov83_022448AC(param_1,0x2a,1);
              *(undefined1 *)(param_1 + 10) = uVar2;
              *(undefined1 *)(param_1 + 8) = 0xf;
              return 0;
            }
            iVar7 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),*(undefined1 *)(param_1 + 0xd));
            if (*(char *)(*(int *)(param_1 + 0x558) + iVar7) == '\0') {
              ov83_022453C0(param_1);
              ov83_02244A98(param_1,0,5,4,0);
              uVar2 = ov83_022448AC(param_1,0x4f,1);
              *(undefined1 *)(param_1 + 10) = uVar2;
              ov83_02244A74(param_1);
              *(undefined1 *)(param_1 + 8) = 8;
            }
            else {
              *(undefined1 *)(param_1 + 8) = 0x12;
            }
          }
          else if (uVar6 == 5) {
            iVar7 = ov83_0224777C(*(undefined4 *)(param_1 + 700),*(undefined1 *)(param_1 + 9),2);
            if (iVar7 == 2) {
              ov83_02245094(param_1 + 0xc0);
              ov83_02244CCC(param_1);
              ov83_02244C58(param_1);
              *(undefined1 *)(param_1 + 8) = 2;
            }
            else {
              *(undefined1 *)(param_1 + 0x13) = 5;
              ov83_02244CCC(param_1);
              uVar4 = func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
              func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
              uVar5 = sub_0205C268();
              FrontierSave_GetStat(*(undefined4 *)(param_1 + 4),uVar4,uVar5);
              ov83_02244A98(param_1,0,0x32,4,0);
              uVar2 = ov83_022448AC(param_1,0x5b,1);
              *(undefined1 *)(param_1 + 10) = uVar2;
              ov83_02244A74(param_1);
              *(undefined1 *)(param_1 + 8) = 9;
            }
          }
        }
      }
      else {
        ov83_02245094(param_1 + 0xc0);
        ov83_02244CCC(param_1);
        ov83_02244C58(param_1);
        *(undefined1 *)(param_1 + 8) = 2;
      }
    }
    break;
  case 7:
    iVar7 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x604));
    if (iVar7 == 1) {
      ov83_022478B4(param_1 + 0x604);
      iVar7 = ov83_02245A40(param_1,2,0x2e);
      if (iVar7 == 1) {
        return 1;
      }
    }
    else if (iVar7 == 2) {
      ov83_022478B4(param_1 + 0x604);
      ov83_02244C9C(param_1);
      *(undefined1 *)(param_1 + 8) = 6;
    }
    break;
  case 8:
    iVar7 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x604));
    if (iVar7 == 1) {
      ov83_022478B4(param_1 + 0x604);
      iVar7 = ov83_02245A40(param_1,5,0x52);
      if (iVar7 == 1) {
        return 1;
      }
    }
    else if (iVar7 == 2) {
      ov83_022478B4(param_1 + 0x604);
      ov83_02244C9C(param_1);
      *(undefined1 *)(param_1 + 8) = 6;
    }
    break;
  case 9:
    iVar7 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x604));
    if (iVar7 == 1) {
      ov83_022478B4(param_1 + 0x604);
      uVar4 = func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
      func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
      uVar5 = sub_0205C268();
      uVar6 = FrontierSave_GetStat(*(undefined4 *)(param_1 + 4),uVar4,uVar5);
      ov83_0224777C(*(undefined4 *)(param_1 + 700),*(undefined1 *)(param_1 + 9),2);
      if (uVar6 < 0x32) {
        uVar4 = Options_GetFrame(*(undefined4 *)(param_1 + 0x2b8));
        ov83_02247944(param_1 + 0xc0,uVar4);
        uVar2 = ov83_022448AC(param_1,0x52,1);
        *(undefined1 *)(param_1 + 10) = uVar2;
        *(undefined1 *)(param_1 + 8) = 0xf;
      }
      else {
        iVar7 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
        if (iVar7 != 0) {
          *(undefined1 *)(param_1 + 0x10) = 1;
          return 1;
        }
        ov83_02245ACC(param_1,*(undefined1 *)(param_1 + 0xd),5);
        *(undefined1 *)(param_1 + 8) = 10;
      }
    }
    else if (iVar7 == 2) {
      ov83_022478B4(param_1 + 0x604);
      ov83_02244C9C(param_1);
      *(undefined1 *)(param_1 + 8) = 6;
    }
    break;
  case 10:
    iVar7 = ov83_02247CF0();
    if (iVar7 == 1) {
      ov83_02244C9C(param_1);
      ov83_02246114(param_1,0);
      ov83_02247630(*(undefined4 *)(param_1 + 0x540),200,0x69);
      *(undefined1 *)(param_1 + 8) = 6;
    }
    break;
  case 0xb:
    ov83_022448E4(param_1,param_1 + 0x80);
    *(undefined1 *)(param_1 + 8) = 0xc;
  case 0xc:
    iVar7 = ov83_02244E24(param_1,*(undefined1 *)(param_1 + 0xd),*(undefined1 *)(param_1 + 0x13));
    if (iVar7 == 1) {
      *(undefined1 *)(param_1 + 8) = 0x10;
    }
    break;
  case 0xd:
    iVar7 = ov83_02244E24(param_1,*(undefined1 *)(param_1 + 0xd),*(undefined1 *)(param_1 + 0x13),
                          param_4,param_4);
    if (iVar7 == 1) {
      *(undefined1 *)(param_1 + 8) = 0xe;
    }
    break;
  case 0xe:
    if (*(char *)(param_1 + 0x13) == '\x03') {
      *(undefined1 *)(param_1 + 8) = 0x11;
    }
    else {
      *(undefined1 *)(param_1 + 8) = 0x12;
    }
    break;
  case 0xf:
    iVar7 = ov83_02247CF0();
    if (iVar7 == 1) {
      PlaySE(0x5dc);
      ov83_02244C9C(param_1);
      *(undefined1 *)(param_1 + 8) = 6;
    }
    break;
  case 0x10:
    iVar7 = ov83_02247CF0();
    if (iVar7 == 1) {
      PlaySE(0x5dc);
      ov83_02245094(param_1 + 0xc0);
      ov83_02244BEC(param_1);
      *(undefined1 *)(param_1 + 8) = 0;
    }
    break;
  case 0x11:
    if ((((uRam021d1154 & 0x20) == 0) && ((uRam021d1154 & 0x10) == 0)) &&
       (iVar7 = ov83_02247CF0(), iVar7 == 1)) {
      PlaySE(0x5dc);
      ov83_022459A0(param_1);
      ov83_02244C58(param_1);
      *(undefined1 *)(param_1 + 8) = 2;
    }
    break;
  case 0x12:
    if ((((uRam021d1154 & 0x20) == 0) && ((uRam021d1154 & 0x10) == 0)) &&
       (iVar7 = ov83_02247CF0(), iVar7 == 1)) {
      PlaySE(0x5dc);
      ov83_022459A0(param_1);
      ov83_02244C58(param_1);
      *(undefined1 *)(param_1 + 8) = 2;
    }
  }
  return 0;
}

