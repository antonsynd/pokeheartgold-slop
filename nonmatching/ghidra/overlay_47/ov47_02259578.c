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
undefined4 ov47_02259B30();
undefined4 ov47_02258CEC();
undefined4 ov47_02259C3C();
undefined4 ov47_022592B4();
undefined4 ov47_02259B74();
undefined4 BeginNormalPaletteFade();
undefined4 func_0x0222a53c() __asm__("sub_0222A53C");
undefined4 IsPaletteFadeFinished();
undefined4 ov47_02259430();
undefined4 PlaySE();
undefined4 func_0x0222ab0c() __asm__("sub_0222AB0C");
undefined4 func_0x0222a5c0() __asm__("sub_0222A5C0");
undefined4 ov47_02259D40();
undefined4 ov47_022599F0();
undefined4 func_0x0222ab28() __asm__("sub_0222AB28");
undefined4 ov47_02259318();
undefined4 ov47_02259404();
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 ov47_022593CC();
undefined4 sub_020318F4();
undefined4 sub_020318F8();
undefined4 sub_020318E8();
undefined4 ov47_022593B4();
undefined4 GF_AssertFail();

undefined4
ov47_02259578(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
             undefined4 *param_5,undefined4 param_6)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined1 auStack_20 [8];
  undefined4 uStack_18;

  uStack_18 = param_4;
  switch(*(undefined2 *)(param_1 + 0x60)) {
  case 0:
    if (*(int *)(param_1 + 0x90) == 0) {
      uVar1 = 0x67;
    }
    else {
      uVar1 = 0x69;
    }
    uVar1 = ov47_02258CEC(param_2,0,uVar1);
    ov47_022592B4(param_4,uVar1);
    *(undefined2 *)(param_1 + 0x62) = 1;
    *(undefined2 *)(param_1 + 0x60) = 0x16;
    break;
  case 1:
    uVar1 = ov47_02259D40(param_1 + 0x88);
    ov47_022592B4(param_4,uVar1);
    *(undefined2 *)(param_1 + 0x62) = 2;
    *(undefined2 *)(param_1 + 0x60) = 0x16;
    break;
  case 2:
    if ((uRam021d1154 & 1) != 0) {
      uVar1 = ov47_02258CEC(param_2,0,0x68);
      ov47_022592B4(param_4,uVar1);
      *(undefined2 *)(param_1 + 0x62) = 3;
      *(undefined2 *)(param_1 + 0x60) = 0x16;
    }
    break;
  case 3:
    if (*(int *)(param_1 + 0x90) == 0) {
      uVar1 = 0x6b;
    }
    else {
      uVar1 = 0x6c;
    }
    uVar1 = ov47_02258CEC(param_2,0,uVar1);
    ov47_022592B4(param_4,uVar1);
    *(undefined2 *)(param_1 + 0x62) = 4;
    *(undefined2 *)(param_1 + 0x60) = 0x16;
    break;
  case 4:
    uVar1 = func_0x0222a5c0(param_5[1]);
    func_0x0222ab0c(uVar1,auStack_20);
    uVar1 = func_0x0222a53c(param_5[1]);
    uVar1 = func_0x0222ab28(param_5[1],uVar1);
    ov47_022599F0(param_1,param_1 + 0x88,param_2,param_3,auStack_20,param_6,0x90a00,0xd0e00,uVar1);
    ov47_02259B30(param_1,param_1 + 200,param_3,1);
    PlaySE(0x5d7);
    *(undefined2 *)(param_1 + 0x60) = 5;
    break;
  case 5:
    iVar2 = ov47_02259B74(param_1,param_3);
    if (iVar2 == 1) {
      *(undefined2 *)(param_1 + 0x60) = 6;
    }
    break;
  case 6:
    if ((uRam021d1154 & 1) != 0) {
      if (*(int *)(param_1 + 0xa8) == -1) {
        uVar1 = ov47_02258CEC(param_2,0,0x70);
        ov47_022592B4(param_4,uVar1);
        *(undefined2 *)(param_1 + 0x62) = 0x14;
        *(undefined2 *)(param_1 + 0x60) = 0x16;
      }
      else {
        *(undefined2 *)(param_1 + 0x60) = 7;
      }
    }
    break;
  case 7:
    uVar1 = ov47_02258CEC(param_2,0,0x6f);
    ov47_02259318(param_4,uVar1);
    ov47_02259404(param_4,param_3,param_6);
    *(undefined2 *)(param_1 + 0x60) = 8;
    break;
  case 8:
    iVar2 = ov47_02259430(param_4,param_6);
    if (iVar2 == 0) {
      *(undefined2 *)(param_1 + 0x60) = 9;
    }
    else if (iVar2 == -2) {
      *(undefined2 *)(param_1 + 0x60) = 0x14;
    }
    break;
  case 9:
    BeginNormalPaletteFade(0,0,0,0,6,1,param_6);
    *(undefined2 *)(param_1 + 0x60) = 10;
    break;
  case 10:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      ov47_02259C3C(param_1,param_2,param_3,param_6);
      *(undefined2 *)(param_1 + 0x60) = 0xb;
    }
    break;
  case 0xb:
    BeginNormalPaletteFade(0,1,1,0,6,1,param_6);
    *(undefined2 *)(param_1 + 0x60) = 0xc;
    break;
  case 0xc:
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      *(undefined2 *)(param_1 + 0x60) = 0xd;
    }
    break;
  case 0xd:
    if (*(int *)(param_1 + 0xb0) == 0) {
      uVar1 = 0x71;
    }
    else {
      uVar1 = 0x73;
    }
    uVar1 = ov47_02258CEC(param_2,0,uVar1);
    ov47_022592B4(param_4,uVar1);
    *(undefined2 *)(param_1 + 0x62) = 0xe;
    *(undefined2 *)(param_1 + 0x60) = 0x16;
    break;
  case 0xe:
    uVar1 = ov47_02259D40(param_1 + 0xa8);
    ov47_022592B4(param_4,uVar1);
    *(undefined2 *)(param_1 + 0x62) = 0xf;
    *(undefined2 *)(param_1 + 0x60) = 0x16;
    break;
  case 0xf:
    if ((uRam021d1154 & 1) != 0) {
      uVar1 = ov47_02258CEC(param_2,0,0x72);
      ov47_022592B4(param_4,uVar1);
      *(undefined2 *)(param_1 + 0x62) = 0x10;
      *(undefined2 *)(param_1 + 0x60) = 0x16;
    }
    break;
  case 0x10:
    if (*(int *)(param_1 + 0xb0) == 0) {
      uVar1 = 0x75;
    }
    else {
      uVar1 = 0x76;
    }
    uVar1 = ov47_02258CEC(param_2,0,uVar1);
    ov47_022592B4(param_4,uVar1);
    *(undefined2 *)(param_1 + 0x62) = 0x11;
    *(undefined2 *)(param_1 + 0x60) = 0x16;
    break;
  case 0x11:
    uVar1 = sub_020318E8(*param_5);
    uStack_28 = sub_020318F4();
    uStack_24 = sub_020318F8(uVar1);
    uVar1 = func_0x0222a53c(param_5[1]);
    uVar1 = func_0x0222ab28(param_5[1],uVar1);
    ov47_022599F0(param_1,param_1 + 0xa8,param_2,param_3,&uStack_28,param_6,0xb0c00,0xf0e00,uVar1);
    ov47_02259B30(param_1,param_1 + 0xdc,param_3,2);
    PlaySE(0x5d7);
    *(undefined2 *)(param_1 + 0x60) = 0x12;
    break;
  case 0x12:
    iVar2 = ov47_02259B74(param_1,param_3);
    if (iVar2 == 1) {
      *(undefined2 *)(param_1 + 0x60) = 0x13;
    }
    break;
  case 0x13:
    if ((uRam021d1154 & 1) != 0) {
      *(undefined2 *)(param_1 + 0x60) = 0x14;
    }
    break;
  case 0x14:
    uVar1 = ov47_02258CEC(param_2,0,0x78);
    ov47_022592B4(param_4,uVar1);
    *(undefined2 *)(param_1 + 0x62) = 0x15;
    *(undefined2 *)(param_1 + 0x60) = 0x16;
    break;
  case 0x15:
    ov47_022593CC(param_4);
    return 1;
  case 0x16:
    iVar2 = ov47_022593B4(param_4);
    if (iVar2 == 1) {
      *(undefined2 *)(param_1 + 0x60) = *(undefined2 *)(param_1 + 0x62);
    }
    break;
  default:
    GF_AssertFail();
  }
  return 0;
}

