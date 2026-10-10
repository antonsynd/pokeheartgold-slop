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
undefined4 ov57_02237FAC();
undefined4 ov57_02238958();
undefined4 ov57_02239728();
undefined4 ov57_0223B858();
undefined4 ov57_022388E4();
undefined4 sub_0209106C();
undefined4 ov57_02238AC0();
undefined4 GiveOrTakeSeal();
undefined4 ov57_02238A00();
undefined4 PlaySE();
undefined4 ov57_02239A8C();
undefined4 ov57_022399F8();
undefined4 ov57_02238028();
undefined4 ov57_02239B2C();
undefined4 SealCaseInventory_GetSealQuantity();
undefined4 ov57_0223B90C();
undefined4 ov57_022382F8();
undefined4 ov57_0223B948();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 GF_AssertFail();

void ov57_0223AEA8(uint param_1,int param_2,int *param_3)

{
  int iVar1;
  undefined4 uVar2;
  int extraout_r1;
  uint uVar3;

  if (param_3[0x36] != 0) {
    switch(param_1) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      if (param_2 == 0) {
        iVar1 = ov57_02238028(param_3);
        if (iVar1 == 0) {
          PlaySE(0x5f2);
          ov57_02239728(param_3 + 0x3b,0,0xf,0);
          return;
        }
        uVar3 = (uint)*(byte *)((int)param_3 + param_1 + 0x450);
        if ((uVar3 != 0) &&
           (iVar1 = SealCaseInventory_GetSealQuantity(param_3[0x19],uVar3 - 1), iVar1 != 0)) {
          iVar1 = ov57_02237FAC(param_3,param_1 & 0xff);
          param_3[0x35] = iVar1;
          uVar2 = sub_0209106C(*(undefined1 *)((int)param_3 + param_1 + 0x450));
          ov57_02239B2C(param_3 + 0x3b,uVar2);
          GiveOrTakeSeal(*(undefined4 *)(*param_3 + 0x20),
                         *(undefined1 *)((int)param_3 + param_1 + 0x450),0xffffffff);
          ov57_02239A8C(param_3,param_1);
          PlaySE(0x5eb);
          return;
        }
        if (*(char *)((int)param_3 + param_1 + 0x450) != '\0') {
          PlaySE(0x5f2);
          ov57_02239728(param_3 + 0x3b,0,0x10,0);
          return;
        }
      }
      break;
    case 8:
      if (param_2 == 0) {
        iVar1 = param_3[0x112];
        if (iVar1 < 1) {
          iVar1 = param_3[0x113];
        }
        param_3[0x112] = iVar1 + -1;
        ov57_02238AC0(param_3);
        ov57_022388E4(param_3,param_3[0x112]);
        ov57_02238958(param_3);
        ov57_02238A00(param_3);
        ov57_022399F8(param_3);
        PlaySE(0x6c4);
      }
      ov57_0223B858(param_3[0x10d],param_2);
      return;
    case 9:
      if (param_2 == 0) {
        param_3[0x112] = param_3[0x112] + 1;
        func_0x020f2998(param_3[0x112],param_3[0x113]);
        param_3[0x112] = extraout_r1;
        ov57_02238AC0(param_3);
        ov57_022388E4(param_3,param_3[0x112]);
        ov57_02238958(param_3);
        ov57_02238A00(param_3);
        ov57_022399F8(param_3);
        PlaySE(0x6c4);
      }
      ov57_0223B858(param_3[0x10e],param_2);
      return;
    case 10:
      if (param_2 == 0) {
        if (param_3[0xff] != 5) {
          param_3[0xff] = 5;
          PlaySE(0x5dd);
        }
        ov57_0223B90C(param_3[0x10f],0);
      }
      ov57_0223B858(param_3[0x10f],param_2);
      return;
    case 0xb:
      if (param_2 == 0) {
        if (param_3[0xff] != 6) {
          param_3[0xff] = 6;
          ov57_0223B948(param_3,0);
          PlaySE(0x5e2);
        }
        ov57_0223B90C(param_3[0x110],param_3[0x98]);
      }
      ov57_0223B858(param_3[0x110],param_2);
      return;
    case 0xc:
      if (param_2 == 0) {
        if (param_3[0xff] != 7) {
          param_3[0xff] = 7;
          ov57_0223B948(param_3,0);
          PlaySE(0x5dd);
        }
        ov57_0223B90C(param_3[0x111],param_3[0x99]);
      }
      ov57_0223B858(param_3[0x111],param_2);
      return;
    case 0xd:
    case 0xe:
    case 0xf:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
      if (param_2 == 0) {
        ov57_022382F8(param_3,0,param_1 - 0xd & 0xff);
        uVar2 = sub_0209106C((char)param_3[(param_1 - 0xd) * 4 + 0xd4]);
        ov57_02239B2C(param_3 + 0x3b,uVar2);
        PlaySE(0x5eb);
        return;
      }
      break;
    default:
      GF_AssertFail();
    }
  }
  return;
}

