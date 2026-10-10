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
undefined4 ov49_02259FE8();
undefined4 func_0x0222a25c() __asm__("sub_0222A25C");
undefined4 ov49_0225EF68();
undefined4 func_0x0222ada8() __asm__("sub_0222ADA8");
undefined4 ov49_02258EEC();
undefined4 ov49_0225EF88();
undefined4 ov49_02259FF0();
undefined4 ov49_02258DAC();
undefined4 func_0x0222a374() __asm__("sub_0222A374");
undefined4 ov49_0225EF40();
undefined4 ov49_0225A010();
undefined4 ov49_0225A06C();
undefined4 ov49_0225EF98();
undefined4 ov49_02258D70();
undefined4 ov49_0225A04C();
undefined4 ov49_0225EF8C();
undefined4 ov49_0225EF84();
undefined4 func_0x0222a2a0() __asm__("sub_0222A2A0");
undefined4 ov49_0225EFC4();
undefined4 func_0x0222a578() __asm__("sub_0222A578");
undefined4 func_0x0222ad58() __asm__("sub_0222AD58");
undefined4 ov49_02261DBC();
undefined4 func_0x0222a920() __asm__("sub_0222A920");
extern undefined ov49_02269B80;
extern undefined ov49_02269B50;
extern undefined ov49_02269B58;
extern undefined ov49_02269B48;

undefined4 ov49_02261720(undefined4 param_1,undefined4 param_2,uint param_3)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uStack_1c;
  
  uVar2 = ov49_02259FE8(param_2);
  uVar3 = ov49_02259FF0(param_2);
  uVar4 = ov49_0225A010(param_2);
  uVar5 = ov49_02258D70(uVar3,param_3);
  ov49_02258DAC(uVar3);
  uStack_1c = ov49_0225EF84(param_1);
  iVar6 = ov49_0225EF88(param_1);
  if (iVar6 == 0) {
    uStack_1c = ov49_0225EF40(param_1,8);
    ov49_0225EF8C(param_1,1);
  }
  else if (iVar6 != 1) {
    return 0;
  }
  iVar6 = func_0x0222a25c(uVar2,param_3);
  if (iVar6 == 0) {
    func_0x0222a2a0(uVar2,param_3);
    iVar6 = func_0x0222a374(uVar2);
    if ((iVar6 == 1) && (iVar6 = func_0x0222ada8(uVar2,param_3), iVar6 != -1)) {
      ov49_02258EEC(uVar3,uVar5,0);
      ov49_0225A06C(param_2,param_3 & 0xff,1);
      ov49_0225A04C(param_2,param_3 & 0xff,1);
      ov49_02259130(uVar5,0);
      ov49_0225EF68(param_1);
      ov49_0225EF98(uVar4,param_3,&ov49_02269B50,uStack_1c);
    }
    else {
      func_0x0222a578(uVar2,param_3);
      uVar1 = func_0x0222a920();
      iVar6 = ov49_02261DBC(uStack_1c,uVar2,param_2,uVar5,uVar1,0);
      if (iVar6 == 0) {
        iVar6 = func_0x0222ad58(uVar2,param_3);
        if (iVar6 == 1) {
          ov49_02258EEC(uVar3,uVar5,0);
          ov49_0225A04C(param_2,param_3 & 0xff,1);
          ov49_0225EFC4(uVar4,param_3,&ov49_02269B80,0);
        }
      }
      else {
        ov49_02258EEC(uVar3,uVar5,0);
        ov49_0225A06C(param_2,param_3 & 0xff,1);
        ov49_0225A04C(param_2,param_3 & 0xff,1);
        ov49_02259130(uVar5,0);
        ov49_0225EFC4(uVar4,param_3,&ov49_02269B58,uStack_1c);
      }
    }
  }
  else {
    ov49_0225EF68(param_1);
    ov49_02258EEC(uVar3,uVar5,0);
    ov49_0225A06C(param_2,param_3 & 0xff,1);
    ov49_0225A04C(param_2,param_3 & 0xff,1);
    ov49_0225EF98(uVar4,param_3,&ov49_02269B48,0);
  }
  return 0;
}

