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
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 GfGfxLoader_GetCharData();
undefined4 Heap_Free();
undefined4 func_0x0200319c() __asm__("sub_0200319C");
undefined4 PaletteData_LoadNarc();
undefined4 sub_0200E3D8();
undefined4 BG_LoadCharTilesData();
undefined4 LoadUserFrameGfx1();
extern undefined ov57_0223BDF4;

void ov57_022395B8(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  int iStack_18;

  uVar1 = GfGfxLoader_GetCharData(0x57,8,1,&iStack_18,0x34);
  iVar4 = *(int *)(iStack_18 + 0x14);
  func_0x020d2894(iVar4,*(undefined4 *)(iStack_18 + 0x10));
  piVar3 = (int *)&ov57_0223BDF4;
  uVar2 = 0;
  do {
    BG_LoadCharTilesData(param_1,1,iVar4 + *piVar3 * 0x20,0x20,uVar2 + 1);
    uVar2 = uVar2 + 1;
    piVar3 = piVar3 + 1;
  } while (uVar2 < 9);
  Heap_Free(uVar1);
  func_0x0200319c(param_2,0x57,2,0x34,0,0x20,0xc0,0x20);
  LoadUserFrameGfx1(param_1,1,0x1f,0xd,0,0x34);
  uVar1 = sub_0200E3D8();
  PaletteData_LoadNarc(param_2,0x26,uVar1,0x34,0,0x20,0xd0);
  PaletteData_LoadNarc(param_2,0x10,8,0x34,0,0x20,0xe0);
  return;
}

