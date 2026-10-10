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
undefined4 MapObject_GetMovementCommand();
undefined4 sub_02006088();
undefined4 PlayerAvatar_ResetUnkC();
undefined4 PlayerAvatar_GetPlayerMoveState();
undefined4 sub_0205F504();
undefined4 MetatileBehavior_IsPuddle();
undefined4 sub_0205DE98();
undefined4 PlayerAvatar_ToggleUnkC();
undefined4 MetatileBehavior_IsShallowWater();
undefined4 MetatileBehavior_IsTallGrass();
undefined4 PlayerAvatar_GetState();
undefined4 sub_02060FE0();
undefined4 MetatileBehavior_IsVeryTallGrass();
undefined4 PlayerAvatar_GetUnkC();
undefined4 sub_02062390();
extern undefined UNK_020fcb98 __asm__("sub_020FCB98");
extern undefined UNK_020fcb9a __asm__("sub_020FCB9A");
undefined4 GF_AssertFail();
undefined4 sub_02005BA8();
undefined4 PlaySE();

void sub_0205CD70(undefined4 param_1,undefined4 param_2)

{
  undefined1 uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  undefined2 uVar5;

  MapObject_GetMovementCommand();
  iVar2 = sub_02062390();
  uVar3 = sub_0205F504(param_1);
  uVar1 = sub_0205F504(param_1);
  iVar4 = MetatileBehavior_IsVeryTallGrass(uVar1);
  if ((((iVar4 == 0) && (iVar4 = MetatileBehavior_IsPuddle(uVar1), iVar4 != 1)) &&
      (iVar4 = MetatileBehavior_IsShallowWater(uVar1), iVar4 != 1)) &&
     (iVar4 = MetatileBehavior_IsTallGrass(uVar1), iVar4 == 0)) {
    if (iVar2 != -1) {
      uVar3 = sub_02060FE0(param_1,iVar2);
    }
    uVar3 = uVar3 & 0xff;
    if (*(short *)(&UNK_020fcb98 + uVar3 * 4) == 0x876) {
      PlayerAvatar_ResetUnkC(param_2);
    }
    else {
      iVar2 = PlayerAvatar_GetPlayerMoveState(param_2);
      if (iVar2 == 0) {
        PlayerAvatar_ResetUnkC(param_2);
      }
      else {
        PlayerAvatar_ToggleUnkC(param_2);
      }
    }
    iVar2 = PlayerAvatar_GetUnkC(param_2);
    if (((iVar2 == 0) && (iVar2 = PlayerAvatar_GetState(param_2), iVar2 != 1)) && (iVar2 != 2)) {
      if (uVar3 < 0x10) {
        if ((uVar3 == 0) && (iVar2 = sub_0205DE98(param_2), iVar2 == 1)) {
          uVar3 = 1;
        }
        iVar2 = uVar3 * 4;
        if (*(short *)(&UNK_020fcb9a + iVar2) == 1) {
          uVar5 = *(undefined2 *)(&UNK_020fcb98 + iVar2);
          sub_02006088(uVar5);
        }
        else {
          uVar5 = *(undefined2 *)(&UNK_020fcb98 + iVar2);
          PlaySE(uVar5);
        }
        sub_02005BA8(uVar5);
        return;
      }
      GF_AssertFail();
    }
  }
  return;
}

