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
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 SpriteTransfer_CreateExtPlttTransferTask();
undefined4 func_0x0200b150() __asm__("sub_0200B150");
undefined4 AddCharResObjFromNarc();
undefined4 AddPlttResObjFromNarc();
undefined4 ov81_02242B90();
undefined4 AddCellOrAnimResObjFromNarc();
undefined4 func_0x020b78d4() __asm__("sub_020B78D4");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x0200acf0() __asm__("sub_0200ACF0");
undefined4 G2dRenderer_Init();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 sub_02074490();
undefined4 Create2DGfxResObjMan();
extern undefined ov81_02243594;

void ov81_0224276C(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined4 *puVar3;
  int iVar4;
  
  ov81_02242B90();
  func_0x020b78d4();
  func_0x0200b150(0,0x80,0,0x20,0,0x80,0,0x20,100);
  uVar1 = G2dRenderer_Init(0x20,param_1 + 1,100);
  *param_1 = uVar1;
  G2dRenderer_SetSubSurfaceCoords(param_1 + 1,0,0x200000);
  puVar2 = &ov81_02243594;
  iVar4 = 0;
  puVar3 = param_1;
  do {
    uVar1 = Create2DGfxResObjMan(*puVar2,iVar4,100);
    puVar3[0x4b] = uVar1;
    iVar4 = iVar4 + 1;
    puVar2 = puVar2 + 1;
    puVar3 = puVar3 + 1;
  } while (iVar4 < 4);
  uVar1 = AddCharResObjFromNarc(param_1[0x4b],0xb8,0x28,1,1,1,100);
  param_1[0x53] = uVar1;
  uVar1 = AddPlttResObjFromNarc(param_1[0x4c],0xb8,0x3e,0,1,1,4,100);
  param_1[0x54] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4d],0xb8,0x29,1,1,2,100);
  param_1[0x55] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4e],0xb8,0x2a,1,1,3,100);
  param_1[0x56] = uVar1;
  uVar1 = AddCharResObjFromNarc(param_1[0x4b],0xb8,0x2b,1,2,1,100);
  param_1[0x57] = uVar1;
  uVar1 = AddPlttResObjFromNarc(param_1[0x4c],0xb8,0x3f,0,2,1,1,100);
  param_1[0x58] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4d],0xb8,0x2c,1,2,2,100);
  param_1[0x59] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4e],0xb8,0x2d,1,2,3,100);
  param_1[0x5a] = uVar1;
  uVar1 = AddCharResObjFromNarc(param_1[0x4b],0xb8,0,1,0,2,100);
  param_1[0x4f] = uVar1;
  uVar1 = AddPlttResObjFromNarc(param_1[0x4c],0xb8,0x34,0,0,2,8,100);
  param_1[0x50] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4d],0xb8,2,1,0,2,100);
  param_1[0x51] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4e],0xb8,1,1,0,3,100);
  param_1[0x52] = uVar1;
  uVar1 = AddCharResObjFromNarc(param_1[0x4b],0xb8,0x2b,1,3,2,100);
  param_1[0x5b] = uVar1;
  uVar1 = AddPlttResObjFromNarc(param_1[0x4c],0xb8,0x3f,0,3,2,1,100);
  param_1[0x5c] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4d],0xb8,0x2c,1,3,2,100);
  param_1[0x5d] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4e],0xb8,0x2d,1,3,3,100);
  param_1[0x5e] = uVar1;
  iVar4 = 0;
  puVar3 = param_1;
  do {
    uVar1 = AddCharResObjFromNarc(param_1[0x4b],0xb8,0x2e,1,iVar4 + 4,2,100);
    puVar3[0x5f] = uVar1;
    uVar1 = sub_02074490();
    uVar1 = AddPlttResObjFromNarc(param_1[0x4c],0x14,uVar1,0,iVar4 + 4,2,3,100);
    puVar3[0x60] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4d],0xb8,0x2f,1,iVar4 + 4,2,100);
    puVar3[0x61] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4e],0xb8,0x30,1,iVar4 + 4,3,100);
    puVar3[0x62] = uVar1;
    iVar4 = iVar4 + 1;
    puVar3 = puVar3 + 4;
  } while (iVar4 < 2);
  iVar4 = 0;
  do {
    func_0x0200acf0(param_1[0x4f]);
    SpriteTransfer_CreateExtPlttTransferTask(param_1[0x50]);
    iVar4 = iVar4 + 1;
    param_1 = param_1 + 4;
  } while (iVar4 < 6);
  GfGfx_EngineBTogglePlanes(0x10,1);
  GfGfx_EngineATogglePlanes(0x10,1);
  return;
}

