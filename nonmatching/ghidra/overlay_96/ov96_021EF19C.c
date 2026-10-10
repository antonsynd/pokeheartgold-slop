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
undefined4 sub_0203A914();
undefined4 SpriteSystem_Free();
undefined4 func_0x02006f7c() __asm__("sub_02006F7C");
undefined4 Heap_Free();
undefined4 NARC_Delete();
undefined4 Sprite_DeleteAndFreeResources();
undefined4 SpriteSystem_FreeResourcesAndManager();
undefined4 PokeathlonCourse_FreePtr4HeapAlloc();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 Main_SetVBlankIntrCB();
undefined4 func_0x0221eb84() __asm__("sub_0221EB84");
undefined4 Main_SetHBlankIntrCB();
undefined4 Heap_Destroy();
undefined4 ov96_021EE5E0();
undefined4 FreeBgTilemapBuffer();
undefined4 GfGfx_SwapDisplay();
extern undefined ov96_0221BA18;
extern undefined1 uRam021d1175 __asm__("sub_021D1175");

undefined4 ov96_021EF19C(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  int iVar4;

  iVar1 = PokeathlonCourse_GetHeapAllocPtr4();
  NARC_Delete(*(undefined4 *)(iVar1 + 8));
  sub_0203A914();
  ov96_021EE5E0(*(undefined4 *)(iVar1 + 0x34));
  func_0x0221eb84(*(undefined4 *)(iVar1 + 0x30),0xc);
  puVar3 = &ov96_0221BA18;
  iVar2 = 0;
  do {
    FreeBgTilemapBuffer(*(undefined4 *)(iVar1 + 4),*puVar3);
    iVar2 = iVar2 + 1;
    puVar3 = puVar3 + 1;
  } while (iVar2 < 7);
  Heap_Free(*(undefined4 *)(iVar1 + 4));
  iVar4 = 0;
  iVar2 = iVar1;
  do {
    if (*(int *)(iVar2 + 0x38) != 0) {
      Sprite_DeleteAndFreeResources();
      *(undefined4 *)(iVar2 + 0x38) = 0;
    }
    iVar4 = iVar4 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar4 < 4);
  SpriteSystem_FreeResourcesAndManager(*(undefined4 *)(iVar1 + 0x10),*(undefined4 *)(iVar1 + 0x14));
  SpriteSystem_Free(*(undefined4 *)(iVar1 + 0x10));
  Main_SetVBlankIntrCB(0,0);
  Main_SetHBlankIntrCB(0,0);
  PokeathlonCourse_FreePtr4HeapAlloc(param_1);
  uRam021d1175 = 0;
  GfGfx_SwapDisplay();
  func_0x02006f7c(0x62);
  Heap_Destroy(0x88);
  return 1;
}

