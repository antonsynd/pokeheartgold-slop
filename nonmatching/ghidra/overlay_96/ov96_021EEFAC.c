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
undefined4 ov96_021EEF0C();
undefined4 Main_SetHBlankIntrCB();
undefined4 ov96_021EEECC();
undefined4 Heap_Create();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 PokeathlonCourse_AllocPtr4FromHeap();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 BgConfig_Alloc();
undefined4 PokeathlonCourse_GetSaveData();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov96_021EE75C();
undefined4 ov96_021EE740();
undefined4 Main_SetVBlankIntrCB();
undefined4 PokeathlonCourse_GetMode();
extern uint uRam04000000 __asm__("sub_04000000");
extern uint uRam04001000 __asm__("sub_04001000");
extern undefined1 uRam021d1175 __asm__("sub_021D1175");
undefined4 GfGfx_SwapDisplay();

void ov96_021EEFAC(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;

  Heap_Create(0x5c,0x9f,0x40000);
  Main_SetVBlankIntrCB(0,0);
  Main_SetHBlankIntrCB(0,0);
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffffe0ff;
  uRam04001000 = uRam04001000 & 0xffffe0ff;
  ov96_021EEECC();
  puVar1 = (undefined4 *)PokeathlonCourse_AllocPtr4FromHeap(param_1,0x10);
  func_0x020d4994(puVar1,0,0x10);
  *puVar1 = 0x9f;
  uVar2 = BgConfig_Alloc();
  puVar1[1] = uVar2;
  ov96_021EEF0C(uVar2,*puVar1);
  uVar2 = ov96_021EE740(*puVar1);
  puVar1[2] = uVar2;
  uVar2 = PokeathlonCourse_GetMode(param_1);
  uVar3 = PokeathlonCourse_GetSaveData(param_1);
  ov96_021EE75C(puVar1[2],puVar1[1],0,uVar2,uVar3);
  Main_SetVBlankIntrCB(0x21eeeed,puVar1);
  uRam021d1175 = 0;
  GfGfx_SwapDisplay();
  return;
}

