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
undefined4 BgConfig_Alloc();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 LoadFontPal1();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 InitBgFromTemplate();
undefined4 GfGfx_SwapDisplay();
undefined4 BG_ClearCharDataRange();
undefined4 SetBothScreensModesAndDisable();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");
extern undefined ov88_02259944;
extern undefined ov88_02259934;
extern undefined ov88_022599C0;

void ov88_02258B34(undefined4 *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  uint *puVar2;
  undefined *puVar3;
  int iStack_18;
  
  SetBothScreensModesAndDisable(&ov88_02259934);
  uVar1 = BgConfig_Alloc(param_2);
  *param_1 = uVar1;
  uRam021d1175 = 0;
  GfGfx_SwapDisplay();
  puVar3 = &ov88_022599C0;
  puVar2 = (uint *)&ov88_02259944;
  iStack_18 = 0;
  do {
    InitBgFromTemplate(*param_1,*puVar2 & 0xff,puVar3,0);
    BG_ClearCharDataRange(*puVar2 & 0xff,0x20,0,param_2);
    BgClearTilemapBufferAndCommit(*param_1,*puVar2 & 0xff);
    puVar3 = puVar3 + 0x1c;
    iStack_18 = iStack_18 + 1;
    puVar2 = puVar2 + 1;
  } while (iStack_18 < 5);
  GfGfxLoader_GXLoadPalFromOpenNarc(param_1[0x50],0,0,0,0,param_2);
  LoadFontPal1(0,0x140,param_2);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_1[0x50],1,*param_1,1,0,0,0,param_2);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_1[0x50],3,*param_1,1,0,0,0,param_2);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_1[0x50],4,*param_1,2,0,0,0,param_2);
  GfGfxLoader_GXLoadPalFromOpenNarc(param_1[0x50],0,4,0,0,param_2);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_1[0x50],2,*param_1,4,0,0,0,param_2);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_1[0x50],6,*param_1,4,0,0,0,param_2);
  return;
}

