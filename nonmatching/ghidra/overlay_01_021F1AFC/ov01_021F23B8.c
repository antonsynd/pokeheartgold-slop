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
undefined4 PlayerAvatar_SetUnk34(undefined4, undefined4);
undefined4 sub_0206234C(undefined4, undefined4);
undefined4 FollowMon_GetMapObject(undefined4);
undefined4 MapObject_ClearHeldMovementIfActive(undefined4);
undefined4 MapObject_AreBitsSetForMovementScriptInit(undefined4);
undefined4 ov01_02205790(undefined4, undefined4);
undefined4 PlayerAvatar_GetGender(undefined4);
undefined4 PlayerAvatar_GetSpriteByStateAndGender(undefined4, undefined4);
undefined4 ov01_021F1640(undefined4);
undefined4 ov01_021F3084(undefined4, undefined4);
undefined4 MapObject_SetHeldMovement(undefined4, undefined4);
undefined4 ov01_0220609C(undefined4, undefined4);
undefined4 MapObject_IsMovementPaused(undefined4);
undefined4 FieldSystem_ProcessSoundplate(undefined4, undefined4);
undefined4 PlayerAvatar_SetState(undefined4, undefined4);
undefined4 FollowMon_IsActive(undefined4);
undefined4 ov01_021FE9F4(undefined4, undefined4);
undefined4 sub_02069DC8(undefined4, undefined4);
undefined4 sub_0205FC94(undefined4, undefined4);
undefined4 Save_VarsFlags_Get(undefined4);
undefined4 FieldBGM_GetForMapHeader(undefined4, undefined4);
undefined4 CheckFlag99A(void);
undefined4 SndRadio_GetSeqNo(void);
undefined4 FieldBGM_TryFadeOut(undefined4, undefined4, undefined4);
undefined4 ov01_021F30F4(undefined4);

undefined4 ov01_021F23B8(void)

{
  short sVar1;
  short *psVar2;
  undefined4 uVar3;
  int iVar4;
  
  psVar2 = (short *)TaskManager_GetEnvironment();
  sVar1 = *psVar2;
  if (sVar1 == 0) {
    iVar4 = MapObject_AreBitsSetForMovementScriptInit(*(undefined4 *)(psVar2 + 8));
    if (iVar4 == 1) {
      uVar3 = PlayerAvatar_GetGender(*(undefined4 *)(psVar2 + 6));
      uVar3 = PlayerAvatar_GetSpriteByStateAndGender(0,uVar3);
      ov01_021F3084(*(undefined4 *)(psVar2 + 6),uVar3);
      uVar3 = sub_0206234C(*(undefined4 *)(psVar2 + 2),0x34);
      MapObject_SetHeldMovement(*(undefined4 *)(psVar2 + 8),uVar3);
      ov01_021FE9F4(*(undefined4 *)(psVar2 + 10),0);
      *psVar2 = *psVar2 + 1;
    }
  }
  else if (sVar1 == 1) {
    iVar4 = MapObject_IsMovementPaused(*(undefined4 *)(psVar2 + 8));
    if (iVar4 != 0) {
      MapObject_ClearHeldMovementIfActive(*(undefined4 *)(psVar2 + 8));
      ov01_021F1640(*(undefined4 *)(psVar2 + 10));
      PlayerAvatar_SetUnk34(*(undefined4 *)(psVar2 + 6),0);
      PlayerAvatar_SetState(*(undefined4 *)(psVar2 + 6),0);
      FieldSystem_ProcessSoundplate(*(undefined4 *)(psVar2 + 4),0);
      iVar4 = FollowMon_IsActive(*(undefined4 *)(psVar2 + 4));
      if (iVar4 != 0) {
        ov01_02205790(*(undefined4 *)(psVar2 + 4),*(uint *)(psVar2 + 2) & 0xff);
        uVar3 = FollowMon_GetMapObject(*(undefined4 *)(psVar2 + 4));
        sub_02069DC8(uVar3,1);
        ov01_0220609C(*(undefined4 *)(psVar2 + 4),1);
        uVar3 = FollowMon_GetMapObject(*(undefined4 *)(psVar2 + 4));
        sub_0205FC94(uVar3,0x30);
      }
      Save_VarsFlags_Get(*(undefined4 *)(*(int *)(psVar2 + 4) + 0xc));
      iVar4 = CheckFlag99A();
      if (iVar4 == 0) {
        uVar3 = FieldBGM_GetForMapHeader
                          (*(int *)(psVar2 + 4),**(undefined4 **)(*(int *)(psVar2 + 4) + 0x20));
        FieldBGM_TryFadeOut(*(undefined4 *)(psVar2 + 4),uVar3,4);
      }
      iVar4 = SndRadio_GetSeqNo();
      if (iVar4 == 0) {
        ov01_021F30F4(psVar2);
        return 1;
      }
      psVar2[1] = 0x28;
      *psVar2 = *psVar2 + 1;
    }
  }
  else if (sVar1 == 2) {
    iVar4 = SndRadio_GetSeqNo();
    if (iVar4 == 0) {
      FieldSystem_ProcessSoundplate(*(undefined4 *)(psVar2 + 4),1);
      ov01_021F30F4(psVar2);
      return 1;
    }
    psVar2[1] = psVar2[1] + -1;
    if (psVar2[1] == 0) {
      FieldSystem_ProcessSoundplate(*(undefined4 *)(psVar2 + 4),1);
      ov01_021F30F4(psVar2);
      return 1;
    }
  }
  return 0;
}

