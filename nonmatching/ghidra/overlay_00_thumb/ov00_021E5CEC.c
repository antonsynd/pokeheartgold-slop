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
typedef void code(void);
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
undefined4 func_0x021f14d4(undefined4, undefined4, undefined4) __asm__("sub_021F14D4");
undefined4 func_0x020e9580(undefined4) __asm__("sub_020E9580");
undefined4 ov00_021E7300(void);
undefined4 func_0x020d4994(undefined4, undefined4, undefined4) __asm__("sub_020D4994");
undefined4 func_0x020e7f30(undefined4, undefined4, undefined4, undefined4) __asm__("sub_020E7F30");
undefined4 GF_AssertFail(void);
undefined4 func_0x021f13a4(undefined4, undefined4, undefined4) __asm__("sub_021F13A4");
extern undefined UNK_02216034 __asm__("sub_02216034");
extern undefined4 iRam0221a680 __asm__("sub_0221A680");
extern undefined UNK_02216414 __asm__("sub_02216414");
undefined4 func_0x021f98dc(undefined4) __asm__("sub_021F98DC");
undefined4 func_0x021edf1c(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_021EDF1C");
undefined4 func_0x021ee24c(undefined4, undefined4) __asm__("sub_021EE24C");
undefined4 func_0x021f989c(undefined4) __asm__("sub_021F989C");
undefined4 func_0x021f98bc(undefined4) __asm__("sub_021F98BC");

undefined4 ov00_021E5CEC(undefined4 param_1,uint param_2,int param_3,int param_4)

{
  int iVar1;
  uint uVar2;
  undefined4 uStack_20;
  int iStack_1c;
  int iStack_18;

  iStack_18 = param_4;
  if (iRam0221a680 == 0) {
    GF_AssertFail();
  }
  if (*(int *)(iRam0221a680 + 0x1070) != 4) {
    return 0;
  }
  ov00_021E7300();
  uStack_20 = 0x201;
  iStack_1c = param_4 * 1000;
  iVar1 = func_0x021f14d4(0,&uStack_20,8);
  if (iVar1 != 0) {
    GF_AssertFail();
  }
  iVar1 = func_0x021f13a4(0,&UNK_02216414,param_1);
  if (iVar1 == 0) {
    GF_AssertFail();
  }
  func_0x020d4994(iRam0221a680 + 0xfc4,0,0x80);
  func_0x020e7f30(iRam0221a680 + 0xfc4,&UNK_02216034,&UNK_02216414,param_1);
  uVar2 = func_0x020e9580(iRam0221a680 + 0xfc4);
  if (0x7f < uVar2) {
    GF_AssertFail();
  }
  if (param_3 != 0) {
    func_0x021f13a4(1,iRam0221a680 + 0xfc4,iRam0221a680 + 0xfc4);
  }
  *(undefined4 *)(iRam0221a680 + 0x1070) = 5;
  *(uint *)(iRam0221a680 + 0x107c) = param_2;
  func_0x021edf1c(param_2 & 0xff,iRam0221a680 + 0xfc4,0x21e63cd,0,0x21e6425,0);
  *(undefined4 *)(iRam0221a680 + 0x1074) = 0;
  func_0x021f989c(0x21e6429);
  func_0x021f98bc(0x21e6485);
  func_0x021ee24c(0x21e6555,0);
  func_0x021f98dc(0x21e6241);
  *(undefined4 *)(iRam0221a680 + 0x1078) = 0;
  *(undefined1 *)(iRam0221a680 + 0x10e5) = 1;
  return 1;
}

