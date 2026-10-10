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
undefined4 BG_LoadScreenTilemapData();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 GfGfxLoader_GetScrnData();
undefined4 Heap_Free();
undefined4 ov96_021F4EF8();
undefined4 ov96_021F4FD8();
undefined4 BgTilemapRectChangePalette();

void ov96_021F3CBC(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iStack_14;
  undefined4 uStack_10;

  uStack_10 = param_4;
  uVar1 = GfGfxLoader_GetScrnData(0xa7,0xd,0,&iStack_14,*param_1);
  BG_LoadScreenTilemapData(param_1[2],5,iStack_14 + 0xc,*(undefined4 *)(iStack_14 + 8));
  BgTilemapRectChangePalette(param_1[2],5,0,0,0x20,0x18,2);
  ScheduleBgTilemapBufferTransfer(param_1[2],5);
  Heap_Free(uVar1);
  uVar1 = GfGfxLoader_GetScrnData(0xa7,0x17,0,param_1 + 0x40,*param_1);
  param_1[0x5a] = uVar1;
  uVar1 = GfGfxLoader_GetScrnData(0xa7,0x18,0,param_1 + 0x41,*param_1);
  param_1[0x5b] = uVar1;
  BG_LoadScreenTilemapData(param_1[2],7,param_1[0x40] + 0xc,*(undefined4 *)(param_1[0x40] + 8));
  GfGfx_EngineBTogglePlanes(8,0);
  uVar1 = GfGfxLoader_GetScrnData(0xa7,0x12,0,param_1 + 0x43,*param_1);
  param_1[0x55] = uVar1;
  uVar1 = GfGfxLoader_GetScrnData(0xa7,0x13,0,param_1 + 0x44,*param_1);
  param_1[0x56] = uVar1;
  uVar1 = GfGfxLoader_GetScrnData(0xa7,0x11,0,param_1 + 0x42,*param_1);
  param_1[0x57] = uVar1;
  uVar1 = GfGfxLoader_GetScrnData(0xa7,0x14,0,param_1 + 0x45,*param_1);
  param_1[0x58] = uVar1;
  uVar1 = GfGfxLoader_GetScrnData(0xa7,0x10,0,param_1 + 0x46,*param_1);
  param_1[0x59] = uVar1;
  ov96_021F4FD8(0x80,param_1[0x43]);
  ov96_021F4FD8(0x80,param_1[0x44]);
  ov96_021F4FD8(0x80,param_1[0x45]);
  ov96_021F4FD8(0x80,param_1[0x42]);
  ov96_021F4FD8(0x80,param_1[0x46]);
  BG_LoadScreenTilemapData(param_1[2],6,param_1[0x43] + 0xc,*(undefined4 *)(param_1[0x43] + 8));
  ov96_021F4EF8(param_1 + 0x1a,param_1[2]);
  BgTilemapRectChangePalette(param_1[2],6,0,0,0x20,0x18,3);
  ScheduleBgTilemapBufferTransfer(param_1[2],6);
  return;
}

