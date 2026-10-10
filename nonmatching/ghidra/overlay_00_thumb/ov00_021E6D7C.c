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
undefined4 ov00_021E7300(void);
undefined4 func_0x021edfbc(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_021EDFBC");
undefined4 ov00_021E7314(void);
undefined4 func_0x021ee054(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_021EE054");
extern undefined4 iRam0221a680 __asm__("sub_0221A680");
undefined4 func_0x021f98dc(undefined4) __asm__("sub_021F98DC");
undefined4 func_0x021ee24c(undefined4, undefined4) __asm__("sub_021EE24C");
undefined4 func_0x021f989c(undefined4) __asm__("sub_021F989C");
undefined4 func_0x021f98bc(undefined4) __asm__("sub_021F98BC");

undefined4 ov00_021E6D7C(int param_1,uint param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = ov00_021E7314();
  if (iVar1 != 0) {
    return 0xfffffffc;
  }
  if (*(int *)(iRam0221a680 + 0x1070) != 4) {
    *(int *)(iRam0221a680 + 0x10cc) = *(int *)(iRam0221a680 + 0x10cc) + 1;
    if (0x78 < *(int *)(iRam0221a680 + 0x10cc)) {
      return 0xfffffffd;
    }
    return 0xffffffff;
  }
  ov00_021E7300();
  *(undefined4 *)(iRam0221a680 + 0x10d8) = 0;
  *(undefined1 *)(iRam0221a680 + 0x10e5) = 1;
  *(int *)(iRam0221a680 + 0x1094) = param_1;
  *(uint *)(iRam0221a680 + 0x107c) = param_2;
  if (param_3 != 0) {
    param_2 = 2;
  }
  *(undefined4 *)(iRam0221a680 + 0x10a0) = 1;
  if (param_1 < 0) {
    iVar1 = func_0x021edfbc(param_2 & 0xff,0x21e6ed9,0,0x21e6fe1,0);
    uVar2 = 1;
  }
  else {
    iVar1 = func_0x021ee054(param_1,0x21e6fbd,0,0x21e6fe1,0);
    uVar2 = 2;
  }
  *(undefined4 *)(iRam0221a680 + 0x1074) = uVar2;
  if (iVar1 == 0) {
    *(int *)(iRam0221a680 + 0x10cc) = *(int *)(iRam0221a680 + 0x10cc) + 1;
    if (0x78 < *(int *)(iRam0221a680 + 0x10cc)) {
      return 0xfffffffd;
    }
    return 0xfffffffe;
  }
  *(undefined4 *)(iRam0221a680 + 0x10cc) = 0;
  *(undefined4 *)(iRam0221a680 + 0x1070) = 5;
  func_0x021f989c(0x21e6429);
  func_0x021f98bc(0x21e6485);
  func_0x021ee24c(0x21e6555,0);
  func_0x021f98dc(0x21e6241);
  *(undefined4 *)(iRam0221a680 + 0x1078) = 0;
  return 0;
}

