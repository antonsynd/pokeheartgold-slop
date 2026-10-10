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
undefined4 ov96_021F84E4();
undefined4 Heap_Free();
undefined4 FreeBgTilemapBuffer();
undefined4 PokeathlonCourse_FreePtr4HeapAlloc();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_021EB21C();
undefined4 Main_SetVBlankIntrCB();
undefined4 ov96_021EE808();
undefined4 Main_SetHBlankIntrCB();
undefined4 func_0x020cf178() __asm__("sub_020CF178");
undefined4 FontID_Release();
undefined4 Heap_Destroy();
undefined4 ov96_021F8F0C();
undefined4 ov96_021EE5E0();
undefined4 RemoveWindow();
undefined4 ov96_021F8728();
undefined4 GfGfx_SwapDisplay();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");
extern undefined ov96_0221C290;
undefined4 sub_0203A914();

undefined4 ov96_021F7C70(undefined4 param_1)

{
  int iVar1;
  undefined *puVar2;
  int iVar3;

  iVar1 = PokeathlonCourse_GetHeapAllocPtr4();
  Main_SetVBlankIntrCB(0,0);
  Main_SetHBlankIntrCB(0,0);
  FontID_Release(4);
  func_0x020cf178(0x4000050,0x3f,0);
  ov96_021EE5E0(*(undefined4 *)(iVar1 + 0x80));
  RemoveWindow(iVar1 + 0x84);
  ov96_021EE808(*(undefined4 *)(iVar1 + 0x18));
  puVar2 = &ov96_0221C290;
  iVar3 = 0;
  do {
    FreeBgTilemapBuffer(*(undefined4 *)(iVar1 + 0xc),*puVar2);
    iVar3 = iVar3 + 1;
    puVar2 = puVar2 + 1;
  } while (iVar3 < 6);
  ov96_021F8F0C(*(undefined4 *)(iVar1 + 0x14));
  ov96_021F8728(*(undefined4 *)(iVar1 + 0x1c));
  ov96_021EB21C(*(undefined4 *)(iVar1 + 0x10));
  ov96_021F84E4(iVar1);
  Heap_Free(*(undefined4 *)(iVar1 + 0xc));
  PokeathlonCourse_FreePtr4HeapAlloc(param_1);
  uRam021d1175 = 0;
  GfGfx_SwapDisplay();
  Heap_Destroy(0x89);
  sub_0203A914();
  return 1;
}

