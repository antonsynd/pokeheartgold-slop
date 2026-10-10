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
undefined4 ov49_0225EF90();
undefined4 ov49_02258EEC();
undefined4 ov49_02259FF0();
undefined4 ov49_0225EF88();
undefined4 ov49_0225A294();
undefined4 ov49_0225A008();
undefined4 ov49_02258DAC();
undefined4 func_0x0222a5e8() __asm__("sub_0222A5E8");
undefined4 ov49_0225A2C4();
undefined4 ov49_0225A018();
undefined4 ov49_0225A0AC();
undefined4 ov49_0225EF8C();
undefined4 ov49_0225A08C();
undefined4 ov49_0225A30C();
undefined4 ov49_0225A2F8();
undefined4 ov49_0225A0EC();
undefined4 PlaySE();
undefined4 ov49_02258EAC();
undefined4 ov49_02258F38();
undefined4 ov49_0225CC44();
undefined4 ov49_02258E60();
undefined4 ov49_0225EF98();
undefined4 ov49_0225A034();
undefined4 ov49_0225A038();
undefined4 ov49_0225A010();
extern undefined ov49_02269B38;

undefined4
ov49_02260254(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;

  uVar2 = ov49_0225EF88();
  switch(uVar2) {
  case 0:
    uVar2 = ov49_02259FF0(param_2);
    uVar3 = ov49_02258DAC();
    ov49_02258EEC(uVar2,uVar3,0);
    uVar2 = ov49_02259FE8(param_2);
    func_0x0222a5e8(uVar2,0xb);
    PlaySE(0x5dd);
    uVar2 = ov49_0225A30C(param_2,1,0x41);
    ov49_0225A08C(param_2,uVar2);
    ov49_0225EF90(param_1);
    break;
  case 1:
    iVar5 = ov49_0225A0AC(param_2);
    if (iVar5 == 1) {
      ov49_0225EF90(param_1);
    }
    break;
  case 2:
    uVar2 = ov49_0225A30C(param_2,2,0x19);
    ov49_0225A08C(param_2,uVar2);
    ov49_0225EF90(param_1);
    break;
  case 3:
    iVar5 = ov49_0225A0AC(param_2);
    if (iVar5 == 1) {
      ov49_0225EF90(param_1);
    }
    break;
  case 4:
    ov49_0225A294(param_2);
    ov49_0225EF90(param_1);
    break;
  case 5:
    bVar1 = false;
    iVar5 = ov49_0225A2C4(param_2);
    if (iVar5 == 0) {
      ov49_0225EF8C(param_1,6);
      bVar1 = true;
    }
    else if (iVar5 == 1) {
      ov49_0225EF8C(param_1,8);
      bVar1 = true;
    }
    if (bVar1) {
      ov49_0225A2F8(param_2);
      ov49_0225A0EC(param_2);
    }
    break;
  case 6:
    ov49_0225A018(param_2,0);
    uVar2 = ov49_02259FF0(param_2);
    uVar3 = ov49_02258DAC();
    ov49_0225A008(param_2);
    ov49_0225CC44();
    ov49_02258EEC(uVar2,uVar3,3);
    ov49_0225EF8C(param_1,7);
    break;
  case 7:
    ov49_02259FF0(param_2);
    ov49_02258DAC();
    iVar5 = ov49_02258F38();
    if (iVar5 == 1) {
      ov49_0225A034(param_2,1);
      ov49_0225A038(param_2,0);
      uVar2 = ov49_02259FE8(param_2);
      func_0x0222a5e8(uVar2,0xb);
      return 1;
    }
    break;
  case 8:
    uVar2 = ov49_02259FF0(param_2);
    uVar3 = ov49_02258DAC();
    ov49_02258EAC(uVar2,uVar3,2,0,param_4);
    ov49_0225EF90(param_1);
    break;
  case 9:
    uVar2 = ov49_02259FE8(param_2);
    func_0x0222a5e8(uVar2,1);
    uVar2 = ov49_02259FF0(param_2);
    uVar3 = ov49_0225A010(param_2);
    uVar4 = ov49_02258DAC(uVar2);
    iVar5 = ov49_02258E60(uVar4,5);
    if (iVar5 == 0) {
      ov49_02258EEC(uVar2,uVar4,1);
      ov49_0225EF98(uVar3,param_3,&ov49_02269B38,0);
    }
  }
  return 0;
}

