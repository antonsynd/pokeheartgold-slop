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
undefined4 sub_0200E3D8();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 PaletteData_LoadNarc();
undefined4 LoadUserFrameGfx1();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();

void ov92_0225E9B4(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar2 = *(undefined4 *)(param_1 + 0x58);
  uVar1 = *(undefined4 *)(param_1 + 0x48);
  uVar3 = *(undefined4 *)(param_1 + 0x5c);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar1,0x48,uVar2,4,0,0,0,0x71);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar1,0x4b,uVar2,5,0,0,0,0x71);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,0x4a,uVar2,4,0,0,0,0x71);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,0x4c,uVar2,5,0,0,0,0x71);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,0x4d,uVar2,6,0,0,0,0x71);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,0x4e,uVar2,7,0,0,0,0x71);
  PaletteData_LoadNarc(uVar3,0xc1,0x49,0x71,1,0xa0,0);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar1,5,uVar2,3,0,0,0,0x71);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar1,8,uVar2,1,0,0,0,0x71);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,7,uVar2,3,0,0,0,0x71);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,9,uVar2,1,0,0,0,0x71);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,10,uVar2,2,0,0,0,0x71);
  PaletteData_LoadNarc(uVar3,0xc1,6,0x71,0,0x20,0);
  PaletteData_LoadNarc(uVar3,0x10,8,0x71,1,0x20,0xe0);
  uVar1 = sub_0200E3D8();
  PaletteData_LoadNarc(uVar3,0x26,uVar1,0x71,1,0x20,0xd0);
  LoadUserFrameGfx1(uVar2,7,0xb4,0xd,0,0x71);
  return;
}

