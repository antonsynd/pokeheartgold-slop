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
undefined4 BagApp_GetSaveStructPtrs();
undefined4 SetKeyRepeatTimers();
undefined4 Heap_Create();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 OverlayManager_GetArgs();
undefined4 BgConfig_Alloc();
undefined4 HBlankInterruptDisable();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 PlayerProfile_GetTrainerGender();
undefined4 BeginNormalPaletteFade();
undefined4 Main_SetVBlankIntrCB();
undefined4 OverlayManager_CreateAndGetData();
extern uint uRam04000000 __asm__("sub_04000000");
extern undefined2 uRam04000050 __asm__("sub_04000050");
extern undefined2 uRam04001050 __asm__("sub_04001050");
extern uint uRam04001000 __asm__("sub_04001000");
undefined4 ov15_021FA008();
undefined4 ov15_021FF29C();
undefined4 sub_02021148();
undefined4 ov15_021F9AE4();
undefined4 ov15_021FE4C8();
undefined4 ov15_021FE874();
undefined4 ov15_021FA044();
undefined4 ov15_021FEA5C();
undefined4 ov15_021F99A4();
undefined4 ov15_021FE528();
undefined4 ov15_021F9CBC();
undefined4 sub_020210BC();
undefined4 ov15_021F9984();
undefined4 ov15_021FA620();
undefined4 ov15_021F9F08();
undefined4 ov15_021F9DB4();
undefined4 ov15_021F9D28();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 ov15_021FE020();
undefined4 ov15_02200030();
undefined4 ov15_021FA170();
undefined4 ov15_021FA074();
undefined4 ov15_021FA070();
undefined4 ov15_021FD93C();
undefined4 sub_0203A964();
undefined4 ov15_021FF850();
undefined4 ov15_021FF1E0();
undefined4 ov15_021FF6BC();
undefined4 ov15_021FD404();
undefined4 ToggleBgLayer();
undefined4 ov15_021FD574();
undefined4 ov15_02200140();
undefined4 ov15_021FF364();
undefined4 Sound_SetSceneAndPlayBGM();
undefined4 ov15_021FFECC();
extern ushort uRam04000304 __asm__("sub_04000304");

undefined4 Bag_Init(undefined4 param_1)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;

  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffffe0ff;
  uRam04001000 = uRam04001000 & 0xffffe0ff;
  uRam04000050 = 0;
  uRam04001050 = 0;
  Heap_Create(3,6,0x42000);
  puVar2 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x94c,6);
  func_0x020e5b44(puVar2,0,0x94c);
  uVar3 = OverlayManager_GetArgs(param_1);
  puVar2[0x8d] = uVar3;
  BagApp_GetSaveStructPtrs(puVar2);
  uVar3 = BgConfig_Alloc(6);
  *puVar2 = uVar3;
  uVar1 = PlayerProfile_GetTrainerGender(puVar2[0x8f]);
  *(undefined1 *)((int)puVar2 + 0x615) = uVar1;
  BeginNormalPaletteFade(2,3,3,0,6,1,6);
  SetKeyRepeatTimers(3,8);
  ov15_021F9DB4(puVar2);
  ov15_021F9CBC(puVar2);
  ov15_021FA008(puVar2);
  ov15_021F9D28(puVar2);
  ov15_021FA620(puVar2);
  ov15_021F9984();
  ov15_021F99A4(*puVar2);
  ov15_021F9AE4(puVar2);
  sub_020210BC();
  sub_02021148(4);
  ov15_021FE020(puVar2);
  TextFlags_SetCanTouchSpeedUpPrint(1);
  ov15_021FE4C8(puVar2);
  ov15_021FE528(puVar2);
  ov15_021FEA5C(puVar2);
  ov15_021FE874(puVar2);
  ov15_021F9F08(puVar2);
  ov15_021FF29C(puVar2,0);
  iVar5 = puVar2[0x8d];
  iVar4 = (uint)*(byte *)(iVar5 + 100) * 0xc;
  ov15_021FA044(iVar5 + 10 + iVar4,iVar5 + 8 + iVar4,*(undefined1 *)(iVar5 + iVar4 + 0xd));
  iVar5 = puVar2[0x8d];
  iVar4 = (uint)*(byte *)(iVar5 + 100) * 0xc;
  ov15_021FA070(iVar5 + 10 + iVar4,iVar5 + 8 + iVar4,*(undefined1 *)(iVar5 + iVar4 + 0xd),6);
  ov15_021FF850(puVar2);
  uVar3 = ov15_021FA074(puVar2);
  ov15_021FD574(puVar2,0,uVar3,0);
  ov15_021FF364(puVar2,(int)*(short *)(puVar2[0x8d] + (uint)*(byte *)(puVar2[0x8d] + 100) * 0xc + 10
                                      ),0xffffffff,0);
  ov15_02200030(puVar2,*(undefined1 *)(puVar2[0x8d] + 100));
  ov15_021FD404(puVar2,1,*(undefined1 *)(puVar2[0x8d] + 100));
  iVar4 = puVar2[0x8d] + (uint)*(byte *)(puVar2[0x8d] + 100) * 0xc;
  ov15_021FF6BC(puVar2,*(undefined1 *)(iVar4 + 0xd),(int)*(short *)(iVar4 + 10),0);
  iVar4 = puVar2[0x8d];
  uVar3 = ov15_021FA074(puVar2);
  ov15_02200140(puVar2,iVar4 + 4 + (uint)*(byte *)(iVar4 + 100) * 0xc,uVar3,1);
  puVar2[0x191] = *(ushort *)(puVar2[0x8d] + (uint)*(byte *)(puVar2[0x8d] + 100) * 0xc + 8) + 8;
  ov15_021FFECC(puVar2,puVar2[0x191]);
  ov15_021FA170(puVar2);
  if ((byte)(*(char *)(puVar2[0x8d] + 0x65) - 4U) < 2) {
    ov15_021FF1E0(puVar2);
  }
  ov15_021FD93C(puVar2);
  Main_SetVBlankIntrCB(0x21f995d,puVar2);
  Sound_SetSceneAndPlayBGM(0x33,0,0);
  sub_0203A964();
  uRam04000304 = uRam04000304 | 0x8000;
  ToggleBgLayer(4,1);
  return 1;
}

