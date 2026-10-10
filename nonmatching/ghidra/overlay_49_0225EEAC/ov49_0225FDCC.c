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
undefined4 ov49_02258DB0();
undefined4 ov49_02259FE8();
undefined4 func_0x0222a3a0() __asm__("sub_0222A3A0");
undefined4 ov49_02258F3C();
undefined4 ov49_0225EF90();
undefined4 ov49_02259FF8();
undefined4 ov49_0225EF88();
undefined4 ov49_02259FF0();
undefined4 ov49_02258EEC();
undefined4 ov49_02258DAC();
undefined4 ov49_0225A53C();
undefined4 ov49_0225A010();
undefined4 ov49_0225EF40();
undefined4 func_0x0222a330() __asm__("sub_0222A330");
undefined4 ov49_0225A000();
undefined4 ov49_0225EF84();
undefined4 func_0x0222a2f8() __asm__("sub_0222A2F8");
undefined4 ov49_0225EFC4();
undefined4 ov49_022589C4();
undefined4 ov49_0225A55C();
undefined4 ov49_02258A30();
undefined4 ov49_0225A4E0();
undefined4 ov49_02258E60();
undefined4 ov49_0225A4D0();
undefined4 ov49_02258E34();
undefined4 func_0x02228270() __asm__("sub_02228270");
undefined4 func_0x0222b00c() __asm__("sub_0222B00C");
undefined4 ov49_0225A03C();
undefined4 ov49_0225F260();
undefined4 ov49_0225A084();
undefined4 ov49_02258F40();
extern uint uRam021d1154 __asm__("sub_021D1154");
extern undefined ov49_02269D20;
extern undefined ov49_02269B70;
extern undefined ov49_02269B80;
undefined4 ov49_0225A428();
undefined4 ov49_02258A50();
undefined4 ov49_0225A500();
undefined4 ov49_02258A70();
undefined4 ov49_02258D70();
undefined4 ov49_02258A90();
undefined4 ov49_0225A4F0();
undefined4 ov49_0225A064();
undefined4 PlaySE();
undefined4 ov49_0225F224();
undefined4 ov49_0225E58C();
undefined4 func_0x0222a53c() __asm__("sub_0222A53C");
extern undefined ov49_02269C90;
extern undefined ov49_02269C60;
extern undefined ov49_02269B60;

