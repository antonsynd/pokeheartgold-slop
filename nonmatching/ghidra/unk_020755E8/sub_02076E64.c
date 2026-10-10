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
undefined4 PaletteData_LoadNarc();
undefined4 sub_0200E398();
undefined4 sub_0200EB80();
undefined4 GfGfx_SetBanks();
undefined4 func_0x020d47ec() __asm__("sub_020D47EC");
undefined4 SetBothScreensModesAndDisable();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 sub_0200E640();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 sub_0200E3D8();
undefined4 InitBgFromTemplate();
undefined4 GfGfxLoader_LoadCharData();
undefined4 Options_GetFrame();
undefined4 GfGfxLoader_LoadScrnData();
undefined4 BgClearTilemapBufferAndCommit();
extern undefined UNK_020fff90 __asm__("sub_020FFF90");
extern undefined UNK_020fffe4 __asm__("sub_020FFFE4");
extern ushort uRam04000008 __asm__("sub_04000008");
undefined4 NARC_New();
undefined4 Main_SetVBlankIntrCB();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 GfGfx_BothDispOn();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 ToggleBgLayer();
undefined4 NARC_Delete();
extern ushort uRam04000048 __asm__("sub_04000048");
extern ushort uRam0400004a __asm__("sub_0400004A");
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");

void sub_02076E64(undefined4 *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 uStack_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined4 auStack_e0 [10];
  undefined4 auStack_b8 [7];
  undefined1 auStack_9c [28];
  undefined1 auStack_80 [28];
  undefined4 auStack_64 [7];
  undefined1 auStack_48 [28];
  undefined1 auStack_2c [28];

  GfGfx_DisableEngineAPlanes();
  puVar6 = (undefined4 *)0x20fff34;
  puVar5 = auStack_e0;
  iVar4 = 5;
  do {
    uVar1 = *puVar6;
    uVar3 = puVar6[1];
    puVar6 = puVar6 + 2;
    *puVar5 = uVar1;
    puVar5[1] = uVar3;
    puVar5 = puVar5 + 2;
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  GfGfx_SetBanks(auStack_e0);
  func_0x020d47ec(0,0x6000000,0x80000);
  func_0x020d47ec(0,0x6200000,0x20000);
  func_0x020d47ec(0,0x6400000,0x40000);
  func_0x020d47ec(0,0x6600000,0x20000);
  uStack_f0 = 1;
  uStack_ec = 0;
  uStack_e8 = 0;
  uStack_e4 = 1;
  SetBothScreensModesAndDisable(&uStack_f0,1,&uStack_f0,auStack_e0);
  puVar6 = (undefined4 *)&UNK_020fff90;
  puVar5 = auStack_64;
  iVar4 = 10;
  do {
    uVar1 = *puVar6;
    uVar3 = puVar6[1];
    puVar6 = puVar6 + 2;
    *puVar5 = uVar1;
    puVar5[1] = uVar3;
    puVar5 = puVar5 + 2;
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  *puVar5 = *puVar6;
  InitBgFromTemplate(param_2,1,auStack_64,0);
  BgClearTilemapBufferAndCommit(param_2,1);
  InitBgFromTemplate(param_2,2,auStack_48,0);
  BgClearTilemapBufferAndCommit(param_2,2);
  InitBgFromTemplate(param_2,3,auStack_2c,0);
  BgClearTilemapBufferAndCommit(param_2,3);
  uRam04000008 = uRam04000008 & 0xfffc | 1;
  GfGfx_EngineATogglePlanes(1,1);
  puVar6 = (undefined4 *)&UNK_020fffe4;
  puVar5 = auStack_b8;
  iVar4 = 10;
  do {
    uVar1 = *puVar6;
    uVar3 = puVar6[1];
    puVar6 = puVar6 + 2;
    *puVar5 = uVar1;
    puVar5[1] = uVar3;
    puVar5 = puVar5 + 2;
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  *puVar5 = *puVar6;
  InitBgFromTemplate(param_2,4,auStack_b8,0);
  BgClearTilemapBufferAndCommit(param_2,4);
  InitBgFromTemplate(param_2,5,auStack_9c,0);
  BgClearTilemapBufferAndCommit(param_2,5);
  InitBgFromTemplate(param_2,6,auStack_80,0);
  BgClearTilemapBufferAndCommit(param_2,6);
  uVar2 = Options_GetFrame(param_1[0xb]);
  sub_0200EB80(param_2,1,1,10,uVar2 & 0xff,param_1[0x17]);
  GfGfxLoader_LoadCharData(0x73,0,param_2,3,0,0,1,param_1[0x17]);
  GfGfxLoader_LoadScrnData(0x73,1,param_2,3,0,0,1,param_1[0x17]);
  PaletteData_LoadNarc(param_1[5],0x73,8,param_1[0x17],0,0x40,0);
  uVar1 = sub_0200E640(uVar2);
  PaletteData_LoadNarc(param_1[5],0x26,uVar1,param_1[0x17],0,0x20,0xa0);
  PaletteData_LoadNarc(param_1[5],0x10,8,param_1[0x17],0,0x20,0xb0);
  sub_0200E398(*param_1,2,1,0,param_1[0x17]);
  uVar1 = sub_0200E3D8();
  PaletteData_LoadNarc(param_1[5],0x26,uVar1,param_1[0x17],0,0x20,0x80);
  PaletteData_LoadNarc(param_1[5],0xef,0,param_1[0x17],1,0xa0,0);
  PaletteData_LoadNarc(param_1[5],0xef,0xf,param_1[0x17],1,0x20,0x90);
  PaletteData_LoadNarc(param_1[5],0x10,9,param_1[0x17],1,0x20,0xf0);
  uVar1 = NARC_New(0xef,param_1[0x17]);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar1,0x10,param_2,4,0,0,0,param_1[0x17]);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,0x11,param_2,4,0,0,0,param_1[0x17]);
  GfGfxLoader_LoadCharDataFromOpenNarc(uVar1,1,param_2,5,0,0,0,param_1[0x17]);
  GfGfxLoader_LoadScrnDataFromOpenNarc(uVar1,10,param_2,5,0,0,0,param_1[0x17]);
  NARC_Delete(uVar1);
  ToggleBgLayer(5,0);
  ToggleBgLayer(6,0);
  uRam04000000 = uRam04000000 & 0xffff1fff | 0x2000;
  uRam04001000 = uRam04001000 & 0xffff1fff;
  uRam04000048 = uRam04000048 & 0xffc0 | 0x1f;
  uRam0400004a = uRam0400004a & 0xffc0 | 0x12;
  *(undefined1 *)((int)param_1 + 0x72) = 0;
  *(undefined1 *)((int)param_1 + 0x73) = 0;
  *(undefined1 *)(param_1 + 0x1d) = 0xff;
  *(undefined1 *)((int)param_1 + 0x75) = 0xa0;
  GfGfx_BothDispOn();
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  Main_SetVBlankIntrCB(0x2077271,param_1);
  return;
}

