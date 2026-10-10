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
undefined4 Heap_Create();
undefined4 BgConfig_Alloc();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 PaletteData_AllocBuffers();
undefined4 sub_02016EDC();
undefined4 PokepicManager_Create();
undefined4 PaletteData_Init();
undefined4 HBlankInterruptDisable();
undefined4 OverlayManager_GetArgs();
undefined4 Options_GetFrame();
undefined4 ov95_021E5900();
undefined4 ov95_021E5954();
undefined4 Options_GetTextFrameDelay();
undefined4 OverlayManager_CreateAndGetData();
undefined4 GF_CreateVramTransferManager();
undefined4 PaletteData_LoadNarc();
undefined4 PaletteData_SetAutoTransparent();
undefined4 NARC_New();
undefined4 Main_SetVBlankIntrCB();
undefined4 ov95_021E619C();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 ov95_021E5928();
undefined4 ov95_021E59F8();
undefined4 Sound_Stop();
undefined4 ov95_021E7020();
undefined4 ov95_021E5A38();
undefined4 ov95_021E6FC4();

undefined4 HatchEggApp_Init(undefined4 param_1)

{
  int *piVar1;
  int iVar2;

  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  Heap_Create(3,0x46,0x40000);
  piVar1 = (int *)OverlayManager_CreateAndGetData(param_1,0x8c,0x46);
  func_0x020e5b44(piVar1,0,0x8c);
  iVar2 = OverlayManager_GetArgs(param_1);
  *piVar1 = iVar2;
  iVar2 = Options_GetTextFrameDelay(*(undefined4 *)(iVar2 + 0x10));
  piVar1[4] = iVar2;
  iVar2 = Options_GetFrame(*(undefined4 *)(*piVar1 + 0x10));
  piVar1[5] = iVar2;
  iVar2 = ov95_021E5954();
  piVar1[0xe] = iVar2;
  iVar2 = PokepicManager_Create(0x46);
  piVar1[0xf] = iVar2;
  iVar2 = NARC_New(0xb4,0x46);
  piVar1[0x10] = iVar2;
  iVar2 = BgConfig_Alloc(0x46);
  piVar1[1] = iVar2;
  GF_CreateVramTransferManager(0x40,0x46);
  iVar2 = sub_02016EDC(0x46,1,0);
  piVar1[0x16] = iVar2;
  iVar2 = PaletteData_Init(0x46);
  piVar1[2] = iVar2;
  PaletteData_SetAutoTransparent(iVar2,1);
  PaletteData_AllocBuffers(piVar1[2],0,0x200,0x46);
  PaletteData_AllocBuffers(piVar1[2],2,0x200,0x46);
  PaletteData_AllocBuffers(piVar1[2],1,0x200,0x46);
  PaletteData_LoadNarc(piVar1[2],0x10,9,0x46,1,0x20,0xf0);
  ov95_021E5900();
  ov95_021E5928();
  ov95_021E59F8();
  ov95_021E5A38(piVar1[1]);
  ov95_021E6FC4(piVar1[1]);
  ov95_021E619C(piVar1 + 1);
  TextFlags_SetCanTouchSpeedUpPrint(1);
  iVar2 = ov95_021E7020(piVar1[1],piVar1[0x15],piVar1[0x14],0x46);
  piVar1[0x22] = iVar2;
  Sound_Stop();
  Main_SetVBlankIntrCB(0x21e5b25,piVar1);
  return 1;
}

