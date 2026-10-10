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
undefined4 ov13_02222978();
undefined4 ov13_022216BC();
undefined4 ov13_02222A9C();
undefined4 ov13_02222968();
extern undefined4 uRam0224d794 __asm__("sub_0224D794");
extern undefined4 uRam0224d664 __asm__("sub_0224D664");
extern undefined4 uRam0224cfc4 __asm__("sub_0224CFC4");
extern uint uRam0224cfc8 __asm__("sub_0224CFC8");
extern int iRam0224d8c4 __asm__("sub_0224D8C4");
extern int iRam0224d934 __asm__("sub_0224D934");

undefined4 ov13_022214C4(ushort *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;

  iVar3 = (int)param_1 + 0x117;
  if (iVar3 == 0) {
    return 0xffffffff;
  }
  *param_1 = (ushort)uRam0224cfc4 & (ushort)uRam0224cfc8;
  ov13_02222978(iVar3,0,0x154);
  if ((*param_1 & 1) != 0) {
    ov13_02222968(iVar3,0x224d690,uRam0224d664);
    ov13_02222968((int)param_1 + 0x11d,0x224d6d0,uRam0224d664);
    ov13_02222968((int)param_1 + 0x123,0x224d710,uRam0224d664);
    ov13_02222968((int)param_1 + 0x129,0x224d750,uRam0224d664);
    uVar1 = ov13_02222A9C(0x224d668);
    iVar2 = ov13_022216BC(0x224d668,uVar1);
    if (iVar2 != 0) goto LAB_02221688;
    uVar1 = ov13_02222A9C(0x224d668);
    ov13_02222968((int)param_1 + 0x12f,0x224d668,uVar1);
  }
  if ((*param_1 & 2) != 0) {
    ov13_02222968(param_1 + 0xa8,0x224d7c0,uRam0224d794);
    ov13_02222968(param_1 + 0xaf,0x224d800,uRam0224d794);
    ov13_02222968(param_1 + 0xb6,0x224d840,uRam0224d794);
    ov13_02222968(param_1 + 0xbd,0x224d880,uRam0224d794);
    uVar1 = ov13_02222A9C(0x224d798);
    iVar2 = ov13_022216BC(0x224d798,uVar1);
    if (iVar2 != 0) goto LAB_02221688;
    uVar1 = ov13_02222A9C(0x224d798);
    ov13_02222968(param_1 + 0xc4,0x224d798,uVar1);
  }
  if ((*param_1 & 4) != 0) {
    iVar2 = ov13_022216BC(0x224d8f0,iRam0224d8c4 + -1);
    if (iVar2 != 0) goto LAB_02221688;
    ov13_02222968((int)param_1 + 0x1a9,0x224d8f0,iRam0224d8c4);
    uVar1 = ov13_02222A9C(0x224d8c8);
    iVar2 = ov13_022216BC(0x224d8c8,uVar1);
    if (iVar2 != 0) goto LAB_02221688;
    uVar1 = ov13_02222A9C(0x224d8c8);
    ov13_02222968((int)param_1 + 0x1e9,0x224d8c8,uVar1);
  }
  if ((*param_1 & 8) == 0) {
LAB_0222167e:
    *(undefined1 *)(param_1 + 0x8b) = 0;
    return 0;
  }
  iVar2 = ov13_022216BC(0x224d960,iRam0224d934 + -1);
  if (iVar2 == 0) {
    ov13_02222968(param_1 + 0x105,0x224d960,iRam0224d934);
    uVar1 = ov13_02222A9C(0x224d938);
    iVar2 = ov13_022216BC(0x224d938,uVar1);
    if (iVar2 == 0) {
      uVar1 = ov13_02222A9C(0x224d938);
      ov13_02222968(param_1 + 0x125,0x224d938,uVar1);
      goto LAB_0222167e;
    }
  }
LAB_02221688:
  ov13_02222978(iVar3,0,0x154);
  return 0xffffffff;
}

