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
undefined4 ov46_022592EC();
undefined4 OverlayManager_CreateAndGetData();
undefined4 GfGfx_SwapDisplay();
undefined4 ov46_02258F78();
undefined4 Heap_Create();
undefined4 OverlayManager_GetArgs();
undefined4 HBlankInterruptDisable();
undefined4 ov46_022594E0();
undefined4 Main_SetVBlankIntrCB();
undefined4 sub_0203A880();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
extern undefined1 uRam021d1175 __asm__("sub_021D1175");

undefined4 ov46_02258CB4(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  Heap_Create(3,0x77,0x20000);
  puVar1 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x404,0x77);
  func_0x020e5b44(puVar1,0,0x404);
  puVar2 = (undefined4 *)OverlayManager_GetArgs(param_1);
  *puVar1 = *puVar2;
  ov46_02258F78(puVar1,0x77);
  ov46_022592EC(puVar1 + 0x10,puVar1[3],1,800,2,0x13,0x1b,4,0x28,*puVar1,0x77);
  ov46_022592EC(puVar1 + 0x28,puVar1[3],0,800,4,4,0x17,0x10,0x94,*puVar1,0x77);
  ov46_022592EC(puVar1 + 4,puVar1[3],1,0x30a,5,1,0x16,2,0x204,*puVar1,0x77);
  ov46_022594E0(puVar1 + 4,0x15);
  sub_0203A880();
  Main_SetVBlankIntrCB(0x2258f71,puVar1);
  HBlankInterruptDisable();
  uRam021d1175 = 1;
  GfGfx_SwapDisplay();
  return 1;
}

