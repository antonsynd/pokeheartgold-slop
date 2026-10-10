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
undefined4 func_0x020f2948() __asm__("sub_020F2948");
undefined4 func_0x020ccba0() __asm__("sub_020CCBA0");
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 ov96_021EB06C();
undefined4 func_0x020f2178() __asm__("sub_020F2178");

undefined4 ov96_02218934(int param_1)

{
  short *psVar1;
  int **ppiVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  short *psVar7;
  longlong lVar8;
  int *piStack_50;
  int iStack_4c;
  int iStack_48;
  int iStack_44;
  int iStack_40;
  int iStack_38;
  int iStack_34;
  int iStack_2c;
  int iStack_28;
  int iStack_20;
  int iStack_1c;

  if ((*(int *)(param_1 + 0x2c) < 1) || (*(int *)(param_1 + 0x30) < 1)) {
    return 1;
  }
  piStack_50 = &iStack_4c;
  ov96_021EB06C(**(undefined4 **)(param_1 + 4),*(int *)(param_1 + 0x2c) >> 0xc,
                *(int *)(param_1 + 0x30) >> 0xc,&iStack_48);
  if ((0x3f < iStack_4c) && (iStack_4c < 0xa1)) {
    if (iStack_48 < 1) {
      uVar3 = func_0x020f2178(iStack_48 << 0xc);
      func_0x020f24c8(uVar3,0x3f000000);
    }
    else {
      uVar3 = func_0x020f2178(iStack_48 << 0xc);
      func_0x020f1520(0x3f000000,uVar3);
    }
    iVar4 = func_0x020f2104();
    if (iStack_4c < 1) {
      uVar3 = func_0x020f2178(iStack_4c << 0xc);
      func_0x020f24c8(uVar3,0x3f000000);
    }
    else {
      uVar3 = func_0x020f2178(iStack_4c << 0xc);
      func_0x020f1520(0x3f000000,uVar3);
    }
    iVar5 = func_0x020f2104();
    iVar6 = 0;
    psVar7 = (short *)0x221d6d4;
    ppiVar2 = &piStack_50;
    do {
      iVar6 = iVar6 + 1;
      ppiVar2[3] = (int *)((int)*psVar7 << 0xc);
      psVar1 = psVar7 + 1;
      psVar7 = psVar7 + 2;
      ppiVar2[4] = (int *)((int)*psVar1 << 0xc);
      ppiVar2 = ppiVar2 + 3;
    } while (iVar6 < 4);
    lVar8 = func_0x020f2948(iStack_34 - iStack_40,iStack_34 - iStack_40 >> 0x1f,iVar4 - iStack_44,
                            iVar4 - iStack_44 >> 0x1f);
    iVar6 = func_0x020ccba0((uint)(lVar8 + 0x800) >> 0xc |
                            (int)((ulonglong)(lVar8 + 0x800) >> 0x20) * 0x100000,
                            iStack_38 - iStack_44);
    lVar8 = func_0x020f2948(iStack_1c - iStack_28,iStack_1c - iStack_28 >> 0x1f,iVar4 - iStack_2c,
                            iVar4 - iStack_2c >> 0x1f);
    iVar4 = func_0x020ccba0((uint)(lVar8 + 0x800) >> 0xc |
                            (int)((ulonglong)(lVar8 + 0x800) >> 0x20) * 0x100000,
                            iStack_20 - iStack_2c);
    if ((iVar6 + iStack_40 <= iVar5) && (iVar4 + iStack_28 <= iVar5)) {
      return 0;
    }
  }
  return 1;
}

