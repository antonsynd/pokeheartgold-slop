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
undefined4 NARC_New();
undefined4 OverlayManager_GetArgs();
undefined4 OverlayManager_CreateAndGetData();
undefined4 PaletteData_AllocBuffers();
undefined4 sub_020863F4();
undefined4 Heap_Create();
undefined4 sub_0208545C();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 PaletteData_SetAutoTransparent();
undefined4 PaletteData_Init();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 BgConfig_Alloc();
undefined4 Main_SetVBlankIntrCB();
undefined4 HBlankInterruptDisable();
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");
undefined4 sub_0203A948();
undefined4 sub_020860B8();
undefined4 sub_020210BC();
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 sub_02021148();
undefined4 sub_0203A880();
undefined4 sub_02085688();

undefined4 sub_020850F4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 *puVar6;

  Heap_Create(3,0x6c,0x40000,param_4,param_4);
  iVar1 = OverlayManager_CreateAndGetData(param_1,0x3f4,0x6c);
  func_0x020e5b44(iVar1,0,0x3f4);
  puVar2 = (undefined4 *)OverlayManager_GetArgs(param_1);
  puVar6 = (undefined4 *)(iVar1 + 0x3b8);
  iVar5 = 6;
  do {
    uVar3 = *puVar2;
    uVar4 = puVar2[1];
    puVar2 = puVar2 + 2;
    *puVar6 = uVar3;
    puVar6[1] = uVar4;
    puVar6 = puVar6 + 2;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  *puVar6 = *puVar2;
  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffffe0ff;
  uRam04001000 = uRam04001000 & 0xffffe0ff;
  uVar3 = NARC_New(0xbe,0x6c);
  *(undefined4 *)(iVar1 + 0x2ec) = uVar3;
  uVar3 = BgConfig_Alloc(0x6c);
  *(undefined4 *)(iVar1 + 0x2f8) = uVar3;
  uVar3 = PaletteData_Init(0x6c);
  *(undefined4 *)(iVar1 + 0x2fc) = uVar3;
  PaletteData_SetAutoTransparent(*(undefined4 *)(iVar1 + 0x2fc),1);
  PaletteData_AllocBuffers(*(undefined4 *)(iVar1 + 0x2fc),0,0x200,0x6c);
  PaletteData_AllocBuffers(*(undefined4 *)(iVar1 + 0x2fc),1,0x200,0x6c);
  PaletteData_AllocBuffers(*(undefined4 *)(iVar1 + 0x2fc),2,0x200,0x6c);
  PaletteData_AllocBuffers(*(undefined4 *)(iVar1 + 0x2fc),3,0x200,0x6c);
  sub_0208545C(*(undefined4 *)(iVar1 + 0x2f8));
  sub_020863F4(iVar1);
  sub_02085688(iVar1);
  sub_020210BC();
  sub_02021148(4);
  sub_020860B8(iVar1);
  if (*(int *)(iVar1 + 1000) != 0) {
    sub_0203A880();
    sub_0203A948(1,0x6c);
  }
  func_0x020cf15c(0x4000050,0,6,0xf,7);
  func_0x020cf15c(0x4001050,0,0xe,7,8);
  Main_SetVBlankIntrCB(0x20855cd,iVar1);
  return 1;
}

