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
undefined4 NARC_Delete();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 ov95_021E7388();
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc();
undefined4 PaletteData_LoadNarc();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc();
undefined4 GF_AssertFail();
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc();
undefined4 SpriteSystem_LoadPlttResObjFromOpenNarc();
undefined4 ToggleBgLayer();
undefined4 NARC_New();
undefined4 GfGfx_EngineATogglePlanes();

void ov95_021E70BC(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;

  iVar3 = param_1[1];
  iVar2 = param_1[2];
  if (param_1 == (undefined4 *)0x0) {
    GF_AssertFail();
  }
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  uVar1 = NARC_New(0xef,*param_1);
  SpriteSystem_LoadPlttResObjFromOpenNarc(iVar3,iVar2,uVar1,0xb,0,1,2,param_4);
  SpriteSystem_LoadCharResObjFromOpenNarc(iVar3,iVar2,uVar1,0xc,0,2,param_3);
  SpriteSystem_LoadCellResObjFromOpenNarc(iVar3,iVar2,uVar1,0xd,0,param_5);
  SpriteSystem_LoadAnimResObjFromOpenNarc(iVar3,iVar2,uVar1,0xe,0,param_6);
  ov95_021E7388(param_1,param_3,param_4,param_5,param_6);
  PaletteData_LoadNarc(param_2,0xef,0,0x46,1,0xa0,0);
  PaletteData_LoadNarc(param_2,0x10,9,0x46,1,0x20,0xf0);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar1,1,param_1[3],4,0,0,0,0x46);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,9,param_1[3],4,0,0,0,0x46);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar1,1,param_1[3],5,0,0,0,0x46);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,10,param_1[3],5,0,0,0,0x46);
  ToggleBgLayer(5,0);
  ToggleBgLayer(6,0);
  GfGfx_EngineATogglePlanes(0x10,1);
  NARC_Delete(uVar1);
  return;
}

