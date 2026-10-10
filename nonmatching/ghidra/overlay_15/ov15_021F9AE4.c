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
undefined4 LoadUserFrameGfx2();
undefined4 GfGfxLoader_LoadScrnData();
undefined4 Options_GetFrame();
undefined4 LoadFontPal1();
undefined4 GfGfxLoader_GXLoadPal();
undefined4 LoadUserFrameGfx1();
undefined4 func_0x020079f4() __asm__("sub_020079F4");
undefined4 GfGfxLoader_LoadCharData();

void ov15_021F9AE4(undefined4 *param_1)

{
  undefined1 uVar1;
  undefined4 uVar2;

  uVar2 = NARC_New(0xf,6);
  param_1[0x91] = uVar2;
  GfGfxLoader_LoadCharData(0xf,7,*param_1,2,0,0,0,6);
  GfGfxLoader_LoadScrnData(0xf,0x36,*param_1,2,0,0,0,6);
  if (*(char *)((int)param_1 + 0x615) == '\0') {
    GfGfxLoader_LoadScrnData(0xf,0x5e,*param_1,3,0,0,0,6);
  }
  else {
    GfGfxLoader_LoadScrnData(0xf,0x5d,*param_1,3,0,0,0,6);
  }
  GfGfxLoader_GXLoadPal(0xf,8,0,0,0,6);
  GfGfxLoader_GXLoadPal(0xf,0x11,0,0x1a0,0x20,6);
  LoadFontPal1(0,0x160,6);
  LoadUserFrameGfx1(*param_1,1,0x3f7,0xe,0,6);
  uVar1 = Options_GetFrame(param_1[0x90]);
  LoadUserFrameGfx2(*param_1,1,0x3d9,0xc,uVar1,6);
  GfGfxLoader_GXLoadPal(0xf,0x26,4,0,0,6);
  LoadFontPal1(4,0x160,6);
  GfGfxLoader_LoadCharData(0xf,0x2e,*param_1,6,0,0,0,6);
  uVar2 = func_0x020079f4(0xf,0x28,param_1 + 0x1a5,6);
  param_1[0x1a3] = uVar2;
  uVar2 = func_0x020079f4(0xf,0x29,param_1 + 0x1a6,6);
  param_1[0x1a4] = uVar2;
  GfGfxLoader_GXLoadPal(0xf,8,4,0x100,0x80,6);
  uVar1 = Options_GetFrame(param_1[0x90]);
  LoadUserFrameGfx2(*param_1,4,0x3e2,0xc,uVar1,6);
  return;
}

