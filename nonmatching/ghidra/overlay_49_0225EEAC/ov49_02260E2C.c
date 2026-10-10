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
undefined4 ov49_0225A0BC();
undefined4 ov49_02259FE8();
undefined4 GF_AssertFail();
undefined4 ov49_02259FF8();
undefined4 ov49_02259FF0();
undefined4 ov49_0225A008();
undefined4 ov49_0225EF88();
undefined4 ov49_0225A09C();
undefined4 func_0x0222a374() __asm__("sub_0222A374");
undefined4 ov49_0225EF40();
undefined4 func_0x0222a330() __asm__("sub_0222A330");
undefined4 ov49_02258D70();
undefined4 ov49_0225EF8C();
undefined4 ov49_0225A040();
undefined4 ov49_0225A30C();
undefined4 ov49_0225EF84();
undefined4 func_0x0222adb8() __asm__("sub_0222ADB8");
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 ov49_02259130();
undefined4 ov49_02261434();
undefined4 ov49_0225916C();
undefined4 ov49_0225CC44();
undefined4 func_0x0222ae44() __asm__("sub_0222AE44");
undefined4 ov49_02259160();
undefined4 ov49_0225A510();
undefined4 func_0x0222adc8() __asm__("sub_0222ADC8");
undefined4 ov49_0225A0CC();
undefined4 ov49_02261234();
undefined4 ov49_022611D4();
undefined4 func_0x0222a5e8() __asm__("sub_0222A5E8");
undefined4 ov49_022613AC();
undefined4 ov49_022611F4();
undefined4 ov49_022591B4();
undefined4 ov49_0225A044();
undefined4 PlaySE();
undefined4 ov49_02258EAC();
undefined4 ov49_0225EF68();
undefined4 ov49_02258E60();
undefined4 ov49_02259154();
undefined4 ov49_0225A0EC();
undefined4 ov49_0225A08C();
undefined4 ov49_0225EF98();
undefined4 ov49_0225A034();
undefined4 ov49_02258EEC();
undefined4 ov49_0225A038();
undefined4 ov49_0225A0AC();
undefined4 ov49_02261460();
undefined4 ov49_0225A53C();
undefined4 ov49_0225A010();
extern undefined ov49_02269B38;

