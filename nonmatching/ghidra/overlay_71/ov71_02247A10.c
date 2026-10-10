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
undefined4 LoadUserFrameGfx2();
undefined4 FillWindowPixelBuffer();
undefined4 InitBgFromTemplate();
undefined4 GfGfx_SetBanks();
undefined4 AddWindowParameterized();
undefined4 BG_FillCharDataRange();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 SetBothScreensModesAndDisable();
undefined4 ov71_022473D0();
undefined4 FillBgTilemapRect();
extern ushort uRam04000304 __asm__("sub_04000304");
extern undefined ov71_0224BCBC;
extern undefined ov71_0224BC84;
extern undefined ov71_0224BCA0;
extern ushort uRam04000008 __asm__("sub_04000008");
extern undefined ov71_0224BC74;
undefined4 ov71_02247FF8();
undefined4 ov71_0224744C();
undefined4 GfGfxLoader_LoadCharData();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 GfGfxLoader_LoadScrnData();
undefined4 GfGfxLoader_GXLoadPal();
undefined4 ov71_02247ED0();
undefined4 ov71_022476EC();
undefined4 ov71_02247610();
undefined4 ov71_02247F9C();
undefined4 sub_0203A948();
undefined4 BgCommitTilemapBufferToVram();
undefined4 BeginNormalPaletteFade();
undefined4 sub_0203A880();
extern undefined2 uRam04000050 __asm__("sub_04000050");

undefined4
ov71_02247A10(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined2 uStack_14;
  undefined2 uStack_12;
  undefined2 uStack_10;
  undefined4 uStack_c;

  uStack_c = param_4;
  GfGfx_SetBanks(&ov71_0224BCBC);
  uRam04000304 = uRam04000304 & 0x7fff;
  SetBothScreensModesAndDisable(&ov71_0224BC74);
  InitBgFromTemplate(param_1[0x15],1,&ov71_0224BC84,0);
  InitBgFromTemplate(param_1[0x15],2,&ov71_0224BCA0,0);
  InitBgFromTemplate(param_1[0x15],6,&ov71_0224BCA0,0);
  GfGfx_EngineATogglePlanes(1,1);
  uRam04000008 = uRam04000008 & 0xfffc | 1;
  BG_FillCharDataRange(param_1[0x15],1,0,1,0);
  FillBgTilemapRect(param_1[0x15],1,0,0,0,0x20,0x20,0);
  uVar1 = ov71_022473D0(*param_1);
  LoadUserFrameGfx2(param_1[0x15],1,0x6d,2,uVar1,0x39);
  AddWindowParameterized(param_1[0x15],param_1 + 0x16,1,2,0x13,0x1b,4,1,1);
  FillWindowPixelBuffer(param_1 + 0x16,0xf);
  GfGfxLoader_GXLoadPal(0x10,8,0,0x20,0x20,0x39);
  GfGfxLoader_LoadCharData(0x59,0x16,param_1[0x15],2,0,0,1,0x39);
  GfGfxLoader_LoadScrnData(0x59,0x15,param_1[0x15],2,0,0,1,0x39);
  GfGfxLoader_GXLoadPal(0x59,0x17,0,0,0x20,0x39);
  GfGfxLoader_LoadCharData(0x59,0x16,param_1[0x15],6,0,0,1,0x39);
  GfGfxLoader_LoadScrnData(0x59,0x15,param_1[0x15],6,0,0,1,0x39);
  GfGfxLoader_GXLoadPal(0x59,0x17,4,0,0x20,0x39);
  BgCommitTilemapBufferToVram(param_1[0x15],1);
  ov71_02247ED0(param_1);
  uVar2 = ov71_0224744C(1,0,0,0);
  param_1[0x1c] = uVar2;
  uVar2 = ov71_02247F9C(param_1);
  param_1[4] = uVar2;
  uVar2 = ov71_02247610(param_1[0x1c],0,0x59,0x1b,0,0x1a800,0x73800,0);
  param_1[0x1d] = uVar2;
  uStack_14 = 0;
  uStack_12 = 0xf000;
  uStack_10 = 0;
  ov71_022476EC(param_1[0x1d],&uStack_14);
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  ov71_02247FF8(param_1);
  uRam04000050 = 0;
  sub_0203A880();
  sub_0203A948(1,0x38);
  BeginNormalPaletteFade(0,1,1,0,0x10,1,0x39);
  return 1;
}

