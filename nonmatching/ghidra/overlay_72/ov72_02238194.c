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
undefined4 Create2DGfxResObjMan();
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 func_0x0200a3c8() __asm__("sub_0200A3C8");
undefined4 SpriteTransfer_CreateExtPlttTransferTask();
undefined4 NARC_Delete();
undefined4 func_0x020b78d4() __asm__("sub_020B78D4");
undefined4 G2dRenderer_Init();
undefined4 func_0x0200a540() __asm__("sub_0200A540");
undefined4 NARC_New();
undefined4 func_0x0200acf0() __asm__("sub_0200ACF0");
undefined4 func_0x0200a480() __asm__("sub_0200A480");
undefined4 func_0x0200b150() __asm__("sub_0200B150");

void ov72_02238194(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  
  uVar1 = NARC_New(0xef,0x43);
  uVar2 = NARC_New(0xee,0x43);
  func_0x020b78d4();
  func_0x0200b150(0,0x7e,0,0x20,0,0x7e,0,0x20,0x43,uVar1,param_4);
  uVar3 = G2dRenderer_Init(0x14,param_1 + 0xbfc,0x43);
  *(undefined4 *)(param_1 + 0xbf8) = uVar3;
  G2dRenderer_SetSubSurfaceCoords(param_1 + 0xbfc,0,0x100000);
  iVar5 = 0;
  iVar4 = param_1;
  do {
    uVar3 = Create2DGfxResObjMan(3,iVar5,0x43);
    iVar5 = iVar5 + 1;
    *(undefined4 *)(iVar4 + 0xd24) = uVar3;
    iVar4 = iVar4 + 4;
  } while (iVar5 < 4);
  uVar3 = func_0x0200a3c8(*(undefined4 *)(param_1 + 0xd24),uVar2,1,0,0,2,0x43);
  *(undefined4 *)(param_1 + 0xd34) = uVar3;
  uVar3 = func_0x0200a480(*(undefined4 *)(param_1 + 0xd28),uVar2,0,0,0,2,3,0x43);
  *(undefined4 *)(param_1 + 0xd38) = uVar3;
  uVar3 = func_0x0200a540(*(undefined4 *)(param_1 + 0xd2c),uVar2,2,0,0,2,0x43);
  *(undefined4 *)(param_1 + 0xd3c) = uVar3;
  uVar3 = func_0x0200a540(*(undefined4 *)(param_1 + 0xd30),uVar2,3,0,0,3,0x43);
  *(undefined4 *)(param_1 + 0xd40) = uVar3;
  uVar3 = func_0x0200a3c8(*(undefined4 *)(param_1 + 0xd24),uVar2,5,0,1,2,0x43);
  *(undefined4 *)(param_1 + 0xd44) = uVar3;
  uVar3 = func_0x0200a480(*(undefined4 *)(param_1 + 0xd28),uVar2,4,0,1,2,3,0x43);
  *(undefined4 *)(param_1 + 0xd48) = uVar3;
  uVar3 = func_0x0200a540(*(undefined4 *)(param_1 + 0xd2c),uVar2,6,0,1,2,0x43);
  *(undefined4 *)(param_1 + 0xd4c) = uVar3;
  uVar3 = func_0x0200a540(*(undefined4 *)(param_1 + 0xd30),uVar2,7,0,1,3,0x43);
  *(undefined4 *)(param_1 + 0xd50) = uVar3;
  uVar3 = func_0x0200a3c8(*(undefined4 *)(param_1 + 0xd24),uVar1,0xc,0,2,2,0x43);
  *(undefined4 *)(param_1 + 0xd54) = uVar3;
  uVar3 = func_0x0200a480(*(undefined4 *)(param_1 + 0xd28),uVar1,0xb,0,2,2,1,0x43);
  *(undefined4 *)(param_1 + 0xd58) = uVar3;
  uVar3 = func_0x0200a540(*(undefined4 *)(param_1 + 0xd2c),uVar1,0xd,0,2,2,0x43);
  *(undefined4 *)(param_1 + 0xd5c) = uVar3;
  uVar3 = func_0x0200a540(*(undefined4 *)(param_1 + 0xd30),uVar1,0xe,0,2,3,0x43);
  *(undefined4 *)(param_1 + 0xd60) = uVar3;
  func_0x0200acf0(*(undefined4 *)(param_1 + 0xd34));
  func_0x0200acf0(*(undefined4 *)(param_1 + 0xd44));
  func_0x0200acf0(*(undefined4 *)(param_1 + 0xd54));
  SpriteTransfer_CreateExtPlttTransferTask(*(undefined4 *)(param_1 + 0xd38));
  SpriteTransfer_CreateExtPlttTransferTask(*(undefined4 *)(param_1 + 0xd48));
  SpriteTransfer_CreateExtPlttTransferTask(*(undefined4 *)(param_1 + 0xd58));
  NARC_Delete(uVar2);
  NARC_Delete(uVar1);
  return;
}

