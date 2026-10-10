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
undefined4 PaletteData_BeginPaletteFade();
undefined4 ObjPlttTransfer_GetPaletteVramOffset();
undefined4 Pokepic_StartPaletteFade();
undefined4 Pokepic_ResumePaletteFade();
undefined4 ov95_021E62F0();
undefined4 ov95_021E5EC0();
undefined4 func_0x0200ded0() __asm__("sub_0200DED0");
undefined4 ManagedSprite_SetDrawFlag();
undefined4 func_0x02024b34() __asm__("sub_02024B34");
undefined4 func_0x0200de44() __asm__("sub_0200DE44");
undefined4 PlaySE();
undefined4 PaletteData_GetSelectedBuffersBitmask();
undefined4 GfGfx_EngineATogglePlanes();

undefined4 ov95_021E6B74(int param_1)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  char cVar4;
  short sStack_14;
  undefined1 auStack_12 [2];

  switch(*(undefined4 *)(param_1 + 0x68)) {
  case 0:
    ov95_021E5EC0(*(undefined4 *)(param_1 + 0x44),0);
    ov95_021E5EC0(*(undefined4 *)(param_1 + 0x44),1);
    ov95_021E5EC0(*(undefined4 *)(param_1 + 0x44),2);
    ov95_021E5EC0(*(undefined4 *)(param_1 + 0x44),3);
    GfGfx_EngineATogglePlanes(2,0);
    *(int *)(param_1 + 0x68) = *(int *)(param_1 + 0x68) + 1;
    break;
  case 1:
    iVar3 = *(int *)(param_1 + 100);
    if (iVar3 == 0x19) {
      PlaySE(0x806);
    }
    else if (iVar3 == 0x50) {
      PlaySE(0x7aa);
    }
    else if (iVar3 == 0x8e) {
      PlaySE(0x815);
    }
    iVar3 = *(int *)(param_1 + 100) + 1;
    *(int *)(param_1 + 100) = iVar3;
    if (0x9f < iVar3) {
      *(undefined4 *)(param_1 + 100) = 0;
      PaletteData_BeginPaletteFade(*(undefined4 *)(param_1 + 8),1,0xffff,0,0,0x10,0xffff);
      uVar1 = func_0x02024b34(**(undefined4 **)(param_1 + 0x78));
      uVar2 = ObjPlttTransfer_GetPaletteVramOffset(uVar1,1);
      PaletteData_BeginPaletteFade
                (*(undefined4 *)(param_1 + 8),4,(1 << (uVar2 & 0xff) ^ 0xffffU) & 0xffff,0,0,0x10,
                 0xffff);
      Pokepic_StartPaletteFade(*(undefined4 *)(param_1 + 0x70),0,0x10,0,0xffff);
      *(int *)(param_1 + 0x68) = *(int *)(param_1 + 0x68) + 1;
    }
    break;
  case 2:
    func_0x0200de44(*(undefined4 *)(param_1 + 0x78),auStack_12,&sStack_14);
    cVar4 = sStack_14 < -0x2f;
    if (!(bool)cVar4) {
      func_0x0200ded0(*(undefined4 *)(param_1 + 0x78),0,0xfffffffc);
    }
    func_0x0200de44(*(undefined4 *)(param_1 + 0x7c),auStack_12,&sStack_14);
    if (sStack_14 < 0xc0) {
      func_0x0200ded0(*(undefined4 *)(param_1 + 0x7c),0,4);
    }
    else {
      cVar4 = cVar4 + '\x01';
    }
    iVar3 = PaletteData_GetSelectedBuffersBitmask(*(undefined4 *)(param_1 + 8));
    if (((iVar3 == 0) && (cVar4 == '\x02')) &&
       (iVar3 = Pokepic_ResumePaletteFade(*(undefined4 *)(param_1 + 0x70)), iVar3 == 0)) {
      ov95_021E62F0(param_1,0);
      GfGfx_EngineATogglePlanes(2,1);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x74),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x78),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x7c),0);
      *(int *)(param_1 + 0x68) = *(int *)(param_1 + 0x68) + 1;
    }
    break;
  case 3:
    iVar3 = *(int *)(param_1 + 100) + 1;
    *(int *)(param_1 + 100) = iVar3;
    if (0x18 < iVar3) {
      *(undefined4 *)(param_1 + 100) = 0;
      Pokepic_StartPaletteFade(*(undefined4 *)(param_1 + 0x70),0x10,0,0,0xffff);
      PaletteData_BeginPaletteFade(*(undefined4 *)(param_1 + 8),1,0xffff,0,0x10,0,0xffff);
      PaletteData_BeginPaletteFade(*(undefined4 *)(param_1 + 8),4,0xffff,0,0x10,0,0xffff);
      *(int *)(param_1 + 0x68) = *(int *)(param_1 + 0x68) + 1;
    }
    break;
  case 4:
    iVar3 = PaletteData_GetSelectedBuffersBitmask(*(undefined4 *)(param_1 + 8));
    if ((iVar3 == 0) &&
       (iVar3 = Pokepic_ResumePaletteFade(*(undefined4 *)(param_1 + 0x70)), iVar3 == 0)) {
      *(int *)(param_1 + 0x68) = *(int *)(param_1 + 0x68) + 1;
    }
    break;
  default:
    *(undefined4 *)(param_1 + 0x68) = 0;
    *(undefined4 *)(param_1 + 100) = 0;
    return 0;
  }
  return 1;
}

