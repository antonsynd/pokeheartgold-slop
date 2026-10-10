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
undefined4 func_0x0222a330() __asm__("sub_0222A330");
undefined4 func_0x0222b134() __asm__("sub_0222B134");
undefined4 ov49_0225EF8C();
undefined4 ov49_0225A08C();
undefined4 ov49_0225A30C();
undefined4 ov49_0225A37C();
undefined4 ov49_0225EF84();
undefined4 ov49_0225EF88();
undefined4 ov49_0225A0AC();
undefined4 PlaySE();
undefined4 func_0x0222a374() __asm__("sub_0222A374");
undefined4 ov49_02258DAC();
undefined4 ov49_02259FF0();
undefined4 ov49_02258EEC();
undefined4 ov49_0225A0EC();

undefined4 ov49_022649F4(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;

  ov49_0225EF84();
  uVar1 = ov49_02259FE8(param_2);
  iVar2 = ov49_0225EF88(param_1);
  if (iVar2 == 0) {
    PlaySE(0x5dc);
    iVar2 = func_0x0222a330(uVar1);
    if (iVar2 == 0) {
      iVar2 = func_0x0222a374(uVar1);
      if (iVar2 == 1) {
        uVar1 = ov49_0225A30C(param_2,1,0x4e);
        ov49_0225A08C(param_2,uVar1);
        ov49_0225EF8C(param_1,1);
      }
      else {
        uVar1 = func_0x0222b134(uVar1);
        switch(uVar1) {
        case 0:
          ov49_0225A37C(param_2,0,0);
          uVar1 = ov49_0225A30C(param_2,1,0x49);
          break;
        case 1:
          ov49_0225A37C(param_2,1,0);
          uVar1 = ov49_0225A30C(param_2,1,0x49);
          break;
        case 2:
          ov49_0225A37C(param_2,2,0);
          uVar1 = ov49_0225A30C(param_2,1,0x49);
          break;
        case 3:
          ov49_0225A37C(param_2,5,0);
          uVar1 = ov49_0225A30C(param_2,1,0x4d);
          break;
        case 4:
          ov49_0225A37C(param_2,6,0);
          uVar1 = ov49_0225A30C(param_2,1,0x4d);
          break;
        case 5:
          uVar1 = ov49_0225A30C(param_2,1,0x4a);
          break;
        case 6:
          uVar1 = ov49_0225A30C(param_2,1,0x4f);
          break;
        case 7:
          uVar1 = ov49_0225A30C(param_2,1,0x4b);
          break;
        default:
          uVar1 = ov49_0225A30C(param_2,1,0x4c);
        }
        ov49_0225A08C(param_2,uVar1);
        ov49_0225EF8C(param_1,1);
      }
    }
    else {
      uVar1 = ov49_0225A30C(param_2,1,3);
      ov49_0225A08C(param_2,uVar1);
      ov49_0225EF8C(param_1,1);
    }
  }
  else if (iVar2 == 1) {
    iVar2 = ov49_0225A0AC(param_2);
    if (iVar2 != 0) {
      ov49_0225EF8C(param_1,2);
    }
  }
  else if (iVar2 == 2) {
    ov49_0225A0EC(param_2);
    uVar1 = ov49_02259FF0(param_2);
    uVar3 = ov49_02258DAC();
    ov49_02258EEC(uVar1,uVar3,1);
    return 1;
  }
  return 0;
}

