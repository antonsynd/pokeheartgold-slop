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
undefined4 sub_0203A914(void);
undefined4 SpriteSystem_FreeResourcesAndManager(void *, void *);
undefined4 TextFlags_SetCanTouchSpeedUpPrint(int);
undefined4 NARC_Delete(void *);
undefined4 Heap_Free(void *);
undefined4 SysTask_Destroy(void *);
undefined4 sub_02021238(void);
undefined4 PaletteData_Free(void *);
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 GfGfx_EngineBTogglePlanes(unsigned char, unsigned char);
undefined4 FreeBgTilemapBuffer(void *, unsigned char);
void * Save_Misc_Get(void *);
undefined4 TouchHitboxController_Destroy(void *);
undefined4 sub_020135AC(void *);
undefined4 GF_3DVramMan_Delete(void *);
undefined4 PaletteData_FreeBuffers(void *, int);
undefined4 SpriteSystem_Free(void *);
undefined4 sub_0202AC1C(void *, unsigned char);
undefined4 DestroyMsgData(void *);
undefined4 Main_SetVBlankIntrCB(void *, void *);
undefined4 PokepicManager_Delete(void *);
undefined4 GF_DestroyVramTransferManager(void);
undefined4 ov40_0223D600();



void ov40_0222B934(undefined *param_1)

{
  undefined *puVar1;
  int iVar2;

  GfGfx_EngineATogglePlanes(1,0);
  GfGfx_EngineATogglePlanes(2,0);
  GfGfx_EngineATogglePlanes(4,0);
  GfGfx_EngineATogglePlanes(8,0);
  GfGfx_EngineBTogglePlanes(1,0);
  GfGfx_EngineBTogglePlanes(2,0);
  GfGfx_EngineBTogglePlanes(4,0);
  GfGfx_EngineBTogglePlanes(8,0);
  FreeBgTilemapBuffer(*(undefined **)(param_1 + 0x24),0);
  FreeBgTilemapBuffer(*(undefined **)(param_1 + 0x24),1);
  FreeBgTilemapBuffer(*(undefined **)(param_1 + 0x24),2);
  FreeBgTilemapBuffer(*(undefined **)(param_1 + 0x24),3);
  FreeBgTilemapBuffer(*(undefined **)(param_1 + 0x24),4);
  FreeBgTilemapBuffer(*(undefined **)(param_1 + 0x24),5);
  FreeBgTilemapBuffer(*(undefined **)(param_1 + 0x24),6);
  FreeBgTilemapBuffer(*(undefined **)(param_1 + 0x24),7);
  Heap_Free(*(undefined **)(param_1 + 0x24));
  PaletteData_FreeBuffers(*(undefined **)(param_1 + 0x28),0);
  PaletteData_FreeBuffers(*(undefined **)(param_1 + 0x28),1);
  PaletteData_FreeBuffers(*(undefined **)(param_1 + 0x28),2);
  PaletteData_FreeBuffers(*(undefined **)(param_1 + 0x28),3);
  PaletteData_Free(*(undefined **)(param_1 + 0x28));
  if (*(int *)param_1 == 0) {
    puVar1 = Save_Misc_Get(*(undefined **)(param_1 + 0x830));
    sub_0202AC1C(puVar1,param_1[0x5c]);
  }
  NARC_Delete(*(undefined **)(param_1 + 0x14));
  SysTask_Destroy(*(undefined **)(param_1 + 0x416c));
  SpriteSystem_FreeResourcesAndManager
            (*(undefined **)(param_1 + 0x18),*(undefined **)(param_1 + 0x1c));
  SpriteSystem_Free(*(undefined **)(param_1 + 0x18));
  sub_0203A914();
  sub_02021238();
  TouchHitboxController_Destroy(*(undefined **)(param_1 + 0x2c));
  TextFlags_SetCanTouchSpeedUpPrint(0);
  iVar2 = 0;
  puVar1 = param_1;
  do {
    if (*(undefined **)(puVar1 + 0x87c) != (undefined *)0x0) {
      Heap_Free(*(undefined **)(puVar1 + 0x87c));
    }
    if (*(undefined **)(puVar1 + 0x88c) != (undefined *)0x0) {
      Heap_Free(*(undefined **)(puVar1 + 0x88c));
    }
    iVar2 = iVar2 + 1;
    puVar1 = puVar1 + 4;
  } while (iVar2 < 4);
  sub_020135AC(*(undefined **)(param_1 + 0x50));
  DestroyMsgData(*(undefined **)(param_1 + 0x48));
  DestroyMsgData(*(undefined **)(param_1 + 0x4c));
  GF_3DVramMan_Delete(*(undefined **)(param_1 + 0x60));
  PokepicManager_Delete(*(undefined **)(param_1 + 100));
  ov40_0223D600(param_1);
  Main_SetVBlankIntrCB((undefined *)0x0,(undefined *)0x0);
  GF_DestroyVramTransferManager();
  return;
}

