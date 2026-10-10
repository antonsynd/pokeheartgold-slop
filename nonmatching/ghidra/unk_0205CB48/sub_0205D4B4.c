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
undefined4 sub_0205DE88();
undefined4 PlaySE();
undefined4 PlayerSaveData_CheckRunningShoes();
undefined4 MapObject_GetXCoord();
undefined4 FieldSystem_IsSaveGymmickTypeEqualTo();
undefined4 MapObject_SetNextFacingDirection();
undefined4 sub_0205F504();
undefined4 PlayerAvatar_GetPlayerSaveData();
undefined4 MapObject_GetFieldSystem();
undefined4 PlayerAvatar_GetState();
undefined4 sub_0205E048();
undefined4 sub_0205D44C();
undefined4 PlayerAvatar_SetFlag6();
undefined4 GetDeltaXByFacingDirection();
undefined4 GetDeltaYByFacingDirection();
undefined4 MapObject_GetPreviousZCoord();
undefined4 func_0x022566ec() __asm__("sub_022566EC");
undefined4 sub_0206234C();
undefined4 func_0x02205990() __asm__("sub_02205990");
undefined4 MapObject_GetPreviousXCoord();
undefined4 MapObject_GetZCoord();
undefined4 sub_0205DA1C();

void sub_0205D4B4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined2 param_5)

{
  bool bVar1;
  undefined1 uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uStack_28;
  
  bVar1 = false;
  uVar3 = sub_0205DA34();
  iVar4 = PlayerAvatar_GetState(param_1);
  if (iVar4 == 2) {
    if ((uVar3 == 0) || (uVar3 == 0x20)) {
      uVar2 = sub_0205F504(param_2);
      uStack_28 = sub_0205D44C(param_2,uVar2,0x10);
      sub_0205E048(param_1);
      PlayerAvatar_SetFlag6(param_1);
    }
    else {
      uStack_28 = 0x1c;
      if ((uVar3 & 8) == 0) {
        PlaySE(0x600);
      }
      MapObject_SetNextFacingDirection(param_2,param_3);
    }
  }
  else if ((uVar3 & 4) == 0) {
    if (uVar3 == 0) {
      uVar8 = 0xc;
      PlayerAvatar_GetPlayerSaveData(param_1);
      iVar4 = PlayerSaveData_CheckRunningShoes();
      if ((iVar4 == 1) && (iVar4 = sub_0205DE88(param_1,param_5), iVar4 == 1)) {
        uVar8 = 0x58;
      }
      uVar2 = sub_0205F504(param_2);
      uStack_28 = sub_0205D44C(param_2,uVar2,uVar8);
      sub_0205E048(param_1);
      PlayerAvatar_SetFlag6(param_1);
    }
    else {
      uStack_28 = 0x1c;
      if ((uVar3 & 8) == 0) {
        uVar8 = MapObject_GetFieldSystem(param_2);
        iVar4 = FieldSystem_IsSaveGymmickTypeEqualTo(uVar8,7);
        if (iVar4 == 0) {
          PlaySE(0x600);
        }
        else {
          iVar4 = MapObject_GetXCoord(param_2);
          iVar5 = GetDeltaXByFacingDirection(param_3);
          iVar6 = MapObject_GetZCoord(param_2);
          iVar7 = GetDeltaYByFacingDirection(param_3);
          func_0x022566ec(uVar8,iVar4 + iVar5,iVar6 + iVar7);
        }
      }
      MapObject_SetNextFacingDirection(param_2,param_3);
      bVar1 = true;
    }
  }
  else {
    uStack_28 = 0x38;
  }
  uVar8 = sub_0206234C(param_3,uStack_28);
  sub_0205DA1C(param_1,param_2,uVar8);
  if (!bVar1) {
    iVar4 = MapObject_GetFieldSystem(param_2);
    uVar9 = MapObject_GetPreviousXCoord(param_2);
    uVar10 = MapObject_GetPreviousZCoord(param_2);
    func_0x02205990(uVar8,uVar9,uVar10,iVar4 + 0xe4);
  }
  return;
}

