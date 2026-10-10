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
undefined4 func_0x0200a480() __asm__("sub_0200A480");
undefined4 G2dRenderer_Init();
undefined4 Create2DGfxResObjMan();
undefined4 func_0x0200acf0() __asm__("sub_0200ACF0");
undefined4 func_0x020cfd18() __asm__("sub_020CFD18");
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 func_0x0200a540() __asm__("sub_0200A540");
undefined4 NARC_New();
undefined4 func_0x0200a3c8() __asm__("sub_0200A3C8");
undefined4 sub_02074490();
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 func_0x0200b150() __asm__("sub_0200B150");
undefined4 SpriteTransfer_CreateExtPlttTransferTask();
undefined4 func_0x020b78d4() __asm__("sub_020B78D4");
undefined4 func_0x020079f4() __asm__("sub_020079F4");
extern uint uRam04000000 __asm__("sub_04000000");
extern uint uRam04001000 __asm__("sub_04001000");
undefined4 Heap_Free();
undefined4 NARC_Delete();

void ov70_02238900(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  ushort *puVar5;
  int iVar6;
  int iStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar1 = NARC_New(100,0x3d);
  func_0x020b78d4();
  uRam04000000 = uRam04000000 & 0xffcfffef | 0x10;
  uRam04001000 = uRam04001000 & 0xffcfffef | 0x10;
  func_0x0200b150(0,0x7a,0,0x20,0,0x7e,0,0x20,0x3d);
  uVar2 = G2dRenderer_Init(0x54,param_1 + 0xbf8,0x3d);
  *(undefined4 *)(param_1 + 0xbf4) = uVar2;
  G2dRenderer_SetSubSurfaceCoords(param_1 + 0xbf8,0,0x100000);
  iVar6 = 0;
  iVar4 = param_1;
  do {
    uVar2 = Create2DGfxResObjMan(3,iVar6,0x3d);
    *(undefined4 *)(iVar4 + 0xd20) = uVar2;
    iVar6 = iVar6 + 1;
    iVar4 = iVar4 + 4;
  } while (iVar6 < 4);
  uVar2 = func_0x0200a3c8(*(undefined4 *)(param_1 + 0xd20),uVar1,0x15,1,0,1,0x3d);
  *(undefined4 *)(param_1 + 0xd30) = uVar2;
  uVar2 = func_0x0200a480(*(undefined4 *)(param_1 + 0xd24),uVar1,10,0,0,1,3,0x3d);
  *(undefined4 *)(param_1 + 0xd34) = uVar2;
  uVar2 = func_0x0200a540(*(undefined4 *)(param_1 + 0xd28),uVar1,0x16,1,0,2,0x3d);
  *(undefined4 *)(param_1 + 0xd38) = uVar2;
  uVar2 = func_0x0200a540(*(undefined4 *)(param_1 + 0xd2c),uVar1,0x17,1,0,3,0x3d);
  *(undefined4 *)(param_1 + 0xd3c) = uVar2;
  uVar2 = func_0x0200a3c8(*(undefined4 *)(param_1 + 0xd20),uVar1,0x2b,1,1,2,0x3d);
  *(undefined4 *)(param_1 + 0xd40) = uVar2;
  uVar2 = func_0x0200a480(*(undefined4 *)(param_1 + 0xd24),uVar1,9,0,1,2,10,0x3d);
  *(undefined4 *)(param_1 + 0xd44) = uVar2;
  uVar2 = func_0x0200a540(*(undefined4 *)(param_1 + 0xd28),uVar1,0x2c,1,1,2,0x3d);
  *(undefined4 *)(param_1 + 0xd48) = uVar2;
  uVar2 = func_0x0200a540(*(undefined4 *)(param_1 + 0xd2c),uVar1,0x2d,1,1,3,0x3d);
  *(undefined4 *)(param_1 + 0xd4c) = uVar2;
  func_0x0200acf0(*(undefined4 *)(param_1 + 0xd30));
  func_0x0200acf0(*(undefined4 *)(param_1 + 0xd40));
  SpriteTransfer_CreateExtPlttTransferTask(*(undefined4 *)(param_1 + 0xd34));
  SpriteTransfer_CreateExtPlttTransferTask(*(undefined4 *)(param_1 + 0xd44));
  uVar2 = sub_02074490();
  uVar2 = func_0x020079f4(0x14,uVar2,&iStack_1c,0x3d);
  func_0x020d2894(*(undefined4 *)(iStack_1c + 0xc),0x60);
  func_0x020cfd18(*(undefined4 *)(iStack_1c + 0xc),0x60,0x60);
  puVar5 = *(ushort **)(iStack_1c + 0xc);
  iVar4 = 0;
  do {
    uVar3 = (uint)*puVar5;
    iVar4 = iVar4 + 1;
    *puVar5 = (ushort)(((int)uVar3 >> 10 & 0x1fU) / 2 << 10) |
              (ushort)(((int)uVar3 >> 5 & 0x1fU) / 2 << 5) | (ushort)((uVar3 & 0x1f) / 2);
    puVar5 = puVar5 + 1;
  } while (iVar4 < 0x30);
  func_0x020d2894(*(undefined4 *)(iStack_1c + 0xc),0x60);
  func_0x020cfd18(*(undefined4 *)(iStack_1c + 0xc),0xc0,0x60);
  Heap_Free(uVar2);
  NARC_Delete(uVar1);
  return;
}

