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
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 InitBgFromTemplate();
undefined4 BgConfig_InitBattleMenuBackgrounds();
undefined4 sub_0200EB80();
undefined4 SetMasterBrightnessNeutral();
undefined4 sub_0200E640();
undefined4 SetBothScreensModesAndDisable();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 BattleSystem_GetFrame();
undefined4 GfGfx_SetBanks();
undefined4 ov12_0223B52C();
undefined4 GfGfxLoader_LoadCharData();
undefined4 func_0x020d47ec() __asm__("sub_020D47EC");
extern undefined ov12_0226C174;
extern undefined ov12_0226C0A8;
extern ushort uRam04000008 __asm__("sub_04000008");
undefined4 Main_SetVBlankIntrCB();
undefined4 GfGfx_BothDispOn();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 GfGfxLoader_LoadScrnData();
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");
extern ushort uRam0400004a __asm__("sub_0400004A");
extern ushort uRam04000048 __asm__("sub_04000048");

void ov12_022387AC(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 auStack_90 [10];
  undefined4 auStack_68 [7];
  undefined1 auStack_4c [28];
  undefined1 auStack_30 [28];

  GfGfx_DisableEngineAPlanes();
  puVar6 = (undefined4 *)&ov12_0226C0A8;
  puVar5 = auStack_90;
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
  GfGfx_SetBanks(auStack_90);
  func_0x020d47ec(0,0x6000000,0x80000);
  func_0x020d47ec(0,0x6200000,0x20000);
  func_0x020d47ec(0,0x6400000,0x40000);
  func_0x020d47ec(0,0x6600000,0x20000);
  SetMasterBrightnessNeutral(0);
  SetMasterBrightnessNeutral(1);
  uStack_a0 = 1;
  uStack_9c = 0;
  uStack_98 = 0;
  uStack_94 = 1;
  SetBothScreensModesAndDisable(&uStack_a0,1,&uStack_a0,auStack_90);
  puVar6 = (undefined4 *)&ov12_0226C174;
  puVar5 = auStack_68;
  *(byte *)(param_1 + 0x23ff) = *(byte *)(param_1 + 0x23ff) & 0xfe | 1;
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
  InitBgFromTemplate(param_2,1,auStack_68,0);
  BgClearTilemapBufferAndCommit(param_2,1);
  InitBgFromTemplate(param_2,2,auStack_4c,0);
  BgClearTilemapBufferAndCommit(param_2,2);
  InitBgFromTemplate(param_2,3,auStack_30,0);
  BgClearTilemapBufferAndCommit(param_2,3);
  uRam04000008 = uRam04000008 & 0xfffc | 1;
  GfGfx_EngineATogglePlanes(1,1);
  BgConfig_InitBattleMenuBackgrounds(param_2);
  uVar2 = BattleSystem_GetFrame(param_1);
  sub_0200EB80(param_2,1,1,10,uVar2 & 0xff,5);
  GfGfxLoader_LoadCharData(7,*(int *)(param_1 + 0x2404) + 3,param_2,3,0,0,1,5);
  iVar4 = ov12_0223B52C(param_1);
  PaletteData_LoadNarc
            (*(undefined4 *)(param_1 + 0x28),7,*(int *)(param_1 + 0x2404) * 3 + 0xb0 + iVar4,5,0,0,0
            );
  uVar1 = sub_0200E640(uVar2);
  PaletteData_LoadNarc(*(undefined4 *)(param_1 + 0x28),0x26,uVar1,5,0,0x20,0xa0);
  PaletteData_LoadNarc(*(undefined4 *)(param_1 + 0x28),0x10,8,5,0,0x20,0xb0);
  GfGfxLoader_LoadScrnData(7,2,param_2,3,0,0,1,5);
  uRam04000000 = uRam04000000 & 0xffff1fff;
  uRam04001000 = uRam04001000 & 0xffff1fff;
  uRam04000048 = uRam04000048 & 0xffc0;
  uRam0400004a = uRam0400004a & 0xffc0;
  GfGfx_BothDispOn();
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  Main_SetVBlankIntrCB(0x2239731,param_1);
  return;
}

