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
undefined4 Heap_Create(int, int, unsigned int);
void * BgConfig_Alloc(int);
undefined4 Main_SetVBlankIntrCB(void *, void *);
undefined4 GfGfx_DisableEngineBPlanes(void);
undefined4 TextFlags_SetCanTouchSpeedUpPrint(int);
undefined4 GfGfx_DisableEngineAPlanes(void);
void * NewMsgDataFromNarc(int, int, int, int);
undefined4 HBlankInterruptDisable(void);
undefined4 SetKeyRepeatTimers(int, int);
undefined4 TextFlags_SetCanABSpeedUpPrint(int);
void * OverlayManager_CreateAndGetData(void *, unsigned int, int);
void * memset(void *, int, unsigned int);
void * NARC_New(int, int);
void * MessageFormat_New(int);
undefined4 sub_0200FBF4(int, unsigned short);
extern uint  uRam04001000 __asm__("sub_04001000");
extern uint  uRam04000000 __asm__("sub_04000000");
undefined4 sub_020210BC(void);
undefined4 ov52_021E84CC();
undefined4 OverlayManager_GetArgs();
undefined4 FontID_Alloc(unsigned char, int);
void * Save_GameStats_Get(void *);
void * Save_PlayerData_GetOptionsAddr(void *);
undefined4 ov52_021E83A4();
undefined4 ov52_021E870C();
undefined4 ov52_021E85DC();
void * Save_TrainerCard_Get(void *);
undefined4 ov52_021E83C4();
undefined4 Sound_SetSceneAndPlayBGM(unsigned char, unsigned short, int);
undefined4 BeginNormalPaletteFade(int, int, int, unsigned short, int, int, int);
void * TrainerCard_GetSignature(void *);
undefined4 ov52_021E89D4();
undefined4 sub_02021148(int);
undefined4 ov52_021E86DC();
undefined4 ov52_021E888C();
void * OverlayManager_GetData(void *);
undefined4 NARC_Delete(void *);



int TrainerCardSignature_Init(undefined *param_1,undefined *param_2)

{
  undefined4 *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  
  if (*(int *)param_2 == 0) {
    sub_0200FBF4(0,0);
    sub_0200FBF4(1,0);
    Main_SetVBlankIntrCB((undefined *)0x0,(undefined *)0x0);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    uRam04000000 = uRam04000000 & 0xffffe0ff;
    uRam04001000 = uRam04001000 & 0xffffe0ff;
    Heap_Create(3,0x27,0x40000);
    puVar1 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x5cb0,0x27);
    memset((undefined *)puVar1,0,0x5cb0);
    puVar2 = BgConfig_Alloc(0x27);
    *puVar1 = puVar2;
    puVar2 = NARC_New(0x5b,0x27);
    puVar3 = MessageFormat_New(0x27);
    puVar1[4] = puVar3;
    puVar3 = NewMsgDataFromNarc(0,0x1b,0xfc,0x27);
    puVar1[5] = puVar3;
    TextFlags_SetCanTouchSpeedUpPrint(1);
    TextFlags_SetCanABSpeedUpPrint(1);
    SetKeyRepeatTimers(4,8);
    ov52_021E83A4();
    ov52_021E83C4(*puVar1);
    BeginNormalPaletteFade(0,1,1,0,0x10,1,0x27);
    puVar3 = OverlayManager_GetArgs(param_1);
    puVar3 = Save_TrainerCard_Get(puVar3);
    puVar3 = TrainerCard_GetSignature(puVar3);
    puVar1[0x16e6] = puVar3;
    puVar3 = OverlayManager_GetArgs(param_1);
    puVar3 = Save_GameStats_Get(puVar3);
    puVar1[2] = puVar3;
    puVar3 = OverlayManager_GetArgs(param_1);
    puVar3 = Save_PlayerData_GetOptionsAddr(puVar3);
    puVar1[3] = puVar3;
    ov52_021E85DC(puVar1,puVar2);
    sub_020210BC();
    sub_02021148(1);
    Main_SetVBlankIntrCB((undefined *)0x21e837d,(undefined *)*puVar1);
    FontID_Alloc(2,0x27);
    ov52_021E84CC(puVar1);
    ov52_021E86DC();
    ov52_021E870C(puVar1,puVar2);
    ov52_021E888C(puVar1);
    ov52_021E89D4(puVar1,param_1);
    Sound_SetSceneAndPlayBGM(0x38,0,0);
    *(unsigned short *)0x04000304 = *(unsigned short *)0x04000304 & 0x7fff;
    NARC_Delete(puVar2);
    *(int *)param_2 = *(int *)param_2 + 1;
  }
  else if (*(int *)param_2 == 1) {
    OverlayManager_GetData(param_1);
    *(undefined4 *)param_2 = 0;
    return 1;
  }
  return 0;
}

