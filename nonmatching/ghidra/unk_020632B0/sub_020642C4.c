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
undefined4 PlayerAvatar_GetZCoord();
undefined4 PlayerAvatar_GetXCoord();
undefined4 MapObject_GetFacingDirection();
undefined4 sub_02064298();
undefined4 sub_02064468();
undefined4 sub_0206439C();
undefined4 MapObject_GetParam();

int sub_020642C4(undefined4 param_1,undefined4 param_2,int *param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;

  iVar1 = sub_02064298();
  if (iVar1 != 1) {
    if (iVar1 != 2) {
      return -1;
    }
    uVar2 = PlayerAvatar_GetXCoord(param_2);
    uVar3 = PlayerAvatar_GetZCoord(param_2);
    uVar4 = MapObject_GetParam(param_1,0);
    iVar1 = 0;
    while( true ) {
      iVar5 = sub_0206439C(param_1,iVar1,uVar4,uVar2,uVar3,0);
      if ((iVar5 != -1) && (iVar6 = sub_02064468(param_1,iVar1,iVar5), iVar6 == 0)) break;
      iVar1 = iVar1 + 1;
      if (3 < iVar1) {
        return -1;
      }
    }
    *param_3 = iVar1;
    return iVar5;
  }
  uVar2 = PlayerAvatar_GetXCoord(param_2);
  uVar3 = PlayerAvatar_GetZCoord(param_2);
  iVar1 = MapObject_GetFacingDirection(param_1);
  uVar4 = MapObject_GetParam(param_1,0);
  iVar5 = sub_0206439C(param_1,iVar1,uVar4,uVar2,uVar3,0);
  if ((iVar5 != -1) && (iVar6 = sub_02064468(param_1,iVar1,iVar5), iVar6 == 0)) {
    *param_3 = iVar1;
    return iVar5;
  }
  return -1;
}

