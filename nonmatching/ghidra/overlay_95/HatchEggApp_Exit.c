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
undefined4 sub_02016F2C();
undefined4 NARC_Delete();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 Heap_Free();
undefined4 OverlayManager_GetData();
undefined4 Main_SetVBlankIntrCB();
undefined4 OverlayManager_FreeData();
undefined4 FreeBgTilemapBuffer();
undefined4 ov95_021E6228();
undefined4 HBlankInterruptDisable();
undefined4 ov95_021E7078();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 PaletteData_FreeBuffers();
undefined4 Heap_Destroy();
undefined4 PokepicManager_Delete();
undefined4 GF_3DVramMan_Delete();
undefined4 GF_DestroyVramTransferManager();
undefined4 PaletteData_Free();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 Field_SetEnvironmentSoundState_None_Unk2();

undefined4 HatchEggApp_Exit(undefined4 param_1)

{
  int iVar1;

  iVar1 = OverlayManager_GetData();
  ov95_021E7078(*(undefined4 *)(iVar1 + 0x88));
  GF_3DVramMan_Delete(*(undefined4 *)(iVar1 + 0x38));
  GfGfx_EngineATogglePlanes(1,0);
  GfGfx_EngineATogglePlanes(2,0);
  GfGfx_EngineATogglePlanes(3,0);
  GfGfx_EngineBTogglePlanes(4,0);
  PaletteData_FreeBuffers(*(undefined4 *)(iVar1 + 8),0);
  PaletteData_FreeBuffers(*(undefined4 *)(iVar1 + 8),2);
  PaletteData_FreeBuffers(*(undefined4 *)(iVar1 + 8),1);
  PaletteData_Free(*(undefined4 *)(iVar1 + 8));
  TextFlags_SetCanTouchSpeedUpPrint(0);
  FreeBgTilemapBuffer(*(undefined4 *)(iVar1 + 4),1);
  FreeBgTilemapBuffer(*(undefined4 *)(iVar1 + 4),2);
  FreeBgTilemapBuffer(*(undefined4 *)(iVar1 + 4),3);
  Heap_Free(*(undefined4 *)(iVar1 + 4));
  GF_DestroyVramTransferManager();
  PokepicManager_Delete(*(undefined4 *)(iVar1 + 0x3c));
  sub_02016F2C(*(undefined4 *)(iVar1 + 0x58));
  NARC_Delete(*(undefined4 *)(iVar1 + 0x40));
  ov95_021E6228(iVar1 + 4);
  OverlayManager_FreeData(param_1);
  Heap_Destroy(0x46);
  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  Field_SetEnvironmentSoundState_None_Unk2();
  return 1;
}

