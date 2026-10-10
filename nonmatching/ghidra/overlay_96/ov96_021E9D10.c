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
undefined4 AddCharResObjFromNarc();
undefined4 AddCellOrAnimResObjFromNarc();
undefined4 SpriteTransfer_CreateExtPlttTransferTask();
undefined4 AddPlttResObjFromNarc();

void ov96_021E9D10(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;

  if ((param_1[1] & 1) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,3,0,0x14,1,*param_1);
    param_1[7] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,2,0,0x14,2,*param_1);
    param_1[0x13] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,1,0,0x14,3,*param_1);
    param_1[0x1f] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[7]);
  }
  if ((param_1[1] & 4) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,6,0,0x15,param_1[2],*param_1);
    param_1[8] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,5,0,0x15,2,*param_1);
    param_1[0x14] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,4,0,0x15,3,*param_1);
    param_1[0x20] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[8]);
  }
  if ((param_1[1] & 2) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,9,0,0x16,param_1[2],*param_1);
    param_1[9] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,8,0,0x16,2,*param_1);
    param_1[0x15] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,7,0,0x16,3,*param_1);
    param_1[0x21] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[9]);
  }
  if ((param_1[1] & 0x10) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,0x10,0,0x1a,1,*param_1);
    param_1[0xb] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,0xf,0,0x1a,2,*param_1);
    param_1[0x17] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,0xe,0,0x1a,3,*param_1);
    param_1[0x23] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[0xb]);
  }
  if ((param_1[1] & 0x20) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,0x13,0,0x1b,1,*param_1);
    param_1[0xc] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,0x12,0,0x1b,2,*param_1);
    param_1[0x18] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,0x11,0,0x1b,3,*param_1);
    param_1[0x24] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[0xc]);
  }
  if ((param_1[1] & 8) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,0xd,0,0x19,2,*param_1);
    param_1[10] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,0xc,0,0x19,2,*param_1);
    param_1[0x16] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,0xb,0,0x19,3,*param_1);
    param_1[0x22] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[10]);
  }
  if ((param_1[1] & 0x40) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,0x16,0,0x1c,1,*param_1);
    param_1[0xd] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,0x15,0,0x1c,2,*param_1);
    param_1[0x19] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,0x14,0,0x1c,3,*param_1);
    param_1[0x25] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[0xd]);
  }
  if ((param_1[1] & 0x80) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,0x19,0,0x1d,1,*param_1);
    param_1[0xe] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,0x18,0,0x1d,2,*param_1);
    param_1[0x1a] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,0x17,0,0x1d,3,*param_1);
    param_1[0x26] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[0xe]);
  }
  if ((param_1[1] & 0x100) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,0x1c,0,0x1e,2,*param_1);
    param_1[0xf] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,0x1b,0,0x1e,2,*param_1);
    param_1[0x1b] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,0x1a,0,0x1e,3,*param_1);
    param_1[0x27] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[0xf]);
  }
  if ((param_1[1] & 0x200) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,0x1f,0,0x1f,1,*param_1);
    param_1[0x10] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,0x1e,0,0x1f,2,*param_1);
    param_1[0x1c] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,0x1d,0,0x1f,3,*param_1);
    param_1[0x28] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[0x10]);
  }
  if ((param_1[1] & 0x400) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,0x22,0,0x1f,2,*param_1);
    param_1[0x11] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,0x21,0,0x1f,2,*param_1);
    param_1[0x1d] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,0x20,0,0x1f,3,*param_1);
    param_1[0x29] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[0x11]);
  }
  if ((param_1[1] & 0x800) != 0) {
    uVar1 = AddCharResObjFromNarc(param_1[3],0x99,0x25,0,0x20,1,*param_1);
    param_1[0x12] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[5],0x99,0x24,0,0x20,2,*param_1);
    param_1[0x1e] = uVar1;
    uVar1 = AddCellOrAnimResObjFromNarc(param_1[6],0x99,0x23,0,0x20,3,*param_1);
    param_1[0x2a] = uVar1;
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param_1[0x12]);
  }
  iVar2 = param_1[2];
  if (iVar2 == 2) {
    iVar2 = 3;
  }
  uVar1 = AddPlttResObjFromNarc(param_1[4],0x99,0,0,0x17,iVar2,1,*param_1);
  param_1[0x2b] = uVar1;
  SpriteTransfer_CreateExtPlttTransferTask(param_1[0x2b]);
  param_1[0x2c] = 0;
  uVar3 = param_1[1];
  if ((((uVar3 & 8) != 0) || ((uVar3 & 0x100) != 0)) || ((uVar3 & 0x400) != 0)) {
    uVar1 = AddPlttResObjFromNarc(param_1[4],0x99,10,0,0x18,2,1,*param_1);
    param_1[0x2c] = uVar1;
    SpriteTransfer_CreateExtPlttTransferTask(param_1[0x2c]);
  }
  return;
}

