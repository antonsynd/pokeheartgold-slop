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
undefined4 AddCharResObjFromNarc();
undefined4 AddPlttResObjFromNarc();
undefined4 SpriteTransfer_CreateCharTransferTask_AllocAtEnd();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 AddCellOrAnimResObjFromNarc();
undefined4 SpriteTransfer_CreateExtPlttTransferTask();
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 Create2DGfxResObjMan();
undefined4 G2dRenderer_Init();

void ov112_021F09B4(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;

  uVar1 = G2dRenderer_Init(7,param_1 + 2,*param_1);
  param_1[1] = uVar1;
  G2dRenderer_SetSubSurfaceCoords(param_1 + 2,0,0x100000);
  GfGfx_EngineBTogglePlanes(0x10,1);
  iVar3 = 0;
  puVar2 = param_1;
  do {
    uVar1 = Create2DGfxResObjMan(2,iVar3,*param_1);
    puVar2[0x4c] = uVar1;
    iVar3 = iVar3 + 1;
    puVar2 = puVar2 + 1;
  } while (iVar3 < 6);
  uVar1 = AddCharResObjFromNarc(param_1[0x4c],0x103,4,1,1,2,*param_1);
  param_1[0x52] = uVar1;
  uVar1 = AddPlttResObjFromNarc(param_1[0x4d],0x103,3,0,1,2,4,*param_1);
  param_1[0x53] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4e],0x103,6,1,1,2,*param_1);
  param_1[0x54] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4f],0x103,5,1,1,3,*param_1);
  param_1[0x55] = uVar1;
  SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[0x52]);
  SpriteTransfer_CreateExtPlttTransferTask(param_1[0x53]);
  uVar1 = AddCharResObjFromNarc(param_1[0x4c],0x5d,9,0,2,2,*param_1);
  param_1[0x58] = uVar1;
  uVar1 = AddPlttResObjFromNarc(param_1[0x4d],0x5d,6,0,2,2,4,*param_1);
  param_1[0x59] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4e],0x5d,10,0,2,2,*param_1);
  param_1[0x5a] = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(param_1[0x4f],0x5d,10,0,2,3,*param_1);
  param_1[0x5b] = uVar1;
  SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[0x58]);
  SpriteTransfer_CreateExtPlttTransferTask(param_1[0x59]);
  return;
}

