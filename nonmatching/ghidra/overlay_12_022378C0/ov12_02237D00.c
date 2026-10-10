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
undefined4 PaletteData_LoadNarc();
undefined4 InitBgFromTemplate();
undefined4 sub_0200EB80();
undefined4 sub_0200E640();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 GfGfxLoader_LoadScrnData();
undefined4 BattleSystem_GetFrame();
undefined4 ov12_0223B52C();
undefined4 GfGfxLoader_LoadCharData();
extern undefined ov12_0226C120;
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");
extern ushort uRam04000008 __asm__("sub_04000008");
extern ushort uRam04000048 __asm__("sub_04000048");
undefined4 Main_SetVBlankIntrCB();
undefined4 GfGfx_BothDispOn();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 DrawFrameAndWindow2();
undefined4 FillWindowPixelBuffer();
undefined4 AddWindowParameterized();
undefined4 ov12_0223A620();
extern ushort uRam0400004a __asm__("sub_0400004A");

void ov12_02237D00(int param_1)

{
  undefined4 uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 auStack_64 [7];
  undefined1 auStack_48 [28];
  undefined1 auStack_2c [28];

  puVar6 = (undefined4 *)&ov12_0226C120;
  *(byte *)(param_1 + 0x23ff) = *(byte *)(param_1 + 0x23ff) & 0xfe | 1;
  puVar5 = auStack_64;
  iVar4 = 10;
  do {
    uVar1 = *puVar6;
    uVar3 = puVar6[1];
    puVar6 = puVar6 + 2;
    *puVar5 = uVar1;
    puVar5[1] = uVar3;
    puVar5 = puVar5 + 2;
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  *puVar5 = *puVar6;
  InitBgFromTemplate(*(undefined4 *)(param_1 + 4),1,auStack_64,0);
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 4),1);
  InitBgFromTemplate(*(undefined4 *)(param_1 + 4),2,auStack_48,0);
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 4),2);
  InitBgFromTemplate(*(undefined4 *)(param_1 + 4),3,auStack_2c,0);
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 4),3);
  uRam04000008 = uRam04000008 & 0xfffc | 1;
  GfGfx_EngineATogglePlanes(1,1);
  uVar2 = BattleSystem_GetFrame(param_1);
  sub_0200EB80(*(undefined4 *)(param_1 + 4),1,1,10,uVar2 & 0xff,5);
  GfGfxLoader_LoadCharData(7,*(int *)(param_1 + 0x2404) + 3,*(undefined4 *)(param_1 + 4),3,0,0,1,5);
  iVar4 = ov12_0223B52C(param_1);
  PaletteData_LoadNarc
            (*(undefined4 *)(param_1 + 0x28),7,*(int *)(param_1 + 0x2404) * 3 + 0xb0 + iVar4,5,0,0,0
            );
  uVar1 = sub_0200E640(uVar2);
  PaletteData_LoadNarc(*(undefined4 *)(param_1 + 0x28),0x26,uVar1,5,0,0x20,0xa0);
  PaletteData_LoadNarc(*(undefined4 *)(param_1 + 0x28),0x10,8,5,0,0x20,0xb0);
  GfGfxLoader_LoadScrnData(7,2,*(undefined4 *)(param_1 + 4),3,0,0,1,5);
  uRam04000000 = uRam04000000 & 0xffff1fff;
  uRam04001000 = uRam04001000 & 0xffff1fff;
  uRam04000048 = uRam04000048 & 0xffc0;
  uRam0400004a = uRam0400004a & 0xffc0;
  GfGfx_BothDispOn();
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  Main_SetVBlankIntrCB(0x2239731,param_1);
  *(byte *)(param_1 + 0x23ff) = *(byte *)(param_1 + 0x23ff) | 2;
  AddWindowParameterized
            (*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8),1,2,0x13,0x1b,4,0xb,0x1f);
  FillWindowPixelBuffer(*(undefined4 *)(param_1 + 8),0xff);
  DrawFrameAndWindow2(*(undefined4 *)(param_1 + 8),0,1,10);
  ov12_0223A620(param_1);
  return;
}

