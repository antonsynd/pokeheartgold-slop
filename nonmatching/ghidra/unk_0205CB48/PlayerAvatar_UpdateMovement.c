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
undefined4 MapObject_AreBitsSetForMovementScriptInit();
undefined4 PlayerAvatar_SetPlayerMoveState();
undefined4 sub_0205DE64();
undefined4 MapObject_GetMovementCommand();
undefined4 MapObject_IsMovementPaused();
undefined4 PlayerAvatar_GetPlayerMoveState();
undefined4 PlayerAvatar_GetMapObject();
undefined4 PlayerAvatar_GetMoveState();
undefined4 sub_0205D01C();

void PlayerAvatar_UpdateMovement(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  iVar1 = PlayerAvatar_GetMoveState();
  iVar2 = PlayerAvatar_GetPlayerMoveState(param_1);
  uVar3 = PlayerAvatar_GetMapObject(param_1);
  PlayerAvatar_SetPlayerMoveState(param_1,0);
  iVar4 = sub_0205D01C(param_1,0xffffffff);
  if ((iVar4 != 0) && (iVar4 != 2)) {
    PlayerAvatar_SetPlayerMoveState(param_1,2);
    return;
  }
  iVar4 = MapObject_AreBitsSetForMovementScriptInit(uVar3);
  if (iVar4 == 0) {
    if (iVar1 != 0) {
      if (iVar1 != 1) {
        if (iVar1 != 2) {
          return;
        }
        PlayerAvatar_SetPlayerMoveState(param_1,2);
        return;
      }
      MapObject_GetMovementCommand(uVar3);
      iVar1 = sub_0205DE64();
      if (iVar1 != 1) {
        if ((iVar2 != 0) && (iVar2 != 3)) {
          PlayerAvatar_SetPlayerMoveState(param_1,2);
          return;
        }
        PlayerAvatar_SetPlayerMoveState(param_1,1);
        return;
      }
    }
  }
  else {
    iVar4 = MapObject_IsMovementPaused(uVar3);
    if ((iVar4 == 1) && (iVar1 != 0)) {
      if (iVar1 == 1) {
        if (iVar2 != 0) {
          if (iVar2 == 3) {
            PlayerAvatar_SetPlayerMoveState(param_1,0);
            return;
          }
          PlayerAvatar_SetPlayerMoveState(param_1,3);
          return;
        }
      }
      else {
        if (iVar1 != 2) {
          return;
        }
        if (iVar2 != 0) {
          if (iVar2 == 3) {
            PlayerAvatar_SetPlayerMoveState(param_1,0);
            return;
          }
          PlayerAvatar_SetPlayerMoveState(param_1,3);
        }
      }
    }
  }
  return;
}

