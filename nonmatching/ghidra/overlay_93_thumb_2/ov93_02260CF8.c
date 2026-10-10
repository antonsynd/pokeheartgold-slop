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
undefined4 PaletteData_GetBufferColorAtIndex();
undefined4 SpriteManager_FindPlttResourceOffset();
undefined4 PaletteData_GetFadedBuf();
undefined4 ov93_0225E3C4();
undefined4 PaletteData_GetUnfadedBuf();
undefined4 sub_0203769C();
extern undefined ov93_02262C8A;

void ov93_02260CF8(int *param_1)

{
  undefined2 uVar1;
  int iVar2;
  byte *pbVar3;
  int iVar4;
  undefined2 *puVar5;
  undefined2 *puVar6;
  int iVar7;
  undefined2 *puVar8;
  uint uVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  undefined2 *puStack_ac;
  ushort *puStack_a8;
  int iStack_98;
  undefined2 auStack_94 [64];
  
  iVar2 = SpriteManager_FindPlttResourceOffset(param_1[10],0x2716,2);
  iStack_98 = 0;
  if (*(char *)(*param_1 + 0x30) != '\0') {
    puStack_a8 = (ushort *)&ov93_02262C8A;
    puStack_ac = auStack_94;
    do {
      iVar12 = 0;
      uVar9 = (uint)*puStack_a8 + iVar2 * 0x10;
      puVar5 = puStack_ac;
      do {
        uVar1 = PaletteData_GetBufferColorAtIndex(param_1[0x23],3,1,uVar9 & 0xffff);
        *puVar5 = uVar1;
        iVar12 = iVar12 + 1;
        uVar9 = uVar9 + 1;
        puVar5 = puVar5 + 1;
      } while (iVar12 < 0x10);
      puStack_a8 = puStack_a8 + 1;
      puStack_ac = puStack_ac + 0x10;
      iStack_98 = iStack_98 + 1;
    } while (iStack_98 < (int)(uint)*(byte *)(*param_1 + 0x30));
  }
  uVar9 = sub_0203769C();
  iVar7 = *param_1;
  iVar12 = 0;
  pbVar3 = (byte *)(iVar7 + 0x30);
  if (*pbVar3 != 0) {
    do {
      if (uVar9 == *(byte *)(iVar7 + 0x2c)) break;
      iVar12 = iVar12 + 1;
      iVar7 = iVar7 + 1;
    } while (iVar12 < (int)(uint)*pbVar3);
  }
  iVar12 = PaletteData_GetUnfadedBuf(param_1[0x23],3);
  iVar7 = PaletteData_GetFadedBuf(param_1[0x23],3);
  iVar4 = *param_1;
  uVar9 = (uint)*(byte *)(iVar4 + 0x30);
  iVar10 = 0;
  if (uVar9 != 0) {
    do {
      iVar4 = ov93_0225E3C4(param_1,*(undefined1 *)(iVar4 + iVar10 + 0x2c));
      puVar5 = auStack_94 + iVar10 * 0x10;
      iVar11 = (iVar2 * 0x10 + (uint)*(ushort *)(iVar4 * 2 + uVar9 * 8 + 0x2262d04)) * 2;
      iVar4 = 0;
      puVar6 = (undefined2 *)(iVar12 + iVar11);
      puVar8 = (undefined2 *)(iVar7 + iVar11);
      do {
        iVar4 = iVar4 + 1;
        *puVar6 = *puVar5;
        uVar1 = *puVar5;
        puVar5 = puVar5 + 1;
        puVar6 = puVar6 + 1;
        *puVar8 = uVar1;
        puVar8 = puVar8 + 1;
      } while (iVar4 < 0x10);
      iVar4 = *param_1;
      iVar10 = iVar10 + 1;
      uVar9 = (uint)*(byte *)(iVar4 + 0x30);
    } while (iVar10 < (int)uVar9);
  }
  return;
}

