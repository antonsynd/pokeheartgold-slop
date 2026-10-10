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
undefined4 SpriteTransfer_GetCharProxy();
undefined4 AddCellOrAnimResObjFromNarc();
undefined4 func_0x020c3b50() __asm__("sub_020C3B50");
undefined4 func_0x020b802c() __asm__("sub_020B802C");
undefined4 GF2DGfxResObj_GetCharDataPtr();
undefined4 SpriteTransfer_GetPaletteProxy();
undefined4 func_0x020cfecc() __asm__("sub_020CFECC");
undefined4 SpriteTransfer_CreateExtPlttTransferTask();
undefined4 AddCharResObjFromNarc();
undefined4 AllocAndReadWholeNarcMemberByIdPair();
undefined4 func_0x020cfe74() __asm__("sub_020CFE74");
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 func_0x020d48b4() __asm__("sub_020D48B4");
undefined4 SpriteTransfer_CreateCharTransferTask_AllocAtEnd();
undefined4 ov96_021E91B8();
undefined4 sub_020145B4();
undefined4 AddPlttResObjFromNarc();
undefined4 Heap_Free();
undefined4 func_0x020cfd70() __asm__("sub_020CFD70");
undefined4 func_0x020b8078() __asm__("sub_020B8078");
undefined4 func_0x020cfd18() __asm__("sub_020CFD18");

void ov96_021E8C70(undefined4 *param_1,undefined4 *param_2,undefined2 *param_3,int param_4,
                  undefined1 param_5,int param_6)

{
  bool bVar1;
  bool bVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  undefined4 uVar9;
  int iVar10;
  int iStack_4c;
  int iStack_28;
  int iStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;

  if (param_6 == 0) {
    if (param_3[2] == 0) {
      uStack_1c = 1;
      uVar9 = 2;
      uStack_20 = 0;
    }
    else {
      uStack_1c = 4;
      uVar9 = 5;
      uStack_20 = 3;
    }
  }
  else if (param_3[2] == 0) {
    uStack_1c = 7;
    uVar9 = 8;
    uStack_20 = 6;
  }
  else {
    uStack_1c = 10;
    uVar9 = 0xb;
    uStack_20 = 9;
  }
  uVar9 = AddCharResObjFromNarc(param_1[0x51],0x95,uVar9,0,param_5,param_4,*param_1);
  *param_2 = uVar9;
  uVar9 = AddPlttResObjFromNarc(param_1[0x52],0x31,0x1e,0,param_5,param_4,1,*param_1);
  param_2[1] = uVar9;
  uVar9 = AddCellOrAnimResObjFromNarc(param_1[0x53],0x95,uStack_1c,0,param_5,2,*param_1);
  param_2[2] = uVar9;
  uVar9 = AddCellOrAnimResObjFromNarc(param_1[0x54],0x95,uStack_20,0,param_5,3,*param_1);
  param_2[3] = uVar9;
  SpriteTransfer_CreateCharTransferTask_AllocAtEnd(*param_2);
  SpriteTransfer_CreateExtPlttTransferTask(param_2[1]);
  bVar1 = false;
  bVar2 = false;
  uVar9 = SpriteTransfer_GetCharProxy(*param_2);
  uVar3 = SpriteTransfer_GetPaletteProxy(param_2[1],uVar9);
  iVar4 = GF2DGfxResObj_GetCharDataPtr(*param_2);
  if (param_4 == 3) {
    bVar1 = true;
    bVar2 = true;
  }
  else if (param_4 == 1) {
    bVar1 = true;
  }
  else {
    bVar2 = true;
  }
  uVar5 = ov96_021E91B8(*param_3,param_3[1],*(undefined1 *)((int)param_3 + 7));
  uVar5 = AllocAndReadWholeNarcMemberByIdPair(0x51,uVar5,*param_1);
  if (param_3[2] == 0) {
    iStack_4c = 0x200;
    iStack_24 = 4;
  }
  else {
    iStack_4c = 0x800;
    iStack_24 = 8;
  }
  iVar6 = func_0x020c3b50(uVar5);
  iVar8 = *(int *)(iVar6 + 0x14);
  iVar10 = 0;
  iStack_28 = 0;
  do {
    sub_020145B4(iVar6 + iVar8 + iVar10,iStack_24,0,0,iStack_24,iStack_24,param_1 + 0x56);
    if (param_6 == 0) {
      if ((param_1[2] != 0) && (param_3[2] != 0)) {
        iVar7 = 0;
        do {
          if (iVar7 < iStack_24 * -0x20 + 0x800) {
            *(undefined1 *)((int)param_1 + iVar7 + 0x158) =
                 *(undefined1 *)((int)param_1 + iVar7 + iStack_24 * 0x20 + 0x158);
          }
          else {
            *(undefined1 *)((int)param_1 + iVar7 + 0x158) = 0;
          }
          iVar7 = iVar7 + 1;
        } while (iVar7 < 0x800);
      }
      func_0x020d2894(param_1 + 0x56,iStack_4c);
      if (bVar1) {
        iVar7 = func_0x020b802c(uVar9,1);
        func_0x020cfe74(param_1 + 0x56,iVar7 + iVar10,iStack_4c);
      }
      if (bVar2) {
        iVar7 = func_0x020b802c(uVar9,2);
        func_0x020cfecc(param_1 + 0x56,iVar7 + iVar10,iStack_4c);
      }
    }
    func_0x020d48b4(param_1 + 0x56,*(int *)(iVar4 + 0x14) + iVar10,iStack_4c);
    iVar10 = iVar10 + iStack_4c;
    iStack_28 = iStack_28 + 1;
  } while (iStack_28 < 8);
  iVar6 = iVar6 + *(int *)(iVar6 + 0x38);
  if (*(char *)(param_3 + 3) != '\0') {
    iVar6 = iVar6 + 0x20;
  }
  func_0x020d2894(iVar6,0x20);
  if (bVar1) {
    uVar9 = func_0x020b8078(uVar3,1);
    func_0x020cfd18(iVar6,uVar9,0x20);
  }
  if (bVar2) {
    uVar9 = func_0x020b8078(uVar3,2);
    func_0x020cfd70(iVar6,uVar9,0x20);
  }
  Heap_Free(uVar5);
  return;
}

