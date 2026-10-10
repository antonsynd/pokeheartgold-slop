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
undefined4 func_0x020f2998() __asm__("sub_020F2998");

void ov96_02202738(int param_1,short *param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  byte bVar2;
  ushort uVar3;
  int iVar4;
  ushort *puVar5;
  uint extraout_r1;
  byte *pbVar6;
  short *psVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  short *psStack_40;
  uint uStack_3c;
  uint uStack_30;
  int iStack_2c;
  ushort auStack_24 [4];
  byte abStack_1c [4];
  undefined4 uStack_18;
  
  abStack_1c[0] = 0;
  abStack_1c[1] = 0;
  abStack_1c[2] = 0;
  abStack_1c[3] = 0;
  auStack_24[0] = 0;
  auStack_24[1] = 0;
  auStack_24[2] = 0;
  auStack_24[3] = 0;
  iStack_2c = 0;
  uStack_3c = 0;
  uStack_30 = 0;
  iVar8 = param_1;
  iVar9 = param_1;
  psStack_40 = param_2;
  uStack_18 = param_4;
  do {
    uStack_30 = uStack_30 | *(int *)(iVar8 + 0xc4) << (uStack_3c & 0xff);
    bVar2 = *(byte *)(iVar9 + 0x433);
    cVar1 = *(char *)(iVar8 + 0xfb);
    *(undefined1 *)(iVar8 + 0xfb) = 0;
    iVar11 = (int)(*(int *)(iVar8 + 200) + ((uint)(*(int *)(iVar8 + 200) >> 0xb) >> 0x14)) >> 0xc;
    iVar10 = (int)(*(int *)(iVar8 + 0xd0) + ((uint)(*(int *)(iVar8 + 0xd0) >> 0xb) >> 0x14)) >> 0xc;
    if (iVar11 < 1) {
      iVar11 = 1;
    }
    else if (0x40 < iVar11) {
      iVar11 = 0x40;
    }
    if (iVar10 < 1) {
      iVar10 = 1;
    }
    else if (0x40 < iVar10) {
      iVar10 = 0x40;
    }
    iVar4 = func_0x020f2998(iStack_2c,3);
    func_0x020f2998(iStack_2c,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
    abStack_1c[iVar4] =
         abStack_1c[iVar4] + ((char)*(undefined2 *)(iVar8 + 0xfe) << ((extraout_r1 & 0x7f) << 1));
    psStack_40[4] =
         (ushort)(cVar1 != '\0') * 0x2000 +
         (ushort)bVar2 * 0x1000 + (short)iVar11 + -1 + ((short)iVar10 + -1) * 0x40 +
         (ushort)*(byte *)(iVar9 + 0x431) * 0x4000;
    auStack_24[iVar4] = auStack_24[iVar4] + *(short *)(iVar9 + 0x42c);
    if (999 < auStack_24[iVar4]) {
      auStack_24[iVar4] = 999;
    }
    iVar8 = iVar8 + 0x48;
    uStack_3c = uStack_3c + 2;
    iVar9 = iVar9 + 0x20;
    psStack_40 = psStack_40 + 1;
    iStack_2c = iStack_2c + 1;
  } while (iStack_2c < 0xc);
  iVar8 = 0;
  puVar5 = auStack_24;
  pbVar6 = abStack_1c;
  psVar7 = param_2;
  do {
    bVar2 = *pbVar6;
    iVar8 = iVar8 + 1;
    pbVar6 = pbVar6 + 1;
    uVar3 = *puVar5;
    puVar5 = puVar5 + 1;
    *psVar7 = (ushort)bVar2 * 0x400 + uVar3;
    psVar7 = psVar7 + 1;
  } while (iVar8 < 4);
  *(uint *)(param_2 + 0x10) = uStack_30;
  *(uint *)(param_2 + 0x10) = uStack_30 + (uint)*(byte *)(param_1 + 0x5d0) * 0x1000000;
  iVar8 = func_0x020f2998(*(ushort *)(param_1 + 0x5e8) + 0x1e,0x1e);
  *(int *)(param_2 + 0x10) = *(int *)(param_2 + 0x10) + iVar8 * 0x2000000;
  return;
}

