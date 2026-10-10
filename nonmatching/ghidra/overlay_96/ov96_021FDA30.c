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

void ov96_021FDA30(int param_1,undefined2 *param_2)

{
  char cVar1;
  char cVar2;
  char cVar3;
  char cVar4;
  uint uVar5;
  byte *pbVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  uint uVar14;
  uint uVar15;
  undefined2 *puStack_24;
  uint uStack_20;
  uint uStack_1c;

  iVar9 = 0;
  uVar15 = 0;
  uStack_1c = 0;
  uStack_20 = 0;
  uVar14 = 0;
  iVar10 = param_1 + 0x30;
  iVar13 = 0;
  puStack_24 = param_2;
  do {
    cVar1 = *(char *)(iVar10 + 0xa2);
    cVar2 = *(char *)(iVar10 + 0x8b);
    iVar8 = 0;
    uVar5 = uVar15 + ((uint)*(byte *)(iVar10 + 0x9e) << (uStack_20 & 0xff));
    uVar15 = uVar5 & 0xff;
    cVar3 = *(char *)(iVar10 + 0x9d);
    cVar4 = *(char *)(iVar10 + 0x9c);
    *(char *)((int)param_2 + uVar14 + 8) =
         (char)((int)(*(int *)(iVar10 + 0x80) + ((uint)(*(int *)(iVar10 + 0x80) >> 0xb) >> 0x14)) >>
               0xc);
    *puStack_24 = (short)((int)(*(int *)(iVar10 + 0x7c) +
                               ((uint)(*(int *)(iVar10 + 0x7c) >> 0xb) >> 0x14)) >> 0xc);
    *(char *)((int)param_2 + uVar14 + 0xc) = cVar2 + cVar1 * '\x04';
    *(char *)((int)param_2 + uVar14 + 0x10) = cVar3 * -0x80 + cVar4;
    iVar11 = iVar10;
    do {
      iVar12 = iVar8 + iVar13;
      iVar8 = iVar8 + 1;
      iVar9 = iVar9 + ((uint)*(byte *)(iVar11 + 0x30) << (iVar12 * 2 & 0xffU));
      iVar11 = iVar11 + 0x1c;
    } while (iVar8 < 3);
    iVar13 = iVar13 + 3;
    *(undefined1 *)((int)param_2 + uVar14 + 0x1e) = *(undefined1 *)(param_1 + uVar14 + 0x644);
    pbVar6 = (byte *)(iVar10 + 0xd1);
    iVar10 = iVar10 + 0xd4;
    uVar7 = uVar14 & 0xff;
    uVar14 = uVar14 + 1;
    uVar7 = uStack_1c + ((uint)*pbVar6 << uVar7);
    uStack_1c = uVar7 & 0xff;
    uStack_20 = uStack_20 + 2;
    puStack_24 = puStack_24 + 1;
  } while ((int)uVar14 < 4);
  *(char *)((int)param_2 + 0x1d) = (char)uVar5;
  *(int *)(param_2 + 10) = iVar9;
  iVar9 = iVar9 + (uint)*(byte *)(param_1 + 0x3c0) * 0x1000000;
  *(int *)(param_2 + 10) = iVar9;
  iVar9 = iVar9 + (uint)*(byte *)(param_1 + 0x63c) * 0x2000000;
  *(int *)(param_2 + 10) = iVar9;
  *(uint *)(param_2 + 10) = iVar9 + uVar7 * 0x4000000;
  param_2[0xd] = *(undefined2 *)(param_1 + 0x63e);
  *(undefined1 *)(param_2 + 0xe) = *(undefined1 *)(param_1 + 0x63d);
  param_2[0xc] = *(undefined2 *)(param_1 + 0x640);
  return;
}

