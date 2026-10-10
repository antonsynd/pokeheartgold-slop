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
undefined4 MapObject_GetXCoord();
undefined4 sub_02061E90();
undefined4 sub_02061E6C();
undefined4 MapObject_GetZCoord();
undefined4 sub_02061E00();
undefined4 FieldSystem_GetPlayerAvatar();
undefined4 MapObject_GetFieldSystem();

int sub_02061F5C(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int *piVar8;
  int iVar9;
  int iVar10;
  
  piVar1 = (int *)sub_02061E6C(param_2);
  iVar2 = sub_02061E00(piVar1,param_3);
  if (iVar2 == 1) {
    return -1;
  }
  iVar3 = sub_02061E90(param_1);
  if (iVar3 != -1) {
    iVar7 = 0;
    piVar8 = piVar1;
    do {
      if (iVar3 == *piVar8) {
        return iVar3;
      }
      iVar7 = iVar7 + 1;
      piVar8 = piVar8 + 1;
    } while (iVar7 < iVar2);
    iVar9 = -1;
    iVar3 = MapObject_GetXCoord(param_1);
    iVar7 = MapObject_GetZCoord(param_1);
    MapObject_GetFieldSystem(param_1);
    uVar4 = FieldSystem_GetPlayerAvatar();
    iVar5 = PlayerAvatar_GetXCoord();
    iVar6 = PlayerAvatar_GetZCoord(uVar4);
    if (iVar5 < iVar3) {
      iVar10 = 2;
    }
    else {
      iVar10 = iVar9;
      if (iVar3 < iVar5) {
        iVar10 = 3;
      }
    }
    if (iVar6 < iVar7) {
      iVar9 = 0;
    }
    else if (iVar7 < iVar6) {
      iVar9 = 1;
    }
    iVar3 = 0;
    if (iVar10 == -1) {
      do {
        if (iVar9 == *piVar1) {
          return iVar9;
        }
        iVar3 = iVar3 + 1;
        piVar1 = piVar1 + 1;
      } while (iVar3 < iVar2);
    }
    else if (iVar9 == -1) {
      do {
        if (iVar10 == *piVar1) {
          return iVar10;
        }
        iVar3 = iVar3 + 1;
        piVar1 = piVar1 + 1;
      } while (iVar3 < iVar2);
    }
    else {
      do {
        if (iVar10 == *piVar1) {
          return iVar10;
        }
        if (iVar9 == *piVar1) {
          return iVar9;
        }
        iVar3 = iVar3 + 1;
        piVar1 = piVar1 + 1;
      } while (iVar3 < iVar2);
    }
    iVar3 = -1;
  }
  return iVar3;
}

