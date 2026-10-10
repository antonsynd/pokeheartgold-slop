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
undefined4 GetDeltaYByFacingDirection(int);
undefined4 MapObject_GetXCoord(void *);
undefined4 MapObject_GetZCoord(void *);
undefined4 sub_02060E54(void *, int);
undefined4 sub_02060EBC(void *, int);
undefined4 MetatileBehavior_IsVeryTallGrass(unsigned char);
unsigned char GetMetatileBehavior(void *, int, int);
void * MapObject_GetFieldSystem(void *);
undefined4 GetDeltaXByFacingDirection(int);
undefined4 PlayerAvatar_GetState(void *);
undefined4 MetatileBehavior_IsMud(unsigned char);

undefined4 sub_0205DCFC(undefined *param_1,undefined *param_2,int param_3)

{
  byte bVar1;
  int iVar2;
  undefined *puVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;

  if ((param_3 != -1) && (iVar2 = PlayerAvatar_GetState(param_1), iVar2 == 1)) {
    puVar3 = MapObject_GetFieldSystem(param_2);
    uVar4 = MapObject_GetXCoord(param_2);
    iVar2 = GetDeltaXByFacingDirection(param_3);
    uVar5 = MapObject_GetZCoord(param_2);
    iVar6 = GetDeltaYByFacingDirection(param_3);
    bVar1 = GetMetatileBehavior(puVar3,uVar4 + iVar2,uVar5 + iVar6);
    iVar2 = sub_02060E54(param_2,(uint)bVar1);
    if (iVar2 != 0) {
      return 1;
    }
    iVar2 = sub_02060EBC(param_2,(uint)bVar1);
    if (iVar2 != 0) {
      return 1;
    }
    iVar2 = MetatileBehavior_IsVeryTallGrass(bVar1);
    if (iVar2 != 0) {
      return 1;
    }
    iVar2 = MetatileBehavior_IsMud(bVar1);
    if (iVar2 != 0) {
      return 1;
    }
  }
  return 0;
}

