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
undefined4 Main_SetVBlankIntrCB(void *, void *);
undefined4 GfGfx_DisableEngineBPlanes(void);
undefined4 GF_CreateVramTransferManager(unsigned int, int);
void * NARC_New(int, int);
void * PaletteData_Init(int);
undefined4 PaletteData_SetAutoTransparent(void *, int);
undefined4 ov40_0222BC68();
void * GF_3DVramMan_Create(int, int, int, int, int, void *);
undefined4 GfGfx_DisableEngineAPlanes(void);
undefined4 ov40_0222BA90();
undefined4 HBlankInterruptDisable(void);
void * PokepicManager_Create(int);
void * BgConfig_Alloc(int);
undefined4 PaletteData_AllocBuffers(void *, int, unsigned int, int);
undefined4 NNS_G2dSetupSoftwareSpriteCamera(void);
extern uint  uRam04000000 __asm__("sub_04000000");
extern uint  uRam04001000 __asm__("sub_04001000");
undefined4 NNS_G2dGetUnpackedPaletteData(void *, void *);
undefined4 TextFlags_SetCanTouchSpeedUpPrint(int);
void * sub_0203A4AC(int);
undefined4 Heap_Free(void *);
undefined4 sub_020879E0(void *, int);
undefined4 PaletteData_LoadPalette(void *, void *, int, unsigned short, unsigned short);
undefined4 sub_02021148(int);
undefined4 G2dRenderer_SetObjCharTransferReservedRegion(int, int);
undefined4 sub_0203A880(void);
undefined4 ov40_0223D544();
undefined4 ov40_0222C360();
void * NewMsgDataFromNarc(int, int, int, int);
undefined4 G2dRenderer_SetPlttTransferReservedRegion(int);
void * FontSystem_NewInit(int, int);
undefined4 sub_020210BC(void);
undefined4 sub_020878B0(void *, int);
void * sub_02087284(int, int, int, int, int, void *, void *, void *);
undefined4 sub_02087878(void *, int);
undefined4 sub_0203A948();
undefined4 ov40_0222FBF8();
undefined4 sub_02088030();
undefined4 ov40_0222FCCC();
undefined4 ov40_0222C4F8();



void ov40_0222B6E0(undefined *param_1)

{
  undefined *puVar1;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  int iStack_18;
  undefined4 uStack_14;

  Main_SetVBlankIntrCB((undefined *)0x0,(undefined *)0x0);
  HBlankInterruptDisable();
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffffe0ff;
  uRam04001000 = uRam04001000 & 0xffffe0ff;
  GF_CreateVramTransferManager(4,0x6d);
  puVar1 = NARC_New(0xbf,0x6d);
  *(undefined **)(param_1 + 0x14) = puVar1;
  puVar1 = BgConfig_Alloc(0x6d);
  *(undefined **)(param_1 + 0x24) = puVar1;
  puVar1 = PaletteData_Init(0x6d);
  *(undefined **)(param_1 + 0x28) = puVar1;
  puVar1 = GF_3DVramMan_Create(0x6d,0,1,0,4,(undefined *)0x0);
  *(undefined **)(param_1 + 0x60) = puVar1;
  puVar1 = PokepicManager_Create(0x6d);
  *(undefined **)(param_1 + 100) = puVar1;
  NNS_G2dSetupSoftwareSpriteCamera();
  PaletteData_SetAutoTransparent(*(undefined **)(param_1 + 0x28),1);
  PaletteData_AllocBuffers(*(undefined **)(param_1 + 0x28),0,0x200,0x6d);
  PaletteData_AllocBuffers(*(undefined **)(param_1 + 0x28),1,0x200,0x6d);
  PaletteData_AllocBuffers(*(undefined **)(param_1 + 0x28),2,0x200,0x6d);
  PaletteData_AllocBuffers(*(undefined **)(param_1 + 0x28),3,0x200,0x6d);
  ov40_0222BA90(*(undefined4 *)(param_1 + 0x24));
  ov40_0222BC68(param_1);
  sub_020210BC();
  sub_02021148(4);
  *(undefined4 *)(param_1 + 0x44) = 1;
  ov40_0222C360(param_1);
  TextFlags_SetCanTouchSpeedUpPrint(1);
  Main_SetVBlankIntrCB((undefined *)0x222bd05,param_1);
  if (*(int *)param_1 != 0) {
    ov40_0223D544(param_1);
    G2dRenderer_SetObjCharTransferReservedRegion(1,0x200010);
    G2dRenderer_SetPlttTransferReservedRegion(1);
    G2dRenderer_SetObjCharTransferReservedRegion(2,0x200010);
    G2dRenderer_SetPlttTransferReservedRegion(2);
    sub_0203A880();
    sub_0203A948(1,0x6d);
    puVar1 = sub_0203A4AC(0x6d);
    NNS_G2dGetUnpackedPaletteData(puVar1,(undefined *)&iStack_28);
    PaletteData_LoadPalette
              (*(undefined **)(param_1 + 0x28),*(undefined **)(iStack_28 + 0xc),2,0xe0,0x20);
    PaletteData_LoadPalette
              (*(undefined **)(param_1 + 0x28),*(undefined **)(iStack_28 + 0xc),3,0xe0,0x20);
    Heap_Free(puVar1);
  }
  iStack_24 = 0xc;
  iStack_20 = 0x6d;
  iStack_18 = *(int *)param_1;
  uStack_14 = 0x100000;
  uStack_1c = 1;
  puVar1 = sub_02087284(0xc,0x6d,1,iStack_18,0x100000,*(undefined **)(param_1 + 0x18),
                        *(undefined **)(param_1 + 0x1c),*(undefined **)(param_1 + 0x28));
  *(undefined **)(param_1 + 0x6f0) = puVar1;
  sub_02087878(*(undefined **)(param_1 + 0x6f0),(uint)(byte)param_1[0x5c]);
  sub_020878B0(*(undefined **)(param_1 + 0x6f0),0);
  sub_020879E0(*(undefined **)(param_1 + 0x6f0),0);
  uStack_1c = 2;
  uStack_14 = 0x100000;
  puVar1 = sub_02087284(iStack_24,iStack_20,2,iStack_18,0x100000,*(undefined **)(param_1 + 0x18),
                        *(undefined **)(param_1 + 0x1c),*(undefined **)(param_1 + 0x28));
  *(undefined **)(param_1 + 0x6f4) = puVar1;
  sub_02087878(*(undefined **)(param_1 + 0x6f4),(uint)(byte)param_1[0x5c]);
  sub_020878B0(*(undefined **)(param_1 + 0x6f4),0);
  sub_020879E0(*(undefined **)(param_1 + 0x6f4),0);
  puVar1 = FontSystem_NewInit(0x14,0x6d);
  *(undefined **)(param_1 + 0x50) = puVar1;
  puVar1 = NewMsgDataFromNarc(0,0x1b,0xd,0x6d);
  *(undefined **)(param_1 + 0x48) = puVar1;
  puVar1 = NewMsgDataFromNarc(0,0x1b,0x1a,0x6d);
  *(undefined **)(param_1 + 0x4c) = puVar1;
  ov40_0222FCCC(param_1);
  sub_02088030(param_1);
  ov40_0222C4F8(param_1);
  ov40_0222FBF8(param_1);
  return;
}

