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
undefined4 func_0x020d47ec() __asm__("sub_020D47EC");
undefined4 ov80_0222ACA0();
undefined4 SetBothScreensModesAndDisable();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 GfGfx_SetBanks();
undefined4 InitBgFromTemplate();
extern ushort uRam04000008 __asm__("sub_04000008");

void FrontierMap_SetVramBank
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  int iStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 auStack_94 [10];
  undefined4 auStack_6c [7];
  undefined1 auStack_50 [16];
  undefined1 uStack_40;
  undefined1 uStack_3f;
  undefined1 uStack_3c;
  undefined1 auStack_34 [16];
  undefined1 uStack_24;
  undefined1 uStack_23;
  undefined1 uStack_20;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  iVar2 = ov80_0222ACA0(param_2,0);
  GfGfx_DisableEngineAPlanes();
  puVar7 = (undefined4 *)0x223d5d8;
  puVar6 = auStack_94;
  iVar5 = 5;
  do {
    uVar3 = *puVar7;
    uVar4 = puVar7[1];
    puVar7 = puVar7 + 2;
    *puVar6 = uVar3;
    puVar6[1] = uVar4;
    puVar6 = puVar6 + 2;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  GfGfx_SetBanks(auStack_94);
  func_0x020d47ec(0,0x6000000,0x80000);
  func_0x020d47ec(0,0x6200000,0x20000);
  func_0x020d47ec(0,0x6400000,0x40000);
  func_0x020d47ec(0,0x6600000,0x20000);
  uStack_a4 = 1;
  uStack_9c = 0;
  uStack_98 = 1;
  iStack_a0 = iVar2;
  SetBothScreensModesAndDisable(&uStack_a4,1,&uStack_a4,auStack_94);
  puVar7 = (undefined4 *)0x223d600;
  puVar6 = auStack_6c;
  iVar5 = 10;
  do {
    uVar3 = *puVar7;
    uVar4 = puVar7[1];
    puVar7 = puVar7 + 2;
    *puVar6 = uVar3;
    puVar6[1] = uVar4;
    puVar6 = puVar6 + 2;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  *puVar6 = *puVar7;
  if (iVar2 == 0) {
    uStack_3f = 0;
    uStack_23 = 0;
    uStack_3c = 0;
    uStack_20 = 0;
  }
  uVar1 = ov80_0222ACA0(param_2,4);
  uStack_24 = uVar1;
  iVar5 = ov80_0222ACA0(param_2,9);
  if (iVar5 != 0xffff) {
    uStack_40 = uVar1;
  }
  if (iVar2 == 0) {
    InitBgFromTemplate(param_1,1,auStack_6c,0);
    BgClearTilemapBufferAndCommit(param_1,1);
    func_0x0201bc8c(param_1,1,0,0);
    func_0x0201bc8c(param_1,1,3,0);
    InitBgFromTemplate(param_1,2,auStack_50,0);
    BgClearTilemapBufferAndCommit(param_1,2);
    func_0x0201bc8c(param_1,2,0,0);
    func_0x0201bc8c(param_1,2,3,0);
    InitBgFromTemplate(param_1,3,auStack_34,0);
    BgClearTilemapBufferAndCommit(param_1,3);
    func_0x0201bc8c(param_1,3,0,0);
    func_0x0201bc8c(param_1,3,3,0);
  }
  else {
    InitBgFromTemplate(param_1,1,auStack_6c,0);
    BgClearTilemapBufferAndCommit(param_1,1);
    func_0x0201bc8c(param_1,1,0,0);
    func_0x0201bc8c(param_1,1,3,0);
    InitBgFromTemplate(param_1,2,auStack_50,2);
    BgClearTilemapBufferAndCommit(param_1,2);
    func_0x0201bc8c(param_1,2,0,0);
    func_0x0201bc8c(param_1,2,3,0);
    InitBgFromTemplate(param_1,3,auStack_34,2);
    BgClearTilemapBufferAndCommit(param_1,3);
    func_0x0201bc8c(param_1,3,0,0);
    func_0x0201bc8c(param_1,3,3,0);
  }
  uRam04000008 = uRam04000008 & 0xfffc;
  GfGfx_EngineATogglePlanes(1,1);
  uStack_c0 = 0;
  uStack_bc = 0;
  uStack_b8 = 0x800;
  uStack_b4 = 0;
  uStack_b0 = 0xf0001;
  uStack_ac = 0x300;
  uStack_a8 = 0;
  InitBgFromTemplate(param_1,4,&uStack_c0,0);
  BgClearTilemapBufferAndCommit(param_1,4);
  func_0x0201bc8c(param_1,4,0,0);
  func_0x0201bc8c(param_1,4,3,0);
  return;
}

