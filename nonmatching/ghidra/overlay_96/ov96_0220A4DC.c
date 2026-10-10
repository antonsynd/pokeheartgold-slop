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
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_021E5F24();
undefined4 ov96_0220A424();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_021E8A20();
undefined4 GF_AssertFail();

void ov96_0220A4DC(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  uint *puVar8;
  undefined4 uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  
  iVar1 = ov96_021E5F24();
  iVar2 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  iVar3 = PokeathlonCourse_GetDataCopyArea(param_1);
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  if (*(int *)(iVar2 + 0x4c) == 0) {
    GF_AssertFail();
  }
  if (*(int *)(iVar2 + 0x40) == 0) {
    GF_AssertFail();
  }
  if (iVar1 == 0) {
    puVar4 = (uint *)ov96_021E8A20(iVar3 + 0x28);
    puVar5 = (undefined4 *)ov96_021E8A20(iVar3 + 0x50);
    puVar6 = (undefined4 *)ov96_021E8A20(iVar3);
    iVar1 = 4;
    do {
      uVar7 = *puVar6;
      uVar9 = puVar6[1];
      puVar6 = puVar6 + 2;
      *puVar5 = uVar7;
      puVar5[1] = uVar9;
      puVar5 = puVar5 + 2;
      iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    iVar3 = iVar3 + 0x50;
    *puVar5 = *puVar6;
    iVar1 = 0;
    do {
      puVar8 = (uint *)ov96_021E8A20(iVar3);
      uVar10 = *puVar4;
      uVar11 = *puVar8 & 0xff;
      *puVar4 = uVar11 | uVar10 & 0xffffff00;
      iVar1 = iVar1 + 1;
      uVar12 = *puVar8 & 0xff00;
      *puVar4 = uVar12 | uVar11 | uVar10 & 0xffff0000;
      iVar3 = iVar3 + 0x28;
      uVar13 = *puVar8 & 0xff0000;
      *puVar4 = uVar13 | uVar12 | uVar11 | uVar10 & 0xff000000;
      uVar14 = *puVar8 & 0x3000000;
      *puVar4 = uVar14 | uVar13 | uVar12 | uVar11 | uVar10 & 0xfc000000;
      uVar15 = *puVar8;
      *puVar4 = uVar15 & 0x4000000 | uVar14 | uVar13 | uVar12 | uVar11 | uVar10 & 0xf8000000;
      *puVar4 = ((*puVar8 & 0x1fffffff) >> 0x1c) << 0x1b |
                uVar15 & 0x4000000 | uVar14 | uVar13 | uVar12 | uVar11 | uVar10 & 0xf0000000;
      puVar4 = puVar4 + 1;
    } while (iVar1 < 4);
  }
  ov96_0220A424(param_1);
  return;
}

