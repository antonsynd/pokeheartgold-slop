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
undefined4 ov112_021F1D70();
undefined4 ManagedSprite_SetPositionXY();
undefined4 func_0x02007508() __asm__("sub_02007508");
undefined4 func_0x02024b60() __asm__("sub_02024B60");
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 func_0x0200771c() __asm__("sub_0200771C");
undefined4 func_0x02024b34() __asm__("sub_02024B34");
undefined4 ov112_021F0E14();
undefined4 func_0x020c3b50() __asm__("sub_020C3B50");
undefined4 func_0x0200de44() __asm__("sub_0200DE44");
undefined4 sub_02070438();
undefined4 Heap_AllocAtEnd();
undefined4 func_0x020145b4() __asm__("sub_020145B4");
undefined4 func_0x020b8078() __asm__("sub_020B8078");
undefined4 Heap_Free();
undefined4 NARC_New();
undefined4 func_0x0206a304() __asm__("sub_0206A304");
undefined4 thunk_Sprite_SetDrawFlag();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 NARC_Delete();
undefined4 func_0x020cfd18() __asm__("sub_020CFD18");

void ov112_021F2098(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                   char param_5,undefined4 param_6)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  undefined4 uStack_34;
  undefined4 uStack_2c;
  short sStack_1c;
  short sStack_1a;
  undefined1 uStack_18;
  char cStack_17;
  
  uVar1 = func_0x0206a304(param_2);
  func_0x02007508(&uStack_18,0x8d,uVar1);
  if (cStack_17 == '\0') {
    uStack_2c = *(undefined4 *)param_1[2];
    iVar7 = 0x200;
    uStack_34 = 4;
    *param_1 = 0;
    func_0x0200de44(param_1[2],&sStack_1a,&sStack_1c);
    ManagedSprite_SetPositionXY(param_1[4],(int)sStack_1a,(int)sStack_1c);
  }
  else {
    uStack_2c = *(undefined4 *)param_1[3];
    iVar7 = 0x800;
    uStack_34 = 8;
    *param_1 = 1;
    func_0x0200de44(param_1[3],&sStack_1a,&sStack_1c);
    ManagedSprite_SetPositionXY(param_1[4],(int)sStack_1a,(int)sStack_1c);
  }
  param_1[1] = param_2;
  uVar1 = NARC_New(0x51,param_6);
  iVar2 = sub_02070438(param_2,param_3);
  if (iVar2 == 0) {
    param_3 = 0;
  }
  uVar3 = ov112_021F0E14(param_2,param_3,param_4);
  uVar3 = func_0x0200771c(uVar1,uVar3,param_6);
  iVar2 = func_0x020c3b50();
  iVar5 = *(int *)(iVar2 + 0x14);
  uVar4 = Heap_AllocAtEnd(param_6,iVar7);
  iVar8 = 0;
  iVar6 = 0;
  do {
    func_0x020145b4(iVar2 + iVar5 + iVar6,uStack_34,0,0,uStack_34,uStack_34,uVar4);
    ov112_021F1D70(uStack_2c,uVar4,iVar7,iVar6);
    iVar8 = iVar8 + 1;
    iVar6 = iVar6 + iVar7;
  } while (iVar8 < 8);
  Heap_Free(uVar4);
  func_0x02024b60(uStack_2c);
  iVar2 = iVar2 + *(int *)(iVar2 + 0x38);
  if (param_5 != '\0') {
    iVar2 = iVar2 + 0x20;
  }
  func_0x020d2894(iVar2,0x20);
  uVar4 = func_0x02024b34(uStack_2c);
  uVar4 = func_0x020b8078(uVar4,1);
  func_0x020cfd18(iVar2,uVar4,0x20);
  Heap_Free(uVar3);
  NARC_Delete(uVar1);
  thunk_Sprite_SetDrawFlag(uStack_2c,1);
  ManagedSprite_SetDrawFlag(param_1[4],1 < param_1[1] - 0x32);
  return;
}

