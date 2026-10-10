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
undefined4 sub_02074490();
undefined4 func_0x020b78d4() __asm__("sub_020B78D4");
undefined4 sub_02074498();
undefined4 AddPlttResObjFromNarc();
undefined4 SpriteTransfer_CreateExtPlttTransferTask();
undefined4 AddCellOrAnimResObjFromNarc();
undefined4 ov82_0223FC14();
undefined4 func_0x0200b150() __asm__("sub_0200B150");
undefined4 func_0x0200acf0() __asm__("sub_0200ACF0");
undefined4 func_0x0200a3c8() __asm__("sub_0200A3C8");
undefined4 sub_020744A4();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 AddCharResObjFromNarc();
undefined4 NARC_New();
undefined4 func_0x0200a540() __asm__("sub_0200A540");
undefined4 Create2DGfxResObjMan();
undefined4 Pokemon_GetIconNaix();
undefined4 G2dRenderer_Init();
extern undefined ov82_0223FEEC;
undefined4 NARC_Delete();
undefined4 GfGfx_EngineATogglePlanes();

void ov82_0223F95C(undefined4 *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined *puVar3;
  undefined4 *puVar4;
  int iVar5;
  
  ov82_0223FC14();
  func_0x020b78d4();
  func_0x0200b150(0,0x80,0,0x20,0,0x80,0,0x20,0x69);
  uVar1 = G2dRenderer_Init(2,param_1 + 1,0x69);
  puVar3 = &ov82_0223FEEC;
  *param_1 = uVar1;
  iVar5 = 0;
  puVar4 = param_1;
  do {
    uVar1 = Create2DGfxResObjMan(*puVar3,iVar5,0x69);
    puVar4[0x4b] = uVar1;
    iVar5 = iVar5 + 1;
    puVar3 = puVar3 + 1;
    puVar4 = puVar4 + 1;
  } while (iVar5 < 4);
  uVar1 = AddCharResObjFromNarc(param_1[0x4b],0xb8,0xc,1,0,1,0x69);
  param_1[0x4f] = uVar1;
  uVar1 = AddPlttResObjFromNarc(param_1[0x4c],0xb8,0x36,0,0,1,1,0x69);
  param_1[0x50] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4d],0xb8,0xe,1,0,2,0x69);
  param_1[0x51] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4e],0xb8,0xd,1,0,3,0x69);
  param_1[0x52] = uVar1;
  uVar1 = NARC_New(0x14,0x69);
  uVar2 = Pokemon_GetIconNaix(param_2);
  uVar2 = func_0x0200a3c8(param_1[0x4b],uVar1,uVar2,0,1,1,0x69);
  param_1[0x53] = uVar2;
  uVar2 = sub_02074490();
  uVar2 = AddPlttResObjFromNarc(param_1[0x4c],0x14,uVar2,0,1,1,3,0x69);
  param_1[0x54] = uVar2;
  uVar2 = sub_02074498();
  uVar2 = func_0x0200a540(param_1[0x4d],uVar1,uVar2,0,1,2,0x69);
  param_1[0x55] = uVar2;
  uVar2 = sub_020744A4();
  uVar2 = func_0x0200a540(param_1[0x4e],uVar1,uVar2,0,1,3,0x69);
  param_1[0x56] = uVar2;
  iVar5 = 0;
  do {
    func_0x0200acf0(param_1[0x4f]);
    SpriteTransfer_CreateExtPlttTransferTask(param_1[0x50]);
    iVar5 = iVar5 + 1;
    param_1 = param_1 + 4;
  } while (iVar5 < 2);
  GfGfx_EngineBTogglePlanes(0x10,1);
  GfGfx_EngineATogglePlanes(0x10,1);
  NARC_Delete(uVar1);
  return;
}

