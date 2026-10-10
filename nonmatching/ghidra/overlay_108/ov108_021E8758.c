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
undefined4 func_0x0200b00c() __asm__("sub_0200B00C");
undefined4 AddCharResObjFromNarc();
undefined4 SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW();
undefined4 AddCellOrAnimResObjFromNarc();
undefined4 GF_AssertFail();
undefined4 func_0x0200ae18() __asm__("sub_0200AE18");
undefined4 SpriteTransfer_CreateCharTransferTask_AllocAtEnd();
undefined4 AddPlttResObjFromNarc();

void ov108_021E8758(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  int iVar5;
  undefined4 *puVar6;
  
  iVar5 = 0;
  piVar4 = (int *)param_1[0x55];
  iVar2 = 0;
  do {
    uVar1 = AddCharResObjFromNarc
                      (param_1[0x51],0xa6,iVar5 + 0x12,0,iVar5 + 0xe000,
                       *(undefined2 *)((int)param_1 + 0xe),*param_1);
    *(undefined4 *)(*piVar4 + iVar2) = uVar1;
    if (*(int *)(*piVar4 + iVar2) == 0) {
      GF_AssertFail();
    }
    if (param_1[1] == 0) {
      SpriteTransfer_CreateCharTransferTask_AllocAtEnd(*(undefined4 *)(*piVar4 + iVar2));
    }
    else if (param_1[1] == 1) {
      func_0x0200ae18(*(undefined4 *)(*piVar4 + iVar2));
    }
    else {
      SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW
                (*(undefined4 *)(*piVar4 + iVar2));
    }
    iVar5 = iVar5 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar5 < 0xc);
  iVar2 = 0;
  puVar3 = param_1;
  do {
    puVar6 = (undefined4 *)puVar3[0x57];
    uVar1 = AddCellOrAnimResObjFromNarc(puVar3[0x53],0xa6,iVar2 + 0x10,0,0xe000,iVar2 + 2,*param_1);
    *(undefined4 *)*puVar6 = uVar1;
    if (*(int *)*puVar6 == 0) {
      GF_AssertFail();
    }
    iVar2 = iVar2 + 1;
    puVar3 = puVar3 + 1;
  } while (iVar2 < 2);
  puVar3 = (undefined4 *)param_1[0x56];
  uVar1 = AddPlttResObjFromNarc
                    (param_1[0x52],0xa6,0xf,0,0xe000,*(undefined2 *)((int)param_1 + 0xe),4,*param_1)
  ;
  *(undefined4 *)*puVar3 = uVar1;
  if (*(int *)*puVar3 == 0) {
    GF_AssertFail();
  }
  func_0x0200b00c(*(undefined4 *)*puVar3);
  return;
}

