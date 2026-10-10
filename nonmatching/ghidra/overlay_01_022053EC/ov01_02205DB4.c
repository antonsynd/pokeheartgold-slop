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
typedef void code(void);
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
undefined4 TaskManager_GetStatePtr(undefined4);
undefined4 MapObject_GetSpriteID(void);
undefined4 TaskManager_GetEnvironment(undefined4);
undefined4 ov01_021F771C(undefined4);
undefined4 sub_02023FB0(undefined4);
undefined4 func_0x020205d8(undefined4, undefined4, undefined4, undefined4) __asm__("sub_020205D8");
undefined4 ov01_02206088(void);
undefined4 TaskManager_GetFieldSystem(void);
undefined4 FollowMon_GetMapObject(undefined4);
undefined4 MapObject_UnpauseMovement(void);
undefined4 MapObject_IsMovementPaused(void);
undefined4 Heap_Free(undefined4);
undefined4 MapObjectManager_GetMapModelNarc(undefined4);
undefined4 func_0x0200771c(undefined4, undefined4, undefined4) __asm__("sub_0200771C");
undefined4 ov01_02205790(undefined4, undefined4);
undefined4 func_0x020d47b8(undefined4, undefined4, undefined4) __asm__("sub_020D47B8");
undefined4 sub_02023E78(undefined4, undefined4);
undefined4 func_0x020c3b50(void) __asm__("sub_020C3B50");
undefined4 ov01_0220329C(undefined4, undefined4);
undefined4 sub_0206A054(undefined4);
undefined4 sub_02069E28(undefined4, undefined4);

undefined4 ov01_02205DB4(undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uVar7;
  uint uVar8;
  uint uVar9;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  iVar1 = TaskManager_GetFieldSystem();
  piVar2 = (int *)TaskManager_GetEnvironment(param_1);
  piVar3 = (int *)TaskManager_GetStatePtr(param_1);
  switch(*piVar3) {
  case 0:
    FollowMon_GetMapObject(iVar1);
    MapObject_UnpauseMovement();
    *piVar3 = *piVar3 + 1;
  case 1:
    FollowMon_GetMapObject(iVar1);
    iVar1 = MapObject_IsMovementPaused();
    if (iVar1 != 0) {
      *piVar3 = *piVar3 + 1;
    }
    break;
  case 2:
    uVar7 = FollowMon_GetMapObject(iVar1);
    MapObject_GetSpriteID();
    uVar4 = ov01_02206088();
    uVar5 = MapObjectManager_GetMapModelNarc(*(undefined4 *)(iVar1 + 0x3c));
    uVar4 = func_0x0200771c(uVar5,uVar4,0xb);
    iVar1 = func_0x020c3b50();
    func_0x020d47b8(iVar1 + *(int *)(iVar1 + 0x38),piVar2 + 1,0x40);
    Heap_Free(uVar4);
    ov01_0220329C(uVar7,1);
    *piVar3 = *piVar3 + 1;
    break;
  case 3:
    iVar6 = *piVar2;
    *piVar2 = iVar6 + 1;
    if (0x13 < iVar6 + 1) {
      ov01_02205790(iVar1,0);
      uStack_20 = 0x1000;
      uStack_1c = 0x1000;
      uStack_18 = 0x1000;
      uVar7 = ov01_021F771C(*(undefined4 *)(iVar1 + 0x3c));
      sub_02023E78(uVar7,&uStack_20);
      uVar8 = sub_02023FB0(uVar7);
      uVar9 = sub_02023FB0(uVar7);
      func_0x020205d8(1,(uVar9 & 0xffff) << 3,piVar2 + 1,(uVar8 >> 0x10) << 3);
      sub_0206A054(iVar1);
      uVar7 = FollowMon_GetMapObject(iVar1);
      sub_02069E28(uVar7,0);
      *piVar3 = *piVar3 + 1;
    }
    break;
  case 4:
    Heap_Free(piVar2);
    return 1;
  }
  return 0;
}

