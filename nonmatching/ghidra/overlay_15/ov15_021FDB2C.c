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
undefined4 func_0x020f2998() __asm__("sub_020F2998");

void ov15_021FDB2C(int param_1,int param_2)

{
  ushort uVar1;
  ushort uVar2;
  undefined2 uVar3;
  ushort uVar4;
  short sVar5;
  short sVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;

  iVar11 = param_2 * 0x90 + 0x2200790;
  if (*(short *)(param_1 + 0x128) != *(short *)(param_1 + 0x12a)) {
    *(short *)(param_1 + 0x128) = *(short *)(param_1 + 0x128) + 1;
    iVar9 = *(int *)(param_1 + 0x11c) * 0x10;
    iVar7 = *(int *)(param_1 + 0x120) * 0x10;
    uVar2 = *(ushort *)(iVar11 + iVar9);
    iVar8 = (uint)*(ushort *)(iVar11 + iVar7) - (uint)uVar2;
    if (iVar8 < 0) {
      iVar8 = -iVar8;
    }
    if ((uint)*(ushort *)(iVar11 + iVar7) < (uint)uVar2) {
      iVar10 = -1;
    }
    else {
      iVar10 = 1;
    }
    if (0x8000 < iVar8) {
      iVar8 = 0x10000 - iVar8;
      iVar10 = -iVar10;
    }
    if (iVar10 < 1) {
      uVar3 = *(undefined2 *)(param_1 + 0x12a);
      uVar4 = *(ushort *)(param_1 + 0x128);
      sVar5 = func_0x020f2998(iVar8,uVar3);
      sVar5 = -(uVar4 * sVar5);
    }
    else {
      uVar3 = *(undefined2 *)(param_1 + 0x12a);
      uVar4 = *(ushort *)(param_1 + 0x128);
      sVar5 = func_0x020f2998(iVar8,uVar3);
      sVar5 = uVar4 * sVar5;
    }
    uVar1 = *(ushort *)(iVar11 + iVar9 + 2);
    sVar6 = func_0x020f2998((uint)*(ushort *)(iVar11 + iVar7 + 2) - (uint)uVar1,uVar3);
    iVar10 = *(int *)(iVar11 + iVar9 + 8);
    iVar8 = func_0x020f2998(*(int *)(iVar11 + iVar7 + 8) - iVar10,uVar3);
    iVar9 = *(int *)(iVar11 + iVar9 + 0xc);
    iVar11 = func_0x020f2998(*(int *)(iVar11 + iVar7 + 0xc) - iVar9,uVar3);
    *(ushort *)(param_1 + 0x10c) = uVar2 + sVar5;
    *(ushort *)(param_1 + 0x10e) = uVar1 + uVar4 * sVar6;
    *(uint *)(param_1 + 0x108) = iVar10 + (uint)uVar4 * iVar8;
    *(uint *)(param_1 + 0x130) = iVar9 + (uint)uVar4 * iVar11;
  }
  if ((*(short *)(param_1 + 0x128) == *(short *)(param_1 + 0x12a)) &&
     (*(int *)(param_1 + 0x124) != -1)) {
    *(undefined4 *)(param_1 + 0x11c) = *(undefined4 *)(param_1 + 0x120);
    *(undefined4 *)(param_1 + 0x120) = *(undefined4 *)(param_1 + 0x124);
    *(undefined4 *)(param_1 + 0x124) = 0xffffffff;
    *(undefined2 *)(param_1 + 0x128) = 0;
  }
  return;
}

