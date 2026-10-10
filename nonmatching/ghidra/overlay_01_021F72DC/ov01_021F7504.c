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
undefined4 MapObject_GetID();
undefined4 sub_0205F40C();
undefined4 SaveArray_Party_Get();
undefined4 MapObject_GetManager();
undefined4 GetFirstAliveMonInParty_CrashIfNone();
undefined4 FollowMon_GetSpriteID();
undefined4 MapObject_GetYCoord();
undefined4 MapObject_SetFlagsBits();
undefined4 FollowMon_SetObjectParams();
undefined4 MapObject_GetXCoord();
undefined4 MapObject_SetSpriteID();
undefined4 GetMonGender();
undefined4 MapObject_SetPreviousY();
undefined4 MapObjectManager_GetFieldSystem();
undefined4 MapObject_CopyPositionVector();
undefined4 GetMonData();
undefined4 MapObject_SetPreviousX();
undefined4 MonIsShiny();
undefined4 sub_0205FCD4();
undefined4 ov01_021F9510();
undefined4 MapObject_SetPositionVector();
undefined4 ov01_021FA2D4();
undefined4 ov01_021F8E70();
undefined4 ov01_021F9630();
undefined4 FieldSystem_SetFollowerPokeParam();
undefined4 MapObject_SetFacingVector();
undefined4 MapObject_SetFacingDirectionDirect();
undefined4 MapObject_GetZCoord();
undefined4 MapObject_GetSpriteID();
undefined4 MapObject_CopyFacingVector();
undefined4 MapObject_GetFacingDirection();
undefined4 ov01_02205808();
undefined4 FieldSystem_UnkSub108_Set();
undefined4 ov01_02205564();
undefined4 MapObject_SetPreviousZ();
undefined4 ov01_0220553C();
undefined4 ov01_0220589C();
undefined4 MapObject_ClearHeldMovement();
undefined4 MapObject_ClearFlagsBits();
undefined4 sub_0205F484();
undefined4 ov01_021FA3E8();

void ov01_021F7504(undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  undefined4 uVar6;
  uint uVar7;
  int iVar8;
  undefined4 uVar9;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 auStack_2c [2];
  undefined4 uStack_24;
  int aiStack_20 [2];
  int iStack_18;
  
  piVar1 = (int *)sub_0205F40C();
  if ((-1 < (int)((uint)*(byte *)((int)piVar1 + 0x17) << 0x1e)) &&
     (iVar2 = MapObject_GetID(param_1), iVar2 == 0xfd)) {
    MapObject_GetManager(param_1);
    iVar2 = MapObjectManager_GetFieldSystem();
    SaveArray_Party_Get(*(undefined4 *)(iVar2 + 0xc));
    uVar9 = GetFirstAliveMonInParty_CrashIfNone();
    uVar3 = GetMonData(uVar9,5,0);
    uVar4 = GetMonData(uVar9,0x70,0);
    uVar5 = GetMonGender(uVar9);
    uVar6 = FollowMon_GetSpriteID(uVar3,uVar4 & 0xffff,uVar5);
    uVar7 = MonIsShiny(uVar9);
    *(byte *)((int)piVar1 + 0x17) = *(byte *)((int)piVar1 + 0x17) | 2;
    FollowMon_SetObjectParams(param_1,uVar3,uVar4 & 0xff,uVar7);
    MapObject_SetSpriteID(param_1,uVar6);
    sub_0205FCD4(param_1);
    MapObject_SetFlagsBits(param_1,4);
    MapObject_CopyPositionVector(param_1,aiStack_20);
    iVar8 = MapObject_GetXCoord(param_1);
    aiStack_20[0] = iVar8 * 0x10000 + 0x8000;
    MapObject_SetPreviousX(param_1);
    uVar6 = MapObject_GetYCoord(param_1);
    MapObject_SetPreviousY(param_1,uVar6);
    iVar8 = MapObject_GetZCoord(param_1);
    iStack_18 = iVar8 * 0x10000 + 0x8000;
    MapObject_SetPreviousZ(param_1);
    MapObject_SetPositionVector(param_1,aiStack_20);
    MapObject_ClearHeldMovement(param_1);
    if ((*(uint *)(iVar2 + 0xf4) != uVar3) ||
       (((*(ushort *)(iVar2 + 0xfc) != uVar4 || (*(byte *)(iVar2 + 0xfb) != uVar7)) ||
        (*(byte *)(iVar2 + 0xf8) != uVar5)))) {
      FieldSystem_SetFollowerPokeParam(iVar2,uVar3,uVar4 & 0xff,uVar7,uVar5);
      MapObject_SetFacingDirectionDirect(param_1,1);
    }
    uVar6 = GetMonData(uVar9,0,0);
    FieldSystem_UnkSub108_Set(*(undefined4 *)(iVar2 + 0x108),uVar9,uVar3 & 0xffff,uVar6);
  }
  iVar2 = ov01_021FA2D4(param_1);
  if (iVar2 != 1) {
    if (*piVar1 == 0) {
      ov01_021F9510(param_1,piVar1);
    }
    if (*piVar1 != 0) {
      *(byte *)((int)piVar1 + 0x17) = *(byte *)((int)piVar1 + 0x17) & 0xfe | 1;
      uStack_38 = 0;
      uStack_34 = 0;
      uStack_30 = 0;
      MapObject_CopyFacingVector(param_1,auStack_2c);
      MapObject_GetSpriteID(param_1);
      uVar9 = MapObject_GetFacingDirection(param_1);
      ov01_021F8E70(param_1,uVar9,&uStack_38);
      auStack_2c[0] = uStack_38;
      uStack_24 = uStack_30;
      MapObject_SetFacingVector(param_1,auStack_2c);
      iVar2 = ov01_02205564(param_1);
      if (iVar2 == 0) {
        iVar2 = ov01_0220553C(param_1);
        if (iVar2 != 0) {
          ov01_02205808(1,param_1,*piVar1);
        }
      }
      else {
        ov01_0220589C(1,param_1,*piVar1);
      }
      ov01_021F9630(*piVar1,piVar1 + 1);
      ov01_021FA3E8(param_1,*piVar1);
      MapObject_ClearFlagsBits(param_1,0x200000);
      sub_0205F484(param_1);
    }
  }
  return;
}

