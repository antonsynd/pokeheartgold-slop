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
undefined4 PlayerAvatar_GetFacingDirection();
undefined4 PlayerAvatar_SetMoveState();
undefined4 sub_0205DE88();
undefined4 PlaySE();
undefined4 sub_0206234C();
undefined4 sub_0205DEC0();
undefined4 sub_0205DDD4();
undefined4 PlayerAvatar_GetMapObject();

void sub_0205DF0C(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 int param_5,uint param_6)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;

  uVar1 = sub_0205DDD4();
  iVar2 = sub_0205DEC0(param_1,uVar1);
  PlayerAvatar_SetMoveState(param_1,iVar2);
  if (iVar2 == 0) {
    uVar1 = PlayerAvatar_GetFacingDirection(param_1);
    sub_0206234C(uVar1,0);
    return;
  }
  if (iVar2 != 2) {
    PlayerAvatar_GetMapObject(param_1);
    uVar3 = 4;
    if ((param_6 & 4) == 0) {
      if (param_6 == 0) {
        switch(param_4) {
        case 0:
          break;
        case 1:
          uVar3 = 8;
          break;
        case 2:
          uVar3 = 0xc;
          break;
        case 3:
          uVar3 = 0x4c;
          break;
        case 4:
          uVar3 = 0x10;
          break;
        case 5:
          uVar3 = 0x14;
          break;
        default:
          uVar3 = 4;
        }
        if ((param_5 == 1) && (iVar2 = sub_0205DE88(param_1,param_3), iVar2 == 1)) {
          uVar3 = 0x58;
        }
      }
      else {
        uVar3 = 0x1c;
        if ((param_6 & 8) == 0) {
          PlaySE(0x600);
        }
      }
    }
    else {
      uVar3 = 0x38;
    }
    sub_0206234C(uVar1,uVar3);
    return;
  }
  sub_0206234C(uVar1,0x28);
  return;
}

