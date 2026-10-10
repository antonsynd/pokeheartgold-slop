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
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 SetBothScreensModesAndDisable();
undefined4 BG_ClearCharDataRange();
undefined4 NARC_Delete();
undefined4 NARC_New();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 InitBgFromTemplate();
undefined4 BgConfig_Alloc();
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc();
undefined4 LoadFontPal0();

void ov64_021E5B10(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
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
  undefined4 uStack_10;
  
  uStack_10 = param_4;
  uVar1 = BgConfig_Alloc(0x3b);
  *(undefined4 *)(param_1 + 4) = uVar1;
  uStack_20 = 1;
  uStack_1c = 0;
  uStack_18 = 0;
  uStack_14 = 0;
  SetBothScreensModesAndDisable(&uStack_20,0,&uStack_20,&uStack_10);
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0x800;
  uStack_30 = 0;
  uStack_2c = 0x41f0001;
  uStack_28 = 0;
  uStack_24 = 0;
  InitBgFromTemplate(*(undefined4 *)(param_1 + 4),0,&uStack_3c,0);
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 4),0);
  BG_ClearCharDataRange(0,0x20,0,0x3b);
  uStack_58 = 0;
  uStack_54 = 0;
  uStack_50 = 0x800;
  uStack_4c = 0;
  uStack_48 = 0x1e0001;
  uStack_44 = 0x100;
  uStack_40 = 0;
  InitBgFromTemplate(*(undefined4 *)(param_1 + 4),1,&uStack_58,0);
  uStack_74 = 0;
  uStack_70 = 0;
  uStack_6c = 0x800;
  uStack_68 = 0;
  uStack_64 = 0x41f0001;
  uStack_60 = 0;
  uStack_5c = 0;
  InitBgFromTemplate(*(undefined4 *)(param_1 + 4),4,&uStack_74,0);
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 4),4);
  BG_ClearCharDataRange(4,0x20,0,0x3b);
  uStack_90 = 0;
  uStack_8c = 0;
  uStack_88 = 0x800;
  uStack_84 = 0;
  uStack_80 = 0x1e0001;
  uStack_7c = 0x100;
  uStack_78 = 0;
  InitBgFromTemplate(*(undefined4 *)(param_1 + 4),5,&uStack_90,0);
  uVar1 = NARC_New(0x61,0x3b);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,0,*(undefined4 *)(param_1 + 4),1,0,0,1,0x3b);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar1,1,*(undefined4 *)(param_1 + 4),1,0,0,1,0x3b);
  GfGfxLoader_GXLoadPalFromOpenNarc(uVar1,2,0,0,0x20,0x3b);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,3,*(undefined4 *)(param_1 + 4),5,0,0,1,0x3b);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar1,4,*(undefined4 *)(param_1 + 4),5,0,0,1,0x3b);
  GfGfxLoader_GXLoadPalFromOpenNarc(uVar1,5,4,0,0x20,0x3b);
  NARC_Delete(uVar1);
  LoadFontPal0(0,0x1e0,0x3b);
  LoadFontPal0(4,0x1e0,0x3b);
  return;
}

