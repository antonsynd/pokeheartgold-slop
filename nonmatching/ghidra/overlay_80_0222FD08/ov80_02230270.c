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
undefined4 AllocMonZeroed();
undefined4 sub_02030A24();
undefined4 ov80_0222A3BC();
undefined4 ov80_0222A140();
undefined4 ov80_02237120();
undefined4 func_0x02236dd4() __asm__("sub_02236DD4");
undefined4 ov80_0222A52C();
undefined4 Heap_Free();

void ov80_02230270(int param_1)

{
  undefined1 uVar1;
  undefined2 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  undefined2 *puVar7;
  undefined1 *puVar8;
  int iStack_1a0;
  undefined4 *puStack_19c;
  int iStack_198;
  undefined4 *puStack_194;
  undefined1 auStack_190 [8];
  undefined4 auStack_188 [6];
  undefined2 auStack_170 [6];
  undefined1 auStack_164 [336];
  
  func_0x02236dd4(*(undefined1 *)(param_1 + 4));
  uVar5 = 0;
  iVar6 = param_1;
  do {
    uVar2 = sub_02030A24(*(undefined4 *)(param_1 + 0x4f4),3,uVar5 & 0xff,0);
    *(undefined2 *)(iVar6 + 0x18) = uVar2;
    uVar5 = uVar5 + 1;
    iVar6 = iVar6 + 2;
  } while ((int)uVar5 < 0xe);
  puStack_19c = auStack_188;
  uVar5 = 0;
  puVar7 = auStack_170;
  puVar8 = auStack_190;
  iStack_1a0 = param_1;
  do {
    uVar2 = sub_02030A24(*(undefined4 *)(param_1 + 0x4f4),4,uVar5 & 0xff,0);
    *puVar7 = uVar2;
    uVar3 = sub_02030A24(*(undefined4 *)(param_1 + 0x4f4),6,uVar5 & 0xff,0);
    *puStack_19c = uVar3;
    uVar1 = sub_02030A24(*(undefined4 *)(param_1 + 0x4f4),5,uVar5 & 0xff,0);
    *puVar8 = uVar1;
    uVar5 = uVar5 + 1;
    *(undefined2 *)(iStack_1a0 + 0x4e8) = *puVar7;
    puVar7 = puVar7 + 1;
    puStack_19c = puStack_19c + 1;
    iStack_1a0 = iStack_1a0 + 2;
    puVar8 = puVar8 + 1;
  } while ((int)uVar5 < 4);
  ov80_0222A52C(auStack_164,auStack_170,auStack_190,auStack_188,0,4,0xb,0xcd);
  uVar3 = AllocMonZeroed(0xb);
  iVar6 = 0;
  puVar8 = auStack_164;
  do {
    uVar4 = ov80_02237120(param_1);
    ov80_0222A140(puVar8,uVar3,uVar4);
    ov80_0222A3BC(*(undefined4 *)(param_1 + 0x4f8),*(undefined4 *)(param_1 + 0x4d4),uVar3);
    iVar6 = iVar6 + 1;
    puVar8 = puVar8 + 0x38;
  } while (iVar6 < 4);
  Heap_Free(uVar3);
  puStack_194 = auStack_188;
  uVar5 = 0;
  puVar7 = auStack_170;
  puVar8 = auStack_190;
  iStack_198 = param_1;
  do {
    uVar2 = sub_02030A24(*(undefined4 *)(param_1 + 0x4f4),7,uVar5 & 0xff,0);
    *puVar7 = uVar2;
    uVar3 = sub_02030A24(*(undefined4 *)(param_1 + 0x4f4),9,uVar5 & 0xff,0);
    *puStack_194 = uVar3;
    uVar1 = sub_02030A24(*(undefined4 *)(param_1 + 0x4f4),8,uVar5 & 0xff,0);
    *puVar8 = uVar1;
    uVar5 = uVar5 + 1;
    *(undefined2 *)(iStack_198 + 0x3d2) = *puVar7;
    puVar7 = puVar7 + 1;
    puStack_194 = puStack_194 + 1;
    iStack_198 = iStack_198 + 2;
    puVar8 = puVar8 + 1;
  } while ((int)uVar5 < 4);
  ov80_0222A52C(auStack_164,auStack_170,auStack_190,auStack_188,0,4,0xb,0xcd);
  uVar3 = AllocMonZeroed(0xb);
  iVar6 = 0;
  puVar8 = auStack_164;
  do {
    uVar4 = ov80_02237120(param_1);
    ov80_0222A140(puVar8,uVar3,uVar4);
    ov80_0222A3BC(*(undefined4 *)(param_1 + 0x4f8),*(undefined4 *)(param_1 + 0x4d8),uVar3);
    iVar6 = iVar6 + 1;
    puVar8 = puVar8 + 0x38;
  } while (iVar6 < 4);
  Heap_Free(uVar3);
  return;
}

