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
undefined4 ov40_0223D618();
undefined4 ov40_022303B8();
undefined4 func_0x0200dd68() __asm__("sub_0200DD68");
extern undefined ov40_02245808;

void ov40_0223D68C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  uint *puVar3;
  uint *puVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  uint *puVar10;
  int iVar11;
  int iStack_8c;
  int iStack_88;
  int iStack_80;
  uint auStack_78 [24];
  undefined4 uStack_18;

  iVar1 = *(int *)(param_1 + 0x860);
  puVar10 = (uint *)&ov40_02245808;
  puVar4 = auStack_78 + 0xc;
  iVar8 = 6;
  uStack_18 = param_4;
  do {
    uVar2 = *puVar10;
    uVar6 = puVar10[1];
    puVar10 = puVar10 + 2;
    *puVar4 = uVar2;
    puVar4[1] = uVar6;
    puVar4 = puVar4 + 2;
    iVar8 = iVar8 + -1;
  } while (iVar8 != 0);
  auStack_78[6] = 0;
  auStack_78[7] = 0;
  auStack_78[8] = 0;
  auStack_78[9] = 0;
  auStack_78[10] = 0;
  auStack_78[0xb] = 0;
  auStack_78[0] = 0;
  auStack_78[1] = 0;
  auStack_78[2] = 0;
  auStack_78[3] = 0;
  auStack_78[4] = 0;
  auStack_78[5] = 0;
  iStack_80 = 0;
  iStack_88 = param_1 + *(short *)(param_1 + 0x4a4) * 4;
  iStack_8c = iVar1;
  do {
    if (*(int *)(iStack_88 + 0x2608) != 0) {
      iVar8 = ov40_022303B8(*(int *)(iStack_88 + 0x2608) + 0x80);
      iVar11 = 0;
      iVar7 = 0;
      puVar4 = auStack_78 + 6;
      puVar10 = auStack_78;
      iVar9 = 0;
      do {
        *puVar4 = 0;
        puVar4 = puVar4 + 1;
        iVar7 = iVar7 + 1;
        *puVar10 = 0;
        puVar10 = puVar10 + 1;
      } while (iVar7 < 6);
      puVar3 = auStack_78 + (uint)(iVar8 != 0) * 6 + 0xc;
      puVar4 = auStack_78 + 6;
      puVar10 = auStack_78;
      do {
        uVar6 = *puVar3;
        uVar2 = (uint)*(ushort *)(*(int *)(iStack_88 + 0x2608) + uVar6 * 2 + 0x80);
        if (uVar2 != 0) {
          *puVar4 = uVar2;
          puVar4 = puVar4 + 1;
          iVar11 = iVar11 + 1;
          *puVar10 = (uint)*(byte *)(*(int *)(iStack_88 + 0x2608) + uVar6 + 0x98);
          puVar10 = puVar10 + 1;
        }
        iVar9 = iVar9 + 1;
        puVar3 = puVar3 + 1;
      } while (iVar9 < 3);
      iVar7 = ov40_022303B8(*(int *)(iStack_88 + 0x2608) + 0x80);
      if (iVar7 != 0) {
        iVar11 = 3;
      }
      iVar7 = 3;
      puVar4 = auStack_78 + (uint)(iVar8 != 0) * 6 + 0xf;
      puVar10 = auStack_78 + iVar11 + 6;
      puVar3 = auStack_78 + iVar11;
      do {
        uVar6 = *puVar4;
        uVar2 = (uint)*(ushort *)(*(int *)(iStack_88 + 0x2608) + uVar6 * 2 + 0x80);
        if (uVar2 != 0) {
          *puVar10 = uVar2;
          puVar10 = puVar10 + 1;
          *puVar3 = (uint)*(byte *)(*(int *)(iStack_88 + 0x2608) + uVar6 + 0x98);
          puVar3 = puVar3 + 1;
        }
        iVar7 = iVar7 + 1;
        puVar4 = puVar4 + 1;
      } while (iVar7 < 6);
      iVar7 = 0;
      puVar4 = auStack_78 + 6;
      puVar10 = auStack_78;
      iVar8 = iStack_8c;
      do {
        uVar6 = *puVar4;
        uVar2 = *puVar10;
        *(undefined4 *)(iVar8 + 0x518) = *(undefined4 *)(iVar1 + 0x514);
        uVar5 = ov40_0222FEA0(param_1,*(undefined4 *)(iVar1 + 0x50c),*(undefined4 *)(iVar8 + 0x518),
                              uVar6,uVar2,0);
        *(undefined4 *)(iVar8 + 0x51c) = uVar5;
        if (*(int *)(iVar8 + 0x51c) != 0) {
          func_0x0200dd68(*(int *)(iVar8 + 0x51c),6 - iVar7);
        }
        iVar7 = iVar7 + 1;
        puVar4 = puVar4 + 1;
        puVar10 = puVar10 + 1;
        iVar8 = iVar8 + 8;
        *(int *)(iVar1 + 0x514) = *(int *)(iVar1 + 0x514) + 1;
      } while (iVar7 < 6);
    }
    iStack_88 = iStack_88 + 4;
    iStack_8c = iStack_8c + 0x30;
    iStack_80 = iStack_80 + 1;
  } while (iStack_80 < 5);
  ov40_0223D618(param_1);
  return;
}

