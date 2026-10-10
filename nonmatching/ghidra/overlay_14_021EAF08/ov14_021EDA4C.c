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
undefined4 ov14_021E8328();
undefined4 func_0x02019f74() __asm__("sub_02019F74");
undefined4 ov14_021F7AC4();
undefined4 ov14_021E84A4();
undefined4 ov14_021F40E8();
undefined4 ov14_021F5EE4();
undefined4 ov14_021F0418();
undefined4 func_0x02025380() __asm__("sub_02025380");
undefined4 ov14_021E7588();
undefined4 func_0x02019f7c() __asm__("sub_02019F7C");
undefined4 ov14_021F2A18();
undefined4 ov14_021F0234();
undefined4 PlaySE();
undefined4 ov14_021E6070();
undefined4 ov14_021E884C();
undefined4 ov14_021E8544();
extern undefined ov14_021F7D2C;
undefined4 ov14_021F1128();
undefined4 ov14_021F685C();
undefined4 GridInputHandler_SetButtonInputMode();
undefined4 Party_GetCount();
undefined4 ov14_021F2270();
undefined4 ov14_021F6E8C();
undefined4 ov14_021F0244();
undefined4 ov14_021F028C();
undefined4 ov14_021F0314();
undefined4 ov14_021E76B8();
undefined4 ov14_021F6654();
undefined4 ov14_021E765C();
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 ov14_021F04D4();

