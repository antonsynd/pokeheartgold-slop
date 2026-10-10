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
undefined4 ov80_02238370();
undefined4 ov80_022344D4();
undefined4 ov80_0222A140();
undefined4 ov80_022383A8();
undefined4 AllocMonZeroed();
undefined4 sub_02030F34();
undefined4 ov80_0222A52C();
undefined4 Heap_Free();

void ov80_02234424(int param_1)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined2 *puVar4;
  uint uVar5;
  undefined1 *puVar6;
  int iVar7;
  undefined1 auStack_190 [8];
  undefined1 auStack_188 [24];
  undefined2 auStack_170 [6];
  undefined1 auStack_164 [336];
  
  ov80_022344D4();
  uVar5 = 0;
  iVar7 = param_1;
  do {
    uVar1 = sub_02030F34(*(undefined4 *)(param_1 + 8),5,uVar5 & 0xff,0,0);
    puVar4 = (undefined2 *)(iVar7 + 0x78);
    uVar5 = uVar5 + 1;
    iVar7 = iVar7 + 2;
    *puVar4 = uVar1;
  } while ((int)uVar5 < 0xe);
  uVar5 = 0;
  puVar4 = auStack_170;
  iVar7 = param_1;
  do {
    uVar1 = sub_02030F34(*(undefined4 *)(param_1 + 8),7,uVar5 & 0xff,0,0);
    *puVar4 = uVar1;
    *(undefined2 *)(iVar7 + 0x314) = *puVar4;
    uVar5 = uVar5 + 1;
    puVar4 = puVar4 + 1;
    iVar7 = iVar7 + 2;
  } while ((int)uVar5 < 4);
  ov80_0222A52C(auStack_164,auStack_170,auStack_190,0,auStack_188,4,0xb,0xcd);
  uVar2 = AllocMonZeroed(0xb);
  iVar7 = 0;
  puVar6 = auStack_164;
  do {
    uVar3 = ov80_02238370(param_1);
    ov80_0222A140(puVar6,uVar2,uVar3);
    ov80_022383A8(param_1,*(undefined4 *)(param_1 + 0x74),uVar2);
    iVar7 = iVar7 + 1;
    puVar6 = puVar6 + 0x38;
  } while (iVar7 < 4);
  Heap_Free(uVar2);
  return;
}

