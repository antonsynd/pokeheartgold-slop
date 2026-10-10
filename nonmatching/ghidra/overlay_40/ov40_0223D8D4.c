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
undefined4 ov40_0222FEA0();
undefined4 func_0x0200d958() __asm__("sub_0200D958");
undefined4 ov40_0223D618();
undefined4 ov40_0222FF64();
undefined4 func_0x0200dd68() __asm__("sub_0200DD68");
undefined4 ov40_022303B8();
undefined4 ov40_02230964();
extern undefined ov40_02245838;

void ov40_0223D8D4(int param_1)

{
  short sVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  uint *puVar7;
  uint *puVar8;
  int iVar9;
  int *piVar10;
  uint *puVar11;
  int iVar12;
  int iVar13;
  int iStack_ac;
  int iStack_a8;
  int iStack_a0;
  int iStack_98;
  uint auStack_8c [24];
  int aiStack_2c [6];
  
  iStack_98 = 0;
  aiStack_2c[0] = 0;
  aiStack_2c[1] = 0;
  aiStack_2c[2] = 0;
  aiStack_2c[3] = 0;
  aiStack_2c[4] = 0;
  aiStack_2c[5] = 0;
  iVar5 = *(int *)(param_1 + 0x860);
  if (*(int *)(iVar5 + 0x510) != (int)*(short *)(param_1 + 0x4a4)) {
    ov40_02230964(param_1,1);
    if ((int)*(short *)(param_1 + 0x4a4) < *(int *)(iVar5 + 0x510)) {
      iStack_98 = 4;
    }
    iVar12 = 0;
    iVar9 = iVar5 + iStack_98 * 0x30;
    piVar10 = aiStack_2c;
    do {
      if (*(int *)(iVar9 + 0x51c) != 0) {
        ov40_0222FF64(param_1,*(undefined4 *)(iVar9 + 0x518));
        *piVar10 = *(int *)(iVar9 + 0x518);
        *(undefined4 *)(iVar9 + 0x51c) = 0;
      }
      iVar12 = iVar12 + 1;
      iVar9 = iVar9 + 8;
      piVar10 = piVar10 + 1;
    } while (iVar12 < 6);
    if (iStack_98 == 0) {
      iVar12 = 1;
      iVar9 = iVar5;
      do {
        iVar9 = iVar9 + 0x30;
        iVar13 = 0;
        iVar2 = iVar9;
        do {
          iVar13 = iVar13 + 1;
          *(undefined4 *)(iVar2 + 0x4ec) = *(undefined4 *)(iVar2 + 0x51c);
          *(undefined4 *)(iVar2 + 0x4e8) = *(undefined4 *)(iVar2 + 0x518);
          iVar2 = iVar2 + 8;
        } while (iVar13 < 6);
        iVar12 = iVar12 + 1;
      } while (iVar12 < 5);
      iStack_a8 = 4;
    }
    else {
      iStack_ac = 4;
      iVar9 = iVar5 + 0xc0;
      do {
        iVar2 = 0;
        iVar12 = iVar9;
        do {
          iVar2 = iVar2 + 1;
          *(undefined4 *)(iVar12 + 0x51c) = *(undefined4 *)(iVar12 + 0x4ec);
          *(undefined4 *)(iVar12 + 0x518) = *(undefined4 *)(iVar12 + 0x4e8);
          iVar12 = iVar12 + 8;
        } while (iVar2 < 6);
        iVar9 = iVar9 + -0x30;
        iStack_ac = iStack_ac + -1;
      } while (0 < iStack_ac);
      iStack_a8 = 0;
    }
    puVar11 = (uint *)&ov40_02245838;
    sVar1 = *(short *)(param_1 + 0x4a4);
    puVar7 = auStack_8c + 0xc;
    iVar9 = 6;
    do {
      uVar3 = *puVar11;
      uVar6 = puVar11[1];
      puVar11 = puVar11 + 2;
      *puVar7 = uVar3;
      puVar7[1] = uVar6;
      puVar7 = puVar7 + 2;
      iVar9 = iVar9 + -1;
    } while (iVar9 != 0);
    auStack_8c[6] = 0;
    auStack_8c[7] = 0;
    auStack_8c[8] = 0;
    auStack_8c[9] = 0;
    auStack_8c[10] = 0;
    auStack_8c[0xb] = 0;
    auStack_8c[0] = 0;
    auStack_8c[1] = 0;
    auStack_8c[2] = 0;
    auStack_8c[3] = 0;
    auStack_8c[4] = 0;
    auStack_8c[5] = 0;
    iVar9 = (sVar1 + iStack_a8) * 4;
    iVar12 = ov40_022303B8(*(int *)(param_1 + 0x2608 + iVar9) + 0x80);
    iVar2 = 0;
    iStack_a0 = 0;
    puVar7 = auStack_8c + 6;
    puVar11 = auStack_8c;
    iVar13 = 0;
    do {
      *puVar7 = 0;
      puVar7 = puVar7 + 1;
      iVar2 = iVar2 + 1;
      *puVar11 = 0;
      puVar11 = puVar11 + 1;
    } while (iVar2 < 6);
    puVar8 = auStack_8c + (uint)(iVar12 != 0) * 6 + 0xc;
    puVar7 = auStack_8c + 6;
    puVar11 = auStack_8c;
    iVar2 = param_1 + iVar9;
    do {
      uVar6 = *puVar8;
      uVar3 = (uint)*(ushort *)(*(int *)(iVar2 + 0x2608) + uVar6 * 2 + 0x80);
      if (uVar3 != 0) {
        *puVar7 = uVar3;
        puVar7 = puVar7 + 1;
        *puVar11 = (uint)*(byte *)(*(int *)(iVar2 + 0x2608) + uVar6 + 0x98);
        puVar11 = puVar11 + 1;
        iStack_a0 = iStack_a0 + 1;
      }
      iVar13 = iVar13 + 1;
      puVar8 = puVar8 + 1;
    } while (iVar13 < 3);
    iVar9 = ov40_022303B8(*(int *)(param_1 + 0x2608 + iVar9) + 0x80);
    if (iVar9 != 0) {
      iStack_a0 = 3;
    }
    iVar9 = 3;
    puVar11 = auStack_8c + iStack_a0 + 6;
    puVar7 = auStack_8c + (uint)(iVar12 != 0) * 6 + 0xf;
    puVar8 = auStack_8c + iStack_a0;
    do {
      uVar6 = *puVar7;
      uVar3 = (uint)*(ushort *)(*(int *)(iVar2 + 0x2608) + uVar6 * 2 + 0x80);
      if (uVar3 != 0) {
        *puVar11 = uVar3;
        puVar11 = puVar11 + 1;
        *puVar8 = (uint)*(byte *)(*(int *)(iVar2 + 0x2608) + uVar6 + 0x98);
        puVar8 = puVar8 + 1;
      }
      iVar9 = iVar9 + 1;
      puVar7 = puVar7 + 1;
    } while (iVar9 < 6);
    iVar12 = 0;
    puVar7 = auStack_8c + 6;
    puVar11 = auStack_8c;
    iVar9 = iVar5 + iStack_a8 * 0x30;
    do {
      uVar6 = *puVar7;
      uVar3 = *puVar11;
      *(undefined4 *)(iVar9 + 0x518) = *(undefined4 *)(iVar5 + 0x514);
      uVar4 = ov40_0222FEA0(param_1,*(undefined4 *)(iVar5 + 0x50c),*(undefined4 *)(iVar9 + 0x518),
                            uVar6,uVar3,0);
      *(undefined4 *)(iVar9 + 0x51c) = uVar4;
      if (*(int *)(iVar9 + 0x51c) != 0) {
        func_0x0200dd68(*(int *)(iVar9 + 0x51c),6 - iVar12);
      }
      iVar12 = iVar12 + 1;
      puVar7 = puVar7 + 1;
      puVar11 = puVar11 + 1;
      iVar9 = iVar9 + 8;
      *(int *)(iVar5 + 0x514) = *(int *)(iVar5 + 0x514) + 1;
    } while (iVar12 < 6);
    ov40_0223D618(param_1);
    *(int *)(iVar5 + 0x510) = (int)*(short *)(param_1 + 0x4a4);
    iVar5 = 0;
    piVar10 = aiStack_2c;
    do {
      if (*piVar10 != 0) {
        func_0x0200d958(*(undefined4 *)(param_1 + 0x1c),*piVar10 + 100000);
      }
      iVar5 = iVar5 + 1;
      piVar10 = piVar10 + 1;
    } while (iVar5 < 6);
    ov40_02230964(param_1,0);
  }
  return;
}

