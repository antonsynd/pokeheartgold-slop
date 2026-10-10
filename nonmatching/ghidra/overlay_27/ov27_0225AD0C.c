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
undefined4 Save_Bag_Get();
undefined4 ov27_0225AEA8();
undefined4 func_0x020079f4() __asm__("sub_020079F4");
undefined4 func_0x020d48b4() __asm__("sub_020D48B4");
undefined4 Heap_Free();
undefined4 Create2DGfxResObjMan();
undefined4 Save_PlayerData_GetProfile();
undefined4 AddCellOrAnimResObjFromNarc();
undefined4 G2dRenderer_Init();
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 PlayerProfile_GetTrainerGender();

void ov27_0225AD0C(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iStack_18;

  uVar1 = G2dRenderer_Init(0x10,param_1 + 0x1c,8);
  *(undefined4 *)(param_1 + 0x18) = uVar1;
  G2dRenderer_SetSubSurfaceCoords(param_1 + 0x1c,0,0x100000);
  iVar4 = 0;
  iVar3 = param_1;
  do {
    uVar1 = Create2DGfxResObjMan(0xb,iVar4,8);
    *(undefined4 *)(iVar3 + 0x144) = uVar1;
    iVar4 = iVar4 + 1;
    iVar3 = iVar3 + 4;
  } while (iVar4 < 4);
  iVar3 = 0;
  iVar4 = param_1 + 0x154;
  do {
    Save_PlayerData_GetProfile(*(undefined4 *)(*(int *)(param_1 + 0x10) + 0xc));
    uVar1 = PlayerProfile_GetTrainerGender();
    uVar2 = Save_Bag_Get(*(undefined4 *)(*(int *)(param_1 + 0x10) + 0xc));
    ov27_0225AEA8(*(undefined4 *)(param_1 + 0x10),param_1 + 0x144,iVar4,iVar3,iVar3 + 100,uVar1,
                  uVar2,(*(uint *)(param_1 + 0x51c) & 0x1f) >> 1);
    iVar3 = iVar3 + 1;
    iVar4 = iVar4 + 0x10;
  } while (iVar3 < 0xb);
  uVar1 = AddCellOrAnimResObjFromNarc(*(undefined4 *)(param_1 + 0x14c),0xe,0x10,1,100,2,8);
  *(undefined4 *)(param_1 + 0x15c) = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(*(undefined4 *)(param_1 + 0x150),0xe,0x11,1,100,3,8);
  *(undefined4 *)(param_1 + 0x160) = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(*(undefined4 *)(param_1 + 0x14c),0xe,0x44,1,0x65,2,8);
  *(undefined4 *)(param_1 + 0x16c) = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(*(undefined4 *)(param_1 + 0x150),0xe,0x45,1,0x65,3,8);
  *(undefined4 *)(param_1 + 0x170) = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(*(undefined4 *)(param_1 + 0x14c),0xe,0x36,1,0x66,2,8);
  *(undefined4 *)(param_1 + 0x17c) = uVar1;
  uVar1 = AddCellOrAnimResObjFromNarc(*(undefined4 *)(param_1 + 0x150),0xe,0x37,1,0x66,3,8);
  *(undefined4 *)(param_1 + 0x180) = uVar1;
  uVar1 = func_0x020079f4(0xe,0xe,&iStack_18,8);
  func_0x020d2894(*(undefined4 *)(iStack_18 + 0xc),0x40);
  func_0x020d48b4(*(undefined4 *)(iStack_18 + 0xc),param_1 + 0x4cc,0x40);
  Heap_Free(uVar1);
  return;
}

