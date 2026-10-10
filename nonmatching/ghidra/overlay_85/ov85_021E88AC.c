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
undefined4 HBlankInterruptDisable();
undefined4 SetKeyRepeatTimers();
undefined4 ov85_021E8C3C();
undefined4 OverlayManager_CreateAndGetData();
undefined4 OverlayManager_GetArgs();
undefined4 MessageFormat_New();
undefined4 GF_AssertFail();
undefined4 NewMsgDataFromNarc();
undefined4 BgConfig_Alloc();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 Main_SetVBlankIntrCB();
undefined4 Heap_Create();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 NARC_New();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
extern uint uRam04000000 __asm__("sub_04000000");
extern uint uRam04001000 __asm__("sub_04001000");
undefined4 BeginNormalPaletteFade();
undefined4 sub_0203897C();
undefined4 SysTask_CreateOnVBlankQueue();
undefined4 ov85_021E8E6C();
undefined4 sub_02038C1C();
undefined4 ov85_021E9084();
undefined4 sub_0203769C();
undefined4 sub_02096CE0();
undefined4 ov85_021E8F58();
undefined4 sub_0205A904();
undefined4 ov85_021E8D64();
undefined4 ov85_021E8C5C();
undefined4 ov85_021E8F88();
undefined4 sub_0203A880();
undefined4 Sound_SetSceneAndPlayBGM();
undefined4 NARC_Delete();
undefined4 ov85_021E9160();

undefined4 ov85_021E88AC(undefined4 param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar1 = OverlayManager_GetArgs();
  if (*param_2 == 0) {
    Main_SetVBlankIntrCB(0,0);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    uRam04000000 = uRam04000000 & 0xffffe0ff;
    uRam04001000 = uRam04001000 & 0xffffe0ff;
    Heap_Create(3,0x66,0x80000);
    iVar2 = NARC_New(0xd9,0x66);
    if (iVar2 == 0) {
      GF_AssertFail();
    }
    iVar3 = OverlayManager_CreateAndGetData(param_1,0x4ab0,0x66);
    func_0x020e5b44(iVar3,0,0x4ab0);
    *(int *)(iVar1 + 0x38) = iVar3;
    *(int *)(iVar3 + 0xc) = iVar1;
    *(undefined4 *)(iVar3 + 0x10) = *(undefined4 *)(iVar1 + 0x30);
    uVar4 = BgConfig_Alloc(0x66);
    *(undefined4 *)(iVar3 + 0x14) = uVar4;
    uVar4 = MessageFormat_New(0x66);
    *(undefined4 *)(iVar3 + 0x34) = uVar4;
    uVar4 = NewMsgDataFromNarc(0,0x1b,0xcf,0x66);
    *(undefined4 *)(iVar3 + 0x38) = uVar4;
    SetKeyRepeatTimers(4,8);
    ov85_021E8C3C();
    ov85_021E8C5C(*(undefined4 *)(iVar3 + 0x14));
    BeginNormalPaletteFade(0,0x11,0x11,0,0x10,1,0x66);
    ov85_021E8E6C(iVar3,iVar2);
    Main_SetVBlankIntrCB(0x21e8c15,iVar3);
    ov85_021E8D64(iVar3,iVar2);
    ov85_021E8F58();
    ov85_021E8F88(iVar3,iVar2);
    ov85_021E9084(iVar3);
    ov85_021E9160(iVar3);
    Sound_SetSceneAndPlayBGM(0x34,0,0);
    sub_02096CE0(*(undefined4 *)(iVar1 + 0x30));
    sub_0203897C();
    sub_02038C1C(3);
    iVar1 = sub_0203769C();
    if (iVar1 == 0) {
      sub_0205A904(0xd);
    }
    sub_0203A880();
    uVar4 = SysTask_CreateOnVBlankQueue(0x21e8bb1,iVar3,5);
    *(undefined4 *)(iVar3 + 0x30) = uVar4;
    NARC_Delete(iVar2);
    *param_2 = *param_2 + 1;
  }
  else if (*param_2 == 1) {
    *param_2 = 0;
    return 1;
  }
  return 0;
}

