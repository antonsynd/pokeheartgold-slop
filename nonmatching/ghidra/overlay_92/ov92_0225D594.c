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
undefined4 GfGfx_EngineATogglePlanes();
undefined4 InitBgFromTemplate();
undefined4 GfGfx_SetBanks();
undefined4 GfGfx_SwapDisplay();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 SetBothScreensModesAndDisable();
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 func_0x020d47ec() __asm__("sub_020D47EC");
undefined4 BG_ClearCharDataRange();
undefined4 GfGfx_EngineBTogglePlanes();
extern undefined ov92_022639A4;
extern undefined1 uRam021d1175 __asm__("sub_021D1175");
extern undefined ov92_0226390C;
extern undefined ov92_02263934;

void ov92_0225D594(undefined4 param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 auStack_124 [10];
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 uStack_f0;
  undefined4 auStack_ec [7];
  undefined1 auStack_d0 [28];
  undefined1 auStack_b4 [28];
  undefined1 auStack_98 [28];
  undefined4 auStack_7c [7];
  undefined1 auStack_60 [28];
  undefined1 auStack_44 [28];
  undefined1 auStack_28 [28];
  
  GfGfx_DisableEngineAPlanes();
  uStack_fc = 1;
  uStack_f8 = 0;
  uStack_f4 = 0;
  uStack_f0 = 1;
  SetBothScreensModesAndDisable(&uStack_fc,1,&uStack_fc,auStack_ec);
  puVar5 = (undefined4 *)&ov92_0226390C;
  puVar4 = auStack_124;
  iVar3 = 5;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  GfGfx_SetBanks(auStack_124);
  func_0x020d47ec(0,0x6000000,0x80000);
  func_0x020d47ec(0,0x6200000,0x20000);
  func_0x020d47ec(0,0x6400000,0x40000);
  func_0x020d47ec(0,0x6600000,0x20000);
  puVar5 = (undefined4 *)&ov92_02263934;
  puVar4 = auStack_7c;
  iVar3 = 0xe;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  BG_ClearCharDataRange(1,0x20,0,0x71);
  BG_ClearCharDataRange(2,0x20,0,0x71);
  BG_ClearCharDataRange(3,0x20,0,0x71);
  InitBgFromTemplate(param_1,1,auStack_60,0);
  InitBgFromTemplate(param_1,2,auStack_44,0);
  InitBgFromTemplate(param_1,3,auStack_28,0);
  BgClearTilemapBufferAndCommit(param_1,0);
  BgClearTilemapBufferAndCommit(param_1,1);
  BgClearTilemapBufferAndCommit(param_1,2);
  BgClearTilemapBufferAndCommit(param_1,3);
  puVar5 = (undefined4 *)&ov92_022639A4;
  puVar4 = auStack_ec;
  iVar3 = 0xe;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  BG_ClearCharDataRange(4,0x20,0,0x71);
  BG_ClearCharDataRange(5,0x20,0,0x71);
  BG_ClearCharDataRange(6,0x20,0,0x71);
  BG_ClearCharDataRange(7,0x20,0,0x71);
  InitBgFromTemplate(param_1,4,auStack_ec,0);
  InitBgFromTemplate(param_1,5,auStack_d0,0);
  InitBgFromTemplate(param_1,6,auStack_b4,0);
  InitBgFromTemplate(param_1,7,auStack_98,0);
  BgClearTilemapBufferAndCommit(param_1,4);
  BgClearTilemapBufferAndCommit(param_1,5);
  BgClearTilemapBufferAndCommit(param_1,6);
  BgClearTilemapBufferAndCommit(param_1,7);
  BG_ClearCharDataRange(4,0x20,0,0x71);
  BG_ClearCharDataRange(5,0x20,0,0x71);
  BG_ClearCharDataRange(6,0x20,0,0x71);
  BG_ClearCharDataRange(7,0x20,0,0x71);
  GfGfx_EngineATogglePlanes(1,1);
  GfGfx_EngineATogglePlanes(2,1);
  GfGfx_EngineATogglePlanes(4,1);
  GfGfx_EngineATogglePlanes(8,1);
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(1,1);
  GfGfx_EngineBTogglePlanes(2,1);
  GfGfx_EngineBTogglePlanes(4,1);
  GfGfx_EngineBTogglePlanes(8,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  uRam021d1175 = 1;
  GfGfx_SwapDisplay();
  func_0x020cf15c(0x4000050,0,0x1e,7,10);
  func_0x020cf15c(0x4001050,0,0x11,7,10);
  return;
}

