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
undefined4 ov49_02259FE8();
undefined4 GF_AssertFail();
undefined4 ov49_0225EF90();
undefined4 func_0x0222eb74() __asm__("sub_0222EB74");
undefined4 ov49_02259FF0();
undefined4 ov49_0225EF88();
undefined4 ov49_0225EF40();
undefined4 func_0x0222a330() __asm__("sub_0222A330");
undefined4 ov49_02258D70();
undefined4 ov49_02260C58();
undefined4 ov49_0225A040();
undefined4 ov49_0225EF8C();
undefined4 func_0x0222eb38() __asm__("sub_0222EB38");
undefined4 func_0x0222ebf0() __asm__("sub_0222EBF0");
undefined4 ov49_0225EF84();
undefined4 func_0x0222a208() __asm__("sub_0222A208");
undefined4 ov49_02258F38();
undefined4 ov49_0225EF68();
undefined4 func_0x0222ab68() __asm__("sub_0222AB68");
undefined4 func_0x0222ac14() __asm__("sub_0222AC14");
undefined4 ov49_0225A37C();
undefined4 ov49_0225A034();
undefined4 ov49_02258EEC();
undefined4 ov49_0225A038();
undefined4 func_0x0222a5e8() __asm__("sub_0222A5E8");
undefined4 func_0x022282a4() __asm__("sub_022282A4");
undefined4 func_0x0222ab78() __asm__("sub_0222AB78");
undefined4 ov49_02258EAC();
undefined4 ov49_02260CC0();
undefined4 ov49_02259FEC();
undefined4 ov49_02258E60();
undefined4 ov49_0225A30C();
undefined4 ov49_02258E34();
undefined4 ov49_02260D28();
undefined4 func_0x0222b118() __asm__("sub_0222B118");
undefined4 ov49_0225A0AC();
undefined4 ov49_0225EF98();
undefined4 ov49_0225A0EC();
undefined4 ov49_0225A08C();
undefined4 ov49_0225A010();
extern undefined ov49_02269B38;

