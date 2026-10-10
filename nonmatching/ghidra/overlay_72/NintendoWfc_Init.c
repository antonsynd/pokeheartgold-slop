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
undefined4 func_0x02091614() __asm__("sub_02091614");
undefined4 SetBothScreensModesAndDisable();
undefined4 func_0x0200bd18() __asm__("sub_0200BD18");
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 BgConfig_Alloc();
undefined4 func_0x02039fd8() __asm__("sub_02039FD8");
undefined4 Main_SetVBlankIntrCB();
undefined4 Heap_Create();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 func_0x020915b0() __asm__("sub_020915B0");
undefined4 OverlayManager_CreateAndGetData();
undefined4 HBlankInterruptDisable();
extern uint uRam04000000 __asm__("sub_04000000");
extern int iRam0223b930 __asm__("sub_0223B930");
extern uint uRam04001000 __asm__("sub_04001000");
extern undefined ov72_0223B364;
undefined4 SetKeyRepeatTimers();
undefined4 NewMsgDataFromNarc();
undefined4 FontID_Alloc();
undefined4 Heap_Alloc();
undefined4 func_0x020b535c() __asm__("sub_020B535C");
undefined4 ov72_02238144();
undefined4 sub_02034D8C();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 ov72_022387D8();
undefined4 Sound_SetSceneAndPlayBGM();
extern ushort uRam04000304 __asm__("sub_04000304");

undefined4 NintendoWfc_Init(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  if (*param_2 == 0) {
    Main_SetVBlankIntrCB(0,0);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    uRam04000000 = uRam04000000 & 0xffffe0ff;
    uRam04001000 = uRam04001000 & 0xffffe0ff;
    Heap_Create(3,0x43,0x50000);
    func_0x020915b0();
    func_0x02091614();
    func_0x02039fd8(0x43);
    iVar1 = OverlayManager_CreateAndGetData(param_1,0x13a4,0x43);
    func_0x020e5b44(iVar1,0,0x13a4);
    uVar2 = BgConfig_Alloc(0x43);
    *(undefined4 *)(iVar1 + 4) = uVar2;
    uStack_28 = 1;
    uStack_24 = 0;
    uStack_20 = 0;
    uStack_1c = 0;
    iRam0223b930 = iVar1;
    SetBothScreensModesAndDisable(&uStack_28,0,&uStack_18,&ov72_0223B364);
    uVar2 = func_0x0200bd18(0xb,0x20,0x43);
    *(undefined4 *)(iVar1 + 0xbd0) = uVar2;
    uVar2 = NewMsgDataFromNarc(0,0x1b,0x306,0x43);
    *(undefined4 *)(iVar1 + 0xbd4) = uVar2;
    uVar2 = NewMsgDataFromNarc(0,0x1b,0x30a,0x43);
    *(undefined4 *)(iVar1 + 0xbd8) = uVar2;
    uVar2 = NewMsgDataFromNarc(0,0x1b,800,0x43);
    *(undefined4 *)(iVar1 + 0xbdc) = uVar2;
    SetKeyRepeatTimers(4,8);
    ov72_02238144(iVar1,param_1);
    ov72_022387D8(iVar1);
    Sound_SetSceneAndPlayBGM(0x34,0,0);
    iVar3 = Heap_Alloc(0x43,0x20020);
    *(int *)(iVar1 + 0x24) = iVar3;
    uVar2 = func_0x020b535c(iVar3 + 0x1fU & 0xffffffe0,0x20000,0);
    *(undefined4 *)(iVar1 + 0x28) = uVar2;
    Sound_SetSceneAndPlayBGM(0xb,0x47d,1);
    TextFlags_SetCanTouchSpeedUpPrint(1);
    uRam04000304 = uRam04000304 | 0x8000;
    *param_2 = 1;
  }
  else if (*param_2 == 1) {
    sub_02034D8C();
    FontID_Alloc(4,0x43);
    *param_2 = 0;
    return 1;
  }
  return 0;
}

