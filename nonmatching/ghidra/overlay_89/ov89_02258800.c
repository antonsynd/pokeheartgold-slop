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
undefined4 ov89_02259E50();
undefined4 OverlayManager_CreateAndGetData();
undefined4 ov89_02259D70();
undefined4 Main_SetVBlankIntrCB();
undefined4 func_0x0222a2cc() __asm__("sub_0222A2CC");
undefined4 HBlankInterruptDisable();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 OverlayManager_GetArgs();
undefined4 func_0x0222a2c8() __asm__("sub_0222A2C8");
undefined4 ov89_02259E18();
undefined4 Heap_Create();
undefined4 GfGfx_DisableEngineBPlanes();
extern undefined2 uRam04001050 __asm__("sub_04001050");
extern uint uRam04000000 __asm__("sub_04000000");
extern undefined2 uRam04000050 __asm__("sub_04000050");
extern uint uRam04001000 __asm__("sub_04001000");
undefined4 SetKeyRepeatTimers();
undefined4 NewMsgDataFromNarc();
undefined4 FontID_Alloc();
undefined4 String_New();
undefined4 GF_CreateVramTransferManager();
undefined4 func_0x02013534() __asm__("sub_02013534");
undefined4 PaletteData_AllocBuffers();
undefined4 BgConfig_Alloc();
undefined4 PaletteData_SetAutoTransparent();
undefined4 NARC_New();
undefined4 ov89_02259264();
undefined4 MessageFormat_New();
undefined4 ov89_02259CD0();
undefined4 sub_020210BC();
undefined4 ov89_02259BAC();
undefined4 ov89_02259B00();
undefined4 PaletteData_Init();
undefined4 ov89_0225905C();
undefined4 sub_02021148();
undefined4 SpriteSystem_InitSprites();
undefined4 ov89_0225A46C();
undefined4 func_0x02009fe8() __asm__("sub_02009FE8");
undefined4 func_0x0200cf6c() __asm__("sub_0200CF6C");
undefined4 ov89_022597FC();
undefined4 ov89_02259734();
undefined4 SpriteSystem_Init();
undefined4 sub_0203A880();
undefined4 ov89_022598D0();
undefined4 ov89_02259588();
undefined4 ov89_02259408();
undefined4 SpriteManager_New();
undefined4 func_0x0200a080() __asm__("sub_0200A080");
undefined4 SpriteSystem_InitManagerWithCapacities();
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 SpriteSystem_Alloc();
extern undefined ov89_0225CA58;
extern undefined ov89_0225C9EC;
extern undefined ov89_0225CA00;
undefined4 YesNoPrompt_Create();
undefined4 SysTask_CreateOnMainQueue();
undefined4 GfGfx_SwapDisplay();
undefined4 func_0x0222a520() __asm__("sub_0222A520");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 TextFlags_SetCanABSpeedUpPrint();
undefined4 func_0x02002b50() __asm__("sub_02002B50");
undefined4 GfGfx_BothDispOn();
undefined4 BeginNormalPaletteFade();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");

