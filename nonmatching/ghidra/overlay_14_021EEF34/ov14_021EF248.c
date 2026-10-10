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
typedef void code(void);
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
undefined4 ov14_021F6A14();
undefined4 func_0x02019f74() __asm__("sub_02019F74");
undefined4 ov14_021F2330();
undefined4 ov14_021F0D34();
undefined4 ov14_021F0EE8();
undefined4 ov14_021F7B7C();
undefined4 ov14_021E7588();
undefined4 func_0x02019f7c() __asm__("sub_02019F7C");
undefined4 ov14_021F19F0();
undefined4 ov14_021F2A18();
undefined4 GridInputHandler_SetButtonInputMode();
undefined4 PlaySE();
undefined4 ov14_021E85E4();
undefined4 ov14_021E8648();
undefined4 ov14_021E6070();
undefined4 ov14_021F6A34();
undefined4 ov14_021F70C0();
undefined4 ov14_021E765C();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov14_021F1004();
undefined4 ov14_021E8620();
undefined4 ov14_021F6408();
undefined4 ov14_021F0D58();
undefined4 ov14_021F2270();
undefined4 ov14_021F0244();
undefined4 ov14_021E8634();
undefined4 ov14_021E76B8();
undefined4 ov14_021F2490();
undefined4 ov14_021F1B4C();

