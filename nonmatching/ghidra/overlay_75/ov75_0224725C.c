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
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 func_0x020d47ec() __asm__("sub_020D47EC");
undefined4 BG_ClearCharDataRange();
undefined4 GfGfx_SetBanks();
undefined4 SetBothScreensModesAndDisable();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 InitBgFromTemplate();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 GfGfx_DisableEngineAPlanes();
extern undefined ov75_02249A24;
extern undefined ov75_022499FC;
extern undefined ov75_02249A5C;

void ov75_0224725C(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 auStack_f0 [7];
  undefined1 auStack_d4 [28];
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 auStack_a8 [10];
  undefined4 auStack_80 [7];
  undefined1 auStack_64 [28];
  undefined1 auStack_48 [28];
  undefined1 auStack_2c [28];
  undefined4 uStack_10;

  puVar4 = auStack_f0;
  uStack_10 = param_4;
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  puVar5 = (undefined4 *)&ov75_022499FC;
  puVar6 = auStack_a8;
  iVar3 = 5;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar6 = uVar1;
    puVar6[1] = uVar2;
    puVar6 = puVar6 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  GfGfx_SetBanks(auStack_a8);
  func_0x020d47ec(0,0x6000000,0x80000);
  func_0x020d47ec(0,0x6200000,0x20000);
  func_0x020d47ec(0,0x6400000,0x40000);
  func_0x020d47ec(0,0x6600000,0x20000);
  uStack_b8 = 1;
  uStack_b4 = 0;
  uStack_b0 = 0;
  uStack_ac = 0;
  SetBothScreensModesAndDisable(&uStack_b8,0,&uStack_b8,auStack_a8);
  puVar5 = (undefined4 *)&ov75_02249A5C;
  puVar6 = auStack_80;
  iVar3 = 0xe;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar6 = uVar1;
    puVar6[1] = uVar2;
    puVar6 = puVar6 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  InitBgFromTemplate(param_1,0,auStack_80,0);
  BgClearTilemapBufferAndCommit(param_1,0);
  func_0x0201bc8c(param_1,0,0,0);
  func_0x0201bc8c(param_1,0,3,0);
  InitBgFromTemplate(param_1,1,auStack_64,0);
  BgClearTilemapBufferAndCommit(param_1,1);
  func_0x0201bc8c(param_1,1,0,0);
  func_0x0201bc8c(param_1,1,3,0);
  InitBgFromTemplate(param_1,2,auStack_48,0);
  BgClearTilemapBufferAndCommit(param_1,2);
  func_0x0201bc8c(param_1,2,0,0);
  func_0x0201bc8c(param_1,2,3,0);
  InitBgFromTemplate(param_1,3,auStack_2c,0);
  BgClearTilemapBufferAndCommit(param_1,3);
  func_0x0201bc8c(param_1,3,0,0);
  func_0x0201bc8c(param_1,3,3,0);
  puVar6 = (undefined4 *)&ov75_02249A24;
  iVar3 = 7;
  do {
    uVar1 = *puVar6;
    uVar2 = puVar6[1];
    puVar6 = puVar6 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  InitBgFromTemplate(param_1,4,auStack_f0,0);
  BgClearTilemapBufferAndCommit(param_1,4);
  func_0x0201bc8c(param_1,4,0,0);
  func_0x0201bc8c(param_1,4,3,0);
  InitBgFromTemplate(param_1,5,auStack_d4,0);
  BgClearTilemapBufferAndCommit(param_1,5);
  func_0x0201bc8c(param_1,5,0,0);
  func_0x0201bc8c(param_1,5,3,0);
  BG_ClearCharDataRange(0,0x20,0,0x74);
  BG_ClearCharDataRange(4,0x20,0,0x74);
  return;
}

