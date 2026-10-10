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
undefined4 SpriteTransfer_CreatePlttTransferTask();
undefined4 SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW_AllocAtEnd();
undefined4 func_0x020c2c54() __asm__("sub_020C2C54");
undefined4 func_0x0200a480() __asm__("sub_0200A480");
undefined4 ov91_022607C4();
undefined4 func_0x02018030() __asm__("sub_02018030");
undefined4 func_0x0200a3c8() __asm__("sub_0200A3C8");
undefined4 GF_AssertFail();
undefined4 CreateSpriteResourcesHeader();
undefined4 func_0x0200a740() __asm__("sub_0200A740");
undefined4 func_0x0200a540() __asm__("sub_0200A540");
extern undefined ov91_02261BF0;

void ov91_022604F4(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined *puVar2;
  int iVar3;
  int iVar4;
  int iStack_18;

  iStack_18 = 0;
  puVar2 = &ov91_02261BF0;
  iVar3 = param_1 + 0x6fc;
  do {
    func_0x02018030(iVar3,param_2,*puVar2,param_3);
    puVar2 = puVar2 + 1;
    iStack_18 = iStack_18 + 1;
    iVar3 = iVar3 + 0x10;
  } while (iStack_18 < 5);
  func_0x02018030(param_1 + 0x74c,param_2,0x2e,param_3);
  func_0x020c2c54(*(undefined4 *)(param_1 + 0x754),0,0x1f0000);
  uVar1 = func_0x0200a3c8(*(undefined4 *)(param_1 + 0x148),param_2,7,0,100,2,param_3);
  *(undefined4 *)(param_1 + 0x75c) = uVar1;
  uVar1 = func_0x0200a480(*(undefined4 *)(param_1 + 0x14c),param_2,4,0,100,2,4,param_3);
  *(undefined4 *)(param_1 + 0x760) = uVar1;
  uVar1 = func_0x0200a540(*(undefined4 *)(param_1 + 0x150),param_2,6,0,100,2,param_3);
  *(undefined4 *)(param_1 + 0x764) = uVar1;
  uVar1 = func_0x0200a540(*(undefined4 *)(param_1 + 0x154),param_2,5,0,100,3,param_3);
  *(undefined4 *)(param_1 + 0x768) = uVar1;
  iVar3 = SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW_AllocAtEnd
                    (*(undefined4 *)(param_1 + 0x75c));
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  iVar3 = SpriteTransfer_CreatePlttTransferTask(*(undefined4 *)(param_1 + 0x760));
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  func_0x0200a740(*(undefined4 *)(param_1 + 0x75c));
  func_0x0200a740(*(undefined4 *)(param_1 + 0x760));
  CreateSpriteResourcesHeader
            (param_1 + 0x76c,100,100,100,100,0xffffffff,0xffffffff,0,0,
             *(undefined4 *)(param_1 + 0x148),*(undefined4 *)(param_1 + 0x14c),
             *(undefined4 *)(param_1 + 0x150),*(undefined4 *)(param_1 + 0x154),0,0);
  iVar4 = 0;
  iVar3 = param_1 + 0x790;
  do {
    ov91_022607C4(param_1,iVar3,param_3);
    iVar4 = iVar4 + 1;
    iVar3 = iVar3 + 0x108;
  } while (iVar4 < 0x60);
  return;
}

