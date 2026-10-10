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

void ov96_02205AFC(int param_1,uint *param_2)

{
  ushort uVar1;
  uint uVar2;
  int iVar3;
  uint *puVar4;
  int iVar5;
  uint uVar6;
  uint *puVar7;
  byte *pbVar8;
  uint uVar9;
  uint uStack_2c;
  uint uStack_28;
  uint uStack_24;
  
  uStack_24 = 0;
  uStack_28 = 0;
  uStack_2c = 0;
  iVar3 = 0;
  iVar5 = param_1;
  puVar7 = param_2;
  do {
    iVar3 = iVar3 + 1;
    *(short *)(puVar7 + 6) = (short)*(undefined4 *)(iVar5 + 0x570);
    iVar5 = iVar5 + 0x14;
    puVar7 = (uint *)((int)puVar7 + 2);
  } while (iVar3 < 5);
  uVar6 = 0;
  iVar5 = param_1 + 0x24;
  uVar9 = 0;
  puVar7 = param_2;
  puVar4 = param_2;
  do {
    *puVar7 = (uint)*(byte *)(iVar5 + 0xaa) << 0x1c |
              (uint)*(ushort *)(iVar5 + 0xac) << 0x12 |
              ((int)(*(int *)(iVar5 + 0x5c) + ((uint)(*(int *)(iVar5 + 0x5c) >> 0xb) >> 0x14)) >>
              0xc) << 9 |
              (int)(*(int *)(iVar5 + 0x58) + ((uint)(*(int *)(iVar5 + 0x58) >> 0xb) >> 0x14)) >> 0xc
    ;
    puVar7 = puVar7 + 1;
    *(ushort *)(puVar4 + 6) = (ushort)puVar4[6] | (ushort)*(byte *)(iVar5 + 0xb1) << 5;
    *(ushort *)(puVar4 + 6) = (ushort)puVar4[6] | (*(byte *)(iVar5 + 0xb0) - 1) * 0x80;
    *(ushort *)(puVar4 + 6) = (ushort)puVar4[6] | (ushort)*(byte *)(iVar5 + 0xa6) << 9;
    *(ushort *)(puVar4 + 6) = (ushort)puVar4[6] | (ushort)*(byte *)(iVar5 + 0xa7) << 0xb;
    puVar4 = (uint *)((int)puVar4 + 2);
    uStack_28 = uStack_28 | (uint)*(byte *)(iVar5 + 0xab) << (uVar6 & 0xff) & 0xff;
    pbVar8 = (byte *)(iVar5 + 0x9d);
    iVar5 = iVar5 + 0xb8;
    uVar2 = uVar9 & 0xff;
    uVar9 = uVar9 + 2;
    uStack_24 = uStack_24 | (uint)*pbVar8 << uVar2 & 0xff;
    iVar3 = param_1 + uVar6;
    uVar2 = uVar6 & 0xff;
    uVar6 = uVar6 + 1;
    uStack_2c = uStack_2c | (uint)*(byte *)(iVar3 + 0x6bc) << uVar2 & 0xff;
  } while ((int)uVar6 < 4);
  param_2[5] = 0;
  uVar1 = *(ushort *)(param_1 + 0x51e);
  param_2[5] = (uint)uVar1;
  uVar6 = (uint)uVar1 | (uint)*(ushort *)(param_1 + 0x51c) << 9;
  param_2[5] = uVar6;
  uVar6 = (uint)*(byte *)(param_1 + 0x519) << 0x12 | uVar6;
  param_2[5] = uVar6;
  param_2[5] = uVar6 | uStack_2c << 0x13;
  param_2[4] = 0;
  uVar1 = *(ushort *)(param_1 + 0x522);
  param_2[4] = (uint)uVar1;
  uVar6 = (uint)uVar1 | (uint)*(ushort *)(param_1 + 0x520) << 9;
  param_2[4] = uVar6;
  uVar6 = uVar6 | (uint)*(byte *)(param_1 + 0x51b) << 0x12;
  param_2[4] = uVar6;
  uVar6 = uVar6 | uStack_28 << 0x13;
  param_2[4] = uVar6;
  uVar6 = uVar6 | uStack_24 << 0x17;
  param_2[4] = uVar6;
  param_2[4] = uVar6 | (uint)*(byte *)(param_1 + 0x50e) << 0x1f;
  *(undefined2 *)((int)param_2 + 0x22) = *(undefined2 *)(param_1 + 0x50c);
  return;
}

