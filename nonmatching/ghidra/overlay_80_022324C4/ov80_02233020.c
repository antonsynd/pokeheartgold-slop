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
undefined4 sub_0203769C();
undefined4 GetMonData();
undefined4 ov80_02237B24();
undefined4 Party_GetMonByIndex();
undefined4 ov80_02237B58();

int ov80_02233020(int param_1)

{
  ushort *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  byte *pbVar12;
  int iVar13;
  int iStack_40;
  int iStack_30;
  byte abStack_28 [4];
  byte bStack_24;
  byte bStack_23;
  byte bStack_22;
  byte bStack_21;
  byte bStack_20;
  
  iVar2 = 0;
  pbVar12 = abStack_28;
  iVar13 = 0;
  do {
    iVar2 = iVar2 + 1;
    *pbVar12 = 0;
    pbVar12 = pbVar12 + 1;
  } while (iVar2 < 0x14);
  *(undefined1 *)(param_1 + 0x12) = 0;
  iVar2 = sub_0203769C();
  if (iVar2 == 0) {
    iStack_40 = 0;
  }
  else {
    iStack_40 = 2;
  }
  iVar2 = ov80_02237B24(*(undefined1 *)(param_1 + 0x10),0);
  iVar3 = ov80_02237B58(*(undefined1 *)(param_1 + 0x10),1);
  iVar4 = iVar2 + iStack_40;
  for (; iStack_40 < iVar4; iStack_40 = iStack_40 + 1) {
    uVar5 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x28),iStack_40);
    iVar6 = GetMonData(uVar5,0xac,0);
    if (iVar6 != 0) {
      uVar7 = GetMonData(uVar5,0xa3,0);
      uVar8 = GetMonData(uVar5,0xa4,0);
      if (uVar7 == 0) {
        *(undefined1 *)(param_1 + 0x12) = 1;
      }
      else {
        abStack_28[0] = abStack_28[0] + 1;
        if (uVar7 == uVar8) {
          abStack_28[1] = abStack_28[1] + 1;
        }
        else if (uVar7 < uVar8 >> 1) {
          abStack_28[3] = abStack_28[3] + 1;
        }
        else {
          abStack_28[2] = abStack_28[2] + 1;
        }
        iVar6 = GetMonData(uVar5,0xa0,0);
        if (iVar6 == 0) {
          bStack_24 = bStack_24 + 1;
        }
      }
      iVar6 = GetMonData(uVar5,0x3a,0);
      iVar9 = GetMonData(uVar5,0x3b,0);
      iVar10 = GetMonData(uVar5,0x3c,0);
      iVar11 = GetMonData(uVar5,0x3d,0);
      iVar13 = iVar13 + iVar6 + iVar9 + iVar10 + iVar11;
    }
  }
  iVar4 = 0;
  if (0 < iVar3) {
    do {
      if (*(char *)(param_1 + iVar4 + 0x374) == '\x01') {
        bStack_20 = bStack_20 + 1;
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 < iVar3);
  }
  iVar3 = 0;
  iVar4 = 0;
  if (0 < iVar2) {
    do {
      iVar9 = 0;
      iVar6 = param_1;
      do {
        puVar1 = (ushort *)(iVar6 + 0x394);
        iVar9 = iVar9 + 1;
        iVar6 = iVar6 + 2;
        iVar3 = iVar3 + (uint)*puVar1;
      } while (iVar9 < 4);
      iVar4 = iVar4 + 1;
      param_1 = param_1 + 8;
    } while (iVar4 < iVar2);
  }
  iVar3 = iVar3 - iVar13;
  if (iVar3 < 6) {
    bStack_23 = bStack_23 + 1;
  }
  else if (iVar3 < 0xb) {
    bStack_22 = bStack_22 + 1;
  }
  else if (iVar3 < 0x10) {
    bStack_21 = bStack_21 + 1;
  }
  iStack_30 = (uint)abStack_28[0] * 3 + (uint)abStack_28[1] * 3 + (uint)abStack_28[2] * 2 +
              (uint)abStack_28[3] + (uint)bStack_24 + (uint)bStack_23 * 8 + (uint)bStack_22 * 6 +
              (uint)bStack_21 * 4 + (uint)bStack_20 * 7;
  if (iStack_30 == 0) {
    iStack_30 = 1;
  }
  return iStack_30;
}

