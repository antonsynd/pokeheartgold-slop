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
typedef void code(void);
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
undefined4 ov07_0221C478(undefined4);
undefined4 ov07_02231B90(undefined4, undefined4, undefined4);
undefined4 ov07_022222B4(undefined4);
undefined4 GF_AssertFail(void);
undefined4 ov07_02231DD0(undefined4);
undefined4 func_0x020f2998(undefined4, undefined4) __asm__("sub_020F2998");
undefined4 ov07_02222268(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0221C4A8(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_0221C470(undefined4);
undefined4 ov07_0221C494(undefined4, undefined4);
undefined4 ov07_02231FE4(undefined4, undefined4);

void ov07_022262E8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  short sVar2;
  short sVar3;
  short sVar4;
  short sVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  int iVar8;
  uint uVar9;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_18;

  uStack_18 = param_4;
  puVar6 = (undefined4 *)ov07_022324D8(param_1,0x104);
  ov07_02231FE4(param_1,puVar6 + 0xf);
  uVar7 = ov07_0221C4A8(param_1,0);
  *puVar6 = uVar7;
  uVar7 = ov07_0221C4A8(param_1,1);
  puVar6[4] = uVar7;
  iVar8 = ov07_0221C4A8(param_1,2);
  uVar1 = ov07_0221C4A8(param_1,3);
  *(undefined2 *)((int)puVar6 + 6) = uVar1;
  uVar1 = ov07_0221C4A8(param_1,4);
  *(undefined2 *)(puVar6 + 1) = uVar1;
  puVar6[10] = 0;
  uVar9 = ov07_0221C4A8(param_1,5);
  puVar6[7] = 0;
  puVar6[8] = uVar9 >> 0x10;
  puVar6[9] = uVar9 & 0xffff;
  if (puVar6[8] == 0) {
    puVar6[8] = 0;
  }
  if (puVar6[9] == 0) {
    puVar6[9] = 0xff;
  }
  uVar7 = ov07_0221C494(param_1,*puVar6);
  puVar6[0xe] = uVar7;
  uVar7 = ov07_0221C478(param_1);
  puVar6[0xd] = uVar7;
  if (puVar6[4] == 0) {
    uVar7 = ov07_0221C468(param_1);
    puVar6[5] = uVar7;
    uVar7 = ov07_0221C468(param_1);
  }
  else {
    uVar7 = ov07_0221C470(param_1);
    puVar6[5] = uVar7;
    uVar7 = ov07_0221C470(param_1);
  }
  puVar6[6] = uVar7;
  if (puVar6[0xe] == 0) {
    GF_AssertFail();
  }
  ov07_02231B90(param_1,puVar6[5],&uStack_24);
  ov07_02231B90(param_1,puVar6[6],&uStack_30);
  if (iVar8 == 0) {
    ov07_02231DD0(&uStack_24);
    uStack_24 = uStack_30;
  }
  else {
    ov07_02231DD0(&uStack_30);
  }
  uStack_30 = uStack_24;
  sVar2 = func_0x020f2998(uStack_24,0xac);
  sVar3 = func_0x020f2998(uStack_30,0xac);
  sVar4 = func_0x020f2998(uStack_20,0xac);
  sVar5 = func_0x020f2998(uStack_2c,0xac);
  ov07_02222268(puVar6 + 0x2a,(int)sVar2,(int)sVar3,(int)sVar4,(int)sVar5,
                *(undefined2 *)((int)puVar6 + 6));
  iVar8 = 0;
  if (0 < (int)puVar6[8]) {
    do {
      ov07_022222B4(puVar6 + 0x2a);
      iVar8 = iVar8 + 1;
    } while (iVar8 < (int)puVar6[8]);
  }
  if (puVar6[9] != 0xff) {
    puVar6[7] = puVar6[9] + 1;
  }
  *(int *)(puVar6[0xe] + 0x28) =
       *(short *)(puVar6 + 0x2a) * 0xac + *(int *)(**(int **)(puVar6[0xe] + 0x20) + 4);
  *(int *)(puVar6[0xe] + 0x2c) =
       *(short *)((int)puVar6 + 0xaa) * 0xac + *(int *)(**(int **)(puVar6[0xe] + 0x20) + 8);
  ov07_0221C410(puVar6[0x10],0x22260f9,puVar6);
  return;
}

