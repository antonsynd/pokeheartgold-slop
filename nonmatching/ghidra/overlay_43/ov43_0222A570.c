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
undefined4 BG_ClearCharDataRange();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 SetBothScreensModesAndDisable();
undefined4 InitBgFromTemplate();
undefined4 BgConfig_Alloc();
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc();
undefined4 BgClearTilemapBufferAndCommit();
extern undefined ov43_0222EFFC;

void ov43_0222A570(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint uVar2;
  undefined *puVar3;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar1 = BgConfig_Alloc(param_2);
  *param_1 = uVar1;
  uStack_28 = 1;
  uStack_24 = 0;
  uStack_20 = 0;
  uStack_1c = 0;
  SetBothScreensModesAndDisable(&uStack_28,0,&uStack_28,&uStack_18);
  puVar3 = &ov43_0222EFFC;
  uVar2 = 0;
  do {
    InitBgFromTemplate(*param_1,uVar2 & 0xff,puVar3,0);
    BG_ClearCharDataRange(uVar2 & 0xff,0x20,0,param_2);
    BgClearTilemapBufferAndCommit(*param_1,uVar2 & 0xff);
    uVar2 = uVar2 + 1;
    puVar3 = puVar3 + 0x1c;
  } while ((int)uVar2 < 7);
  GfGfxLoader_GXLoadPalFromOpenNarc(param_1[0x16],5,0,0,0x160,param_2);
  GfGfxLoader_GXLoadPalFromOpenNarc(param_1[0x16],4,4,0,0xa0,param_2);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_1[0x16],7,*param_1,0,0,0,1,param_2);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_1[0x16],7,*param_1,2,0,0,1,param_2);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_1[0x16],6,*param_1,6,0,0,1,param_2);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_1[0x16],10,*param_1,0,0,0,1,param_2);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_1[0x16],8,*param_1,6,0,0,1,param_2);
  return;
}

