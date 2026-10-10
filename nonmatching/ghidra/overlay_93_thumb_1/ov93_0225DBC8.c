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
undefined4 ov93_02260BF0();
undefined4 LoadUserFrameGfx1();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 PaletteData_LoadFromNarc();
undefined4 PaletteData_FillPaletteInBuffer();
undefined4 ov93_02260BB0();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 PaletteData_LoadPaletteSlotFromHardware();
undefined4 PaletteData_LoadNarc();

void ov93_0225DBC8(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  PaletteData_LoadNarc(param_1[0x23],0xc9,5,0x75,1,0xa0,0);
  PaletteData_LoadFromNarc(param_1[0x23],0xc9,6,0x75,1,0x140,0x60,0x60,param_4);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_2,0xd,param_1[0xb],6,0,0,0,0x75);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,0xe,param_1[0xb],6,0,0,0,0x75);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_2,0x12,param_1[0xb],5,0,0,0,0x75);
  if (*(char *)(*param_1 + 0x30) == '\x02') {
    GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,0xf,param_1[0xb],5,0,0,0,0x75);
  }
  else if (*(char *)(*param_1 + 0x30) == '\x03') {
    GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,0x10,param_1[0xb],5,0,0,0,0x75);
  }
  else {
    GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,0x11,param_1[0xb],5,0,0,0,0x75);
  }
  GfGfxLoader_LoadCharDataFromOpenNarc(param_2,0x12,param_1[0xb],4,0,0,0,0x75);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,0x13,param_1[0xb],4,0,0,0,0x75);
  ov93_02260BF0(param_1);
  ov93_02260BB0(param_1);
  LoadUserFrameGfx1(param_1[0xb],4,0x350,6,0,0x75);
  PaletteData_LoadPaletteSlotFromHardware(param_1[0x23],1,0x60,0x20);
  PaletteData_FillPaletteInBuffer(param_1[0x23],1,2,0,0,1);
  return;
}