undefined4 ov14_021EDA4C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  
  uVar2 = ov14_021F6A14();
  if (uVar2 != 0xffffffff) {
    iVar3 = ov14_021E6070(param_1,uVar2,0xac,0,param_4);
    if (iVar3 != 0) {
      func_0x02025380(*(int *)(param_1 + 0x34) + 0x40b8,*(int *)(param_1 + 0x34) + 0x40bc);
      iVar3 = ov14_021E8544(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
      if (iVar3 == 0) {
        ov14_021F5EE4(param_1,&ov14_021F7D2C,4);
      }
      PlaySE(0x5eb);
      ov14_021E7588(param_1,uVar2);
      ov14_021F2A18(*(undefined4 *)(param_1 + 0x34),9,0);
      uVar4 = ov14_021F0418(param_1,uVar2);
      return uVar4;
    }
    iVar3 = ov14_021E8544(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
    if (iVar3 == 1) {
      uVar1 = *(undefined1 *)(param_1 + 0x21);
      uVar4 = func_0x02019f74(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
      ov14_021F7AC4(*(undefined4 *)(param_1 + 0x34),uVar1,uVar4);
      func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),uVar1);
      ov14_021E84A4(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
      ov14_021E8328(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
      ov14_021E884C(*(undefined4 *)(param_1 + 0x34));
      ov14_021F40E8(param_1,0);
      uVar4 = ov14_021F0234(param_1,0x21ea131,0x59);
      return uVar4;
    }
    func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),uVar2 & 0xff);
    GridInputHandler_SetButtonInputMode(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),1);
    ov14_021E765C(param_1);
    return 0x51;
  }
  uVar2 = ov14_021F6E8C(param_1);
  if (uVar2 < 0xfffffffe) {
    if (0xfffffffc < uVar2) {
      uVar2 = func_0x02019f74(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
      if (uVar2 < 0x1e) {
        ov14_021E7588(param_1);
      }
      else if ((((uVar2 != 0x22) && (uVar2 != 0x23)) && (uVar2 != 0x24)) &&
              ((uVar2 != 0x25 && (uVar2 != 0x26)))) {
        ov14_021E765C(param_1);
      }
      PlaySE(0x5dc);
      uVar4 = ov14_021F0244(param_1,0x58);
      return uVar4;
    }
    if (uVar2 < 0x27) {
      switch(uVar2) {
      case 0x1e:
        PlaySE(0x5dd);
        ov14_021E76B8(param_1);
        ov14_021F6654(*(undefined4 *)(param_1 + 0x34),0x27);
        uVar4 = ov14_021F1128(param_1);
        return uVar4;
      case 0x1f:
        PlaySE(0x5dc);
        ov14_021E76B8(param_1);
        ov14_021F2A18(*(undefined4 *)(param_1 + 0x34),9,0);
        func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),0x1e);
        ov14_021F685C(param_1,0,0,0x27);
        uVar4 = ov14_021F028C(param_1,0x51);
        return uVar4;
      case 0x20:
        PlaySE(0x5dc);
        ov14_021E76B8(param_1);
        ov14_021F2A18(*(undefined4 *)(param_1 + 0x34),9,0);
        func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),0x1e);
        ov14_021F685C(param_1,0,0,0x27);
        uVar4 = ov14_021F0314(param_1,0x51);
        return uVar4;
      case 0x21:
        PlaySE(0x5dd);
        ov14_021E765C(param_1);
        uVar4 = ov14_021F2270(param_1,10,0x93);
        return uVar4;
      case 0x22:
        iVar3 = Party_GetCount(*(undefined4 *)(param_1 + 8));
        if (iVar3 == 6) {
          PlaySE(0x5f3);
        }
        else {
          PlaySE(0x5dd);
        }
        uVar4 = ov14_021F2270(param_1,4,0xa7);
        return uVar4;
      case 0x23:
        PlaySE(0x5dd);
        *(undefined4 *)(param_1 + 0x2c) = 0x23;
        uVar4 = ov14_021F2270(param_1,5,0x97);
        return uVar4;
      case 0x24:
        PlaySE(0x5dd);
        ov14_021F6654(*(undefined4 *)(param_1 + 0x34),0x27);
        uVar4 = ov14_021F2270(param_1,6,0x99);
        return uVar4;
      case 0x25:
        PlaySE(0x5dd);
        uVar4 = ov14_021F2270(param_1,7,0x9b);
        return uVar4;
      case 0x26:
        uVar1 = *(undefined1 *)(param_1 + 0x21);
        uVar4 = func_0x02019f74(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
        ov14_021F7AC4(*(undefined4 *)(param_1 + 0x34),uVar1,uVar4);
        func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),uVar1);
        PlaySE(0x5dc);
        uVar4 = ov14_021F2270(param_1,0xb,0xa8);
        return uVar4;
      }
    }
    else if (uVar2 == 0xfffffffc) {
      uVar2 = func_0x02019f74(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
      if (uVar2 < 0x1e) {
        ov14_021E7588(param_1);
      }
      else if (((uVar2 != 0x22) && (uVar2 != 0x23)) &&
              ((uVar2 != 0x24 && ((uVar2 != 0x25 && (uVar2 != 0x26)))))) {
        ov14_021E765C(param_1);
      }
      PlaySE(0x5dc);
      return 0x51;
    }
  }
  else if (uVar2 < 0xffffffff) {
    if (uVar2 == 0xfffffffe) {
      PlaySE(0x5dd);
      uVar4 = ov14_021F2270(param_1,10,0x94);
      return uVar4;
    }
  }
  else if (uVar2 == 0xffffffff) {
    iVar3 = func_0x02019f74(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
    if (iVar3 != 0x1e) {
      return 0x51;
    }
    if ((uRam021d1154 & 0x20) == 0) {
      if ((uRam021d1154 & 0x10) == 0) {
        return 0x51;
      }
      PlaySE(0x5dc);
      ov14_021E76B8(param_1);
      uVar4 = ov14_021F0314(param_1,0x51);
      return uVar4;
    }
    PlaySE(0x5dc);
    ov14_021E76B8(param_1);
    uVar4 = ov14_021F028C(param_1,0x51);
    return uVar4;
  }
  iVar3 = ov14_021E6070(param_1,uVar2,0xac,0,param_4);
  if (iVar3 == 0) {
    return 0x51;
  }
  PlaySE(0x5dd);
  ov14_021F5EE4(param_1,&ov14_021F7D2C,4);
  ov14_021E7588(param_1,uVar2);
  uVar4 = func_0x02019f74(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
  ov14_021F7AC4(*(undefined4 *)(param_1 + 0x34),0x22,uVar4);
  func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),0x22);
  uVar4 = ov14_021F04D4(param_1,uVar2);
  return uVar4;
}

