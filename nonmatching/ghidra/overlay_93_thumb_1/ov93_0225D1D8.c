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
undefined4 GfGfx_SetBanks();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 BG_ClearCharDataRange();
undefined4 InitBgFromTemplate();
undefined4 ToggleBgLayer();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 SetBothScreensModesAndDisable();
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 BgClearTilemapBufferAndCommit();
extern undefined ov93_02262B40;
extern ushort uRam04000008 __asm__("sub_04000008");
extern undefined ov93_02262AC8;
extern undefined ov93_02262B94;

void ov93_0225D1D8(undefined4 param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  uint uVar6;
  undefined *puVar7;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 auStack_90 [10];
  undefined4 auStack_68 [7];
  undefined1 auStack_4c [28];
  undefined1 auStack_30 [28];

  GfGfx_DisableEngineAPlanes();
  puVar5 = (undefined4 *)&ov93_02262AC8;
  puVar4 = auStack_90;
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
  GfGfx_SetBanks(auStack_90);
  func_0x020d47ec(0,0x6000000,0x80000);
  func_0x020d47ec(0,0x6200000,0x20000);
  func_0x020d47ec(0,0x6400000,0x40000);
  func_0x020d47ec(0,0x6600000,0x20000);
  uStack_a0 = 1;
  uStack_9c = 0;
  uStack_98 = 1;
  uStack_94 = 1;
  SetBothScreensModesAndDisable(&uStack_a0,1,&uStack_a0,auStack_90);
  puVar5 = (undefined4 *)&ov93_02262B40;
  puVar4 = auStack_68;
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
  InitBgFromTemplate(param_1,1,auStack_68,0);
  BgClearTilemapBufferAndCommit(param_1,1);
  func_0x0201bc8c(param_1,1,0,0);
  func_0x0201bc8c(param_1,1,3,0);
  InitBgFromTemplate(param_1,2,auStack_4c,0);
  BgClearTilemapBufferAndCommit(param_1,2);
  func_0x0201bc8c(param_1,2,0,0);
  func_0x0201bc8c(param_1,2,3,0);
  InitBgFromTemplate(param_1,3,auStack_30,0);
  BgClearTilemapBufferAndCommit(param_1,3);
  func_0x0201bc8c(param_1,3,0,0);
  func_0x0201bc8c(param_1,3,3,0);
  uRam04000008 = uRam04000008 & 0xfffc | 2;
  GfGfx_EngineATogglePlanes(1,1);
  uVar6 = 0;
  puVar7 = &ov93_02262B94;
  do {
    if ((int)uVar6 < 3) {
      InitBgFromTemplate(param_1,uVar6 + 4 & 0xff,puVar7,0);
    }
    else {
      InitBgFromTemplate(param_1,uVar6 + 4 & 0xff,puVar7,1);
    }
    BG_ClearCharDataRange(uVar6 + 4 & 0xff,0x20,0,0x75);
    BgClearTilemapBufferAndCommit(param_1,uVar6 + 4 & 0xff);
    func_0x0201bc8c(param_1,uVar6 + 4 & 0xff,0,0);
    func_0x0201bc8c(param_1,uVar6 + 4 & 0xff,3,0);
    uVar6 = uVar6 + 1;
    puVar7 = puVar7 + 0x1c;
  } while (uVar6 < 4);
  ToggleBgLayer(7,0);
  return;
}