undefined4 ov14_021EF248(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int extraout_r1_02;

  iVar1 = ov14_021F6A34();
  if (iVar1 != -1) {
    iVar2 = ov14_021E6070(param_1,iVar1 + 0x1e,0xac,0,param_4);
    if (iVar2 != 0) {
      ov14_021E7588(param_1,iVar1 + 0x1e);
      ov14_021F2A18(*(undefined4 *)(param_1 + 0x34),9,0);
      uVar3 = ov14_021F19F0(param_1,iVar1 + 0x1e);
      return uVar3;
    }
    ov14_021E765C(param_1);
    func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),iVar1 + 0x1eU & 0xff);
    GridInputHandler_SetButtonInputMode(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),1);
    iVar1 = ov14_021E85E4(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
    if (iVar1 == 1) {
      uVar3 = ov14_021F0EE8(param_1,0x82);
      return uVar3;
    }
    iVar1 = ov14_021E8648(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
    if (iVar1 == 1) {
      uVar3 = ov14_021F0D34(param_1,0x82);
      return uVar3;
    }
    return 0x82;
  }
  uVar4 = ov14_021F6A14();
  if (uVar4 == 0xffffffff) {
    iVar1 = ov14_021F7B7C(param_1);
    if (iVar1 == 1) {
      uVar3 = func_0x02019f74(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
      iVar1 = ov14_021E6070(param_1,uVar3,0xac,0,param_4);
      if (iVar1 != 0) {
        PlaySE(0x5dd);
        *(char *)(param_1 + 0x21) = (char)uVar3;
        *(undefined1 *)(param_1 + 0x26) = 1;
        uVar3 = ov14_021F2330(param_1,0xf,0x97);
        return uVar3;
      }
      return 0x82;
    }
    uVar4 = ov14_021F70C0(param_1);
    if (uVar4 < 0xfffffffe) {
      if (0xfffffffc < uVar4) {
        uVar4 = func_0x02019f74(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
        if (uVar4 < 0x24) {
          iVar1 = ov14_021E7588(param_1);
          if (iVar1 == 1) {
            iVar1 = ov14_021E8648(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
            if (iVar1 == 0) {
              ov14_021F6408(param_1,0);
              ov14_021E8620(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
            }
          }
          else {
            iVar1 = ov14_021E8648(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
            if (iVar1 == 1) {
              ov14_021E8634(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
            }
          }
        }
        else {
          ov14_021E765C(param_1);
          iVar1 = ov14_021E8648(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
          if (iVar1 == 1) {
            ov14_021E8634(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
          }
        }
        PlaySE(0x5dc);
        if (*(int *)(*(int *)(param_1 + 0x34) + 8) == 0) {
          return 0x82;
        }
        uVar3 = ov14_021F0244(param_1,0x83);
        return uVar3;
      }
      if (uVar4 < 0x2e) {
        switch(uVar4) {
        case 0x24:
          PlaySE(0x633);
          uVar3 = ov14_021F2490(param_1,1,0xa1);
          return uVar3;
        case 0x25:
          PlaySE(0x5dd);
          ov14_021E76B8(param_1);
          uVar3 = ov14_021F0D58(param_1,0);
          return uVar3;
        case 0x26:
          PlaySE(0x5dd);
          ov14_021E76B8(param_1);
          uVar3 = ov14_021F0D58(param_1,1);
          return uVar3;
        case 0x27:
          PlaySE(0x5dd);
          ov14_021E76B8(param_1);
          uVar3 = ov14_021F0D58(param_1,2);
          return uVar3;
        case 0x28:
          PlaySE(0x5dd);
          ov14_021E76B8(param_1);
          uVar3 = ov14_021F0D58(param_1,3);
          return uVar3;
        case 0x29:
          PlaySE(0x5dd);
          ov14_021E76B8(param_1);
          uVar3 = ov14_021F0D58(param_1,4);
          return uVar3;
        case 0x2a:
          PlaySE(0x5dd);
          ov14_021E76B8(param_1);
          uVar3 = ov14_021F0D58(param_1,5);
          return uVar3;
        case 0x2b:
          PlaySE(0x5dc);
          ov14_021E76B8(param_1);
          ov14_021F1004(param_1,0xffffffff);
          func_0x020f2998(*(undefined1 *)(param_1 + 0x25),6);
          func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),
                          extraout_r1 + 0x25U & 0xff);
          GridInputHandler_SetButtonInputMode(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),1);
          iVar1 = ov14_021E85E4(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
          if (iVar1 == 1) {
            uVar3 = ov14_021F0EE8(param_1,0x82);
            return uVar3;
          }
          iVar1 = ov14_021E8648(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
          if (iVar1 == 1) {
            uVar3 = ov14_021F0D34(param_1,0x82);
            return uVar3;
          }
          return 0x82;
        case 0x2c:
          PlaySE(0x5dc);
          ov14_021E76B8(param_1);
          ov14_021F1004(param_1,1);
          func_0x020f2998(*(undefined1 *)(param_1 + 0x25),6);
          func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),
                          extraout_r1_00 + 0x25U & 0xff);
          GridInputHandler_SetButtonInputMode(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),1);
          iVar1 = ov14_021E85E4(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
          if (iVar1 == 1) {
            uVar3 = ov14_021F0EE8(param_1,0x82);
            return uVar3;
          }
          iVar1 = ov14_021E8648(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
          if (iVar1 == 1) {
            uVar3 = ov14_021F0D34(param_1,0x82);
            return uVar3;
          }
          return 0x82;
        case 0x2d:
          PlaySE(0x5dc);
          func_0x020f2998(*(undefined1 *)(param_1 + 0x25),6);
          func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),
                          extraout_r1_01 + 0x25U & 0xff);
          uVar3 = ov14_021F2270(param_1,0xe,0xaf);
          return uVar3;
        }
      }
      else if (uVar4 == 0xfffffffc) {
        return 0x82;
      }
    }
    else if (uVar4 < 0xffffffff) {
      if (uVar4 == 0xfffffffe) {
        iVar1 = ov14_021E85E4(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
        if (iVar1 == 0) {
          PlaySE(0x633);
          uVar3 = ov14_021F2490(param_1,1,0xa1);
          return uVar3;
        }
        PlaySE(0x5dc);
        func_0x020f2998(*(undefined1 *)(param_1 + 0x25),6);
        func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),
                        extraout_r1_02 + 0x25U & 0xff);
        GridInputHandler_SetButtonInputMode(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),1);
        uVar3 = ov14_021F0EE8(param_1,0x82);
        return uVar3;
      }
    }
    else if (uVar4 == 0xffffffff) {
      return 0x82;
    }
    iVar1 = ov14_021E6070(param_1,uVar4,0xac,0,param_4);
    if (iVar1 == 0) {
      return 0x82;
    }
    ov14_021E7588(param_1,uVar4);
    uVar3 = ov14_021F1B4C(param_1,uVar4);
    return uVar3;
  }
  iVar1 = ov14_021E6070(param_1,uVar4,0xac,0,param_4);
  if (iVar1 != 0) {
    ov14_021E7588(param_1,uVar4);
    ov14_021F2A18(*(undefined4 *)(param_1 + 0x34),9,0);
    uVar3 = ov14_021F19F0(param_1,uVar4);
    return uVar3;
  }
  ov14_021E765C(param_1);
  func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),uVar4 & 0xff);
  GridInputHandler_SetButtonInputMode(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),1);
  iVar1 = ov14_021E85E4(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
  if (iVar1 == 1) {
    uVar3 = ov14_021F0EE8(param_1,0x82);
    return uVar3;
  }
  iVar1 = ov14_021E8648(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
  if (iVar1 == 1) {
    uVar3 = ov14_021F0D34(param_1,0x82);
    return uVar3;
  }
  return 0x82;
}

