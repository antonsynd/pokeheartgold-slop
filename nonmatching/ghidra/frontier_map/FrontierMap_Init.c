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
undefined4 PaletteData_Init();
undefined4 Main_SetVBlankIntrCB();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 Heap_Create();
undefined4 HBlankInterruptDisable();
undefined4 Heap_Alloc();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 Frontier_GetLaunchArgs();
undefined4 ov80_022392DC();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 Save_PlayerData_GetProfile();
extern uint uRam04000000 __asm__("sub_04000000");
extern undefined2 uRam04001050 __asm__("sub_04001050");
extern ushort uRam04000304 __asm__("sub_04000304");
extern undefined2 uRam04000050 __asm__("sub_04000050");
extern uint uRam04001000 __asm__("sub_04001000");
undefined4 FrontierMap_LoadPaletteData();
undefined4 ov80_0222ACA0();
undefined4 SysTask_CreateOnMainQueue();
undefined4 sub_02021148();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 BgConfig_Alloc();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov80_02238FA0();
undefined4 sub_020210BC();
undefined4 FrontierMap_SetVramBank();
undefined4 Sound_SetFieldBGM();
undefined4 SetKeyRepeatTimers();
undefined4 ov80_02239960();
undefined4 PaletteData_AllocBuffers();
undefined4 ov80_02239004();
undefined4 GfGfx_BothDispOn();
undefined4 GF_CreateVramTransferManager();
undefined4 ov80_02239384();
undefined4 PaletteData_SetAutoTransparent();
undefined4 SysTask_CreateOnVBlankQueue();
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 func_0x02002b50() __asm__("sub_02002B50");
undefined4 func_0x02055198() __asm__("sub_02055198");
undefined4 sub_0203A880();
undefined4 ov80_0222AD9C();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();

undefined4 * FrontierMap_Init(undefined4 param_1)

{
  undefined1 uVar1;
  undefined2 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  undefined4 *puVar8;
  
  iVar3 = Frontier_GetLaunchArgs();
  uVar4 = Save_PlayerData_GetProfile(*(undefined4 *)(iVar3 + 8));
  uVar1 = *(undefined1 *)(iVar3 + 0x20);
  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffff00ff;
  uRam04001000 = uRam04001000 & 0xffff00ff;
  uRam04000050 = 0;
  uRam04001050 = 0;
  uRam04000304 = uRam04000304 | 0x8000;
  Heap_Create(3,0x65,0x90000);
  puVar5 = (undefined4 *)Heap_Alloc(0x65,0xc4);
  func_0x020d4994(puVar5,0,0xc4);
  puVar5[2] = param_1;
  *(undefined1 *)((int)puVar5 + 0xc1) = uVar1;
  iVar3 = 0;
  puVar8 = puVar5;
  do {
    puVar6 = puVar8 + 0x1c;
    iVar3 = iVar3 + 1;
    puVar8 = (undefined4 *)((int)puVar8 + 2);
    *(undefined2 *)puVar6 = 0xffff;
  } while (iVar3 < 8);
  uVar7 = ov80_022392DC(0x65);
  puVar5[3] = uVar7;
  uVar7 = PaletteData_Init(0x65);
  puVar5[1] = uVar7;
  PaletteData_SetAutoTransparent(uVar7,1);
  PaletteData_AllocBuffers(puVar5[1],0,0x200,0x65);
  PaletteData_AllocBuffers(puVar5[1],1,0x200,0x65);
  PaletteData_AllocBuffers(puVar5[1],2,0x1c0,0x65);
  PaletteData_AllocBuffers(puVar5[1],3,0x200,0x65);
  uVar7 = BgConfig_Alloc(0x65);
  *puVar5 = uVar7;
  GF_CreateVramTransferManager(0x40,0x65);
  SetKeyRepeatTimers(4,8);
  FrontierMap_SetVramBank(*puVar5,uVar1);
  FrontierMap_LoadPaletteData(puVar5);
  ov80_02238FA0(puVar5);
  sub_020210BC();
  sub_02021148(4);
  ov80_02239384(puVar5);
  uVar7 = ov80_02239960(0x65);
  puVar5[4] = uVar7;
  ov80_02239004(puVar5,uVar1,uVar4);
  uVar4 = SysTask_CreateOnMainQueue(0x2238ab1,puVar5,60000);
  puVar5[0x25] = uVar4;
  uVar4 = SysTask_CreateOnMainQueue(0x2238abd,puVar5,61000);
  puVar5[0x26] = uVar4;
  uVar4 = SysTask_CreateOnMainQueue(0x2238ac9,puVar5,80000);
  puVar5[0x27] = uVar4;
  GfGfx_BothDispOn();
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  uVar2 = ov80_0222ACA0(uVar1,3);
  Sound_SetFieldBGM(uVar2);
  uVar2 = ov80_0222ACA0(uVar1,3);
  func_0x02055198(0,uVar2);
  func_0x02002b50(1);
  TextFlags_SetCanABSpeedUpPrint(0);
  TextFlags_SetCanTouchSpeedUpPrint(0);
  Main_SetVBlankIntrCB(0x2238a7d,puVar5);
  uVar4 = SysTask_CreateOnVBlankQueue(0x2238aad,puVar5,10);
  puVar5[0x28] = uVar4;
  ov80_0222AD9C(puVar5,puVar5 + 0x24,*(undefined1 *)((int)puVar5 + 0xc1));
  sub_0203A880();
  return puVar5;
}

