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
undefined4 OverlayManager_GetArgs();
undefined4 ov93_0225CF14();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 Main_SetVBlankIntrCB();
undefined4 BgConfig_Alloc();
undefined4 OverlayManager_CreateAndGetData();
undefined4 ov93_022626FC();
undefined4 PaletteData_SetAutoTransparent();
undefined4 HeapExp_FndInitAllocator();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 GF_CreateVramTransferManager();
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 PaletteData_AllocBuffers();
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");
undefined4 SpriteSystem_InitManagerWithCapacities();
undefined4 G2dRenderer_SetPlttTransferReservedRegion();
undefined4 G2dRenderer_SetObjCharTransferReservedRegion();
undefined4 NewMsgDataFromNarc();
undefined4 SpriteSystem_InitSprites();
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 SpriteSystem_Init();
undefined4 sub_02021148();
undefined4 func_0x0200cf6c() __asm__("sub_0200CF6C");
undefined4 ov93_0225D1D8();
undefined4 SpriteManager_New();
undefined4 ov93_0225D674();
undefined4 SpriteSystem_Alloc();
undefined4 sub_020210BC();
undefined4 ov93_0225CFC0();
undefined4 SetKeyRepeatTimers();
extern undefined ov93_02262AA8;
extern undefined ov93_02262A7C;
extern undefined ov93_02262A90;
undefined4 MessageFormat_New();
undefined4 String_New();
undefined4 ov93_0225D468();
undefined4 ov93_0225DB2C();
undefined4 ov93_0225D4EC();
undefined4 ov93_0225D78C();
undefined4 ov93_0225DBC8();
undefined4 ov93_0225DA40();
undefined4 ov93_0225DD2C();
undefined4 PaletteData_LoadNarc();
undefined4 ov93_0225D5AC();
undefined4 sub_0203A880();
undefined4 BeginNormalPaletteFade();
undefined4 ov93_0225E7B0();
undefined4 ov93_0225D380();
undefined4 ov93_02261310();
undefined4 NARC_Delete();
undefined4 func_0x02013534() __asm__("sub_02013534");
undefined4 NARC_New();
undefined4 SysTask_CreateOnMainQueue();
undefined4 TextFlags_SetAutoScrollParam();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 func_0x02258c74() __asm__("sub_02258C74");
undefined4 GfGfx_SwapDisplay();
undefined4 func_0x021e69a8() __asm__("sub_021E69A8");
undefined4 GfGfx_BothDispOn();
undefined4 func_0x0200e2b0() __asm__("sub_0200E2B0");
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 PaletteData_LoadPaletteSlotFromHardware();
undefined4 func_0x02258bd4() __asm__("sub_02258BD4");
undefined4 TextFlags_SetCanABSpeedUpPrint();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");