undefined4 ov49_0225FDCC(undefined4 param_1,undefined4 param_2,uint param_3)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  int iVar16;
  uint uVar17;
  int iVar18;

  puVar1 = (undefined4 *)ov49_0225EF84();
  iVar2 = ov49_0225EF88(param_1);
  if (iVar2 == 0) {
    ov49_0225EF40(param_1,4);
    ov49_0225EF90(param_1);
  }
  else if (iVar2 == 1) {
    ov49_0225A53C(param_2,0);
    uVar3 = ov49_0225A010(param_2);
    uVar4 = ov49_02259FE8(param_2);
    uVar5 = ov49_02259FF0(param_2);
    uVar6 = ov49_0225A000(param_2);
    uVar7 = ov49_02259FF8(param_2);
    iVar2 = ov49_02258DB0(uVar5);
    if (iVar2 != 0) {
      iVar8 = func_0x0222a330(uVar4);
      if (((iVar8 == 0) && (iVar8 = func_0x0222a3a0(uVar4), iVar8 == 1)) &&
         (iVar8 = func_0x0222a2f8(uVar4), iVar8 == 0)) {
        iVar8 = ov49_02258F3C(iVar2);
        if (iVar8 != 9) {
          ov49_02258EEC(uVar5,iVar2,9);
        }
      }
      else {
        iVar8 = ov49_02258F3C(iVar2);
        if (iVar8 != 0) {
          ov49_02258EEC(uVar5,iVar2,0);
        }
      }
    }
    uVar9 = ov49_02258DAC(uVar5);
    iVar2 = ov49_02258E60(uVar9,5);
    iVar8 = ov49_02258E60(uVar9,6);
    uVar10 = ov49_02258E34(uVar9);
    uVar11 = func_0x02228270(uVar10,iVar8);
    iVar18 = (int)(short)((uint)uVar10 >> 0x10);
    uVar12 = ov49_022589C4(uVar6,((int)(short)uVar10 + ((uint)((int)(short)uVar10 >> 3) >> 0x1c) &
                                 0xfffff) >> 4,
                           (iVar18 + ((uint)(iVar18 >> 3) >> 0x1c) & 0xfffff) >> 4);
    iVar18 = (int)(short)((uint)uVar11 >> 0x10);
    uVar17 = (int)(iVar18 + ((uint)(iVar18 >> 3) >> 0x1c)) >> 4;
    uVar13 = (int)((int)(short)uVar11 + ((uint)((int)(short)uVar11 >> 3) >> 0x1c)) >> 4;
    uVar14 = ov49_022589C4(uVar6,uVar13 & 0xffff,uVar17 & 0xffff);
    uVar15 = ov49_0225A4E0(param_2);
    if ((uVar15 != param_3) && (iVar18 = ov49_0225A084(param_2,uVar15 & 0xff), iVar18 != 0)) {
      ov49_0225A4D0(param_2);
    }
    if (iVar2 == 0) {
      ov49_0225A53C(param_2,0);
      iVar2 = ov49_02258A30(uVar12);
      if (iVar2 == 1) {
        ov49_0225F260(param_1,param_2,param_3,&ov49_02269D20);
        ov49_02258EEC(uVar5,uVar9,0);
        ov49_0225A03C(param_2,uVar12 & 0xff);
        ov49_0225A53C(param_2,1);
        return 0;
      }
      iVar2 = ov49_0225A55C(param_2);
      if (iVar2 == 1) {
        ov49_02258EEC(uVar5,uVar9,0);
        ov49_0225EFC4(uVar3,param_3,&ov49_02269B80,0);
        ov49_0225A53C(param_2,1);
        return 0;
      }
      iVar2 = func_0x0222b00c(uVar4);
      if (iVar2 != 0) {
        ov49_0225EFC4(uVar3,param_3,&ov49_02269B70,0);
        ov49_02258EEC(uVar5,uVar9,0);
        ov49_0225A53C(param_2,1);
        return 0;
      }
      if ((uRam021d1154 & 1) != 0) {
        iVar2 = ov49_02258F40(uVar5,uVar9);
        if (iVar2 != 0) {
          iVar18 = ov49_02258E60(iVar2,5);
          uVar12 = ov49_02258E60(iVar2,4);
          if (((uVar12 != 0xfe) && (iVar16 = ov49_0225A064(param_2,uVar12 & 0xff), iVar18 == 0)) &&
             (iVar16 == 0)) {
            ov49_0225EFC4(uVar3,param_3,&ov49_02269B60,0);
            ov49_02258EEC(uVar5,uVar9,0);
            ov49_02258EEC(uVar5,iVar2,0);
            ov49_0225A53C(param_2,1);
            return 0;
          }
        }
        iVar2 = ov49_02258A90(uVar14);
        if ((iVar2 == 1) && (iVar2 = ov49_02258E60(uVar9,6), iVar2 == 0)) {
          ov49_0225E58C(uVar7,uVar13 & 0xff,uVar17 & 0xff);
          ov49_0225A03C(param_2,uVar14 & 0xff);
          ov49_0225A53C(param_2,1);
          return 0;
        }
        iVar2 = ov49_02258A70(uVar14);
        if (iVar2 == 1) {
          ov49_0225F260(param_1,param_2,param_3,&ov49_02269C90);
          ov49_02258EEC(uVar5,uVar9,0);
          ov49_0225A03C(param_2,uVar14 & 0xff);
          ov49_0225A53C(param_2,1);
          return 0;
        }
      }
      iVar2 = ov49_0225F224(iVar8);
      if (iVar2 == 1) {
        if ((iVar8 == 0) && (iVar2 = ov49_02258A50(uVar14), iVar2 == 1)) {
          ov49_0225F260(param_1,param_2,param_3,&ov49_02269C60);
          ov49_02258EEC(uVar5,uVar9,0);
          ov49_0225A03C(param_2,uVar14 & 0xff);
          ov49_0225A53C(param_2,1);
          return 0;
        }
        iVar2 = ov49_02258F40(uVar5,uVar9);
        if ((((iVar2 != 0) && (uVar12 = ov49_02258E60(iVar2,4), uVar12 != 0xfe)) &&
            (iVar8 = ov49_0225A4F0(param_2), iVar8 == 0)) &&
           (iVar8 = ov49_0225A084(param_2,uVar12 & 0xff), iVar8 == 0)) {
          ov49_0225A428(param_2,uVar12,1);
          uVar3 = ov49_02258F3C(iVar2);
          *puVar1 = uVar3;
          ov49_02258EEC(uVar5,iVar2,0);
          return 0;
        }
      }
      if ((uRam021d1154 & 0x400) != 0) {
        iVar2 = ov49_0225A4F0(param_2);
        if (iVar2 == 0) {
          uVar3 = func_0x0222a53c(uVar4);
          ov49_0225A428(param_2,uVar3,0);
          PlaySE(0x5dc);
        }
        else {
          uVar12 = ov49_0225A4E0(param_2);
          if (uVar12 == param_3) {
            ov49_0225A4D0(param_2);
            PlaySE(0x5dc);
          }
        }
        return 0;
      }
    }
    else {
      iVar8 = ov49_0225A500(param_2);
      if ((iVar8 == 1) && (iVar2 - 1U < 3)) {
        uVar12 = ov49_0225A4E0(param_2);
        if ((uVar12 != param_3) &&
           ((iVar2 = ov49_02258D70(uVar5), iVar2 != 0 && (iVar8 = ov49_02258F3C(), iVar8 == 0)))) {
          ov49_02258EEC(uVar5,iVar2,*puVar1);
        }
        ov49_0225A4D0(param_2);
      }
    }
  }
  return 0;
}

