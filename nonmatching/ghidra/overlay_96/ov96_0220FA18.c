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
undefined4 ov96_021EB06C();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
void * PokeathlonCourse_GetDataCopyArea(void *);
void * ov96_021E8A20(void *);

void ov96_0220FA18(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int extraout_r1;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint *puVar7;
  uint uVar8;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  iVar1 = PokeathlonCourse_GetDataCopyArea(param_2);
  iVar1 = ov96_021E8A20(iVar1 + 0x28);
  uVar6 = 0;
  uVar2 = (*(uint *)(iVar1 + 0x1c) >> 0x1e) + 1;
  *(uint *)(iVar1 + 0x1c) = *(uint *)(iVar1 + 0x1c) & 0x3fffffff | uVar2 * 0x40000000;
  puVar7 = (uint *)(iVar1 + 0x20);
  uVar8 = 0;
  *(uint *)(iVar1 + 0x20) =
       *(uint *)(iVar1 + 0x20) & 0x8007ff80 |
       (*(uint *)(param_1 + (uVar2 & 3) * 0xe4 + 0x170) & 0x3ffff) >> 2 & 0x7f;
  *(uint *)(iVar1 + 0x1c) = *(uint *)(iVar1 + 0x1c) & 0xff000000;
  *(uint *)(iVar1 + 0x20) = *(uint *)(iVar1 + 0x20) & 0xfff8007f;
  do {
    iVar3 = func_0x020f2998(uVar6,3);
    func_0x020f2998(uVar6,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
    iVar3 = param_1 + 0x98 + iVar3 * 0xe4 + extraout_r1 * 0x48;
    ov96_021EB06C(*(undefined4 *)(iVar3 + 4),(*(int *)(iVar3 + 0x1c) << 4) >> 0x10,
                  (*(int *)(iVar3 + 0x20) << 4) >> 0x10,&iStack_1c,&iStack_20);
    if (iStack_1c < 0x100) {
      iVar4 = iStack_1c;
      if (iStack_1c < 0) {
        iVar4 = 0;
      }
    }
    else {
      iVar4 = 0xff;
    }
    *(char *)(iVar1 + uVar6 + 4) = (char)iVar4;
    if (iStack_20 < 0x100) {
      iVar4 = iStack_20;
      if (iStack_20 < 0) {
        iVar4 = 0;
      }
    }
    else {
      iVar4 = 0xff;
    }
    *(char *)(iVar1 + uVar6 + 0x10) = (char)iVar4;
    if ((*(uint *)(iVar3 + 0x40) & 0xffff) >> 8 != 0) {
      *puVar7 = ((*puVar7 & 0x7fffffff) >> 0x13 | 1 << (uVar6 & 0xff) & 0xfffU) << 0x13 |
                *puVar7 & 0x8007ffff;
      *(uint *)(iVar3 + 0x40) =
           *(uint *)(iVar3 + 0x40) & 0xffff00ff |
           (((*(uint *)(iVar3 + 0x40) & 0xffff) >> 8) - 1 & 0xff) << 8;
    }
    if (*(int *)(iVar3 + 0xc) == 3) {
      *puVar7 = ((*puVar7 & 0x7ffff) >> 7 | 1 << (uVar6 & 0xff) & 0xfffU) << 7 |
                *puVar7 & 0xfff8007f;
    }
    uVar6 = uVar6 + 1;
    uVar5 = *(uint *)(iVar1 + 0x1c);
    uVar2 = uVar8 & 0xff;
    uVar8 = uVar8 + 2;
    *(uint *)(iVar1 + 0x1c) =
         uVar5 & 0xff000000 |
         (uVar5 & 0xffffff) + (((*(uint *)(iVar3 + 0x40) & 0xffffff) >> 0x14) - 1 << uVar2) &
         0xffffff;
  } while ((int)uVar6 < 0xc);
  return;
}

