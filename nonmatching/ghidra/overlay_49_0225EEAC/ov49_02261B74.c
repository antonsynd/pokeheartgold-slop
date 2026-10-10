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
undefined4 ov49_0225913C();
undefined4 ov49_02258F38();
undefined4 ov49_02259FE8();
undefined4 ov49_0225EF90();
undefined4 ov49_02258EEC();
undefined4 ov49_02259FF0();
undefined4 ov49_0225EF88();
undefined4 func_0x0222a5c0() __asm__("sub_0222A5C0");
undefined4 func_0x0222b0b0() __asm__("sub_0222B0B0");
undefined4 ov49_02258DAC();
undefined4 ov49_0225EF3C();
undefined4 ov49_022591CC();
undefined4 ov49_0225A06C();
undefined4 ov49_02258D70();
undefined4 ov49_0225EF8C();
undefined4 ov49_0225A04C();
undefined4 ov49_02258E34();
undefined4 ov49_022591C0();
undefined4 func_0x022282a4() __asm__("sub_022282A4");
undefined4 ov49_02258EAC();
undefined4 ov49_02258E60();
undefined4 ov49_02258DB4();
undefined4 ov49_02258FDC();
undefined4 func_0x0222aff8() __asm__("sub_0222AFF8");
undefined4 func_0x0222b0a4() __asm__("sub_0222B0A4");
undefined4 func_0x0222a578() __asm__("sub_0222A578");
undefined4 func_0x0222a2a0() __asm__("sub_0222A2A0");
undefined4 func_0x0222a920() __asm__("sub_0222A920");

undefined4 ov49_02261B74(undefined4 param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  bool bVar1;
  byte *pbVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  int iVar9;
  uint uVar10;
  undefined4 uStack_3c;
  short sStack_20;
  short sStack_1e;
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  pbVar2 = (byte *)ov49_0225EF3C();
  uVar3 = ov49_02259FE8(param_2);
  uVar4 = ov49_02259FF0(param_2);
  uVar5 = ov49_02258D70(uVar4,param_3);
  uVar6 = ov49_02258DAC(uVar4);
  uVar7 = ov49_0225EF88(param_1);
  switch(uVar7) {
  case 0:
    if (pbVar2[4] == 0) {
      ov49_0225EF90(param_1);
    }
    else {
      ov49_0225EF8C(param_1,3);
    }
    break;
  case 1:
    ov49_02258EEC(uVar4,uVar5,3);
    ov49_0225EF90(param_1);
    break;
  case 2:
  case 7:
  case 9:
    iVar8 = ov49_02258F38(uVar5);
    if (iVar8 == 1) {
      ov49_0225EF90(param_1);
    }
    break;
  case 3:
    uVar3 = ov49_02258E34(uVar5);
    uStack_1c = (undefined2)uVar3;
    uStack_1a = (undefined2)((uint)uVar3 >> 0x10);
    ov49_0225913C(uVar5,&uStack_1c);
    iVar8 = ov49_022591CC(uVar5);
    if (iVar8 == 0) {
      ov49_022591C0(uVar5,1);
    }
    ov49_02258EEC(uVar4,uVar5,4);
    ov49_0225EF90(param_1);
    break;
  case 4:
    iVar8 = ov49_02258F38(uVar5);
    if (iVar8 == 1) {
      ov49_0225EF90(param_1);
      ov49_02258EEC(uVar4,uVar5,0);
      ov49_0225A04C(param_2,param_3 & 0xff,0);
      ov49_0225A06C(param_2,param_3 & 0xff,0);
    }
    break;
  case 5:
    bVar1 = false;
    if ((pbVar2[3] == 1) && (iVar8 = func_0x0222b0b0(uVar3), iVar8 == 0)) {
      func_0x0222a5c0(uVar3);
      iVar8 = func_0x0222a920();
      if (iVar8 == 9) {
        func_0x0222b0a4(uVar3);
        ov49_02258E60(uVar5,6);
        uVar5 = func_0x022282a4();
        ov49_02258EAC(uVar4,uVar6,0,uVar5);
      }
    }
    iVar8 = func_0x0222a578(uVar3,param_3);
    if (iVar8 == 0) {
      bVar1 = true;
    }
    else if ((pbVar2[3] == 1) && (iVar9 = func_0x0222aff8(uVar3), iVar9 == 0)) {
      bVar1 = true;
    }
    else {
      iVar9 = func_0x0222a2a0(uVar3,param_3);
      if ((iVar9 != 0) && (uVar10 = func_0x0222a920(iVar8), uVar10 != pbVar2[2])) {
        bVar1 = true;
      }
    }
    if (bVar1) {
      ov49_0225EF90(param_1);
      ov49_0225A04C(param_2,param_3 & 0xff,1);
      ov49_0225A06C(param_2,param_3 & 0xff,1);
    }
    break;
  case 6:
    ov49_02258EEC(uVar4,uVar5,3);
    ov49_0225EF90(param_1);
    break;
  case 8:
    uVar3 = ov49_02258DAC(uVar4);
    iVar8 = ov49_02258FDC(uVar3,*pbVar2,pbVar2[1]);
    if (iVar8 == 0) {
      sStack_20 = (ushort)*pbVar2 << 4;
      sStack_1e = (ushort)pbVar2[1] << 4;
      uStack_3c = CONCAT22(sStack_1e,(ushort)*pbVar2 << 4);
      ov49_02258DB4(uVar5,uStack_3c);
      ov49_0225913C(uVar5,&sStack_20);
      ov49_02258EEC(uVar4,uVar5,4);
      ov49_0225EF90(param_1);
    }
    break;
  case 10:
    ov49_02258EEC(uVar4,uVar5,2);
    ov49_0225A04C(param_2,param_3 & 0xff,0);
    ov49_0225A06C(param_2,param_3 & 0xff,0);
    return 1;
  }
  return 0;
}

