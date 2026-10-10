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
undefined4 SetBothScreensModesAndDisable(void *);
undefined4 LoadUserFrameGfx1(void *, int, unsigned short, unsigned char, unsigned char, int);
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 LoadFontPal1(int, int, int);
void * BgConfig_Alloc(int);
undefined4 BgClearTilemapBufferAndCommit(void *, unsigned char);
undefined4 BG_ClearCharDataRange(unsigned char, unsigned int, unsigned int, int);
undefined4 GfGfx_EngineBTogglePlanes(unsigned char, unsigned char);
undefined4 InitBgFromTemplate(void *, unsigned char, void *, unsigned char);

void ov91_0225F878(undefined4 *param_1,int param_2)

{
  undefined *puVar1;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
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

  puVar1 = BgConfig_Alloc(param_2);
  *param_1 = puVar1;
  uStack_20 = 1;
  uStack_1c = 0;
  uStack_18 = 0;
  uStack_14 = 1;
  SetBothScreensModesAndDisable((undefined *)&uStack_20);
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0x800;
  uStack_30 = 0;
  uStack_2c = 0xf0001;
  uStack_28 = 0;
  uStack_24 = 0;
  InitBgFromTemplate((undefined *)*param_1,1,(undefined *)&uStack_3c,0);
  BG_ClearCharDataRange(1,0x20,0,param_2);
  BgClearTilemapBufferAndCommit((undefined *)*param_1,1);
  uStack_58 = 0;
  uStack_54 = 0;
  uStack_50 = 0x800;
  uStack_4c = 0;
  uStack_48 = 0x10e0001;
  uStack_44 = 0x100;
  uStack_40 = 0;
  InitBgFromTemplate((undefined *)*param_1,2,(undefined *)&uStack_58,0);
  BG_ClearCharDataRange(2,0x20,0,param_2);
  BgClearTilemapBufferAndCommit((undefined *)*param_1,2);
  uStack_74 = 0;
  uStack_70 = 0;
  uStack_6c = 0x800;
  uStack_68 = 0;
  uStack_64 = 0x1a0001;
  uStack_60 = 0;
  uStack_5c = 0;
  InitBgFromTemplate((undefined *)*param_1,4,(undefined *)&uStack_74,0);
  BG_ClearCharDataRange(4,0x20,0,param_2);
  BgClearTilemapBufferAndCommit((undefined *)*param_1,4);
  uStack_90 = 0;
  uStack_8c = 0;
  uStack_88 = 0x800;
  uStack_84 = 0;
  uStack_80 = 0x1b0001;
  uStack_7c = 0x100;
  uStack_78 = 0;
  InitBgFromTemplate((undefined *)*param_1,5,(undefined *)&uStack_90,0);
  BG_ClearCharDataRange(5,0x20,0,param_2);
  BgClearTilemapBufferAndCommit((undefined *)*param_1,5);
  uStack_ac = 0;
  uStack_a8 = 0;
  uStack_a4 = 0x800;
  uStack_a0 = 0;
  uStack_9c = 0x1c0001;
  uStack_98 = 0x200;
  uStack_94 = 0;
  InitBgFromTemplate((undefined *)*param_1,6,(undefined *)&uStack_ac,0);
  BG_ClearCharDataRange(6,0x20,0,param_2);
  BgClearTilemapBufferAndCommit((undefined *)*param_1,6);
  uStack_c8 = 0;
  uStack_c4 = 0;
  uStack_c0 = 0x800;
  uStack_bc = 0;
  uStack_b8 = 0x1d0001;
  uStack_b4 = 0x300;
  uStack_b0 = 0;
  InitBgFromTemplate((undefined *)*param_1,7,(undefined *)&uStack_c8,0);
  BG_ClearCharDataRange(7,0x20,0,param_2);
  BgClearTilemapBufferAndCommit((undefined *)*param_1,7);
  GfGfx_EngineATogglePlanes(1,1);
  GfGfx_EngineATogglePlanes(2,0);
  GfGfx_EngineATogglePlanes(4,1);
  GfGfx_EngineATogglePlanes(8,0);
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(1,1);
  GfGfx_EngineBTogglePlanes(2,1);
  GfGfx_EngineBTogglePlanes(4,1);
  GfGfx_EngineBTogglePlanes(8,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  LoadFontPal1(0,0xa0,param_2);
  LoadUserFrameGfx1((undefined *)*param_1,1,1,4,0,param_2);
  return;
}

