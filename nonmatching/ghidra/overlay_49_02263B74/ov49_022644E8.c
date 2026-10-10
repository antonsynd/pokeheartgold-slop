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
undefined4 PlaySE();
undefined4 ov49_02259FE8();
undefined4 ov49_0225A1D4();
undefined4 ov49_0225EF88();
undefined4 ov49_02265110();
undefined4 ov49_022651E8();
undefined4 func_0x0222a374() __asm__("sub_0222A374");
undefined4 ov49_0225EF40();
undefined4 ov49_0225A1A4();
undefined4 func_0x0222a330() __asm__("sub_0222A330");
undefined4 ov49_0225EF8C();
undefined4 ov49_0225A08C();
undefined4 ov49_0225A30C();
undefined4 ov49_0225EF84();
undefined4 ov49_02265260();
undefined4 ov49_0225A1E4();
undefined4 ov49_0225EF68();
undefined4 ov49_0225A0EC();
undefined4 ov49_0225A174();
undefined4 ov49_0225A37C();
undefined4 ov49_02265170();
undefined4 ov49_02259FF0();
undefined4 ov49_02258EEC();
undefined4 ov49_0225A0AC();
undefined4 ov49_02258DAC();

undefined4 ov49_022644E8(undefined4 param_1,undefined4 param_2)

