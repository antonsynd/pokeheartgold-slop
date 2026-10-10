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
undefined4 ov80_02236BE4();
undefined4 ov80_022372B4();
undefined4 ov80_022300D4();
undefined4 ov80_0222A3BC();
undefined4 ov80_02236DF8();
undefined4 ov80_0222A140();
undefined4 ov80_02236E90();
undefined4 ov80_02237120();
undefined4 AllocMonZeroed();
undefined4 func_0x02237254() __asm__("sub_02237254");
undefined4 ov80_02236E24();
undefined4 Party_GetMonByIndex();
undefined4 Heap_Free();

void ov80_0222FF00(int param_1)

{
  undefined2 *puVar1;
  ushort uVar2;
  undefined4 uVar3;
  ushort *puVar4;
  undefined4 uVar5;
  ushort *puVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  int iVar9;
  undefined2 *puVar10;
  undefined4 *puVar11;
  int iVar12;
  int iVar13;
  int iStack_2d4;
  undefined4 uStack_2d0;
  undefined2 auStack_2cc [6];
  ushort auStack_2c0 [6];
  undefined4 auStack_2b4 [168];

  uVar3 = ov80_022372B4();
  ov80_02236BE4(*(undefined1 *)(param_1 + 4),uVar3,param_1 + 0x18,0xe);
  uVar3 = ov80_022372B4(param_1);
  ov80_02236E24(uVar3,*(undefined1 *)(param_1 + 5),param_1 + 0x254,param_1 + 0x280,param_1 + 0x260,
                param_1 + 0x268,*(undefined2 *)(param_1 + 8),0,0);
  ov80_022300D4(param_1,4,0);
  ov80_022300D4(param_1,5,0);
  uStack_2d0 = 6;
  iVar13 = 0;
  puVar11 = auStack_2b4;
  iVar9 = param_1;
  do {
    puVar7 = (undefined4 *)(iVar9 + 0x280);
    iVar12 = 7;
    puVar8 = puVar11;
    do {
      uVar3 = *puVar7;
      uVar5 = puVar7[1];
      puVar7 = puVar7 + 2;
      *puVar8 = uVar3;
      puVar8[1] = uVar5;
      puVar8 = puVar8 + 2;
      iVar12 = iVar12 + -1;
    } while (iVar12 != 0);
    iVar13 = iVar13 + 1;
    iVar9 = iVar9 + 0x38;
    puVar11 = puVar11 + 0xe;
  } while (iVar13 < 6);
  iVar9 = func_0x02237254(*(undefined1 *)(param_1 + 4));
  if (iVar9 == 1) {
    iVar13 = 0;
    puVar4 = (ushort *)(param_1 + 0x280);
    puVar6 = auStack_2c0;
    puVar10 = auStack_2cc;
    iVar9 = param_1;
    do {
      uVar2 = *puVar4;
      iVar13 = iVar13 + 1;
      puVar4 = puVar4 + 0x1c;
      *puVar6 = uVar2 & 0x7ff;
      puVar1 = (undefined2 *)(iVar9 + 0x282);
      puVar6 = puVar6 + 1;
      iVar9 = iVar9 + 0x38;
      *puVar10 = *puVar1;
      puVar10 = puVar10 + 1;
    } while (iVar13 < 6);
    uVar3 = ov80_022372B4(param_1);
    ov80_02236E24(uVar3,*(undefined1 *)(param_1 + 5),param_1 + 0x584,param_1 + 0x5b0,param_1 + 0x590
                  ,param_1 + 0x598,*(undefined2 *)(param_1 + 0x580),auStack_2c0,auStack_2cc);
    ov80_022300D4(param_1,4,1);
    ov80_022300D4(param_1,5,1);
    uStack_2d0 = 0xc;
    iStack_2d4 = 0;
    puVar11 = auStack_2b4;
    iVar9 = param_1;
    do {
      puVar7 = (undefined4 *)(iVar9 + 0x5b0);
      puVar8 = puVar11 + 0x54;
      iVar13 = 7;
      do {
        uVar3 = *puVar7;
        uVar5 = puVar7[1];
        puVar7 = puVar7 + 2;
        *puVar8 = uVar3;
        puVar8[1] = uVar5;
        puVar8 = puVar8 + 2;
        iVar13 = iVar13 + -1;
      } while (iVar13 != 0);
      iVar9 = iVar9 + 0x38;
      iStack_2d4 = iStack_2d4 + 1;
      puVar11 = puVar11 + 0xe;
    } while (iStack_2d4 < 6);
  }
  uVar3 = ov80_02236DF8(*(undefined1 *)(param_1 + 4),1);
  ov80_02236E90(uVar3,*(undefined2 *)(param_1 + (uint)*(byte *)(param_1 + 6) * 2 + 0x18),
                *(undefined1 *)(param_1 + 5),auStack_2b4,param_1 + 0x3d2,param_1 + 0x3f0,
                param_1 + 0x3da,param_1 + 0x3e0,uStack_2d0);
  iVar13 = 0;
  iVar9 = param_1 + 0x280;
  do {
    uVar3 = AllocMonZeroed(0xb);
    uVar5 = ov80_02237120(param_1);
    ov80_0222A140(iVar9,uVar3,uVar5);
    ov80_0222A3BC(*(undefined4 *)(param_1 + 0x4f8),*(undefined4 *)(param_1 + 0x4d4),uVar3);
    Heap_Free(uVar3);
    iVar13 = iVar13 + 1;
    iVar9 = iVar9 + 0x38;
  } while (iVar13 < 6);
  iVar9 = 0;
  do {
    Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x4d4),iVar9);
    iVar9 = iVar9 + 1;
  } while (iVar9 < 6);
  return;
}

