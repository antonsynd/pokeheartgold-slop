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
undefined4 SpriteTransfer_CreateCharTransferTask_AllocAtEnd();
undefined4 AddPlttResObjFromNarc();
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 GF_AssertFail();
undefined4 AddCellOrAnimResObjFromNarc();
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 CreateSpriteResourcesHeader();
undefined4 func_0x0200a740() __asm__("sub_0200A740");
undefined4 GF2DGfxResObj_GetPlttDataPtr();
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 sub_02070D84();
undefined4 func_0x0200b00c() __asm__("sub_0200B00C");
undefined4 ov49_0225C368();
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 AddCharResObjFromNarc();
extern undefined ov49_0226988C;
undefined4 func_0x02024714() __asm__("sub_02024714");

void ov49_0225C180(int param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  ushort *puVar4;
  uint unaff_r7;
  uint uStack_78;
  uint uStack_74;
  undefined4 uStack_70;
  undefined1 *puStack_6c;
  undefined4 uStack_68;
  int iStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined1 auStack_50 [36];
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;

  if (*(int *)(param_1 + 0x68) != 0) {
    GF_AssertFail();
  }
  puVar4 = (ushort *)&ov49_0226988C;
  uVar1 = 0;
  do {
    if (param_5 == *puVar4) {
      uStack_74 = (uint)puVar4[1];
      uStack_78 = (uint)puVar4[2];
      unaff_r7 = (uint)puVar4[3];
    }
    uVar1 = uVar1 + 1;
    puVar4 = puVar4 + 4;
  } while (uVar1 < 0x12);
  sub_02070D84(uStack_74,2,&uStack_2c);
  uVar2 = AddCharResObjFromNarc
                    (*(undefined4 *)(param_2 + 0x130),uStack_2c,uStack_28,0,0x65,2,param_4);
  *(undefined4 *)(param_1 + 0x6c) = uVar2;
  iVar3 = SpriteTransfer_CreateCharTransferTask_AllocAtEnd();
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  uVar2 = AddPlttResObjFromNarc
                    (*(undefined4 *)(param_2 + 0x134),uStack_2c,uStack_24,0,0x65,2,1,param_4);
  *(undefined4 *)(param_1 + 0x70) = uVar2;
  GF2DGfxResObj_GetPlttDataPtr();
  ov49_0225C368();
  iVar3 = func_0x0200b00c(*(undefined4 *)(param_1 + 0x70));
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  func_0x0200a740(*(undefined4 *)(param_1 + 0x70));
  uVar2 = AddCellOrAnimResObjFromNarc
                    (*(undefined4 *)(param_2 + 0x138),uStack_2c,uStack_20,0,0x65,2,param_4);
  *(undefined4 *)(param_1 + 0x74) = uVar2;
  uVar2 = AddCellOrAnimResObjFromNarc
                    (*(undefined4 *)(param_2 + 0x13c),uStack_2c,uStack_1c,0,0x65,3,param_4);
  *(undefined4 *)(param_1 + 0x78) = uVar2;
  uStack_70 = 0;
  puStack_6c = (undefined1 *)0x0;
  uStack_68 = 0;
  iStack_64 = 0;
  uStack_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = 0;
  CreateSpriteResourcesHeader
            (auStack_50,0x65,0x65,0x65,0x65,0xffffffff,0xffffffff,1,3,
             *(undefined4 *)(param_2 + 0x130),*(undefined4 *)(param_2 + 0x134),
             *(undefined4 *)(param_2 + 0x138),*(undefined4 *)(param_2 + 0x13c),0,0);
  uStack_70 = *(undefined4 *)(param_2 + 4);
  puStack_6c = auStack_50;
  uStack_5c = 0x20;
  uStack_58 = 2;
  uStack_54 = param_4;
  if (uStack_78 == 0) {
    uVar2 = func_0x020f2178(0);
    func_0x020f24c8(uVar2,0x3f000000);
  }
  else {
    uVar2 = func_0x020f2178(uStack_78 << 0xc);
    func_0x020f1520(0x3f000000,uVar2);
  }
  uStack_68 = func_0x020f2104();
  if (unaff_r7 == 0) {
    uVar2 = func_0x020f2178(0);
    func_0x020f24c8(uVar2,0x3f000000);
  }
  else {
    uVar2 = func_0x020f2178(unaff_r7 << 0xc);
    func_0x020f1520(0x3f000000,uVar2);
  }
  iStack_64 = func_0x020f2104();
  iStack_64 = iStack_64 + 0x100000;
  uVar2 = func_0x02024714(&uStack_70);
  *(undefined4 *)(param_1 + 0x68) = uVar2;
  return;
}

