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
undefined4 ov49_02258EEC();
undefined4 ov49_0225EF88();
undefined4 ov49_02259FF0();
undefined4 func_0x0222a550() __asm__("sub_0222A550");
undefined4 ov49_02258D54();
undefined4 ov49_02261DBC();
undefined4 func_0x0222aadc() __asm__("sub_0222AADC");
undefined4 ov49_02258CB8();
undefined4 func_0x0222aa5c() __asm__("sub_0222AA5C");
undefined4 ov49_0225EF40();
undefined4 ov49_0225A010();
undefined4 ov49_02258D70();
undefined4 ov49_0225EF8C();
undefined4 func_0x0222a578() __asm__("sub_0222A578");
undefined4 ov49_0225EF84();
undefined4 ov49_022591C0();
undefined4 func_0x0222a920() __asm__("sub_0222A920");
undefined4 func_0x0222a230() __asm__("sub_0222A230");
undefined4 ov49_0225EFC4();
undefined4 ov49_02259130();
undefined4 ov49_02258F38();
undefined4 ov49_0225EF68();
undefined4 ov49_0225A06C();
undefined4 ov49_0225EF98();
undefined4 ov49_0225A04C();
undefined4 ov49_0225EF90();
extern undefined ov49_02269B58;
extern undefined ov49_02269B40;

undefined4 ov49_0226154C(undefined4 param_1,undefined4 param_2,uint param_3)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;

  uVar2 = ov49_02259FE8(param_2);
  uVar3 = ov49_02259FF0(param_2);
  iVar4 = ov49_02258D70(uVar3,param_3);
  uVar5 = ov49_0225EF84(param_1);
  uVar6 = ov49_0225A010(param_2);
  uVar7 = ov49_0225EF88(param_1);
  switch(uVar7) {
  case 0:
    ov49_0225EF40(param_1,8);
    ov49_0225EF8C(param_1,1);
  case 1:
    iVar4 = func_0x0222a230(uVar2,param_3);
    iVar8 = func_0x0222a550(uVar2,param_3);
    if ((iVar4 == 1) || (iVar8 == 1)) {
      ov49_0225EF8C(param_1,2);
    }
    break;
  case 2:
    iVar4 = func_0x0222a578(uVar2,param_3);
    if (iVar4 == 0) {
      ov49_0225EF8C(param_1,1);
    }
    else {
      iVar8 = func_0x0222aadc();
      if (iVar8 == 1) {
        uVar2 = func_0x0222aa5c(iVar4);
        iVar4 = ov49_02258CB8(uVar3,param_3,uVar2);
        if (iVar4 != 0) {
          ov49_022591C0(iVar4,0);
          ov49_0225EF8C(param_1,3);
        }
      }
    }
    break;
  case 3:
    iVar8 = func_0x0222a578(uVar2,param_3);
    if (iVar8 == 0) {
      if (iVar4 != 0) {
        ov49_02258D54(iVar4);
      }
      ov49_0225EF8C(param_1,1);
    }
    else {
      uVar1 = func_0x0222a920();
      iVar8 = ov49_02261DBC(uVar5,uVar2,param_2,iVar4,uVar1,1);
      if (iVar8 == 0) {
        ov49_02258EEC(uVar3,iVar4,4);
        ov49_0225EF8C(param_1,4);
        ov49_0225A04C(param_2,param_3 & 0xff,1);
        ov49_0225A06C(param_2,param_3 & 0xff,1);
        ov49_022591C0(iVar4,1);
      }
      else {
        ov49_0225EF8C(param_1,5);
        ov49_02258EEC(uVar3,iVar4,0);
        ov49_0225A06C(param_2,param_3 & 0xff,1);
        ov49_0225A04C(param_2,param_3 & 0xff,1);
        ov49_02259130(iVar4,0);
        ov49_0225EFC4(uVar6,param_3,&ov49_02269B58,uVar5);
      }
    }
    break;
  case 4:
    iVar4 = ov49_02258F38(iVar4);
    if (iVar4 == 1) {
      ov49_0225EF90(param_1);
    }
    break;
  case 5:
    ov49_0225EF68(param_1);
    ov49_02258EEC(uVar3,iVar4,2);
    ov49_0225EF98(uVar6,param_3,&ov49_02269B40,0);
    ov49_0225A04C(param_2,param_3 & 0xff,0);
    ov49_0225A06C(param_2,param_3 & 0xff,0);
  }
  return 0;
}

