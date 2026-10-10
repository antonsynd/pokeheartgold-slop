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
undefined4 InitBgFromTemplate();
undefined4 GfGfxLoader_LoadCharData();
undefined4 GfGfx_SetBanks();
undefined4 GfGfxLoader_LoadScrnData();
undefined4 GfGfxLoader_GXLoadPal();
undefined4 ov71_02247230();
undefined4 BG_FillCharDataRange();
undefined4 SetBothScreensModesAndDisable();
undefined4 ov71_02247124();
undefined4 FillBgTilemapRect();
extern ushort uRam04000304 __asm__("sub_04000304");
extern undefined ov71_0224BE00;
extern undefined ov71_0224BE1C;
extern undefined ov71_0224BE38;
extern undefined ov71_0224BDF0;
extern undefined ov71_0224BE54;
undefined4 BgCommitTilemapBufferToVram();
undefined4 ov71_0224A0B8();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 GfGfx_EngineBTogglePlanes();

void ov71_02249E6C(undefined4 *param_1)

{
  GfGfx_SetBanks(&ov71_0224BE54);
  uRam04000304 = uRam04000304 | 0x8000;
  SetBothScreensModesAndDisable(&ov71_0224BDF0);
  InitBgFromTemplate(param_1[3],1,&ov71_0224BE00,0);
  InitBgFromTemplate(param_1[3],5,&ov71_0224BE00,0);
  InitBgFromTemplate(param_1[3],2,&ov71_0224BE1C,0);
  InitBgFromTemplate(param_1[3],3,&ov71_0224BE38,0);
  InitBgFromTemplate(param_1[3],7,&ov71_0224BE38,0);
  GfGfxLoader_LoadCharData(0x59,0x13,param_1[3],3,0,0,1,0x39);
  GfGfxLoader_LoadCharData(0x59,0x13,param_1[3],7,0,0,1,0x39);
  GfGfxLoader_LoadScrnData(0x59,0x12,param_1[3],3,0,0,1,0x39);
  GfGfxLoader_LoadScrnData(0x59,0x12,param_1[3],7,0,0,1,0x39);
  GfGfxLoader_GXLoadPal(0x59,0x14,0,0,0x20,0x39);
  GfGfxLoader_GXLoadPal(0x59,0x14,4,0,0x20,0x39);
  BG_FillCharDataRange(param_1[3],1,0,1,200);
  BG_FillCharDataRange(param_1[3],5,0,1,200);
  BG_FillCharDataRange(param_1[3],2,0,1,200);
  ov71_02247124(*param_1,0,1,0xe,0);
  ov71_02247124(*param_1,0,5,0xe,0);
  ov71_02247124(*param_1,1,2,0xf,0);
  FillBgTilemapRect(param_1[3],1,200,0,0,0x20,0x40,0);
  FillBgTilemapRect(param_1[3],5,200,0,0,0x20,0x40,0);
  FillBgTilemapRect(param_1[3],2,200,0,0,0x20,0x40,0);
  ov71_02247230(*param_1,0,1,0xe,0x14,0);
  ov71_02247230(*param_1,0,5,0xe,0x14,0);
  ov71_02247230(*param_1,1,2,0xf,2,0);
  BgCommitTilemapBufferToVram(param_1[3],1);
  BgCommitTilemapBufferToVram(param_1[3],5);
  BgCommitTilemapBufferToVram(param_1[3],2);
  ov71_0224A0B8(param_1[3],0x50,0xfffffe80);
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  return;
}

