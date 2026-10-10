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
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 func_0x020f21c0() __asm__("sub_020F21C0");
undefined4 System_GetTouchNewCoords();
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 GF_AssertFail();
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 ov96_0220B148();
extern undefined ov96_0221CDD8;
undefined4 func_0x020f2948() __asm__("sub_020F2948");
undefined4 func_0x020ccba0() __asm__("sub_020CCBA0");

undefined4 ov96_0220A910(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  short *psVar7;
  int *piVar8;
  int iVar9;
  longlong lVar10;
  short sStack_50;
  short sStack_4e;
  uint uStack_4c;
  int iStack_48;
  int iStack_44;
  int iStack_40;
  int iStack_38;
  int iStack_34;
  int iStack_2c;
  int iStack_28;
  int iStack_20;
  int iStack_1c;

  if (param_1 == 0) {
    GF_AssertFail();
  }
  if ((*(uint *)(param_1 + 0x180) & 0xf) == 1) {
    return 0;
  }
  if ((*(uint *)(param_1 + 0x180) & 0xff) >> 4 == 0) {
    GF_AssertFail();
  }
  ov96_0220B148(*(undefined4 *)(param_1 + ((*(uint *)(param_1 + 0x180) & 0xff) >> 4) * 4 + 0x150),
                &sStack_4e,&sStack_50);
  System_GetTouchNewCoords(&iStack_48,&uStack_4c);
  iVar1 = (int)sStack_50;
  if ((iVar1 - 0x12U <= uStack_4c) && (uStack_4c <= iVar1 + 0xcU)) {
    if (iStack_48 == 0) {
      uVar2 = func_0x020f21c0(0);
      func_0x020f24c8(uVar2,0x3f000000);
    }
    else {
      uVar2 = func_0x020f21c0(iStack_48 << 0xc);
      func_0x020f1520(0x3f000000,uVar2);
    }
    iVar3 = func_0x020f2104();
    if (uStack_4c == 0) {
      uVar2 = func_0x020f21c0(0);
      func_0x020f24c8(uVar2,0x3f000000);
    }
    else {
      uVar2 = func_0x020f21c0(uStack_4c << 0xc);
      func_0x020f1520(0x3f000000,uVar2);
    }
    iVar4 = func_0x020f2104();
    psVar7 = (short *)&ov96_0221CDD8;
    iVar9 = 0;
    piVar8 = &iStack_44;
    do {
      iVar5 = (int)sStack_4e + (int)*psVar7;
      if (iVar5 < 1) {
        uVar2 = func_0x020f2178(iVar5 * 0x1000);
        func_0x020f24c8(uVar2,0x3f000000);
      }
      else {
        uVar2 = func_0x020f2178(iVar5 * 0x1000);
        func_0x020f1520(0x3f000000,uVar2);
      }
      iVar5 = func_0x020f2104();
      *piVar8 = iVar5;
      iVar5 = iVar1 + psVar7[1];
      if (iVar5 < 1) {
        uVar2 = func_0x020f2178(iVar5 * 0x1000);
        func_0x020f24c8(uVar2,0x3f000000);
      }
      else {
        uVar2 = func_0x020f2178(iVar5 * 0x1000);
        func_0x020f1520(0x3f000000,uVar2);
      }
      iVar6 = func_0x020f2104();
      iVar5 = iStack_44;
      piVar8[1] = iVar6;
      iVar9 = iVar9 + 1;
      psVar7 = psVar7 + 2;
      piVar8 = piVar8 + 3;
    } while (iVar9 < 4);
    lVar10 = func_0x020f2948(iStack_34 - iStack_40,iStack_34 - iStack_40 >> 0x1f,iVar3 - iStack_44,
                             iVar3 - iStack_44 >> 0x1f);
    iVar9 = func_0x020ccba0((uint)(lVar10 + 0x800) >> 0xc |
                            (int)((ulonglong)(lVar10 + 0x800) >> 0x20) * 0x100000,iStack_38 - iVar5)
    ;
    iVar1 = iStack_2c;
    lVar10 = func_0x020f2948(iStack_1c - iStack_28,iStack_1c - iStack_28 >> 0x1f,iVar3 - iStack_2c,
                             iVar3 - iStack_2c >> 0x1f);
    iVar1 = func_0x020ccba0((uint)(lVar10 + 0x800) >> 0xc |
                            (int)((ulonglong)(lVar10 + 0x800) >> 0x20) * 0x100000,iStack_20 - iVar1)
    ;
    if ((((iStack_38 <= iVar3) && (iVar3 <= iStack_2c)) ||
        ((iVar9 + iStack_40 <= iVar4 && ((iStack_44 <= iVar3 && (iVar3 <= iStack_38)))))) ||
       ((iVar4 <= iVar1 + iStack_28 && ((iStack_2c <= iVar3 && (iVar3 <= iStack_20)))))) {
      return 1;
    }
  }
  return 0;
}