undefined4 ov49_02260E2C(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int *piVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  int aiStack_20 [3];

  uVar1 = ov49_02259FF0(param_2);
  uVar2 = ov49_02259FF8(param_2);
  uVar3 = ov49_0225A008(param_2);
  uVar4 = ov49_02259FE8(param_2);
  piVar5 = (int *)ov49_0225EF84(param_1);
  uVar6 = ov49_0225EF88(param_1);
  switch(uVar6) {
  case 0:
    iVar8 = ov49_0225EF40(param_1,0x18);
    uVar1 = ov49_02258D70(uVar1,param_3);
    *(undefined4 *)(iVar8 + 0xc) = uVar1;
    iVar7 = ov49_0225A040(param_2);
    if (iVar7 == 0x21) {
      *(undefined2 *)(iVar8 + 6) = 2;
    }
    else if (iVar7 == 0x22) {
      *(undefined2 *)(iVar8 + 6) = 1;
    }
    else if (iVar7 == 0x23) {
      *(undefined2 *)(iVar8 + 6) = 0;
    }
    else {
      GF_AssertFail();
    }
    ov49_0225EF8C(param_1,1);
    break;
  case 1:
    iVar8 = func_0x0222a374(uVar4);
    if (iVar8 == 0) {
      *(undefined2 *)(piVar5 + 1) = 8;
      ov49_0225EF8C(param_1,6);
    }
    else {
      iVar8 = func_0x0222a330(uVar4);
      if (iVar8 == 1) {
        *(undefined2 *)(piVar5 + 1) = 10;
        ov49_0225EF8C(param_1,6);
      }
      else {
        iVar8 = func_0x0222adb8(uVar4,param_3,*(undefined2 *)((int)piVar5 + 6));
        *piVar5 = iVar8;
        if (iVar8 == -1) {
          *(undefined2 *)(piVar5 + 1) = 9;
          ov49_0225EF8C(param_1,6);
        }
        else {
          ov49_0225EF8C(param_1,2);
          uVar1 = ov49_0225A30C(param_2,0,0x1f);
          ov49_0225A09C(param_2,uVar1);
          ov49_0225A0BC(param_2);
        }
      }
    }
    break;
  case 2:
    if (((uRam021d1154 & 2) == 0) && ((uRam021d1154 & 0x80) == 0)) {
      iVar8 = ov49_022611F4(piVar5,uVar2);
      if (iVar8 == 1) {
        ov49_0225A0CC(param_2);
        func_0x0222ae44(uVar4);
        *(undefined2 *)(piVar5 + 2) = 0;
        uVar1 = ov49_02259FE8(param_2);
        func_0x0222a5e8(uVar1,10);
        ov49_0225A044(param_2);
        ov49_0225CC44(uVar3);
        ov49_02259130(piVar5[3],0);
        ov49_0225916C(piVar5[3],1);
        PlaySE(0x5c1);
        ov49_0225A510(param_2);
        *(undefined1 *)((int)piVar5 + 10) = 3;
        ov49_0225EF8C(param_1,0xc);
      }
    }
    else {
      func_0x0222adc8(uVar4,param_3);
      ov49_0225A0CC(param_2);
      *(undefined1 *)((int)piVar5 + 10) = 6;
      *(undefined2 *)(piVar5 + 1) = 0xf;
      ov49_0225EF8C(param_1,0xc);
    }
    break;
  case 3:
    iVar8 = ov49_02261234(piVar5,uVar2,uVar3);
    if (iVar8 == 1) {
      ov49_0225916C(piVar5[3],0);
      ov49_02259160(piVar5[3],2);
      ov49_022591B4(piVar5[3],8);
      ov49_0225EF8C(param_1,4);
      *(undefined2 *)(piVar5 + 2) = 0;
    }
    break;
  case 4:
    ov49_02261434(piVar5,uVar2,param_2);
    ov49_022611D4(piVar5,uVar3);
    iVar8 = ov49_022613AC(piVar5,uVar2);
    if (iVar8 == 1) {
      ov49_0225EF8C(param_1,5);
      ov49_0225A53C(param_2,0);
    }
    break;
  case 5:
    ov49_02261434(piVar5,uVar2,param_2);
    ov49_022611D4(piVar5,uVar3);
    ov49_02259154(piVar5[3],aiStack_20);
    ov49_02261460(piVar5,uVar2,param_2);
    if (aiStack_20[0] < 0x60000) {
      *(undefined1 *)((int)piVar5 + 0xb) = 0;
      ov49_0225EF8C(param_1,0xd);
    }
    break;
  case 6:
    ov49_02258EAC(uVar1,piVar5[3],2,1);
    ov49_0225EF8C(param_1,7);
    break;
  case 7:
    iVar8 = ov49_02258E60(piVar5[3],5);
    if (iVar8 == 0) {
      ov49_0225EF8C(param_1,(short)piVar5[1]);
    }
    break;
  case 8:
    uVar1 = ov49_0225A30C(param_2,0,0x1e);
    ov49_0225A08C(param_2,uVar1);
    *(undefined2 *)(piVar5 + 1) = 0xf;
    ov49_0225EF8C(param_1,0xb);
    break;
  case 9:
    uVar1 = ov49_0225A30C(param_2,0,0x20);
    ov49_0225A08C(param_2,uVar1);
    *(undefined2 *)(piVar5 + 1) = 0xf;
    ov49_0225EF8C(param_1,0xb);
    break;
  case 10:
    uVar1 = ov49_0225A30C(param_2,0,0x21);
    ov49_0225A08C(param_2,uVar1);
    *(undefined2 *)(piVar5 + 1) = 0xf;
    ov49_0225EF8C(param_1,0xb);
    break;
  case 0xb:
    iVar8 = ov49_0225A0AC(param_2);
    if (iVar8 == 1) {
      ov49_0225EF8C(param_1,(short)piVar5[1]);
    }
    break;
  case 0xc:
    ov49_0225A0EC(param_2);
    ov49_0225EF8C(param_1,*(undefined1 *)((int)piVar5 + 10));
    break;
  case 0xd:
    ov49_02261434(piVar5,uVar2,param_2);
    ov49_02261460(piVar5,uVar2,param_2);
    *(char *)((int)piVar5 + 0xb) = *(char *)((int)piVar5 + 0xb) + '\x01';
    if (0x78 < *(byte *)((int)piVar5 + 0xb)) {
      ov49_0225A034(param_2,1);
      ov49_0225A038(param_2,0);
      ov49_0225A0EC(param_2);
      uVar1 = ov49_02259FE8(param_2);
      func_0x0222a5e8(uVar1,0xb);
      ov49_0225EF8C(param_1,0xe);
    }
    break;
  case 0xe:
    ov49_02261434(piVar5,uVar2,param_2);
    ov49_02261460(piVar5,uVar2,param_2);
    break;
  case 0xf:
    uVar2 = ov49_0225A010(param_2);
    ov49_0225A0EC(param_2);
    ov49_02258EEC(uVar1,piVar5[3],1);
    ov49_0225EF68(param_1);
    ov49_0225EF98(uVar2,param_3,&ov49_02269B38,0);
  }
  return 0;
}

