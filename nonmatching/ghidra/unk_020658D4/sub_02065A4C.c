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
undefined4 sub_02069E28();
undefined4 sub_020664D8();
undefined4 sub_02069EAC();
undefined4 FieldSystem_GetPlayerAvatar();
undefined4 sub_020623C8();
undefined4 MapObject_GetFieldSystem();
undefined4 PlayerAvatar_GetFacingDirection();
undefined4 sub_02069E84();
undefined4 sub_02065D78();
undefined4 MapObject_GetXCoord();
undefined4 MapObject_ClearEndMovement();
undefined4 sub_02065D58();
undefined4 sub_02069DC8();
undefined4 sub_02065DF4();
undefined4 MapObject_GetZCoord();
undefined4 func_0x0220329c() __asm__("sub_0220329C");
undefined4 MapObject_ClearSingleMovement();
undefined4 sub_02069E14();
undefined4 MapObject_SetSingleMovement();

undefined4 sub_02065A4C(undefined4 param_1,undefined1 *param_2)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;

  iVar2 = MapObject_GetFieldSystem();
  MapObject_ClearSingleMovement(param_1);
  MapObject_ClearEndMovement(param_1);
  iVar3 = *(int *)(iVar2 + 0x100);
  if (iVar3 == 1) {
    *(undefined4 *)(iVar2 + 0x100) = 2;
    return 0;
  }
  if (iVar3 == 2) {
    sub_02065D58(param_1,param_2);
    iVar3 = MapObject_GetXCoord(param_1);
    if ((*(int *)(iVar2 + 0xec) == iVar3) &&
       (iVar3 = MapObject_GetZCoord(param_1), *(int *)(iVar2 + 0xf0) == iVar3)) {
      *(undefined4 *)(iVar2 + 0x100) = 0;
      *param_2 = 3;
      iVar3 = sub_02069E14(param_1);
      if ((iVar3 != 0) && (-1 < (int)((uint)*(ushort *)(param_2 + 10) << 0x1f))) {
        iVar3 = sub_02069EAC(param_1);
        if (iVar3 == 0) {
          sub_02069DC8(param_1,0);
        }
        else {
          func_0x0220329c(param_1,0);
          sub_02069E84(param_1,0);
        }
        sub_020664D8(param_1);
      }
      sub_02065D78(param_1);
      iVar3 = sub_020623C8();
      if (iVar3 != 0) {
        FieldSystem_GetPlayerAvatar(iVar2);
        uVar1 = PlayerAvatar_GetFacingDirection();
        sub_02069E28(param_1,uVar1);
      }
      return 1;
    }
    iVar3 = sub_02065DF4(param_1,param_2);
    if (iVar3 == 1) {
      iVar3 = sub_02069E14(param_1);
      if (iVar3 != 0) {
        iVar3 = sub_02069EAC(param_1);
        if (iVar3 == 0) {
          sub_02069DC8(param_1,0);
        }
        else {
          func_0x0220329c(param_1,0);
          sub_02069E84(param_1,0);
        }
        sub_020664D8(param_1);
      }
      MapObject_SetSingleMovement(param_1);
      *(undefined4 *)(iVar2 + 0x100) = 3;
      return 1;
    }
  }
  else if (iVar3 == 3) {
    *(undefined4 *)(iVar2 + 0x100) = 0;
  }
  return 0;
}