undefined4 ov93_0225C768(undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;

  Main_SetVBlankIntrCB(0,0);
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffff00ff;
  uRam04001000 = uRam04001000 & 0xffff00ff;
  func_0x020cf15c(0x4000050,1,0x3f,0x10,0x10);
  func_0x020cf15c(0x4001050,8,0x1f,0xd,3);
  piVar1 = (int *)OverlayManager_CreateAndGetData(param_1,0x3850,0x75);
  func_0x020d4994(piVar1,0,0x3850);
  HeapExp_FndInitAllocator(piVar1 + 0x2a,0x75,0x20);
  iVar2 = ov93_0225CF14(0x75);
  piVar1[0x26] = iVar2;
  iVar2 = OverlayManager_GetArgs(param_1);
  *piVar1 = iVar2;
  ov93_022626FC(piVar1);
  iVar2 = PaletteData_Init(0x75);
  piVar1[0x23] = iVar2;
  PaletteData_SetAutoTransparent(piVar1[0x23],1);
  PaletteData_AllocBuffers(piVar1[0x23],0,0x200,0x75);
  PaletteData_AllocBuffers(piVar1[0x23],1,0x200,0x75);
  PaletteData_AllocBuffers(piVar1[0x23],2,0x1c0,0x75);
  PaletteData_AllocBuffers(piVar1[0x23],3,0x200,0x75);
  iVar2 = BgConfig_Alloc(0x75);
  piVar1[0xb] = iVar2;
  GF_CreateVramTransferManager(0x40,0x75);
  SetKeyRepeatTimers(4,8);
  ov93_0225D1D8(piVar1[0xb]);
  sub_020210BC();
  sub_02021148(4);
  ov93_0225CFC0(piVar1);
  iVar2 = SpriteSystem_Alloc(0x75);
  piVar1[9] = iVar2;
  SpriteSystem_Init(iVar2,&ov93_02262AA8,&ov93_02262A7C,0x20);
  G2dRenderer_SetObjCharTransferReservedRegion(1,0x100010);
  G2dRenderer_SetPlttTransferReservedRegion(1);
  iVar2 = SpriteManager_New(piVar1[9]);
  piVar1[10] = iVar2;
  SpriteSystem_InitSprites(piVar1[9],piVar1[10],0xe0);
  SpriteSystem_InitManagerWithCapacities(piVar1[9],piVar1[10],&ov93_02262A90);
  uVar3 = func_0x0200cf6c(piVar1[9]);
  G2dRenderer_SetSubSurfaceCoords(uVar3,0,0x160000);
  ov93_0225D674(piVar1);
  iVar2 = NewMsgDataFromNarc(0,0x1b,0xc,0x75);
  piVar1[0x20] = iVar2;
  iVar2 = MessageFormat_New(0x75);
  piVar1[0x21] = iVar2;
  iVar2 = String_New(0x140,0x75);
  piVar1[0x22] = iVar2;
  iVar2 = func_0x02013534(0x13,0x75);
  piVar1[0x24] = iVar2;
  ov93_02261310(piVar1,piVar1 + 0x51a);
  uVar3 = NARC_New(0xc9,0x75);
  ov93_0225DB2C(piVar1,uVar3);
  ov93_0225DBC8(piVar1,uVar3);
  ov93_0225D380(piVar1);
  ov93_0225D78C(piVar1,uVar3);
  ov93_0225DA40(piVar1,uVar3);
  ov93_0225DD2C(piVar1,uVar3);
  NARC_Delete(uVar3);
  PaletteData_LoadNarc(piVar1[0x23],0x10,7,0x75,0,0x20,0xe0);
  PaletteData_LoadNarc(piVar1[0x23],0x10,7,0x75,1,0x20,0x50);
  ov93_0225D4EC(piVar1);
  ov93_0225D5AC(piVar1,0);
  ov93_0225D468(piVar1);
  sub_0203A880();
  iVar2 = ov93_0225E7B0(piVar1);
  piVar1[0x35] = iVar2;
  BeginNormalPaletteFade(0,0x1b,0x1b,0,6,1,0x75);
  iVar2 = SysTask_CreateOnMainQueue(0x225d07d,piVar1,60000);
  piVar1[0x25] = iVar2;
  uRam021d1175 = 1;
  GfGfx_SwapDisplay();
  GfGfx_BothDispOn();
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  TextFlags_SetAutoScrollParam(1);
  TextFlags_SetCanABSpeedUpPrint(0);
  TextFlags_SetCanTouchSpeedUpPrint(0);
  uVar3 = func_0x0200e2b0(piVar1[10]);
  iVar2 = func_0x02258bd4(uVar3,0x75);
  piVar1[7] = iVar2;
  uVar4 = func_0x02258c74();
  PaletteData_LoadPaletteSlotFromHardware(piVar1[0x23],2,(uVar4 & 0xfff) << 4,0x60);
  Main_SetVBlankIntrCB(0x225cea1,piVar1);
  if (*(char *)(*piVar1 + 0x3c) != '\0') {
    func_0x021e69a8(0x75);
  }
  return 1;
}

