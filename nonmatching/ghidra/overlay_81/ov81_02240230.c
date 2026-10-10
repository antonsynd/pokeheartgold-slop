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
undefined4 BgClearTilemapBufferAndCommit(void *, unsigned char);
undefined4 InitBgFromTemplate(void *, unsigned char, void *, unsigned char);
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 BG_ClearCharDataRange(unsigned char, unsigned int, unsigned int, int);
undefined4 SetBothScreensModesAndDisable(void *);
extern undefined _DAT_04000008 __asm__("sub_04000008");



void ov81_02240230(undefined *param_1)

{
  undefined4 local_e0;
  undefined4 uStack_dc;
  undefined4 local_d8;
  undefined4 uStack_d4;
  undefined4 local_d0;
  undefined4 uStack_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 uStack_c0;
  undefined4 local_bc;
  undefined4 uStack_b8;
  undefined4 local_b4;
  undefined4 uStack_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  undefined4 uStack_a4;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 local_98;
  undefined4 uStack_94;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 uStack_88;
  undefined4 local_84;
  undefined4 uStack_80;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 uStack_50;
  undefined4 local_4c;
  undefined4 uStack_48;
  undefined4 local_44;
  undefined4 uStack_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 uStack_18;
  undefined4 local_14;
  undefined4 uStack_10;
  
  local_1c = 1;
  uStack_18 = 0;
  local_14 = 0;
  uStack_10 = 1;
  SetBothScreensModesAndDisable((undefined *)&local_1c);
  local_38 = 0;
  uStack_34 = 0;
  local_30 = 0x800;
  uStack_2c = 0;
  local_28 = 0x41f0001;
  uStack_24 = 0x100;
  local_20 = 0;
  InitBgFromTemplate(param_1,1,(undefined *)&local_38,0);
  BG_ClearCharDataRange(1,0x20,0,100);
  BgClearTilemapBufferAndCommit(param_1,1);
  local_54 = 0;
  uStack_50 = 0;
  local_4c = 0x800;
  uStack_48 = 0;
  local_44 = 0x61e0001;
  uStack_40 = 0x200;
  local_3c = 0;
  InitBgFromTemplate(param_1,2,(undefined *)&local_54,0);
  BgClearTilemapBufferAndCommit(param_1,2);
  local_70 = 0;
  uStack_6c = 0;
  local_68 = 0x800;
  uStack_64 = 0;
  local_60 = 0x1d0001;
  uStack_5c = 0x300;
  local_58 = 0;
  InitBgFromTemplate(param_1,3,(undefined *)&local_70,0);
  BgClearTilemapBufferAndCommit(param_1,3);
  local_8c = 0;
  uStack_88 = 0;
  local_84 = 0x800;
  uStack_80 = 0;
  local_7c = 0x41c0001;
  uStack_78 = 0x100;
  local_74 = 0;
  InitBgFromTemplate(param_1,4,(undefined *)&local_8c,0);
  BG_ClearCharDataRange(4,0x20,0,100);
  BgClearTilemapBufferAndCommit(param_1,4);
  local_a8 = 0;
  uStack_a4 = 0;
  local_a0 = 0x800;
  uStack_9c = 0;
  local_98 = 0x1f0001;
  uStack_94 = 0;
  local_90 = 0;
  InitBgFromTemplate(param_1,5,(undefined *)&local_a8,0);
  BG_ClearCharDataRange(5,0x20,0,100);
  BgClearTilemapBufferAndCommit(param_1,5);
  local_c4 = 0;
  uStack_c0 = 0;
  local_bc = 0x800;
  uStack_b8 = 0;
  local_b4 = 0x41e0001;
  uStack_b0 = 0x200;
  local_ac = 0;
  InitBgFromTemplate(param_1,6,(undefined *)&local_c4,0);
  BgClearTilemapBufferAndCommit(param_1,6);
  local_e0 = 0;
  uStack_dc = 0;
  local_d8 = 0x800;
  uStack_d4 = 0;
  local_d0 = 0x61d0001;
  uStack_cc = 0x300;
  local_c8 = 0;
  InitBgFromTemplate(param_1,7,(undefined *)&local_e0,0);
  BgClearTilemapBufferAndCommit(param_1,7);
  _DAT_04000008 = _DAT_04000008 & 0xfffc;
  GfGfx_EngineATogglePlanes(1,1);
  return;
}

