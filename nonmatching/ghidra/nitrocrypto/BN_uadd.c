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
undefined4 bn_add_words();
undefined4 bn_expand2();

undefined4 BN_uadd(int *param_1,int *param_2,int *param_3)

{
  uint *puVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  uint *puVar7;
  uint *puVar8;
  int iVar9;
  uint *puVar10;
  int iVar11;
  int iVar12;
  int *piVar13;

  piVar13 = param_3;
  if (param_2[1] < param_3[1]) {
    piVar13 = param_2;
    param_2 = param_3;
  }
  iVar11 = param_2[1];
  iVar12 = piVar13[1];
  piVar2 = param_1;
  if (param_1[2] < iVar11 + 1) {
    piVar2 = (int *)bn_expand2(param_1);
  }
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  param_1[1] = iVar11;
  iVar9 = *param_2;
  iVar6 = *param_1;
  iVar3 = bn_add_words(iVar6,iVar9,*piVar13,iVar12);
  puVar7 = (uint *)(iVar6 + iVar12 * 4);
  puVar10 = (uint *)(iVar9 + iVar12 * 4);
  puVar1 = puVar10;
  if (iVar3 != 0) {
    do {
      puVar8 = puVar7;
      puVar10 = puVar1;
      if (iVar11 <= iVar12) goto LAB_02239d74;
      puVar10 = puVar1 + 1;
      uVar5 = *puVar1;
      puVar8 = puVar7 + 1;
      *puVar7 = uVar5 + 1;
      uVar4 = *puVar7;
      iVar12 = iVar12 + 1;
      puVar7 = puVar8;
      puVar1 = puVar10;
    } while (uVar4 < uVar5);
    iVar3 = 0;
LAB_02239d74:
    puVar7 = puVar8;
    if ((iVar11 <= iVar12) && (iVar3 != 0)) {
      puVar7 = puVar8 + 1;
      *puVar8 = 1;
      param_1[1] = param_1[1] + 1;
    }
  }
  if (puVar7 != puVar10) {
    for (; iVar12 < iVar11; iVar12 = iVar12 + 1) {
      *puVar7 = *puVar10;
      puVar7 = puVar7 + 1;
      puVar10 = puVar10 + 1;
    }
  }
  return 1;
}

