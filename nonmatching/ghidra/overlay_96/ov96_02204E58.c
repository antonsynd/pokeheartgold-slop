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
undefined4 ov96_02208B2C();
undefined4 sub_0203A914();
undefined4 Heap_Free();
undefined4 PokeathlonCourse_FreePtr4HeapAlloc();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_021EB21C();
undefined4 func_0x0202168c() __asm__("sub_0202168C");
undefined4 Main_SetVBlankIntrCB();
undefined4 func_0x02022608() __asm__("sub_02022608");
undefined4 Main_SetHBlankIntrCB();
undefined4 PokeathlonCourse_ResetField3A4();
undefined4 func_0x0200b244() __asm__("sub_0200B244");
undefined4 ov96_02207D64();
undefined4 FontID_Release();
undefined4 ov96_021EA894();
undefined4 ov96_021E9C0C();
undefined4 RemoveWindow();
undefined4 FreeBgTilemapBuffer();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");
undefined4 GfGfx_SwapDisplay();
undefined4 Heap_Destroy();
extern undefined2 uRam04000050 __asm__("sub_04000050");

undefined4 ov96_02204E58(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)PokeathlonCourse_GetHeapAllocPtr4();
  sub_0203A914();
  Main_SetVBlankIntrCB(0,0);
  Main_SetHBlankIntrCB(0,0);
  PokeathlonCourse_ResetField3A4(param_1);
  Heap_Free(puVar1[6]);
  FreeBgTilemapBuffer(*puVar1,0);
  FreeBgTilemapBuffer(*puVar1,3);
  FreeBgTilemapBuffer(*puVar1,4);
  FreeBgTilemapBuffer(*puVar1,5);
  FreeBgTilemapBuffer(*puVar1,6);
  RemoveWindow(puVar1 + 1);
  Heap_Free(*puVar1);
  ov96_021EB21C(puVar1[8]);
  ov96_021EA894(puVar1[0xd2]);
  ov96_021E9C0C(puVar1[0xd1]);
  func_0x0200b244();
  func_0x0202168c();
  func_0x02022608();
  ov96_02208B2C(puVar1[0xdb]);
  ov96_02207D64(puVar1[0xdc]);
  FontID_Release(4);
  PokeathlonCourse_FreePtr4HeapAlloc(param_1);
  uRam021d1175 = 0;
  GfGfx_SwapDisplay();
  uRam04000050 = 0;
  Heap_Destroy(0x8b);
  return 1;
}

