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
undefined4 GF_AssertFail();
undefined4 PlayerAvatar_GetPreviousXCoord();
undefined4 MapObject_GetXCoord();
undefined4 sub_02061200();
undefined4 sub_02065DB4();
undefined4 sub_0206234C();
undefined4 PlayerAvatar_GetPreviousZCoord();
undefined4 MapObject_ForceSetHeldMovement();
undefined4 FieldSystem_GetPlayerAvatar();
undefined4 MapObject_GetZCoord();
undefined4 MapObject_GetFieldSystem();

undefined4 sub_02065F44(undefined4 param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  MapObject_GetFieldSystem();
  uVar1 = FieldSystem_GetPlayerAvatar();
  iVar2 = MapObject_GetXCoord(param_1);
  iVar3 = MapObject_GetZCoord(param_1);
  iVar4 = PlayerAvatar_GetPreviousXCoord(uVar1);
  iVar5 = PlayerAvatar_GetPreviousZCoord(uVar1);
  if ((iVar2 == iVar4) && (iVar3 == iVar5)) {
    return 0;
  }
  iVar6 = sub_02065DB4(param_1);
  sub_02061200(iVar2,iVar3,iVar4,iVar5);
  if (iVar6 == 0xff) {
    GF_AssertFail();
    return 0;
  }
  uVar1 = sub_0206234C();
  MapObject_ForceSetHeldMovement(param_1,uVar1);
  return 1;
}

