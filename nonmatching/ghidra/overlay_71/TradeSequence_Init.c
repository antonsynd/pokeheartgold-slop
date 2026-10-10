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
undefined4 MessageFormat_New();
undefined4 OverlayManager_GetArgs();
undefined4 ov71_022473E4();
undefined4 func_0x0200b150() __asm__("sub_0200B150");
undefined4 String_New();
undefined4 BgConfig_Alloc();
undefined4 OverlayManager_CreateAndGetData();
undefined4 ov71_02246B28();
undefined4 func_0x020b78d4() __asm__("sub_020B78D4");
undefined4 BufferPlayersName();
undefined4 IsPaletteFadeFinished();
undefined4 NewMsgDataFromNarc();
undefined4 BufferBoxMonNickname();
undefined4 Sound_SetSceneAndPlayBGM();
undefined4 G2dRenderer_Init();
undefined4 HBlankInterruptDisable();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 SysTask_CreateOnPrintQueue();
undefined4 GetBoxMonData();
undefined4 Main_SetVBlankIntrCB();
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");

undefined4 TradeSequence_Init(undefined4 param_1)

{
  undefined2 uVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;

  iVar2 = IsPaletteFadeFinished();
  if (iVar2 != 0) {
    Heap_Create(3,0x38,0x18000);
    Heap_Create(3,0x39,0x18000);
    ov71_022473E4();
    Sound_SetSceneAndPlayBGM(3,0x3f4,1);
    piVar3 = (int *)OverlayManager_CreateAndGetData(param_1,0x158,0x38);
    if (piVar3 != (int *)0x0) {
      iVar2 = OverlayManager_GetArgs(param_1);
      *piVar3 = iVar2;
      piVar3[1] = 0;
      iVar2 = BgConfig_Alloc(0x38);
      piVar3[2] = iVar2;
      iVar2 = String_New(400,0x38);
      piVar3[5] = iVar2;
      iVar2 = NewMsgDataFromNarc(0,0x1b,0xb3,0x38);
      piVar3[4] = iVar2;
      iVar2 = MessageFormat_New(0x38);
      piVar3[3] = iVar2;
      puVar4 = (undefined4 *)*piVar3;
      iVar2 = puVar4[4];
      if (iVar2 == 1) {
        BufferBoxMonNickname(piVar3[3],0,*puVar4);
        BufferBoxMonNickname(piVar3[3],1,*(undefined4 *)(*piVar3 + 4));
        BufferPlayersName(piVar3[3],2,*(undefined4 *)(*piVar3 + 8));
        iVar2 = ov71_02246B28(*(undefined4 *)(*piVar3 + 4));
        piVar3[0x52] = iVar2;
      }
      else if (iVar2 == 2) {
        BufferBoxMonNickname(piVar3[3],0,*puVar4);
      }
      else if (iVar2 == 4) {
        BufferBoxMonNickname(piVar3[3],1,puVar4[1]);
        iVar2 = ov71_02246B28(*(undefined4 *)(*piVar3 + 4));
        piVar3[0x52] = iVar2;
      }
      func_0x020b78d4();
      func_0x0200b150(0,0x80,0,0x20,1,0x7f,0,0x20,0x38);
      iVar2 = G2dRenderer_Init(0x40,piVar3 + 7,0x38);
      piVar3[6] = iVar2;
      G2dRenderer_SetSubSurfaceCoords(piVar3 + 7,0,0xe8000);
      uVar1 = GetBoxMonData(*(undefined4 *)*piVar3,5,0);
      *(undefined2 *)(piVar3 + 0x53) = uVar1;
      uVar1 = GetBoxMonData(*(undefined4 *)(*piVar3 + 4),5,0);
      *(undefined2 *)(piVar3 + 0x54) = uVar1;
      uVar1 = GetBoxMonData(*(undefined4 *)*piVar3,0x70,0);
      *(undefined2 *)((int)piVar3 + 0x14e) = uVar1;
      uVar1 = GetBoxMonData(*(undefined4 *)(*piVar3 + 4),0x70,0);
      *(undefined2 *)((int)piVar3 + 0x152) = uVar1;
      piVar3[0x55] = 0;
      Main_SetVBlankIntrCB(0,0);
      HBlankInterruptDisable();
      GfGfx_DisableEngineAPlanes();
      GfGfx_DisableEngineBPlanes();
      uRam04000000 = uRam04000000 & 0xffffe0ff;
      uRam04001000 = uRam04001000 & 0xffffe0ff;
      iVar2 = SysTask_CreateOnPrintQueue(0x2246c49,piVar3,1);
      piVar3[0x51] = iVar2;
      piVar3[0x55] = 0;
    }
    return 1;
  }
  return 0;
}

