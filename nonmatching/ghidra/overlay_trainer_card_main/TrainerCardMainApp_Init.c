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
undefined4 Options_GetTextFrameDelay();
undefined4 ResetVisibleHardwareWindows(int);
void * OverlayManager_GetArgs(void *);
undefined4 Main_SetHBlankIntrCB(void *, void *);
void * OverlayManager_CreateAndGetData(void *, unsigned int, int);
undefined4 Options_GetFrame(void *);
undefined4 Main_SetVBlankIntrCB(void *, void *);
undefined4 sub_0200FBF4();
undefined4 GfGfx_DisableEngineAPlanes(void);
void * func_0x020e5b44(void *, int, unsigned int) __asm__("sub_020E5B44");
undefined4 SetKeyRepeatTimers(int, int);
void * Save_PlayerData_GetOptionsAddr(void *);
undefined4 GfGfx_DisableEngineBPlanes(void);
undefined4 MenuInputStateMgr_GetState(void *);
undefined4 Heap_Create(int, int, unsigned int);
extern uint  uRam04001000 __asm__("sub_04001000");
extern uint  uRam04000000 __asm__("sub_04000000");
undefined4 ov51_021E7AF4();
undefined4 sub_02021148(int);
undefined4 ov51_021E6C00();
undefined4 TextFlags_SetCanABSpeedUpPrint(int);
undefined4 sub_020210BC(void);
undefined4 Sound_SetSceneAndPlayBGM(unsigned char, unsigned short, int);
undefined4 ov51_021E7DA4();
undefined4 ov51_021E7664();
undefined4 TextFlags_SetCanTouchSpeedUpPrint(int);
undefined4 ov51_021E78F8();
undefined4 ov51_021E6354();
undefined4 sub_02037474();
undefined4 ov51_021E60D4();
void * BgConfig_Alloc(int);
undefined4 PlaySE(unsigned short);
undefined4 ov51_021E5F64();
undefined4 ov51_021E6E60();
undefined4 ov51_021E6238();
undefined4 ov51_021E7BD0();
undefined4 ov51_021E76A4();
undefined4 GF_SndHandleSetPlayerVolume(unsigned int, unsigned int);
undefined4 sub_0203A964(void);
undefined4 ov51_021E6734();
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 BeginNormalPaletteFade(int, int, int, unsigned short, int, int, int);

undefined4 TrainerCardMainApp_Init(undefined4 param_1)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  ushort uVar5;
  int iVar6;

  Main_SetVBlankIntrCB(0,0);
  Main_SetHBlankIntrCB(0,0);
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffffe0ff;
  uRam04001000 = uRam04001000 & 0xffffe0ff;
  sub_0200FBF4(0,0);
  sub_0200FBF4(1,0);
  ResetVisibleHardwareWindows(0);
  ResetVisibleHardwareWindows(1);
  SetKeyRepeatTimers(4,8);
  Heap_Create(3,0x19,0x50000);
  puVar2 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x3444,0x19);
  func_0x020e5b44(puVar2,0,0x3444);
  uVar3 = OverlayManager_GetArgs(param_1);
  puVar2[0x39] = uVar3;
  puVar2[0x3a] = puVar2[0x39];
  uVar3 = MenuInputStateMgr_GetState(*(undefined4 *)(puVar2[0x39] + 0x66c));
  puVar2[0xc43] = uVar3;
  uVar3 = Save_PlayerData_GetOptionsAddr(*(undefined4 *)(puVar2[0x39] + 0x670));
  uVar1 = Options_GetTextFrameDelay();
  *(undefined1 *)((int)puVar2 + 0x343e) = uVar1;
  uVar1 = Options_GetFrame(uVar3);
  *(undefined1 *)((int)puVar2 + 0x343d) = uVar1;
  iVar4 = sub_02037474();
  if (iVar4 == 1) {
    *(byte *)((int)puVar2 + 0x343a) = *(byte *)((int)puVar2 + 0x343a) | 2;
  }
  if (*(char *)(puVar2[0x3a] + 0x33) == '\0') {
    *(byte *)((int)puVar2 + 0x343a) = *(byte *)((int)puVar2 + 0x343a) & 0xfe;
  }
  else {
    *(byte *)((int)puVar2 + 0x343a) = *(byte *)((int)puVar2 + 0x343a) & 0xfe | 1;
  }
  if (((*(byte *)((int)puVar2 + 0x343a) & 3) >> 1 == 1) && (*(int *)(puVar2[0x39] + 0x678) == 0)) {
    *(byte *)((int)puVar2 + 0x343a) = *(byte *)((int)puVar2 + 0x343a) & 0xfe;
  }
  if ((byte)(*(char *)puVar2[0x3a] - 7U) < 2) {
    uVar5 = 1;
    iVar4 = 0;
    do {
      if ((*(ushort *)(puVar2[0x3a] + 6) & uVar5) == 0) {
        *(undefined1 *)((int)puVar2 + iVar4 + 0x3424) = 0;
      }
      else {
        *(undefined1 *)((int)puVar2 + iVar4 + 0x3424) = 1;
      }
      iVar4 = iVar4 + 1;
      uVar5 = uVar5 << 1;
    } while (iVar4 < 0x10);
  }
  else {
    iVar4 = 0;
    do {
      iVar6 = iVar4 + 1;
      *(undefined1 *)((int)puVar2 + iVar4 + 0x3424) = 0;
      iVar4 = iVar6;
    } while (iVar6 < 0x10);
  }
  uVar3 = BgConfig_Alloc(0x19);
  *puVar2 = uVar3;
  ov51_021E5F64(puVar2);
  ov51_021E60D4();
  ov51_021E6238(*puVar2);
  ov51_021E6354(puVar2);
  sub_020210BC();
  sub_02021148(4);
  TextFlags_SetCanTouchSpeedUpPrint(1);
  TextFlags_SetCanABSpeedUpPrint(1);
  Sound_SetSceneAndPlayBGM(0x38,0,0);
  ov51_021E7DA4(puVar2 + 0xce8);
  PlaySE(0x694);
  ov51_021E78F8(puVar2 + 0xc47);
  ov51_021E7AF4(puVar2 + 0xc47,puVar2 + 0xd09,*(byte *)((int)puVar2 + 0x343a) & 1);
  ov51_021E7BD0(puVar2 + 0xc47);
  ov51_021E6E60(puVar2);
  ov51_021E7664(puVar2 + 0x15,1,puVar2[0xcf3]);
  puVar2[0xc3d] = (uint)(*(int *)(puVar2[0x39] + 0x674) != 0);
  *(undefined4 *)(puVar2[0x39] + 0x674) = 0;
  *(undefined1 *)(puVar2 + 0xd0d) = 0;
  puVar2[0xc42] = 0xffffffff;
  puVar2[0xce7] = 0;
  *(undefined1 *)(puVar2 + 0xd0e) = 0;
  ov51_021E6C00();
  ov51_021E6734(puVar2);
  ov51_021E76A4(puVar2,0);
  Main_SetVBlankIntrCB(0x21e6b89,puVar2);
  sub_0203A964();
  GF_SndHandleSetPlayerVolume(1,0x2a);
  BeginNormalPaletteFade(2,3,3,0,6,1,0x19);
  if ((*(char *)puVar2[0x3a] != '\a') && (*(char *)puVar2[0x3a] != '\b')) {
    GfGfx_EngineATogglePlanes(4,0);
  }
  return 1;
}