{
  bool bVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  
  puVar2 = (undefined4 *)ov49_0225EF84();
  uVar3 = ov49_02259FE8(param_2);
  uVar4 = ov49_0225EF88(param_1);
  switch(uVar4) {
  case 0:
    ov49_0225EF40(param_1,0x28);
    PlaySE(0x5dc);
    iVar5 = func_0x0222a330(uVar3);
    if (iVar5 == 1) {
      ov49_0225EF8C(param_1,2);
    }
    else {
      iVar5 = func_0x0222a374(uVar3);
      if (iVar5 == 1) {
        ov49_0225EF8C(param_1,1);
      }
      else {
        ov49_0225EF8C(param_1,3);
      }
    }
    break;
  case 1:
    uVar3 = ov49_0225A30C(param_2,1,0x4e);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 0x18;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 2:
    uVar3 = ov49_0225A30C(param_2,1,3);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 0x18;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 3:
    uVar3 = ov49_0225A30C(param_2,1,0xf);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 4:
    uVar3 = ov49_0225A30C(param_2,1,0x10);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 5;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 5:
    ov49_02265110(puVar2 + 1,param_2);
    ov49_0225A1A4(param_2,puVar2 + 1,0,0,0x10,1,0xf);
    ov49_0225EF8C(param_1,6);
    break;
  case 6:
    bVar1 = false;
    iVar5 = ov49_0225A1D4(param_2);
    switch(iVar5) {
    case 0:
      ov49_0225EF8C(param_1,7);
      bVar1 = true;
      break;
    case 1:
      ov49_0225EF8C(param_1,8);
      bVar1 = true;
      break;
    case 2:
      ov49_0225EF8C(param_1,0xd);
      bVar1 = true;
      break;
    case 3:
      ov49_0225EF8C(param_1,0xe);
      bVar1 = true;
      break;
    case 4:
      ov49_0225EF8C(param_1,0xf);
      bVar1 = true;
      break;
    case 5:
      ov49_0225EF8C(param_1,0x15);
      bVar1 = true;
      break;
    case 6:
      ov49_0225EF8C(param_1,0x10);
      bVar1 = true;
      break;
    case 7:
code_r0x022646be:
      ov49_0225EF8C(param_1,0x16);
      bVar1 = true;
      break;
    default:
      if (iVar5 == -2) {
        PlaySE(0x5dc);
        goto code_r0x022646be;
      }
    }
    if (bVar1) {
      ov49_0225A1E4(param_2,0,0);
      ov49_02265260(puVar2 + 1,param_2);
    }
    break;
  case 7:
    uVar3 = ov49_0225A30C(param_2,1,0x17);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 8:
    ov49_022651E8(puVar2 + 1,param_2);
    ov49_0225A174(param_2,puVar2 + 1,0,0);
    ov49_0225EF8C(param_1,9);
    break;
  case 9:
    bVar1 = false;
    iVar5 = ov49_0225A1D4(param_2);
    switch(iVar5) {
    case 0:
      ov49_0225EF8C(param_1,10);
      bVar1 = true;
      break;
    case 1:
      ov49_0225EF8C(param_1,0xb);
      bVar1 = true;
      break;
    case 2:
      ov49_0225EF8C(param_1,0xc);
      bVar1 = true;
      break;
    case 3:
code_r0x02264772:
      ov49_0225EF8C(param_1,4);
      bVar1 = true;
      break;
    default:
      if (iVar5 == -2) {
        PlaySE(0x5dc);
        goto code_r0x02264772;
      }
    }
    if (bVar1) {
      ov49_0225A1E4(param_2,0,0);
      ov49_02265260(puVar2 + 1,param_2);
    }
    break;
  case 10:
    ov49_0225A37C(param_2,0,0);
    uVar3 = ov49_0225A30C(param_2,1,0x18);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 0xb:
    ov49_0225A37C(param_2,1,0);
    uVar3 = ov49_0225A30C(param_2,1,0x19);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 0xc:
    ov49_0225A37C(param_2,2,0);
    uVar3 = ov49_0225A30C(param_2,1,0x1a);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 0xd:
    uVar3 = ov49_0225A30C(param_2,1,0x12);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 0xe:
    uVar3 = ov49_0225A30C(param_2,1,0x13);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 0xf:
    uVar3 = ov49_0225A30C(param_2,1,0x14);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 0x10:
    ov49_02265170(puVar2 + 1,param_2);
    ov49_0225A174(param_2,puVar2 + 1,0,0);
    ov49_0225EF8C(param_1,0x11);
    break;
  case 0x11:
    bVar1 = false;
    iVar5 = ov49_0225A1D4(param_2);
    switch(iVar5) {
    case 0:
      ov49_0225EF8C(param_1,0x12);
      bVar1 = true;
      break;
    case 1:
      ov49_0225EF8C(param_1,0x13);
      bVar1 = true;
      break;
    case 2:
      ov49_0225EF8C(param_1,0x14);
      bVar1 = true;
      break;
    case 3:
code_r0x022648ec:
      ov49_0225EF8C(param_1,4);
      bVar1 = true;
      break;
    default:
      if (iVar5 == -2) {
        PlaySE(0x5dc);
        goto code_r0x022648ec;
      }
    }
    if (bVar1) {
      ov49_0225A1E4(param_2,0,0);
      ov49_02265260(puVar2 + 1,param_2);
    }
    break;
  case 0x12:
    uVar3 = ov49_0225A30C(param_2,1,0x1b);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 0x13:
    uVar3 = ov49_0225A30C(param_2,1,0x1c);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 0x14:
    uVar3 = ov49_0225A30C(param_2,1,0x1d);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 0x15:
    uVar3 = ov49_0225A30C(param_2,1,0x1e);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 4;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 0x16:
    uVar3 = ov49_0225A30C(param_2,1,0x16);
    ov49_0225A08C(param_2,uVar3);
    *puVar2 = 0x18;
    ov49_0225EF8C(param_1,0x17);
    break;
  case 0x17:
    iVar5 = ov49_0225A0AC(param_2);
    if (iVar5 != 0) {
      ov49_0225EF8C(param_1,*puVar2);
    }
    break;
  case 0x18:
    ov49_0225EF68(param_1);
    ov49_0225A0EC(param_2);
    uVar3 = ov49_02259FF0(param_2);
    uVar4 = ov49_02258DAC();
    ov49_02258EEC(uVar3,uVar4,1);
    return 1;
  }
  return 0;
}

