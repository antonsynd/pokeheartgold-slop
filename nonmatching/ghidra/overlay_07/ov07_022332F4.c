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
undefined4 ov07_02232F74(undefined4, undefined4);
undefined4 func_0x0200e074(undefined4, undefined4) __asm__("sub_0200E074");
undefined4 func_0x0200602c(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_0200602C");
undefined4 func_0x0200ded0(undefined4, undefined4, undefined4) __asm__("sub_0200DED0");
undefined4 func_0x0200e098(undefined4, undefined4) __asm__("sub_0200E098");
undefined4 GF_AssertFail(void);
undefined4 func_0x020f2998(undefined4, undefined4) __asm__("sub_020F2998");
extern undefined ov07_02237254;

undefined4 ov07_022332F4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  if (*(int *)(param_1 + 8) == 0) {
    if (2 < *(int *)(param_1 + 0x18)) {
      GF_AssertFail();
    }
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else if (*(int *)(param_1 + 8) != 1) {
    return 1;
  }
  iVar4 = *(int *)(param_1 + 0x18) * 0x18;
  iVar3 = *(int *)(param_1 + 0xc) * 2;
  iVar5 = (int)*(short *)(&ov07_02237254 + iVar3 + iVar4);
  iVar1 = *(int *)(param_1 + 0xc) + 1;
  *(int *)(param_1 + 0xc) = iVar1;
  if ((iVar1 < 0xc) && (iVar5 != 0xff)) {
    if (iVar1 == 5) {
      func_0x0200602c(0x5fd,0x75,iVar3,iVar4,param_4);
    }
    func_0x0200ded0(*(undefined4 *)(param_1 + 0x30),iVar5,0);
    uVar2 = func_0x020f2998(iVar5 * 0x1fffe,0x168);
    func_0x0200e098(*(undefined4 *)(param_1 + 0x30),uVar2);
    return 1;
  }
  *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  *(int *)(param_1 + 0x18) = *(int *)(param_1 + 0x18) + 1;
  func_0x0200e074(*(undefined4 *)(param_1 + 0x30),0);
  ov07_02232F74(param_1,0x12);
  return 1;
}

