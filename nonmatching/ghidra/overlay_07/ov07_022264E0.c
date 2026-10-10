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
undefined4 ov07_02222384(undefined4, undefined4);
undefined4 ov07_02231B90(undefined4, undefined4, undefined4);
undefined4 func_0x020f2998(undefined4, undefined4) __asm__("sub_020F2998");
undefined4 ov07_02222004(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0222600C(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_022223F0(undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_02231FE4(undefined4, undefined4);
undefined4 ov07_02222338(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);

void ov07_022264E0(undefined4 param_1)

{
  short sVar1;
  short sVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  iVar3 = ov07_022324D8(param_1,0x104);
  ov07_02231FE4(param_1,iVar3 + 0x3c);
  ov07_0222600C(param_1,iVar3);
  uVar4 = ov07_0221C468(param_1);
  iVar5 = ov07_02222004(param_1,uVar4);
  ov07_02231B90(param_1,*(undefined4 *)(iVar3 + 0x14),&uStack_20);
  ov07_02231B90(param_1,*(undefined4 *)(iVar3 + 0x18),&uStack_2c);
  sVar1 = func_0x020f2998(uStack_20,0xac);
  iVar6 = func_0x020f2998(uStack_2c,0xac);
  sVar2 = func_0x020f2998(uStack_1c,0xac);
  iVar7 = func_0x020f2998(uStack_28,0xac);
  ov07_02222338(iVar3 + 0xa8,iVar3 + 0xcc,(int)sVar1,
                (iVar6 + iVar5 * *(short *)(iVar3 + 0xc)) * 0x10000 >> 0x10,(int)sVar2,
                (iVar7 + iVar5 * *(short *)(iVar3 + 0xe)) * 0x10000 >> 0x10,
                *(undefined2 *)(iVar3 + 6),*(int *)(iVar3 + 8) * -0x1000);
  if (iVar5 < 1) {
    ov07_022223F0(iVar3 + 0xf0,iVar5 * 0x3fff,iVar5 * 0x5c71,10);
  }
  else {
    ov07_022223F0(iVar3 + 0xf0,iVar5 * 0xe38,iVar5 * 0x5c71,10);
  }
  iVar5 = 0;
  if (0 < *(int *)(iVar3 + 0x20)) {
    do {
      ov07_02222384(iVar3 + 0xa8,iVar3 + 0xcc);
      iVar5 = iVar5 + 1;
    } while (iVar5 < *(int *)(iVar3 + 0x20));
  }
  if (*(int *)(iVar3 + 0x24) != 0xff) {
    *(int *)(iVar3 + 0x1c) = *(int *)(iVar3 + 0x24) + 1;
  }
  *(int *)(*(int *)(iVar3 + 0x38) + 0x28) =
       *(short *)(iVar3 + 0xa8) * 0xac + *(int *)(**(int **)(*(int *)(iVar3 + 0x38) + 0x20) + 4);
  *(int *)(*(int *)(iVar3 + 0x38) + 0x2c) =
       *(short *)(iVar3 + 0xaa) * 0xac + *(int *)(**(int **)(*(int *)(iVar3 + 0x38) + 0x20) + 8);
  ov07_0221C410(*(undefined4 *)(iVar3 + 0x40),0x222647d,iVar3);
  return;
}