undefined4 ov89_02258800(undefined4 param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  
  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffff00ff;
  uRam04001000 = uRam04001000 & 0xffff00ff;
  uRam04000050 = 0;
  uRam04001050 = 0;
  Heap_Create(3,0x7d,0x50000);
  piVar1 = (int *)OverlayManager_CreateAndGetData(param_1,0x19e4,0x7d);
  func_0x020d4994(piVar1,0,0x19e4);
  puVar2 = (undefined4 *)OverlayManager_GetArgs(param_1);
  *piVar1 = (int)puVar2;
  iVar3 = func_0x0222a2c8(*puVar2);
  piVar1[1] = iVar3;
  iVar3 = func_0x0222a2cc(*(undefined4 *)*piVar1);
  piVar1[0x678] = iVar3;
  ov89_02259E18(piVar1);
  ov89_02259E50(*(undefined1 *)(*piVar1 + 4),piVar1[1],piVar1 + 0x236);
  piVar1[0x675] = 0x2000;
  piVar1[0x676] = piVar1[0x675];
  iVar3 = ov89_02259D70(0x7d);
  piVar1[5] = iVar3;
  iVar3 = PaletteData_Init(0x7d);
  piVar1[3] = iVar3;
  PaletteData_SetAutoTransparent(iVar3,1);
  PaletteData_AllocBuffers(piVar1[3],0,0x200,0x7d);
  PaletteData_AllocBuffers(piVar1[3],1,0x200,0x7d);
  PaletteData_AllocBuffers(piVar1[3],2,0x1c0,0x7d);
  PaletteData_AllocBuffers(piVar1[3],3,0x200,0x7d);
  PaletteData_SetAutoTransparent(piVar1[3],1);
  iVar3 = BgConfig_Alloc(0x7d);
  piVar1[2] = iVar3;
  GF_CreateVramTransferManager(0x40,0x7d);
  SetKeyRepeatTimers(4,8);
  ov89_0225905C(piVar1[2]);
  sub_020210BC();
  sub_02021148(4);
  FontID_Alloc(2,0x7d);
  iVar3 = MessageFormat_New(0x7d);
  piVar1[0xb] = iVar3;
  iVar3 = NewMsgDataFromNarc(0,0x1b,0x2f2,0x7d);
  piVar1[0xc] = iVar3;
  iVar3 = func_0x02013534(4,0x7d);
  piVar1[4] = iVar3;
  iVar3 = NARC_New(0xd2,0x7d);
  piVar1[0x58] = iVar3;
  iVar3 = NARC_New(0x45,0x7d);
  piVar1[0x59] = iVar3;
  ov89_02259264(piVar1,piVar1[0x58]);
  ov89_02259BAC(piVar1,piVar1[0x58]);
  ov89_02259B00(piVar1);
  ov89_02259CD0(piVar1);
  iVar3 = String_New(0x100,0x7d);
  piVar1[0x31] = iVar3;
  iVar3 = SpriteSystem_Alloc(0x7d);
  piVar1[7] = iVar3;
  SpriteSystem_Init(iVar3,&ov89_0225CA58,&ov89_0225C9EC,0x20);
  func_0x02009fe8(1,0x200010);
  func_0x0200a080(1);
  iVar3 = SpriteManager_New(piVar1[7]);
  piVar1[8] = iVar3;
  SpriteSystem_InitSprites(piVar1[7],piVar1[8],0x80);
  SpriteSystem_InitManagerWithCapacities(piVar1[7],piVar1[8],&ov89_0225CA00);
  uVar4 = func_0x0200cf6c(piVar1[7]);
  G2dRenderer_SetSubSurfaceCoords(uVar4,0,0x110000);
  sub_0203A880();
  ov89_0225A46C(piVar1 + 0x65,piVar1[0x678]);
  ov89_02259408(piVar1,piVar1[0x58]);
  ov89_02259734(piVar1,piVar1[0x58]);
  ov89_02259588(piVar1);
  ov89_022597FC(piVar1);
  ov89_022598D0(piVar1);
  iVar3 = YesNoPrompt_Create(0x7d);
  piVar1[9] = iVar3;
  BeginNormalPaletteFade(0,1,1,0,6,1,0x7d);
  if (*(int *)*piVar1 != 0) {
    func_0x0222a520(*(int *)*piVar1,1);
  }
  GfGfx_EngineATogglePlanes(1,1);
  GfGfx_EngineATogglePlanes(2,1);
  GfGfx_EngineATogglePlanes(4,1);
  GfGfx_EngineATogglePlanes(8,1);
  GfGfx_EngineBTogglePlanes(2,1);
  GfGfx_EngineBTogglePlanes(4,1);
  uRam021d1175 = 1;
  GfGfx_SwapDisplay();
  GfGfx_BothDispOn();
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  TextFlags_SetCanABSpeedUpPrint(1);
  func_0x02002b50(0);
  TextFlags_SetCanTouchSpeedUpPrint(0);
  iVar3 = SysTask_CreateOnMainQueue(0x2258ff5,piVar1,60000);
  piVar1[6] = iVar3;
  Main_SetVBlankIntrCB(0x225901d,piVar1);
  return 1;
}

