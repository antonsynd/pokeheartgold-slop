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
undefined4 sub_0205DA34();
undefined4 PlayerAvatar_SetUnk28Unk2C();
undefined4 sub_0205D2D0();
undefined4 PlayerAvatar_SetForcedMovement();
undefined4 sub_0205D240();
undefined4 sub_0205D1FC();
undefined4 sub_0205D2A0();
undefined4 PlayerAvatar_GetMapObject();
undefined4 PlayerAvatar_SetFlag1();
undefined4 MapObject_SetFlagsBits();
undefined4 MapObject_GetFieldSystem();
undefined4 PlayerAvatar_SetMoveState();
undefined4 MapObject_GetNextFacingDirection();
undefined4 sub_020611F4();
undefined4 sub_0206234C();
undefined4 sub_0205DA1C();
undefined4 sub_0206D494();

undefined4 sub_0205D0A8(undefined4 param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;

  uVar1 = PlayerAvatar_GetMapObject();
  uVar2 = MapObject_GetNextFacingDirection();
  uVar3 = sub_0205D240(param_1,uVar2);
  iVar4 = sub_0205DA34(param_1,uVar1,uVar2);
  PlayerAvatar_SetForcedMovement(param_1,1);
  if (iVar4 == 0) {
    iVar4 = sub_0205D2A0(param_1,uVar3);
    if (iVar4 == 0) {
      sub_0205D1FC(param_1);
      uVar2 = sub_020611F4(uVar2);
      iVar4 = sub_0205DA34(param_1,uVar1,uVar2);
      if (iVar4 != 0) {
        return 0;
      }
      MapObject_SetFlagsBits(uVar1,0x180);
      uVar2 = sub_0206234C(uVar2,8);
      sub_0205DA1C(param_1,uVar1,uVar2);
      PlayerAvatar_SetFlag1(param_1,1);
      PlayerAvatar_SetForcedMovement(param_1,1);
      PlayerAvatar_SetUnk28Unk2C(param_1,0xffffffff,0xffffffff);
    }
    else {
      MapObject_SetFlagsBits(uVar1,0x180);
      sub_0205D2D0(param_1,uVar2);
    }
    PlayerAvatar_SetMoveState(param_1,1);
    return 1;
  }
  uVar1 = MapObject_GetFieldSystem(uVar1);
  PlayerAvatar_SetFlag1(param_1,1);
  PlayerAvatar_SetMoveState(param_1,0);
  iVar4 = sub_0206D494(uVar1);
  if (iVar4 == 0) {
    sub_0205D1FC(param_1);
    return 0;
  }
  return 1;
}

