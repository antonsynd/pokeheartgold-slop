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
undefined4 ov40_0223A3BC();
undefined4 ov40_022303B8();
undefined4 func_0x0200dd68() __asm__("sub_0200DD68");
extern undefined ov40_0224554C;

void ov40_0223D008(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  int iVar2;
  uint uVar3;
  uint *puVar4;
  uint *puVar5;
  undefined4 uVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  uint *puVar11;
  int iVar12;
  int iStack_8c;
  int iStack_88;
  int iStack_80;
  uint auStack_78 [24];
  undefined4 uStack_18;

  iVar2 = *(int *)(param_1 + 0x860);
  puVar11 = (uint *)&ov40_0224554C;
  sVar1 = *(short *)(param_1 + 0x4a4);
  puVar5 = auStack_78 + 0xc;
  iVar9 = 6;
  uStack_18 = param_4;
  do {
    uVar3 = *puVar11;
    uVar7 = puVar11[1];
    puVar11 = puVar11 + 2;
    *puVar5 = uVar3;
    puVar5[1] = uVar7;
    puVar5 = puVar5 + 2;
    iVar9 = iVar9 + -1;
  } while (iVar9 != 0);
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
  iStack_88 = param_1 + sVar1 * 4;
  iStack_8c = iVar2;
  do {
    if (*(int *)(iStack_88 + 0x2608) != 0) {
      iVar9 = ov40_022303B8(*(int *)(iStack_88 + 0x2608) + 0x80);
      iVar12 = 0;
      iVar8 = 0;
      puVar5 = auStack_78 + 6;
      puVar11 = auStack_78;
      iVar10 = 0;
      do {
        *puVar5 = 0;
        puVar5 = puVar5 + 1;
        iVar8 = iVar8 + 1;
        *puVar11 = 0;
        puVar11 = puVar11 + 1;
      } while (iVar8 < 6);
      puVar4 = auStack_78 + (uint)(iVar9 != 0) * 6 + 0xc;
      puVar5 = auStack_78 + 6;
      puVar11 = auStack_78;
      do {
        uVar7 = *puVar4;
        uVar3 = (uint)*(ushort *)(*(int *)(iStack_88 + 0x2608) + uVar7 * 2 + 0x80);
        if (uVar3 != 0) {
          *puVar5 = uVar3;
          puVar5 = puVar5 + 1;
          iVar12 = iVar12 + 1;
          *puVar11 = (uint)*(byte *)(*(int *)(iStack_88 + 0x2608) + uVar7 + 0x98);
          puVar11 = puVar11 + 1;
        }
        iVar10 = iVar10 + 1;
        puVar4 = puVar4 + 1;
      } while (iVar10 < 3);
      iVar8 = ov40_022303B8(*(int *)(iStack_88 + 0x2608) + 0x80);
      if (iVar8 != 0) {
        iVar12 = 3;
      }
      iVar8 = 3;
      puVar5 = auStack_78 + (uint)(iVar9 != 0) * 6 + 0xf;
      puVar11 = auStack_78 + iVar12 + 6;
      puVar4 = auStack_78 + iVar12;
      do {
        uVar7 = *puVar5;
        uVar3 = (uint)*(ushort *)(*(int *)(iStack_88 + 0x2608) + uVar7 * 2 + 0x80);
        if (uVar3 != 0) {
          *puVar11 = uVar3;
          puVar11 = puVar11 + 1;
          *puVar4 = (uint)*(byte *)(*(int *)(iStack_88 + 0x2608) + uVar7 + 0x98);
          puVar4 = puVar4 + 1;
        }
        iVar8 = iVar8 + 1;
        puVar5 = puVar5 + 1;
      } while (iVar8 < 6);
      iVar8 = 0;
      puVar5 = auStack_78 + 6;
      puVar11 = auStack_78;
      iVar9 = iStack_8c;
      do {
        uVar7 = *puVar5;
        uVar3 = *puVar11;
        *(undefined4 *)(iVar9 + 0x208c) = *(undefined4 *)(iVar2 + 0x2088);
        uVar6 = ov40_0222FEA0(param_1,*(undefined4 *)(iVar2 + 0x2080),
                              *(undefined4 *)(iVar9 + 0x208c),uVar7,uVar3,0);
        *(undefined4 *)(iVar9 + 0x2090) = uVar6;
        if (*(int *)(iVar9 + 0x2090) != 0) {
          func_0x0200dd68(*(int *)(iVar9 + 0x2090),6 - iVar8);
        }
        iVar8 = iVar8 + 1;
        puVar5 = puVar5 + 1;
        puVar11 = puVar11 + 1;
        iVar9 = iVar9 + 8;
        *(int *)(iVar2 + 0x2088) = *(int *)(iVar2 + 0x2088) + 1;
      } while (iVar8 < 6);
    }
    iStack_88 = iStack_88 + 4;
    iStack_8c = iStack_8c + 0x30;
    iStack_80 = iStack_80 + 1;
  } while (iStack_80 < 5);
  ov40_0223A3BC(param_1);
  return;
}

