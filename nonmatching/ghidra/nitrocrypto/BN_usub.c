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
undefined4 bn_fix_top();
undefined4 bn_expand2();

undefined4 BN_usub(int *param_1,int *param_2,undefined4 *param_3)

{
  int *piVar1;
  int iVar2;
  uint *puVar3;
  uint *puVar4;
  uint *puVar5;
  uint *puVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  uint *puVar10;
  uint uVar11;
  bool bVar12;

  iVar7 = param_3[1];
  iVar8 = param_2[1];
  if (iVar8 < iVar7) {
    return 0;
  }
  piVar1 = param_1;
  if (param_1[2] < iVar8) {
    piVar1 = (int *)bn_expand2(param_1,iVar8);
  }
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  bVar12 = false;
  iVar2 = 0;
  puVar5 = (uint *)*param_2;
  puVar10 = (uint *)*param_3;
  puVar3 = (uint *)*param_1;
  puVar4 = puVar3;
  puVar6 = puVar5;
  if (0 < iVar7) {
    do {
      puVar5 = puVar6 + 1;
      uVar11 = *puVar6;
      uVar9 = *puVar10;
      if (bVar12) {
        if (uVar11 <= uVar9) {
          bVar12 = true;
        }
        if (uVar9 < uVar11) {
          bVar12 = false;
        }
        uVar11 = (uVar11 - uVar9) - 1;
      }
      else {
        bVar12 = uVar11 < uVar9;
        uVar11 = uVar11 - uVar9;
      }
      iVar2 = iVar2 + 1;
      puVar3 = puVar4 + 1;
      *puVar4 = uVar11;
      puVar4 = puVar3;
      puVar6 = puVar5;
      puVar10 = puVar10 + 1;
    } while (iVar2 < iVar7);
  }
  puVar4 = puVar3;
  puVar6 = puVar5;
  if (bVar12) {
    do {
      puVar3 = puVar4;
      puVar5 = puVar6;
      if (iVar8 <= iVar2) break;
      puVar5 = puVar6 + 1;
      uVar11 = *puVar6;
      iVar2 = iVar2 + 1;
      uVar9 = uVar11 - 1;
      puVar3 = puVar4 + 1;
      *puVar4 = uVar9;
      puVar4 = puVar3;
      puVar6 = puVar5;
    } while (uVar11 <= uVar9);
  }
  if (puVar3 != puVar5) {
    while (((iVar2 < iVar8 && (*puVar3 = *puVar5, iVar2 + 1 < iVar8)) &&
           (puVar3[1] = puVar5[1], iVar2 + 2 < iVar8))) {
      iVar7 = iVar2 + 3;
      puVar3[2] = puVar5[2];
      iVar2 = iVar2 + 4;
      if (iVar8 <= iVar7) break;
      puVar3[3] = puVar5[3];
      puVar5 = puVar5 + 4;
      puVar3 = puVar3 + 4;
    }
  }
  param_1[1] = iVar8;
  bn_fix_top(param_1);
  return 1;
}

