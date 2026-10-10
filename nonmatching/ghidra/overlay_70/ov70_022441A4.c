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
undefined4 BgClearTilemapBufferAndCommit();
undefined4 BG_ClearCharDataRange();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 InitBgFromTemplate();
undefined4 GfGfx_EngineBTogglePlanes();

void ov70_022441A4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0x800;
  uStack_20 = 0;
  uStack_1c = 0x1f0001;
  uStack_18 = 0;
  uStack_14 = 0;
  uStack_10 = param_4;
  InitBgFromTemplate(param_1,0,&uStack_2c,0);
  GfGfx_EngineATogglePlanes(1,0);
  BgClearTilemapBufferAndCommit(param_1,0);
  uStack_48 = 0;
  uStack_44 = 0;
  uStack_40 = 0x800;
  uStack_3c = 0;
  uStack_38 = 0x21e0001;
  uStack_34 = 0x100;
  uStack_30 = 0;
  InitBgFromTemplate(param_1,1,&uStack_48,0);
  GfGfx_EngineATogglePlanes(2,0);
  uStack_64 = 0;
  uStack_60 = 0;
  uStack_5c = 0x800;
  uStack_58 = 0;
  uStack_54 = 0x41e0001;
  uStack_50 = 0;
  uStack_4c = 0;
  InitBgFromTemplate(param_1,4,&uStack_64,0);
  GfGfx_EngineBTogglePlanes(1,0);
  BgClearTilemapBufferAndCommit(param_1,4);
  uStack_80 = 0;
  uStack_7c = 0;
  uStack_78 = 0x800;
  uStack_74 = 0;
  uStack_70 = 0x21b0001;
  uStack_6c = 0x200;
  uStack_68 = 0;
  InitBgFromTemplate(param_1,5,&uStack_80,0);
  GfGfx_EngineBTogglePlanes(2,0);
  BG_ClearCharDataRange(0,0x20,0,0x3d);
  BG_ClearCharDataRange(4,0x20,0,0x3d);
  GfGfx_EngineBTogglePlanes(0x10,0);
  return;
}

