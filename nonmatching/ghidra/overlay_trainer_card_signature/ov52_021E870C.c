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
undefined4 OamManager_Create();
undefined4 SpriteTransfer_CreateExtPlttTransferTask();
undefined4 AddCellOrAnimResObjFromOpenNarc();
undefined4 Create2DGfxResObjMan();
undefined4 SpriteTransfer_CreateCharTransferTask();
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 G2dRenderer_Init();
undefined4 func_0x020b78d4() __asm__("sub_020B78D4");
undefined4 AddPlttResObjFromOpenNarc();
undefined4 AddCharResObjFromOpenNarc();

void ov52_021E870C(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;

  func_0x020b78d4();
  OamManager_Create(0,0x7e,0,0x20,0,0x7e,0,0x20,0x27);
  uVar1 = G2dRenderer_Init(0x32,param_1 + 0x40,0x27);
  *(undefined4 *)(param_1 + 0x3c) = uVar1;
  G2dRenderer_SetSubSurfaceCoords(param_1 + 0x40,0,0x100000);
  iVar3 = 0;
  iVar2 = param_1;
  do {
    uVar1 = Create2DGfxResObjMan(2,iVar3,0x27);
    *(undefined4 *)(iVar2 + 0x168) = uVar1;
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar3 < 4);
  uVar1 = AddCharResObjFromOpenNarc(*(undefined4 *)(param_1 + 0x168),param_2,7,1,0,1,0x27);
  *(undefined4 *)(param_1 + 0x178) = uVar1;
  uVar1 = AddPlttResObjFromOpenNarc(*(undefined4 *)(param_1 + 0x16c),param_2,1,0,0,1,3,0x27);
  *(undefined4 *)(param_1 + 0x17c) = uVar1;
  uVar1 = AddCellOrAnimResObjFromOpenNarc(*(undefined4 *)(param_1 + 0x170),param_2,8,1,0,2,0x27);
  *(undefined4 *)(param_1 + 0x180) = uVar1;
  uVar1 = AddCellOrAnimResObjFromOpenNarc(*(undefined4 *)(param_1 + 0x174),param_2,9,1,0,3,0x27);
  *(undefined4 *)(param_1 + 0x184) = uVar1;
  uVar1 = AddCharResObjFromOpenNarc(*(undefined4 *)(param_1 + 0x168),param_2,7,1,1,2,0x27);
  *(undefined4 *)(param_1 + 0x188) = uVar1;
  uVar1 = AddPlttResObjFromOpenNarc(*(undefined4 *)(param_1 + 0x16c),param_2,1,0,1,2,3,0x27);
  *(undefined4 *)(param_1 + 0x18c) = uVar1;
  uVar1 = AddCellOrAnimResObjFromOpenNarc(*(undefined4 *)(param_1 + 0x170),param_2,8,1,1,2,0x27);
  *(undefined4 *)(param_1 + 400) = uVar1;
  uVar1 = AddCellOrAnimResObjFromOpenNarc(*(undefined4 *)(param_1 + 0x174),param_2,9,1,1,3,0x27);
  *(undefined4 *)(param_1 + 0x194) = uVar1;
  SpriteTransfer_CreateCharTransferTask(*(undefined4 *)(param_1 + 0x178));
  SpriteTransfer_CreateCharTransferTask(*(undefined4 *)(param_1 + 0x188));
  SpriteTransfer_CreateExtPlttTransferTask(*(undefined4 *)(param_1 + 0x17c));
  SpriteTransfer_CreateExtPlttTransferTask(*(undefined4 *)(param_1 + 0x18c));
  return;
}

