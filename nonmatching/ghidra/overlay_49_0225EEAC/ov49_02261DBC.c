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
undefined4 func_0x022282a4() __asm__("sub_022282A4");
undefined4 GF_AssertFail();
undefined4 ov49_02258E60();
undefined4 ov49_02261FC0();
undefined4 ov49_0225A000();
undefined4 func_0x0222aff8() __asm__("sub_0222AFF8");
undefined4 ov49_02259FF0();
undefined4 func_0x0222b00c() __asm__("sub_0222B00C");
undefined4 ov49_0225904C();
undefined4 ov49_02258E34();
undefined4 ov49_02258DAC();
undefined4 func_0x0222b020() __asm__("sub_0222B020");
extern undefined ov49_02269C20;
extern undefined ov49_02269BA0;
extern undefined ov49_02269BB0;
extern undefined ov49_02269C40;
extern undefined ov49_02269B90;
extern undefined ov49_02269BC0;
extern undefined ov49_02269BD0;
undefined4 ov49_02258E04();

undefined4
ov49_02261DBC(undefined1 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
             undefined1 param_5,undefined1 param_6)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined1 uVar6;
  undefined4 uStack_3c;
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  undefined4 uStack_18;
  
  uVar6 = 0;
  uVar1 = ov49_02259FF0(param_3);
  uVar2 = ov49_02258DAC();
  uVar3 = ov49_0225A000(param_3);
  iVar4 = ov49_02258E60(param_4,4);
  uStack_18 = 1;
  switch(param_5) {
  default:
    return 0;
  case 2:
    iVar4 = ov49_02261FC0(uVar3,uVar1,&ov49_02269B90,4);
    if (iVar4 == 0) {
      return 0;
    }
    break;
  case 3:
    iVar4 = ov49_02261FC0(uVar3,uVar1,&ov49_02269BC0,4);
    if (iVar4 == 0) {
      return 0;
    }
    break;
  case 4:
    iVar4 = ov49_02261FC0(uVar3,uVar1,&ov49_02269BA0,4);
    if (iVar4 == 0) {
      return 0;
    }
    break;
  case 5:
    uStack_18 = 0;
    iVar4 = ov49_02261FC0(uVar3,uVar1,&ov49_02269C20,8);
    if (iVar4 == 0) {
      return 0;
    }
    break;
  case 6:
    uStack_18 = 0;
    iVar4 = ov49_02261FC0(uVar3,uVar1,&ov49_02269C40,8);
    if (iVar4 == 0) {
      return 0;
    }
    break;
  case 7:
    uStack_18 = 3;
    iVar4 = ov49_02261FC0(uVar3,uVar1,&ov49_02269BB0,4);
    if (iVar4 == 0) {
      return 0;
    }
    break;
  case 8:
    uStack_18 = 0;
    iVar4 = ov49_02261FC0(uVar3,uVar1,&ov49_02269BD0,4);
    if (iVar4 == 0) {
      return 0;
    }
    break;
  case 9:
    iVar5 = func_0x0222aff8(param_2);
    if (iVar5 == 0) {
      return 0;
    }
    iVar5 = func_0x0222b00c(param_2);
    if (iVar5 == 0) {
      return 0;
    }
    iVar5 = func_0x0222b020(param_2);
    if (iVar4 != iVar5) {
      return 0;
    }
    iVar4 = ov49_0225904C(uVar1,uVar2,&uStack_18,&uStack_1c);
    if (iVar4 != 1) {
      GF_AssertFail();
    }
    uStack_18 = func_0x022282a4(uStack_18);
    uVar6 = 1;
    break;
  case 10:
    return 0;
  }
  uVar1 = ov49_02258E34(param_4);
  uStack_3c = CONCAT22(uStack_1a,uStack_1c);
  ov49_02258E04(param_4,uStack_3c,uStack_18);
  *param_1 = (char)((int)((int)(short)uVar1 + ((uint)((int)(short)uVar1 >> 3) >> 0x1c)) >> 4);
  iVar4 = (int)(short)((uint)uVar1 >> 0x10);
  param_1[1] = (char)((int)(iVar4 + ((uint)(iVar4 >> 3) >> 0x1c)) >> 4);
  param_1[2] = param_5;
  param_1[3] = uVar6;
  param_1[4] = param_6;
  return 1;
}

