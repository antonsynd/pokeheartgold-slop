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
undefined4 G2x_SetBlendAlpha_(unsigned int, int, int, int, int);
undefined4 GfGfx_DisableEngineAPlanes(void);
undefined4 ov40_0222BC44();
undefined4 SetBothScreensModesAndDisable(void *);
undefined4 BgClearTilemapBufferAndCommit(void *, unsigned char);
undefined4 GfGfx_SetBanks(void *);
undefined4 MIi_CpuClear32(unsigned int, void *, unsigned int);
undefined4 InitBgFromTemplate(void *, unsigned char, void *, unsigned char);
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 GfGfx_EngineBTogglePlanes(unsigned char, unsigned char);
extern undefined ov40_02244D54;
extern undefined ov40_02244D8C;
extern undefined ov40_02244CE4;
extern undefined ov40_02244D00;
extern undefined ov40_02244CC8;
extern undefined ov40_02244D70;
extern undefined ov40_02244D1C;
extern undefined ov40_02244CA0;
extern undefined ov40_02244D38;

void ov40_0222BA90(undefined *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 auStack_44 [10];
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  GfGfx_DisableEngineAPlanes();
  uStack_1c = 1;
  uStack_18 = 0;
  uStack_14 = 0;
  uStack_10 = 1;
  SetBothScreensModesAndDisable((undefined *)&uStack_1c);
  puVar5 = (undefined4 *)&ov40_02244CA0;
  puVar4 = auStack_44;
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
  GfGfx_SetBanks((undefined *)auStack_44);
  MIi_CpuClear32(0,(undefined *)0x6000000,0x80000);
  MIi_CpuClear32(0,(undefined *)0x6200000,0x20000);
  MIi_CpuClear32(0,(undefined *)0x6400000,0x40000);
  MIi_CpuClear32(0,(undefined *)0x6600000,0x20000);
  InitBgFromTemplate(param_1,0,&ov40_02244CC8,0);
  InitBgFromTemplate(param_1,1,&ov40_02244CE4,0);
  InitBgFromTemplate(param_1,2,&ov40_02244D00,0);
  InitBgFromTemplate(param_1,3,&ov40_02244D1C,0);
  BgClearTilemapBufferAndCommit(param_1,0);
  BgClearTilemapBufferAndCommit(param_1,1);
  BgClearTilemapBufferAndCommit(param_1,2);
  BgClearTilemapBufferAndCommit(param_1,3);
  InitBgFromTemplate(param_1,4,&ov40_02244D38,0);
  InitBgFromTemplate(param_1,5,&ov40_02244D54,0);
  InitBgFromTemplate(param_1,6,&ov40_02244D70,0);
  InitBgFromTemplate(param_1,7,&ov40_02244D8C,0);
  BgClearTilemapBufferAndCommit(param_1,4);
  BgClearTilemapBufferAndCommit(param_1,5);
  BgClearTilemapBufferAndCommit(param_1,6);
  BgClearTilemapBufferAndCommit(param_1,7);
  GfGfx_EngineATogglePlanes(1,0);
  GfGfx_EngineATogglePlanes(2,1);
  GfGfx_EngineATogglePlanes(4,0);
  GfGfx_EngineATogglePlanes(8,0);
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(1,0);
  GfGfx_EngineBTogglePlanes(2,1);
  GfGfx_EngineBTogglePlanes(4,0);
  GfGfx_EngineBTogglePlanes(8,0);
  GfGfx_EngineBTogglePlanes(0x10,1);
  ov40_0222BC44(1);
  G2x_SetBlendAlpha_(0x4000050,4,0x12,7,8);
  G2x_SetBlendAlpha_(0x4001050,4,0x12,7,8);
  return;
}

