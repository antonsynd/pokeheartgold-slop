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
undefined4 sub_02062050();
undefined4 MapObject_GetXCoord(void *);
undefined4 MapObject_GetZCoord(void *);
undefined4 MapObject_ForceSetHeldMovement();
undefined4 MapObject_GetInitialX(void *);
undefined4 MapObject_SetSingleMovement(void *);
undefined4 sub_0206207C();
undefined4 sub_02060BB8();
undefined4 MapObject_SetNextFacingDirection(void *, unsigned int);
undefined4 sub_02061E6C();
undefined4 MapObject_GetInitialZ(void *);
undefined4 MapObject_SetFacingDirection(void *, unsigned int);
undefined4 sub_0206234C(int, int);

void sub_02061C40(undefined *param_1,undefined1 *param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  int iVar6;

  if (param_2[1] == param_2[2]) {
    if (param_2[3] == '\0') {
      uVar1 = MapObject_GetInitialX(param_1);
      uVar2 = MapObject_GetXCoord(param_1);
      if (uVar1 == uVar2) {
        param_2[1] = param_2[1] + '\x01';
      }
    }
    else {
      uVar1 = MapObject_GetInitialZ(param_1);
      uVar2 = MapObject_GetZCoord(param_1);
      if (uVar1 == uVar2) {
        param_2[1] = param_2[1] + '\x01';
      }
    }
  }
  if (param_2[1] == '\x03') {
    uVar1 = MapObject_GetInitialX(param_1);
    uVar2 = MapObject_GetInitialZ(param_1);
    uVar3 = MapObject_GetXCoord(param_1);
    uVar4 = MapObject_GetZCoord(param_1);
    if ((uVar1 == uVar3) && (uVar2 == uVar4)) {
      param_2[1] = 0;
    }
  }
  iVar5 = sub_02061E6C(*(undefined4 *)(param_2 + 4));
  uVar1 = *(uint *)(iVar5 + (uint)(byte)param_2[1] * 4);
  MapObject_SetNextFacingDirection(param_1,uVar1);
  iVar6 = sub_02062050(param_1);
  if (iVar6 == 0) {
    MapObject_SetFacingDirection(param_1,uVar1);
  }
  uVar2 = sub_02060BB8(param_1,uVar1);
  if ((uVar2 & 1) != 0) {
    param_2[1] = param_2[1] + '\x01';
    uVar1 = *(uint *)(iVar5 + (uint)(byte)param_2[1] * 4);
    MapObject_SetNextFacingDirection(param_1,uVar1);
    iVar5 = sub_02062050(param_1);
    if (iVar5 == 0) {
      MapObject_SetFacingDirection(param_1,uVar1);
    }
    uVar2 = sub_02060BB8(param_1,uVar1);
  }
  iVar5 = 0xc;
  if (uVar2 != 0) {
    iVar5 = 0x20;
  }
  iVar5 = sub_0206234C(uVar1,iVar5);
  MapObject_ForceSetHeldMovement(param_1,iVar5);
  iVar5 = sub_02062050(param_1);
  if (iVar5 == 1) {
    sub_0206207C(param_1,param_2 + 8);
  }
  MapObject_SetSingleMovement(param_1);
  *param_2 = 1;
  return;
}

