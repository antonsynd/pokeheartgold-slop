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
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 NARC_New(undefined4, undefined4);
undefined4 ov08_02221B1C(undefined4, undefined4);
undefined4 ov08_022217F0(undefined4, undefined4);
undefined4 func_0x0200335c(undefined4, undefined4) __asm__("sub_0200335C");
undefined4 PaletteData_LoadNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 NARC_Delete(undefined4);
undefined4 func_0x0200316c(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_0200316C");
undefined4 sub_0200E640(undefined4);
undefined4 func_0x0223b708(undefined4) __asm__("sub_0223B708");
undefined4 Heap_Alloc(undefined4, undefined4);
undefined4 func_0x0200771c(undefined4, undefined4, undefined4) __asm__("sub_0200771C");
undefined4 GfGfxLoader_LoadCharData(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 sub_0200E63C(void);
undefined4 func_0x020b71d8(undefined4, undefined4) __asm__("sub_020B71D8");
undefined4 func_0x020e5ad8(undefined4, undefined4, undefined4) __asm__("sub_020E5AD8");

void ov08_0221CF38(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iStack_18;
  undefined4 uStack_14;

  uStack_14 = param_4;
  uVar1 = NARC_New(0x47,*(undefined4 *)(*param_1 + 0xc));
  GfGfxLoader_LoadCharDataFromOpenNarc
            (uVar1,0x16,param_1[0x79],7,0,0,0,*(undefined4 *)(*param_1 + 0xc));
  uVar2 = func_0x0200771c(uVar1,0x14,*(undefined4 *)(*param_1 + 0xc));
  func_0x020b71d8(uVar2,&iStack_18);
  ov08_022217F0(param_1,iStack_18 + 0xc);
  Heap_Free(uVar2);
  uVar2 = func_0x0200771c(uVar1,0x15,*(undefined4 *)(*param_1 + 0xc));
  func_0x020b71d8(uVar2,&iStack_18);
  ov08_02221B1C(param_1,iStack_18 + 0xc);
  Heap_Free(uVar2);
  PaletteData_LoadNarc(param_1[0x7a],0x47,0x17,*(undefined4 *)(*param_1 + 0xc),1,0x200,0);
  NARC_Delete(uVar1);
  iVar3 = func_0x0200335c(param_1[0x7a],1);
  func_0x020e5ad8(param_1 + 0x7d8,iVar3 + 0x180,0x40);
  PaletteData_LoadNarc(param_1[0x7a],0x10,7,*(undefined4 *)(*param_1 + 0xc),1,0x20,0xd0);
  PaletteData_LoadNarc(param_1[0x7a],0x10,8,*(undefined4 *)(*param_1 + 0xc),1,0x20,0xf0);
  uVar1 = func_0x0223b708(*(undefined4 *)(*param_1 + 8));
  uVar2 = sub_0200E63C();
  GfGfxLoader_LoadCharData(0x26,uVar2,param_1[0x79],4,1,0,0,*(undefined4 *)(*param_1 + 0xc));
  uVar1 = sub_0200E640(uVar1);
  PaletteData_LoadNarc(param_1[0x7a],0x26,uVar1,*(undefined4 *)(*param_1 + 0xc),1,0x20,0xe0);
  iVar3 = func_0x0200335c(param_1[0x7a],1);
  iVar4 = Heap_Alloc(*(undefined4 *)(*param_1 + 0xc),0x20);
  func_0x020e5ad8(iVar4,iVar3 + 0x1a0,0x20);
  *(undefined1 *)(iVar4 + 0xe) = *(undefined1 *)(iVar3 + 0x134);
  *(undefined1 *)(iVar4 + 0xf) = *(undefined1 *)(iVar3 + 0x135);
  *(undefined1 *)(iVar4 + 0x10) = *(undefined1 *)(iVar3 + 0x136);
  *(undefined1 *)(iVar4 + 0x11) = *(undefined1 *)(iVar3 + 0x137);
  *(undefined1 *)(iVar4 + 6) = *(undefined1 *)(iVar3 + 0x138);
  *(undefined1 *)(iVar4 + 7) = *(undefined1 *)(iVar3 + 0x139);
  *(undefined1 *)(iVar4 + 8) = *(undefined1 *)(iVar3 + 0x13a);
  *(undefined1 *)(iVar4 + 9) = *(undefined1 *)(iVar3 + 0x13b);
  func_0x0200316c(param_1[0x7a],iVar4,1,0xd0,0x20);
  Heap_Free(iVar4);
  return;
}

