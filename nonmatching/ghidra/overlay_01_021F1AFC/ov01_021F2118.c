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
typedef void code(void);
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
undefined4 TaskManager_GetEnvironment(void);
undefined4 PlayCry(undefined4, undefined4);
undefined4 IsCryFinished(void);
undefined4 FieldSystem_UnkSub108_AddMonMood(undefined4, undefined4);
undefined4 PlayerAvatar_GetZCoord(undefined4);
undefined4 ov01_02205D68(undefined4);
undefined4 FieldBGM_TryFadeOut(undefined4, undefined4, undefined4);
undefined4 ov01_02205EE0(undefined4);
undefined4 FieldBGM_SetOverride(undefined4, undefined4);
undefined4 ov01_021F3054(undefined4, undefined4);
undefined4 CheckFlag99A(void);
undefined4 func_0x022507b4(undefined4, undefined4) __asm__("sub_022507B4");
undefined4 ov01_021F3068(undefined4);
undefined4 GetMonData(undefined4, undefined4, undefined4);
undefined4 PlayerAvatar_GetXCoord(undefined4);
undefined4 Save_VarsFlags_Get(undefined4);
undefined4 func_0x02250780(undefined4, undefined4) __asm__("sub_02250780");
undefined4 GetDeltaXByFacingDirection(undefined4);
undefined4 SndRadio_GetSeqNo(void);
undefined4 PlayerAvatar_SetUnk34(undefined4, undefined4);
undefined4 sub_0206234C(undefined4, undefined4);
undefined4 FollowMon_GetMapObject(undefined4);
undefined4 MapObject_ClearHeldMovementIfActive(undefined4);
undefined4 MapObject_AreBitsSetForMovementScriptInit(undefined4);
undefined4 ov01_02205790(undefined4, undefined4);
undefined4 PlayerAvatar_GetGender(undefined4);
undefined4 ov01_021FE7DC(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GetDeltaYByFacingDirection(undefined4);
undefined4 PlayerAvatar_GetSpriteByStateAndGender(undefined4, undefined4);
undefined4 ov01_021F3084(undefined4, undefined4);
undefined4 MapObject_SetHeldMovement(undefined4, undefined4);
undefined4 MapObject_IsMovementPaused(undefined4);
undefined4 PlayerAvatar_SetState(undefined4, undefined4);
undefined4 FollowMon_IsActive(undefined4);
undefined4 ov01_021FE9F4(undefined4, undefined4);
undefined4 FieldSystem_ProcessSoundplate(undefined4, undefined4);
undefined4 sub_0205FC94(undefined4, undefined4);
undefined4 ov01_021F30F4(undefined4);

undefined4 ov01_021F2118(undefined4 param_1)

{
  undefined1 uVar1;
  undefined2 uVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;

  piVar3 = (int *)TaskManager_GetEnvironment();
  switch(*piVar3) {
  case 0:
    Save_VarsFlags_Get(*(undefined4 *)(piVar3[7] + 0xc));
    iVar7 = CheckFlag99A();
    if ((iVar7 == 0) && (iVar7 = SndRadio_GetSeqNo(), iVar7 == 0)) {
      FieldBGM_SetOverride(piVar3[7],0);
      FieldBGM_TryFadeOut(piVar3[7],0x3f6,1);
    }
    *piVar3 = *piVar3 + 2;
    break;
  case 1:
    iVar7 = piVar3[2];
    piVar3[2] = iVar7 + 1;
    if (10 < iVar7 + 1) {
      piVar3[2] = 0;
      *piVar3 = *piVar3 + 1;
    }
    break;
  case 2:
    if (piVar3[3] == 1) {
      ov01_021F3054(piVar3[7],piVar3 + 3);
      *piVar3 = 5;
    }
    else {
      iVar7 = func_0x02250780(piVar3[7],0xb);
      if (iVar7 == 0) {
        uVar8 = 1;
      }
      else {
        FieldSystem_UnkSub108_AddMonMood(*(undefined4 *)(piVar3[7] + 0x108),1);
        uVar8 = 2;
      }
      func_0x022507b4(piVar3[7],uVar8);
      *piVar3 = 3;
    }
    break;
  case 3:
    uVar2 = GetMonData(piVar3[5],5,0);
    uVar1 = GetMonData(piVar3[5],0x70,0);
    PlayCry(uVar2,uVar1);
    *piVar3 = 4;
    break;
  case 4:
    iVar7 = IsCryFinished();
    if (iVar7 == 0) {
      ov01_02205EE0(param_1);
      *piVar3 = 6;
    }
    break;
  case 5:
    iVar7 = ov01_021F3068(piVar3 + 3);
    if (iVar7 == 1) {
      ov01_02205D68(piVar3[7]);
      *piVar3 = 6;
    }
    break;
  case 6:
    iVar7 = PlayerAvatar_GetXCoord(piVar3[8]);
    iVar4 = GetDeltaXByFacingDirection(piVar3[1]);
    iVar5 = PlayerAvatar_GetZCoord(piVar3[8]);
    iVar6 = GetDeltaYByFacingDirection(piVar3[1]);
    iVar7 = ov01_021FE7DC(piVar3[9],iVar7 + iVar4,iVar5 + iVar6,piVar3[1],0);
    piVar3[10] = iVar7;
    PlayerAvatar_SetUnk34(piVar3[8],piVar3[10]);
    PlayerAvatar_SetState(piVar3[8],2);
    *piVar3 = *piVar3 + 1;
    break;
  case 7:
    iVar7 = piVar3[2];
    piVar3[2] = iVar7 + 1;
    if (10 < iVar7 + 1) {
      uVar8 = PlayerAvatar_GetGender(piVar3[8]);
      uVar8 = PlayerAvatar_GetSpriteByStateAndGender(0,uVar8);
      ov01_021F3084(piVar3[8],uVar8);
      piVar3[2] = 0;
      *piVar3 = *piVar3 + 1;
    }
    break;
  case 8:
    iVar7 = MapObject_AreBitsSetForMovementScriptInit(piVar3[9]);
    if (iVar7 == 1) {
      uVar8 = sub_0206234C(piVar3[1],0x34);
      MapObject_SetHeldMovement(piVar3[9],uVar8);
      *piVar3 = *piVar3 + 1;
    }
    break;
  case 9:
    iVar7 = MapObject_IsMovementPaused(piVar3[9]);
    if (iVar7 != 0) {
      MapObject_ClearHeldMovementIfActive(piVar3[9]);
      ov01_021FE9F4(piVar3[10],1);
      uVar8 = PlayerAvatar_GetGender(piVar3[8]);
      uVar8 = PlayerAvatar_GetSpriteByStateAndGender(2,uVar8);
      ov01_021F3084(piVar3[8],uVar8);
      iVar7 = FollowMon_IsActive(piVar3[7]);
      if (iVar7 != 0) {
        ov01_02205790(piVar3[7],piVar3[1] & 0xff);
        uVar8 = FollowMon_GetMapObject(piVar3[7]);
        sub_0205FC94(uVar8,0x38);
      }
      FieldSystem_ProcessSoundplate(piVar3[7],0);
      ov01_021F30F4(piVar3);
      return 1;
    }
  }
  return 0;
}