undefined4 ov49_02260428(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 uVar1;
  undefined2 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int *piVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  int iVar9;
  undefined2 *puVar10;
  int iVar11;
  uint uVar12;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined1 auStack_18 [4];
  
  uVar3 = ov49_02259FF0(param_2);
  uVar4 = ov49_02258D70(uVar3,param_3);
  uVar5 = ov49_0225A040(param_2);
  piVar6 = (int *)ov49_0225EF84(param_1);
  uVar7 = ov49_02259FE8(param_2);
  uVar8 = ov49_0225EF88(param_1);
  switch(uVar8) {
  case 0:
    iVar11 = ov49_0225EF40(param_1,0xc);
    uVar1 = ov49_02260C58(uVar5);
    switch(uVar1) {
    case 0:
      *(undefined4 *)(iVar11 + 8) = 3;
      break;
    case 1:
      *(undefined4 *)(iVar11 + 8) = 4;
      break;
    case 2:
      *(undefined4 *)(iVar11 + 8) = 5;
      break;
    case 3:
      *(undefined4 *)(iVar11 + 8) = 6;
      break;
    default:
      GF_AssertFail();
      *(undefined4 *)(iVar11 + 8) = 5;
    }
    iVar9 = func_0x0222a330(uVar7);
    if (iVar9 == 1) {
      *(undefined2 *)(iVar11 + 4) = 0x16;
      *(undefined2 *)(iVar11 + 6) = 0;
      ov49_0225EF8C(param_1,5);
    }
    else {
      iVar9 = func_0x0222a208(uVar7);
      if (iVar9 == 1) {
        *(undefined2 *)(iVar11 + 4) = 0x48;
        *(undefined2 *)(iVar11 + 6) = 1;
        ov49_0225EF8C(param_1,5);
      }
      else {
        uVar1 = ov49_02260C58(uVar5);
        iVar9 = func_0x0222ebf0(uVar1);
        if (iVar9 == 0) {
          *(undefined2 *)(iVar11 + 4) = 0x14;
          *(undefined2 *)(iVar11 + 6) = 0;
          ov49_0225EF8C(param_1,3);
        }
        else {
          iVar11 = func_0x0222eb38(uVar1);
          if (iVar11 == 0) {
            GF_AssertFail();
          }
          ov49_0225EF90(param_1);
        }
      }
    }
    break;
  case 1:
    iVar11 = func_0x0222eb74();
    if (iVar11 == 1) {
      ov49_0225EF8C(param_1,2);
      auStack_18[0] = 0;
      auStack_18[1] = 0;
      auStack_18[2] = 0;
      auStack_18[3] = 0;
      uVar3 = ov49_02259FE8(param_2);
      uVar1 = func_0x0222ab68();
      if (piVar6[2] - 5U < 2) {
        uVar12 = 0;
        iVar11 = 0;
        do {
          iVar9 = func_0x0222ab78(uVar3,iVar11);
          if (iVar9 != -1) {
            if (uVar12 < 4) {
              auStack_18[uVar12] = (char)iVar9;
            }
            uVar12 = uVar12 + 1 & 0xff;
          }
          iVar11 = iVar11 + 1;
        } while (iVar11 < 4);
      }
      else {
        auStack_18[0] = (undefined1)param_3;
      }
      func_0x0222ac14(uVar3,piVar6[2],uVar1,auStack_18[0],auStack_18[1],auStack_18[2],auStack_18[3],
                      0);
    }
    else if (iVar11 == 2) {
      *(undefined2 *)(piVar6 + 1) = 0x14;
      *(undefined2 *)((int)piVar6 + 6) = 0;
      ov49_0225EF8C(param_1,3);
    }
    break;
  case 2:
    uVar1 = ov49_02260CC0(uVar5);
    uVar3 = ov49_02260D28(uVar5);
    ov49_0225A034(param_2,1);
    ov49_0225A038(param_2,uVar1);
    uVar5 = ov49_02259FE8(param_2);
    func_0x0222a5e8(uVar5,uVar3);
    switch(piVar6[2]) {
    default:
      GF_AssertFail();
      break;
    case 3:
    case 4:
      uStack_40 = 5;
      break;
    case 5:
      uStack_40 = 3;
      break;
    case 6:
      uStack_40 = 4;
    }
    func_0x0222b118(uVar7,uStack_40);
    ov49_02258E60(uVar4,6);
    uVar2 = func_0x022282a4();
    puVar10 = (undefined2 *)ov49_02259FEC(param_2);
    uVar3 = ov49_02258E34(uVar4);
    puVar10[3] = 1;
    *puVar10 = (short)((int)((int)(short)uVar3 + ((uint)((int)(short)uVar3 >> 3) >> 0x1c)) >> 4);
    iVar11 = (int)(short)((uint)uVar3 >> 0x10);
    puVar10[1] = (short)((int)(iVar11 + ((uint)(iVar11 >> 3) >> 0x1c)) >> 4);
    puVar10[2] = uVar2;
    puVar10[4] = (short)piVar6[2];
    ov49_0225EF68(param_1);
    return 1;
  case 3:
    uVar1 = ov49_02258E60(uVar4,6);
    switch(uVar1) {
    case 0:
      uStack_44 = 6;
      break;
    case 1:
      uStack_44 = 5;
      break;
    case 2:
      uStack_44 = 8;
      break;
    case 3:
      uStack_44 = 7;
      break;
    default:
      GF_AssertFail();
    }
    ov49_02258EEC(uVar3,uVar4,uStack_44);
    ov49_0225EF90(param_1);
    break;
  case 4:
    iVar11 = ov49_02258F38(uVar4);
    if (iVar11 == 1) {
      *piVar6 = 8;
      ov49_0225EF8C(param_1,7);
    }
    break;
  case 5:
    uVar1 = ov49_02258E60(uVar4,6);
    uVar1 = func_0x022282a4(uVar1);
    ov49_02258EAC(uVar3,uVar4,2,uVar1);
    ov49_0225EF90(param_1);
    break;
  case 6:
    iVar11 = ov49_02258E60(uVar4,5);
    if (iVar11 == 0) {
      *piVar6 = 8;
      ov49_0225EF8C(param_1,7);
    }
    break;
  case 7:
    iVar11 = *piVar6;
    *piVar6 = iVar11 + -1;
    if (iVar11 + -1 < 1) {
      ov49_0225A37C(param_2,piVar6[2],0);
      uVar3 = ov49_0225A30C(param_2,*(undefined2 *)((int)piVar6 + 6),(short)piVar6[1]);
      ov49_0225A08C(param_2,uVar3);
      ov49_0225EF90(param_1);
    }
    break;
  case 8:
    iVar11 = ov49_0225A0AC(param_2);
    if (iVar11 != 0) {
      ov49_0225EF68(param_1);
      ov49_02258EEC(uVar3,uVar4,1);
      ov49_0225A0EC(param_2);
      uVar3 = ov49_0225A010(param_2);
      ov49_0225EF98(uVar3,param_3,&ov49_02269B38,0);
    }
  }
  return 0;
}

