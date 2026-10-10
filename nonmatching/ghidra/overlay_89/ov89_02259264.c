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
undefined4 Options_GetFrame();
undefined4 func_0x0201cc08() __asm__("sub_0201CC08");
undefined4 LoadUserFrameGfx2();
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 func_0x020d4790() __asm__("sub_020D4790");
undefined4 sub_0200E640();
undefined4 func_0x020d47b8() __asm__("sub_020D47B8");
undefined4 PaletteData_LoadNarc();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 PaletteData_CopyPalette();

void ov89_02259264(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  
  PaletteData_LoadNarc(param_1[3],0xd2,0x13,0x7d,0,0x1c0,0);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_2,0x12,param_1[2],2,0,0,0,0x7d,param_4);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,0x11,param_1[2],2,0,0,0,0x7d);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,0x14,param_1[2],3,0,0,0,0x7d);
  PaletteData_LoadNarc(param_1[3],0xd2,0x17,0x7d,1,0,0);
  if (*(char *)(*param_1 + 4) == '\0') {
    PaletteData_CopyPalette(param_1[3],1,0x10,1,0,0x20);
  }
  GfGfxLoader_LoadCharDataFromOpenNarc(param_2,0x16,param_1[2],6,0,0,0,0x7d);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,0x15,param_1[2],6,0,0,0,0x7d);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,0x18,param_1[2],7,0,0,0,0x7d);
  uVar2 = func_0x0201cc08(param_1[2],6);
  func_0x020d47b8(uVar2,param_1 + 0x270,0x800);
  func_0x020d4790(0,uVar2,0x800);
  Save_PlayerData_GetOptionsAddr(param_1[1]);
  uVar1 = Options_GetFrame();
  uVar2 = sub_0200E640();
  PaletteData_LoadNarc(param_1[3],0x26,uVar2,0x7d,0,0x20,0xe0);
  LoadUserFrameGfx2(param_1[2],1,1,0xe,uVar1,0x7d);
  PaletteData_LoadNarc(param_1[3],0x10,7,0x7d,0,0x20,0xd0);
  if (*(char *)(*param_1 + 4) == '\0') {
    PaletteData_LoadNarc(param_1[3],0x10,7,0x7d,1,0x20,0xd0);
  }
  else {
    PaletteData_LoadNarc(param_1[3],0xd2,0x19,0x7d,1,0x20,0xd0);
  }
  ScheduleBgTilemapBufferTransfer(param_1[2],6);
  return;
}

