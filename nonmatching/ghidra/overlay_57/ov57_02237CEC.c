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
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 SetBothScreensModesAndDisable();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 func_0x020d47ec() __asm__("sub_020D47EC");
undefined4 InitBgFromTemplate();
undefined4 GfGfx_SetBanks();
extern undefined ov57_0223BD0C;
extern ushort uRam04000008 __asm__("sub_04000008");
extern undefined ov57_0223BC90;
extern undefined ov57_0223BCB8;

void ov57_02237CEC(undefined4 param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 uStack_108;
  undefined4 uStack_104;
  undefined4 uStack_100;
  undefined4 uStack_fc;
  undefined4 auStack_f8 [10];
  undefined4 auStack_d0 [7];
  undefined1 auStack_b4 [28];
  undefined1 auStack_98 [28];
  undefined1 auStack_7c [28];
  undefined4 auStack_60 [7];
  undefined1 auStack_44 [28];
  undefined1 auStack_28 [28];
  
  GfGfx_DisableEngineAPlanes();
  puVar5 = (undefined4 *)&ov57_0223BC90;
  puVar4 = auStack_f8;
  iVar3 = 5;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  GfGfx_SetBanks(auStack_f8);
  func_0x020d47ec(0,0x6000000,0x80000);
  func_0x020d47ec(0,0x6200000,0x20000);
  func_0x020d47ec(0,0x6400000,0x40000);
  func_0x020d47ec(0,0x6600000,0x20000);
  uStack_108 = 1;
  uStack_104 = 0;
  uStack_100 = 0;
  uStack_fc = 1;
  SetBothScreensModesAndDisable(&uStack_108,1,&uStack_108,auStack_f8);
  puVar5 = (undefined4 *)&ov57_0223BCB8;
  puVar4 = auStack_60;
  iVar3 = 10;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  *puVar4 = *puVar5;
  InitBgFromTemplate(param_1,1,auStack_60,0);
  InitBgFromTemplate(param_1,2,auStack_44,0);
  InitBgFromTemplate(param_1,3,auStack_28,0);
  BgClearTilemapBufferAndCommit(param_1,1);
  BgClearTilemapBufferAndCommit(param_1,2);
  BgClearTilemapBufferAndCommit(param_1,3);
  uRam04000008 = uRam04000008 & 0xfffc | 1;
  GfGfx_EngineATogglePlanes(1,1);
  puVar5 = (undefined4 *)&ov57_0223BD0C;
  puVar4 = auStack_d0;
  iVar3 = 0xe;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  InitBgFromTemplate(param_1,4,auStack_d0,0);
  InitBgFromTemplate(param_1,5,auStack_b4,0);
  InitBgFromTemplate(param_1,6,auStack_98,0);
  InitBgFromTemplate(param_1,7,auStack_7c,0);
  BgClearTilemapBufferAndCommit(param_1,4);
  BgClearTilemapBufferAndCommit(param_1,5);
  BgClearTilemapBufferAndCommit(param_1,6);
  BgClearTilemapBufferAndCommit(param_1,7);
  GfGfx_EngineBTogglePlanes(4,0);
  return;
}

