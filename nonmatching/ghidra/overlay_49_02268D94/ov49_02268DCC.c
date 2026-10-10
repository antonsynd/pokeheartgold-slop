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
undefined4 ov49_02259130();
undefined4 ov49_02258DB0();
undefined4 ov49_02259FE8();
undefined4 func_0x0222a3a0() __asm__("sub_0222A3A0");
undefined4 ov49_02259160();
undefined4 ov49_02258EEC();
undefined4 ov49_0225EF88();
undefined4 ov49_02259FF0();
undefined4 ov49_02258DAC();
undefined4 func_0x0222a2e0() __asm__("sub_0222A2E0");
undefined4 ov49_0225EF40();
undefined4 func_0x022282a4() __asm__("sub_022282A4");
undefined4 ov49_02258E60();
undefined4 func_0x0222a330() __asm__("sub_0222A330");
undefined4 ov49_0225EF8C();
undefined4 ov49_0225A08C();
undefined4 ov49_0225A30C();
undefined4 ov49_0225EF84();
undefined4 PlaySE();
undefined4 ov49_02258EAC();
undefined4 ov49_0225EF68();
undefined4 GF_AssertFail();
undefined4 ov49_0225A0AC();
undefined4 ov49_0225A264();
undefined4 ov49_0225A2F8();
undefined4 ov49_0225A0EC();
undefined4 ov49_0225A2C4();

undefined4 ov49_02268DCC(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  
  puVar1 = (undefined4 *)ov49_0225EF84();
  uVar2 = ov49_02259FE8(param_2);
  uVar3 = ov49_02259FF0(param_2);
  uVar4 = ov49_02258DB0();
  uVar5 = ov49_02258DAC(uVar3);
  uVar6 = ov49_0225EF88(param_1);
  switch(uVar6) {
  case 0:
    puVar1 = (undefined4 *)ov49_0225EF40(param_1,4);
    PlaySE(0x5dc);
    ov49_02258E60(uVar5,6);
    uVar5 = func_0x022282a4();
    ov49_02258EEC(uVar3,uVar4,0);
    ov49_02259130(uVar4,0);
    ov49_02259160(uVar4,uVar5);
    iVar7 = func_0x0222a330(uVar2);
    if (iVar7 == 0) {
      iVar7 = func_0x0222a3a0(uVar2);
      if (iVar7 == 1) {
        uVar2 = ov49_0225A30C(param_2,1,0x58);
        *puVar1 = 4;
        ov49_0225A08C(param_2,uVar2);
        ov49_0225EF8C(param_1,5);
      }
      else {
        iVar7 = func_0x0222a2e0(uVar2);
        if (iVar7 == 1) {
          uVar2 = ov49_0225A30C(param_2,1,0x57);
          *puVar1 = 4;
          ov49_0225A08C(param_2,uVar2);
          ov49_0225EF8C(param_1,5);
        }
        else {
          uVar2 = ov49_0225A30C(param_2,1,0x51);
          *puVar1 = 1;
          ov49_0225A08C(param_2,uVar2);
          ov49_0225EF8C(param_1,5);
        }
      }
    }
    else {
      uVar2 = ov49_0225A30C(param_2,1,3);
      *puVar1 = 4;
      ov49_0225A08C(param_2,uVar2);
      ov49_0225EF8C(param_1,5);
    }
    break;
  case 1:
    ov49_0225A264(param_2);
    ov49_0225EF8C(param_1,2);
    break;
  case 2:
    iVar7 = ov49_0225A2C4(param_2);
    if (iVar7 == 0) {
      ov49_0225EF8C(param_1,3);
      ov49_0225A2F8(param_2);
    }
    else if (iVar7 == 1) {
      ov49_0225EF8C(param_1,4);
      ov49_0225A2F8(param_2);
    }
    break;
  case 3:
    uVar2 = ov49_0225A30C(param_2,1,0x55);
    *puVar1 = 4;
    ov49_0225A08C(param_2,uVar2);
    ov49_0225EF8C(param_1,5);
    break;
  case 4:
    ov49_0225A0EC(param_2);
    ov49_0225A2F8(param_2);
    ov49_02258EEC(uVar3,uVar5,1);
    ov49_0225EF68(param_1);
    ov49_02259130(uVar4,1);
    ov49_02258EAC(uVar3,uVar4,0,1);
    return 1;
  case 5:
    iVar7 = ov49_0225A0AC(param_2);
    if (iVar7 == 1) {
      ov49_0225EF8C(param_1,*puVar1);
    }
    break;
  default:
    GF_AssertFail();
  }
  return 0;
}

