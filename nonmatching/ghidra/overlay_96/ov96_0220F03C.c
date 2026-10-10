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
undefined4 ov96_021E8A20();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_021E5F24();
undefined4 ov96_0220F8C8();
undefined4 ov96_02210030();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_0220FA18();
undefined4 ov96_02210858();
undefined4 func_0x020f2998() __asm__("sub_020F2998");

void ov96_0220F03C(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  int *piVar7;
  undefined4 uVar8;
  uint uVar9;
  int iVar10;
  ushort *puVar11;
  int iVar12;
  uint uStack_20;
  
  iVar1 = PokeathlonCourse_GetHeapAllocPtr4();
  iVar2 = PokeathlonCourse_GetDataCopyArea(param_1);
  iVar3 = ov96_021E5F24(param_1);
  if (iVar3 == 0) {
    uStack_20 = 0;
    iVar3 = ov96_021E8A20(iVar2 + 0x28);
    if (*(int *)(iVar3 + 0x20) < 0) {
      ov96_0220FA18(iVar1 + 0xcc,param_1);
      return;
    }
    if (0 < *(int *)(iVar1 + 0x50c)) {
      *(int *)(iVar1 + 0x50c) = *(int *)(iVar1 + 0x50c) + -1;
      uStack_20 = func_0x020f2998(*(int *)(iVar1 + 0x50c) + 0x1e,0x1e);
      *(uint *)(iVar3 + 0x1c) = *(uint *)(iVar3 + 0x1c) & 0xc0ffffff | (uStack_20 & 0x3f) << 0x18;
    }
    puVar4 = (undefined4 *)ov96_021E8A20(iVar2 + 0x50);
    puVar5 = (undefined4 *)ov96_021E8A20(iVar2);
    iVar10 = 4;
    do {
      uVar6 = *puVar5;
      uVar8 = puVar5[1];
      puVar5 = puVar5 + 2;
      *puVar4 = uVar6;
      puVar4[1] = uVar8;
      puVar4 = puVar4 + 2;
      iVar10 = iVar10 + -1;
    } while (iVar10 != 0);
    iVar12 = 0;
    *puVar4 = *puVar5;
    iVar10 = iVar2 + 0x50;
    puVar11 = (ushort *)(iVar1 + 0x15c);
    do {
      piVar7 = (int *)ov96_021E8A20(iVar10);
      uVar9 = *(uint *)(puVar11 + 2);
      if (*piVar7 << 0xf < 0) {
        if (((int)(uVar9 << 0x11) < 0) && ((int)(uVar9 << 0x10) < 0)) {
          *(uint *)(puVar11 + 2) = uVar9 & 0xffffbfff;
        }
        else if ((-1 < (int)(uVar9 << 0x11)) && (-1 < (int)(*(uint *)(puVar11 + 2) << 0x10))) {
          *(uint *)(puVar11 + 2) = *(uint *)(puVar11 + 2) | 0xc000;
        }
        *puVar11 = (ushort)*piVar7 & 0xff;
        puVar11[1] = (ushort)((uint)*piVar7 >> 8) & 0xff;
        *(uint *)(puVar11 + 2) =
             *(uint *)(puVar11 + 2) & 0xffffc000 | (*(uint *)(puVar11 + 2) & 0x3fff) + 1 & 0x3fff;
      }
      else {
        *(uint *)(puVar11 + 2) = (uVar9 & 0x1fff) << 0x10 | uVar9 & 0xe0000000;
      }
      iVar12 = iVar12 + 1;
      iVar10 = iVar10 + 0x28;
      puVar11 = puVar11 + 0x72;
    } while (iVar12 < 4);
    ov96_02210858(*(undefined4 *)(iVar1 + 200));
    ov96_02210030(iVar1 + 0x4ec,iVar2,uStack_20);
    ov96_0220F8C8(iVar1 + 0x15c,param_1);
    if (*(int *)(iVar1 + 0x50c) < 1) {
      *(uint *)(iVar3 + 0x20) = *(uint *)(iVar3 + 0x20) & 0x7fffffff | 0x80000000;
    }
    ov96_0220FA18(iVar1 + 0xcc,param_1);
  }
  return;
}

