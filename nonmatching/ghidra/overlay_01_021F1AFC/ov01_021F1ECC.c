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
undefined4 TaskManager_GetEnvironment(void);
undefined4 sub_0206234C(undefined4, undefined4);
undefined4 ov01_021F2004(undefined4, undefined4, undefined4);
undefined4 PlaySE(undefined4);
undefined4 MapObject_SetHeldMovement(undefined4, undefined4);
undefined4 MapObject_AreBitsSetForMovementScriptInit(undefined4);
undefined4 MapObject_ClearHeldMovementIfActive(undefined4);
undefined4 ov01_021F30F4(undefined4);
undefined4 MapObject_IsMovementPaused(undefined4);
undefined4 PlayerAvatar_GetMapObject(undefined4);
undefined4 sub_0205DE38(undefined4);

undefined4 ov01_021F1ECC(undefined4 param_1)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  
  piVar1 = (int *)TaskManager_GetEnvironment();
  uVar2 = PlayerAvatar_GetMapObject(piVar1[3]);
  iVar3 = *piVar1;
  iVar5 = piVar1[4];
  if (iVar3 == 0) {
    iVar3 = MapObject_AreBitsSetForMovementScriptInit(iVar5);
    if ((iVar3 != 0) &&
       ((iVar3 = MapObject_AreBitsSetForMovementScriptInit(uVar2), iVar3 != 0 ||
        (iVar3 = sub_0205DE38(piVar1[3]), iVar3 != 0)))) {
      uVar4 = sub_0206234C(piVar1[1],8);
      MapObject_SetHeldMovement(iVar5,uVar4);
      uVar4 = sub_0206234C(piVar1[1],0x20);
      MapObject_SetHeldMovement(uVar2,uVar4);
      PlaySE(0x626);
      *piVar1 = *piVar1 + 1;
    }
  }
  else if (iVar3 == 1) {
    iVar3 = MapObject_IsMovementPaused(iVar5);
    if ((iVar3 != 0) && (iVar3 = MapObject_IsMovementPaused(uVar2), iVar3 != 0)) {
      MapObject_ClearHeldMovementIfActive(iVar5);
      MapObject_ClearHeldMovementIfActive(uVar2);
      *piVar1 = *piVar1 + 1;
      goto LAB_021f1f62;
    }
  }
  else if (iVar3 == 2) {
LAB_021f1f62:
    iVar3 = piVar1[2];
    ov01_021F30F4(piVar1);
    if (**(int **)(iVar3 + 0x20) != 0xed) {
      return 1;
    }
    uVar2 = ov01_021F2004(param_1,iVar3,iVar5);
    return uVar2;
  }
  return 0;
}

