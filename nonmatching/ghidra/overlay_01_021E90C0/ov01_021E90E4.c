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
undefined4 ov01_021E90B0(undefined4, undefined4, undefined4);
undefined4 MapPropOneShotAnimationManager_IsAnimationLoopFinished(undefined4, undefined4);
undefined4 sub_02054D10(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021FB9E0(undefined4);
undefined4 MapPropOneShotAnimationManager_LoadPropAnimations(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(undefined4, undefined4, undefined4, undefined4);
undefined4 MapPropAnimationManager_GetPropAnimationCount(undefined4, undefined4);
undefined4 func_0x02023234(undefined4) __asm__("sub_02023234");
undefined4 ov01_021EA1F4(undefined4, undefined4);
undefined4 MapPropOneShotAnimationManager_GetAnimationMapPropModelID(undefined4, undefined4);
undefined4 ov01_021FB904(undefined4);
undefined4 sub_02054AE4(undefined4, undefined4, undefined4, undefined4);
undefined4 GetDoorSE(undefined4, undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 MapProp_GetResModel(undefined4);
undefined4 sub_02054A60(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021E9700(undefined4);
undefined4 MapProp_GetRenderSurface(undefined4);
undefined4 NARC_ReadWholeMember(undefined4, undefined4, undefined4);
undefined4 MapObject_GetPreviousXCoord(undefined4);
undefined4 MapObject_GetPreviousZCoord(undefined4);
undefined4 FollowMon_GetMapObject(undefined4);
undefined4 SetCameraTranslationPath(undefined4, undefined4, undefined4);
undefined4 MapObject_ClearHeldMovementIfActive(undefined4);
undefined4 PlayerAvatar_GetMapObject(undefined4);
undefined4 CreateCameraTranslationWrapper(undefined4, undefined4);
undefined4 ov01_02205990(undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_022057C4(undefined4);
undefined4 MapObject_SetHeldMovement(undefined4, undefined4);
undefined4 MapObject_IsMovementPaused(void);
undefined4 MapObject_SetVisible(undefined4, undefined4);
undefined4 func_0x02023240(undefined4, undefined4, undefined4) __asm__("sub_02023240");
undefined4 FollowMon_IsActive(undefined4);
undefined4 ov01_021E95CC(undefined4, undefined4);
undefined4 IsCameraTranslationFinished(undefined4);
undefined4 DeleteCameraTranslationWrapper(undefined4);
extern undefined ov01_02206428;

undefined4 ov01_021E90E4(int param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  undefined2 uVar2;
  int iVar3;
  int *piVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int *piVar8;
  int iStack_50;
  undefined4 uStack_44;
  undefined1 auStack_40 [4];
  char cStack_3c;
  undefined1 auStack_28 [16];
  undefined4 uStack_18;

  iVar3 = *param_2;
  uStack_18 = param_4;
  if (iVar3 < 0x65) {
    if (iVar3 < 100) {
      switch(iVar3) {
      case 0:
        param_2[4] = 0;
        *(undefined1 *)((int)param_2 + 0xd) = 0;
        sub_02054A60(param_2[1],param_2[2],0xffffffff,0xffffffff,3,1,auStack_28);
        *(undefined1 *)(param_2 + 3) = 1;
        bVar1 = false;
        uVar7 = ov01_021FB904(*(undefined4 *)(param_1 + 0x34));
        piVar4 = (int *)sub_02054D10(param_1,4,4,auStack_28,0);
        iVar3 = 0;
        piVar8 = piVar4;
        do {
          if ((*piVar8 != 0) && (NARC_ReadWholeMember(uVar7,*piVar8,auStack_40), cStack_3c != '\0'))
          {
            sub_02054AE4(param_1,piVar4[iVar3],auStack_28,&uStack_44);
            bVar1 = true;
            iStack_50 = piVar4[iVar3];
            break;
          }
          iVar3 = iVar3 + 1;
          piVar8 = piVar8 + 1;
        } while (iVar3 < 4);
        Heap_Free(piVar4);
        if (!bVar1) {
          return 1;
        }
        iVar3 = MapPropAnimationManager_GetPropAnimationCount
                          (*(undefined4 *)(param_1 + 0x54),iStack_50);
        if (iVar3 == 0) {
          return 1;
        }
        uVar7 = ov01_021FB9E0(*(undefined4 *)(param_1 + 0x34));
        uVar6 = MapProp_GetRenderSurface(uStack_44);
        uVar5 = MapProp_GetResModel(uStack_44);
        MapPropOneShotAnimationManager_LoadPropAnimations
                  (*(undefined4 *)(param_1 + 0x54),*(undefined4 *)(param_1 + 0x58),1,iStack_50,uVar6
                   ,uVar5,uVar7,iVar3,1,0);
        ov01_021E90B0(*(undefined4 *)(param_1 + 0x58),1,1);
        uVar2 = ov01_021E9700(iStack_50);
        *(undefined2 *)((int)param_2 + 0x1e) = uVar2;
        if (*(short *)((int)param_2 + 0x1e) == -1) {
          *param_2 = *param_2 + 1;
        }
        else {
          *param_2 = 100;
        }
        break;
      case 1:
        uVar7 = MapPropOneShotAnimationManager_GetAnimationMapPropModelID
                          (*(undefined4 *)(param_1 + 0x58),1);
        iVar3 = ov01_021EA1F4(param_1,uVar7);
        if (iVar3 == 0) {
          func_0x02023234(*(undefined4 *)(param_1 + 0x24));
          param_2[4] = 1;
        }
        uVar7 = GetDoorSE(param_1,uVar7,1);
        MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect
                  (*(undefined4 *)(param_1 + 0x58),1,0,uVar7);
        *param_2 = *param_2 + 1;
        break;
      case 2:
        iVar3 = MapPropOneShotAnimationManager_IsAnimationLoopFinished
                          (*(undefined4 *)(param_1 + 0x58),1);
        if (iVar3 != 0) {
          *param_2 = *param_2 + 1;
        }
        break;
      case 3:
        uVar7 = PlayerAvatar_GetMapObject(*(undefined4 *)(param_1 + 0x40));
        MapObject_SetHeldMovement(uVar7,0xc);
        iVar3 = FollowMon_IsActive(param_1);
        if ((iVar3 != 0) && (iVar3 = ov01_022057C4(param_1), iVar3 == 0)) {
          uVar6 = MapObject_GetPreviousXCoord(uVar7);
          uVar7 = MapObject_GetPreviousZCoord(uVar7);
          ov01_02205990(0xc,uVar6,uVar7,param_1 + 0xe4);
        }
        *param_2 = *param_2 + 1;
        break;
      case 4:
        uVar7 = PlayerAvatar_GetMapObject(*(undefined4 *)(param_1 + 0x40));
        iVar3 = MapObject_IsMovementPaused();
        if (iVar3 == 1) {
          iVar3 = FollowMon_IsActive(param_1);
          if (iVar3 == 0) {
            *param_2 = *param_2 + 1;
          }
          else {
            uVar6 = FollowMon_GetMapObject(param_1);
            iVar3 = MapObject_IsMovementPaused();
            if (iVar3 == 1) {
              MapObject_ClearHeldMovementIfActive(uVar7);
              MapObject_ClearHeldMovementIfActive(uVar6);
              *param_2 = *param_2 + 1;
            }
          }
        }
        break;
      case 5:
        uVar7 = PlayerAvatar_GetMapObject(*(undefined4 *)(param_1 + 0x40));
        MapObject_SetVisible(uVar7,1);
        return 1;
      }
    }
    else {
      func_0x02023240(0x96000,0x456000,*(undefined4 *)(param_1 + 0x24));
      iVar3 = CreateCameraTranslationWrapper(4,*(undefined4 *)(param_1 + 0x24));
      param_2[6] = iVar3;
      SetCameraTranslationPath
                (iVar3,&ov01_02206428 + (uint)*(ushort *)((int)param_2 + 0x1e) * 0x14,0x18);
      *param_2 = *param_2 + 1;
    }
  }
  else if ((iVar3 == 0x65) && (iVar3 = IsCameraTranslationFinished(param_2[6]), iVar3 != 0)) {
    DeleteCameraTranslationWrapper(param_2[6]);
    *(undefined2 *)(param_2 + 7) = 1;
    *param_2 = 1;
  }
  if ((param_2[4] != 0) && ((short)param_2[7] == 0)) {
    ov01_021E95CC(*(undefined4 *)(param_1 + 0x24),(int)param_2 + 0xd);
  }
  return 0;
}

