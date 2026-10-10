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
undefined4 func_0x0222f4d4() __asm__("sub_0222F4D4");
undefined4 ov47_02259384();
undefined4 ov47_02258CEC();
undefined4 func_0x0222a7dc() __asm__("sub_0222A7DC");
undefined4 ov47_02259430();
undefined4 PlaySE();
undefined4 ov47_022591F8();
undefined4 ov47_022592B4();
undefined4 ov47_02259D40();
undefined4 ov47_0225916C();
undefined4 ov47_02259318();
undefined4 ov47_0225921C();
undefined4 ov47_02259404();
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 ov47_022593CC();
undefined4 ov47_022593B4();
undefined4 GF_AssertFail();
undefined4 func_0x0222f524() __asm__("sub_0222F524");
undefined4 ov47_022593A0();

undefined4
ov47_02258F48(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,int param_5,
             undefined4 param_6)

{
  int iVar1;
  undefined4 uVar2;

  switch(*(undefined2 *)(param_1 + 0x28)) {
  case 0:
    uVar2 = ov47_02258CEC(param_2,0,0x5e);
    ov47_022592B4(param_4,uVar2);
    *(undefined2 *)(param_1 + 0x2a) = 1;
    *(undefined2 *)(param_1 + 0x28) = 10;
    break;
  case 1:
    ov47_02259404(param_4,param_3,param_6);
    *(undefined2 *)(param_1 + 0x28) = 2;
    break;
  case 2:
    iVar1 = ov47_02259430(param_4,param_6);
    if (iVar1 == 0) {
      *(undefined2 *)(param_1 + 0x28) = 3;
    }
    else if (iVar1 == -2) {
      *(undefined2 *)(param_1 + 0x28) = 9;
    }
    break;
  case 3:
    if (*(int *)(param_1 + 0x34) == 0) {
      uVar2 = 0x5c;
    }
    else {
      uVar2 = 0x5d;
    }
    uVar2 = ov47_02258CEC(param_2,0,uVar2);
    ov47_022592B4(param_4,uVar2);
    *(undefined2 *)(param_1 + 0x2a) = 4;
    *(undefined2 *)(param_1 + 0x28) = 10;
    break;
  case 4:
    ov47_0225916C();
    uVar2 = ov47_02259D40(param_1 + 0x2c,param_2);
    ov47_02259318(param_4,uVar2);
    ov47_022591F8(param_1);
    ov47_0225921C(param_1);
    *(undefined2 *)(param_1 + 0x28) = 5;
    break;
  case 5:
    if ((uRam021d1154 & 1) == 0) {
      if ((uRam021d1154 & 0x40) == 0) {
        if (((uRam021d1154 & 0x80) != 0) && (*(int *)(param_1 + 0x10) + 1 < 3)) {
          PlaySE(0x5e0);
          *(int *)(param_1 + 0x10) = *(int *)(param_1 + 0x10) + 1;
        }
      }
      else if (-1 < *(int *)(param_1 + 0x10) + -1) {
        PlaySE(0x5e0);
        *(int *)(param_1 + 0x10) = *(int *)(param_1 + 0x10) + -1;
      }
      ov47_022591F8(param_1);
    }
    else {
      PlaySE(0x5dc);
      *(short *)(param_1 + 0x28) = *(short *)(param_1 + 0x28) + 1;
    }
    break;
  case 6:
    func_0x0222a7dc(*(undefined4 *)(param_5 + 4),*(undefined4 *)(param_1 + 0x30),
                    *(undefined4 *)(param_1 + 0x10));
    func_0x0222f4d4(*(undefined4 *)(param_1 + 0x10));
    uVar2 = ov47_02258CEC(param_2,0,0x60);
    ov47_02259318(param_4,uVar2);
    ov47_02259384(param_4);
    PlaySE(0x57d);
    *(undefined2 *)(param_1 + 0x28) = 7;
    break;
  case 7:
    iVar1 = func_0x0222f524();
    if (iVar1 != 1) {
      PlaySE(0x5e4);
      ov47_022593A0(param_4);
      uVar2 = ov47_02258CEC(param_2,0,0x61);
      ov47_022592B4(param_4,uVar2);
      *(undefined2 *)(param_1 + 0x2a) = 8;
      *(undefined2 *)(param_1 + 0x28) = 10;
    }
    break;
  case 8:
    if (*(int *)(param_1 + 0x34) == 0) {
      uVar2 = 0x62;
    }
    else {
      uVar2 = 99;
    }
    uVar2 = ov47_02258CEC(param_2,0,uVar2);
    ov47_022592B4(param_4,uVar2);
    *(undefined2 *)(param_1 + 0x2a) = 9;
    *(undefined2 *)(param_1 + 0x28) = 10;
    break;
  case 9:
    ov47_022593CC(param_4);
    return 1;
  case 10:
    iVar1 = ov47_022593B4(param_4);
    if (iVar1 == 1) {
      *(undefined2 *)(param_1 + 0x28) = *(undefined2 *)(param_1 + 0x2a);
    }
    break;
  default:
    GF_AssertFail();
  }
  return 0;
}

