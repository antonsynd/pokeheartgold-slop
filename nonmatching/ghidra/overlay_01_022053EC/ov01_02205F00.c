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
undefined4 sub_020659CC(undefined4);
undefined4 sub_0206A040(undefined4, undefined4);
undefined4 PlayerAvatar_GetMapObject(undefined4);
undefined4 TaskManager_GetStatePtr(undefined4);
undefined4 MapObject_GetFacingDirection(void);
undefined4 TaskManager_GetEnvironment(undefined4);
undefined4 ov01_02206028(undefined4, undefined4);
undefined4 TaskManager_GetFieldSystem(void);
undefined4 sub_0206A054(undefined4);
undefined4 sub_0205F484(undefined4);
undefined4 MapObject_SetFacingDirection(undefined4, undefined4);
undefined4 MapObject_SetHeldMovement(undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 MapObject_AreBitsSetForMovementScriptInit(undefined4);
undefined4 sub_0206234C(undefined4, undefined4);
undefined4 ov01_0220329C(undefined4, undefined4);

undefined4 ov01_02205F00(undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  int iVar5;
  
  iVar1 = TaskManager_GetFieldSystem();
  piVar2 = (int *)TaskManager_GetEnvironment(param_1);
  piVar3 = (int *)TaskManager_GetStatePtr(param_1);
  switch(*piVar3) {
  case 0:
    sub_020659CC(*(undefined4 *)(iVar1 + 0xe4));
    sub_0205F484(*(undefined4 *)(iVar1 + 0xe4));
    *piVar3 = *piVar3 + 1;
    break;
  case 1:
    iVar5 = MapObject_AreBitsSetForMovementScriptInit(*(undefined4 *)(iVar1 + 0xe4));
    if (iVar5 == 1) {
      uVar4 = PlayerAvatar_GetMapObject(*(undefined4 *)(iVar1 + 0x40));
      ov01_02206028(uVar4,*(undefined4 *)(iVar1 + 0xe4));
      *piVar3 = *piVar3 + 1;
    }
    break;
  case 2:
    iVar5 = MapObject_AreBitsSetForMovementScriptInit(*(undefined4 *)(iVar1 + 0xe4));
    if (iVar5 == 1) {
      PlayerAvatar_GetMapObject(*(undefined4 *)(iVar1 + 0x40));
      uVar4 = MapObject_GetFacingDirection();
      MapObject_SetFacingDirection(*(undefined4 *)(iVar1 + 0xe4),uVar4);
      *piVar3 = *piVar3 + 1;
    }
    break;
  case 3:
    iVar1 = *piVar2;
    *piVar2 = iVar1 + 1;
    if (10 < iVar1 + 1) {
      *piVar3 = *piVar3 + 1;
    }
    break;
  case 4:
    iVar5 = MapObject_AreBitsSetForMovementScriptInit(*(undefined4 *)(iVar1 + 0xe4));
    if (iVar5 == 1) {
      sub_0206A040(*(undefined4 *)(iVar1 + 0xe4),0);
      PlayerAvatar_GetMapObject(*(undefined4 *)(iVar1 + 0x40));
      uVar4 = MapObject_GetFacingDirection();
      uVar4 = sub_0206234C(uVar4,0x34);
      MapObject_SetHeldMovement(*(undefined4 *)(iVar1 + 0xe4),uVar4);
      *piVar3 = *piVar3 + 1;
    }
    break;
  case 5:
    iVar5 = MapObject_AreBitsSetForMovementScriptInit(*(undefined4 *)(iVar1 + 0xe4));
    if (iVar5 == 1) {
      ov01_0220329C(*(undefined4 *)(iVar1 + 0xe4),2);
      sub_0206A054(iVar1);
      *piVar3 = *piVar3 + 1;
    }
    break;
  case 6:
    Heap_Free(piVar2);
    return 1;
  }
  return 0;
}

