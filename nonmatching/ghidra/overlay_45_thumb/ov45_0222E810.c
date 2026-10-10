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
undefined4 sub_0202C08C();
undefined4 GF_AssertFail();
undefined4 func_0x022310c0() __asm__("sub_022310C0");
undefined4 ov45_0222F74C();
extern undefined ov45_02254F14;
extern undefined ov45_02254F04;
extern int iRam022577c0 __asm__("sub_022577C0");

void ov45_0222E810(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;

  uStack_10 = param_4;
  if (iRam022577c0 == 0) {
    GF_AssertFail();
  }
  uStack_54 = 0x222fc45;
  uStack_50 = 0x222fce1;
  uStack_4c = 0x222fd51;
  uStack_48 = 0x222fdd5;
  uStack_44 = 0x222fdd9;
  uStack_40 = 0x222fe85;
  uStack_3c = 0x222fec5;
  uStack_38 = 0x222ff41;
  uStack_34 = 0x222ff7d;
  uStack_30 = 0x2230009;
  uStack_2c = 0x2230051;
  uStack_28 = 0x2230065;
  uStack_24 = 0x2230091;
  uStack_20 = 0x22300b1;
  uStack_1c = 0x22300dd;
  uStack_18 = 0x2230109;
  uStack_14 = 0x2230131;
  uVar1 = sub_0202C08C(*(undefined4 *)(iRam022577c0 + 4));
  uVar1 = func_0x022310c0(&ov45_02254F04,&ov45_02254F14,param_2,&uStack_54,uVar1,param_1,
                          *(undefined4 *)(iRam022577c0 + 0x28));
  *(undefined4 *)(iRam022577c0 + 0x984) = uVar1;
  ov45_0222F74C(*(undefined4 *)(iRam022577c0 + 0x984));
  return;
}

