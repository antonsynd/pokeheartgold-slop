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
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 LoadFontPal0();
undefined4 GfGfx_SwapDisplay();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 Options_GetFrame();
undefined4 BgConfig_Alloc();
undefined4 func_0x0201c2d8() __asm__("sub_0201C2D8");
undefined4 BG_ClearCharDataRange();
undefined4 GfGfx_SetBanks();
undefined4 GF_CreateVramTransferManager();
undefined4 InitBgFromTemplate();
undefined4 SetBothScreensModesAndDisable();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");
extern undefined ov49_02269734;
extern undefined2 uRam04001050 __asm__("sub_04001050");
extern undefined ov49_0226981C;
extern undefined ov49_022697CC;
extern undefined ov49_02269724;
extern undefined2 uRam04000050 __asm__("sub_04000050");
undefined4 func_0x02022588() __asm__("sub_02022588");
undefined4 func_0x0200a080() __asm__("sub_0200A080");
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 func_0x0200b150() __asm__("sub_0200B150");
undefined4 func_0x020215c0() __asm__("sub_020215C0");
undefined4 func_0x020216c8() __asm__("sub_020216C8");
undefined4 func_0x02009fe8() __asm__("sub_02009FE8");
undefined4 LoadUserFrameGfx2();
undefined4 LoadUserFrameGfx1();
undefined4 G2dRenderer_Init();
undefined4 LoadFontPal1();
undefined4 sub_0203A880();
undefined4 Create2DGfxResObjMan();
undefined4 func_0x02020654() __asm__("sub_02020654");
undefined4 GfGfxLoader_GXLoadPal();
undefined4 func_0x02022638() __asm__("sub_02022638");
undefined4 func_0x020b78d4() __asm__("sub_020B78D4");
undefined4 LoadMapSignpostFrameAndGraphic();
extern undefined ov49_02269744;
undefined4 func_0x02026eb4() __asm__("sub_02026EB4");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 GfGfx_EngineBTogglePlanes();

void ov49_0225A5EC(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 uVar1;
  undefined4 uVar2;
  uint *puVar3;
  undefined4 *puVar4;
  undefined *puVar5;
  int iVar6;
  int iStack_18;

  uRam04000050 = 0;
  uRam04001050 = 0;
  GF_CreateVramTransferManager(0x20,param_3);
  GfGfx_SetBanks(&ov49_022697CC);
  uRam021d1175 = 0;
  GfGfx_SwapDisplay();
  func_0x0201c2d8(0,0);
  SetBothScreensModesAndDisable(&ov49_02269724);
  uVar2 = BgConfig_Alloc(param_3);
  *param_1 = uVar2;
  puVar5 = &ov49_0226981C;
  puVar3 = (uint *)&ov49_02269734;
  iStack_18 = 0;
  do {
    InitBgFromTemplate(*param_1,*puVar3 & 0xff,puVar5,0);
    BG_ClearCharDataRange(*puVar3 & 0xff,0x20,0,param_3);
    BgClearTilemapBufferAndCommit(*param_1,*puVar3 & 0xff);
    puVar5 = puVar5 + 0x1c;
    iStack_18 = iStack_18 + 1;
    puVar3 = puVar3 + 1;
  } while (iStack_18 < 4);
  Save_PlayerData_GetOptionsAddr(param_2);
  uVar1 = Options_GetFrame();
  LoadFontPal0(0,0xa0,param_3);
  LoadFontPal1(0,0x80,param_3);
  LoadUserFrameGfx1(*param_1,1,0x55,3,0,param_3);
  LoadUserFrameGfx2(*param_1,1,1,1,uVar1,param_3);
  LoadMapSignpostFrameAndGraphic(*param_1,1,0x1f,2,3,0,param_3);
  GfGfxLoader_GXLoadPal(0xd1,0x5a,0,0x40,0x20,param_3);
  func_0x020b78d4();
  func_0x0200b150(0,0x7e,0,0x1f,0,0x7e,0,0x1f,param_3);
  func_0x020215c0(&ov49_02269744,0x10,0x100010);
  func_0x02022588(0x18,param_3);
  func_0x020216c8();
  func_0x02022638();
  func_0x02009fe8(1,0x10);
  func_0x0200a080(1);
  sub_0203A880();
  uVar2 = G2dRenderer_Init(0x18,param_1 + 2,param_3);
  param_1[1] = uVar2;
  G2dRenderer_SetSubSurfaceCoords(param_1 + 2,0,0x100000);
  iVar6 = 0;
  puVar4 = param_1;
  do {
    uVar2 = Create2DGfxResObjMan(0x18,iVar6,param_3);
    puVar4[0x4c] = uVar2;
    iVar6 = iVar6 + 1;
    puVar4 = puVar4 + 1;
  } while (iVar6 < 4);
  uVar2 = func_0x02020654(0x18,param_3);
  param_1[0x50] = uVar2;
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  uVar2 = func_0x02026eb4(param_3,0,2,0,4,0x225a855);
  param_1[0x51] = uVar2;
  return;
}

