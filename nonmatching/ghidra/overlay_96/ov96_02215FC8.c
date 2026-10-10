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
undefined4 ov96_0221768C();
undefined4 ov96_02219398();
undefined4 ov96_02219FE4();
undefined4 ov96_022180CC();
undefined4 ov96_02218330();
undefined4 ov96_02218A68();
undefined4 ov96_02219460();
undefined4 ov96_021E8A20();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_021E5F24();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_02218578();
undefined4 ov96_022158D4();

void ov96_02215FC8(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  uint *puVar7;
  uint uVar8;
  undefined4 uVar9;
  uint *puVar10;
  ushort *puVar11;
  ushort *puVar12;
  int iStack_24;
  int iStack_18;
  
  iVar1 = PokeathlonCourse_GetHeapAllocPtr4();
  iStack_24 = PokeathlonCourse_GetDataCopyArea(param_1);
  iVar2 = ov96_021E8A20(iStack_24 + 0x28);
  iVar3 = ov96_021E5F24(param_1);
  if (iVar3 == 0) {
    if (*(int *)(iVar2 + 0x20) < 0) {
      ov96_02218330(iVar1 + 0x188,param_1);
      return;
    }
    if (0 < *(int *)(iVar1 + 0x438)) {
      *(int *)(iVar1 + 0x438) = *(int *)(iVar1 + 0x438) + -1;
      *(uint *)(iVar2 + 0x20) =
           *(uint *)(iVar2 + 0x20) & 0xfff80007 | (*(uint *)(iVar1 + 0x438) & 0xffff) << 3;
    }
    puVar4 = (undefined4 *)ov96_021E8A20(iStack_24 + 0x50);
    puVar5 = (undefined4 *)ov96_021E8A20(iStack_24);
    iVar3 = 4;
    do {
      uVar6 = *puVar5;
      uVar9 = puVar5[1];
      puVar5 = puVar5 + 2;
      *puVar4 = uVar6;
      puVar4[1] = uVar9;
      puVar4 = puVar4 + 2;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    *puVar4 = *puVar5;
    iStack_18 = 0;
    iStack_24 = iStack_24 + 0x50;
    puVar12 = (ushort *)(iVar1 + 0x198);
    do {
      puVar7 = (uint *)ov96_021E8A20(iStack_24);
      puVar10 = (uint *)(puVar12 + 4);
      puVar11 = puVar12 + 6;
      if ((int)(*puVar7 << 0xf) < 0) {
        uVar8 = *puVar10;
        if (((int)(uVar8 << 0x11) < 0) && ((int)(uVar8 << 0x10) < 0)) {
          *puVar10 = uVar8 & 0xffffbfff;
        }
        else if ((-1 < (int)(uVar8 << 0x11)) && (-1 < (int)(*puVar10 << 0x10))) {
          *puVar10 = *puVar10 | 0xc000;
          puVar12[2] = (ushort)*puVar7 & 0xff;
          puVar12[3] = (ushort)(*puVar7 >> 8) & 0xff;
        }
        *puVar12 = (ushort)*puVar7 & 0xff;
        puVar12[1] = (ushort)(*puVar7 >> 8) & 0xff;
        *puVar10 = *puVar10 & 0xffffc000 | (*puVar10 & 0x3fff) + 1 & 0x3fff;
      }
      else {
        uVar8 = *puVar10;
        if ((int)(uVar8 << 0x10) < 0) {
          *puVar10 = (uVar8 & 0x1fff) << 0x10 | uVar8 & 0xe0000000;
        }
      }
      uVar6 = ov96_022158D4((int)(short)*puVar12,(int)(short)puVar12[1]);
      ov96_02219460(puVar11,puVar10,uVar6);
      if ((int)(*(uint *)(puVar12 + 0x36) << 5) < 0) {
        uVar8 = (*(uint *)(puVar12 + 0x36) & 0x3ffffff) >> 0x18;
        if ((uVar8 == 1) && ((*puVar7 & 0x7ffff) >> 0x11 == 1)) {
          ov96_02219398(puVar11);
          ov96_02218A68(puVar11);
          *(uint *)(puVar12 + 0x36) = *(uint *)(puVar12 + 0x36) & 0xfcffffff | 0x2000000;
        }
        else if ((uVar8 == 2) && ((*puVar7 & 0x7ffff) >> 0x11 == 2)) {
          *(uint *)(puVar12 + 0x36) = *(uint *)(puVar12 + 0x36) & 0xf8ffffff;
          ov96_02218578(puVar11,4);
        }
      }
      puVar12 = puVar12 + 0x54;
      iStack_24 = iStack_24 + 0x28;
      iStack_18 = iStack_18 + 1;
    } while (iStack_18 < 4);
    ov96_02219FE4(*(undefined4 *)(iVar1 + 0x184));
    ov96_022180CC(iVar1 + 0x198,param_1);
    if ((*(uint *)(iVar2 + 0x20) & 0x7ffff) >> 3 == 0) {
      *(uint *)(iVar2 + 0x20) = *(uint *)(iVar2 + 0x20) & 0x7fffffff | 0x80000000;
    }
    ov96_02218330(iVar1 + 0x188,param_1);
  }
  ov96_0221768C(iVar1 + 0x43c,param_1);
  return;
}

