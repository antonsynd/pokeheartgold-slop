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
undefined4 MapObject_GetXCoord(void *);
undefined4 MapObject_GetZCoord(void *);
undefined4 sub_020623C8();
undefined4 PlayerAvatar_GetFacingDirection(void *);
undefined4 sub_02069E50(void *, unsigned char);
undefined4 sub_02066444();
undefined4 func_0x0220542c() __asm__("sub_0220542C");
undefined4 sub_02065D78();
undefined4 sub_0206234C(int, int);
void * FieldSystem_GetPlayerAvatar(void *);
undefined4 PlayerAvatar_GetPreviousXCoord(void *);
undefined4 PlayerAvatar_GetPreviousZCoord(void *);
unsigned char sub_02069EC0(void *);
undefined4 sub_02069E28(void *, unsigned int);
void * MapObject_GetFieldSystem(void *);
undefined4 PlayerAvatar_CheckFlag6(void *);
undefined4 sub_020623D8();
undefined4 sub_02061200();
undefined4 MapObject_ForceSetHeldMovement();

undefined4 sub_02065DF4(undefined *param_1,undefined1 *param_2)

{
  byte bVar1;
  ushort uVar2;
  undefined *puVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  undefined4 uVar11;
  undefined1 uStack_24;

  puVar3 = MapObject_GetFieldSystem(param_1);
  puVar3 = FieldSystem_GetPlayerAvatar(puVar3);
  uVar4 = MapObject_GetXCoord(param_1);
  uVar5 = MapObject_GetZCoord(param_1);
  uVar6 = PlayerAvatar_GetPreviousXCoord(puVar3);
  uVar7 = PlayerAvatar_GetPreviousZCoord(puVar3);
  if ((uVar4 == uVar6) && (uVar5 == uVar7)) {
    return 0;
  }
  iVar8 = sub_02065D78(param_1);
  iVar9 = sub_02061200(uVar4,uVar5,uVar6,uVar7);
  bVar1 = sub_02069EC0(param_1);
  iVar10 = sub_020623C8(iVar8);
  uStack_24 = 1;
  if (bVar1 == 0) {
    if (iVar10 == 0) {
      iVar8 = sub_0206234C(iVar9,iVar8);
    }
    else {
      iVar8 = sub_020623D8(iVar9);
      uVar4 = PlayerAvatar_GetFacingDirection(puVar3);
      sub_02069E28(param_1,uVar4 & 0xff);
    }
  }
  else if (iVar10 == 0) {
    iVar9 = PlayerAvatar_CheckFlag6(puVar3);
    if (iVar9 == 0) {
      return 0;
    }
    iVar8 = func_0x0220542c(bVar1,iVar8);
    uVar2 = sub_02066444();
    *(ushort *)(param_2 + 10) = (uVar2 & 3) << 1 | *(ushort *)(param_2 + 10) & 0xfff9;
    sub_02069E50(param_1,(byte)iVar8);
    uStack_24 = 2;
    param_2[2] = 0;
    param_2[3] = 0;
    sub_02069E28(param_1,0);
  }
  else {
    uVar11 = sub_020623D8(bVar1);
    iVar8 = func_0x0220542c(bVar1,uVar11);
    uVar2 = sub_02066444();
    *(ushort *)(param_2 + 10) = (uVar2 & 3) << 1 | *(ushort *)(param_2 + 10) & 0xfff9;
    sub_02069E50(param_1,(byte)iVar8);
    uStack_24 = 2;
    param_2[2] = 0;
    param_2[3] = 0;
    uVar4 = PlayerAvatar_GetFacingDirection(puVar3);
    sub_02069E28(param_1,uVar4 & 0xff);
  }
  MapObject_ForceSetHeldMovement(param_1,iVar8);
  *param_2 = uStack_24;
  return 1;
}

