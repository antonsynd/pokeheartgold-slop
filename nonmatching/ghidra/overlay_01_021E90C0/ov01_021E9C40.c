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
undefined4 MapObject_SetVisible();
undefined4 func_0x0202360c() __asm__("sub_0202360C");
undefined4 Camera_AdjustPerspectiveAngle();
undefined4 ov01_021FB9E0();
undefined4 PlayerAvatar_GetFacingDirection();
undefined4 PlayerAvatar_GetMapObject();
undefined4 TaskManager_GetFieldSystem();
undefined4 BeginNormalPaletteFade();
undefined4 TaskManager_GetEnvironment();
undefined4 MapProp_GetRenderSurface();
undefined4 MapProp_GetResModel();
undefined4 Heap_Free();
undefined4 sub_02054AE4();
undefined4 sub_02054D10();
undefined4 NARC_ReadWholeMember();
undefined4 MapPropAnimationManager_GetPropAnimationCount();
undefined4 ov01_021FB904();
undefined4 MapPropOneShotAnimationManager_LoadPropAnimations();
undefined4 sub_02054A60();
undefined4 ov01_02205790();
undefined4 IsPaletteFadeFinished();
undefined4 MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect();
undefined4 GetDoorSE();
undefined4 MapPropOneShotAnimationManager_IsAnimationLoopFinished();
undefined4 MapObject_IsMovementPaused();
undefined4 ov01_021E9610();
undefined4 MapObject_ClearHeldMovementIfActive();
undefined4 MapPropOneShotAnimationManager_GetAnimationMapPropModelID();
undefined4 MapObject_SetHeldMovement();
undefined4 MapPropOneShotAnimationManager_UnloadAnimation();

undefined4 ov01_021E9C40(undefined4 param_1)

{
  bool bVar1;
  undefined2 uVar2;
  int iVar3;
  int *piVar4;
  undefined4 uVar5;
  int *piVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  int iVar9;
  uint uVar10;
  int *piVar11;
  int iStack_50;
  undefined4 uStack_40;
  undefined1 auStack_3c [4];
  char cStack_38;
  undefined1 auStack_24 [16];
  
  iVar3 = TaskManager_GetFieldSystem();
  piVar4 = (int *)TaskManager_GetEnvironment(param_1);
  switch(*piVar4) {
  case 0:
    uVar8 = PlayerAvatar_GetMapObject(*(undefined4 *)(iVar3 + 0x40));
    piVar4[4] = 0;
    *(undefined1 *)((int)piVar4 + 0xd) = 0;
    uVar2 = func_0x0202360c(*(undefined4 *)(iVar3 + 0x24));
    *(undefined2 *)((int)piVar4 + 0xe) = uVar2;
    Camera_AdjustPerspectiveAngle(0xffa0,*(undefined4 *)(iVar3 + 0x24));
    BeginNormalPaletteFade(0,1,1,0x7fff,6,1,0xb);
    piVar4[4] = 1;
    iVar9 = PlayerAvatar_GetFacingDirection(*(undefined4 *)(iVar3 + 0x40));
    if (iVar9 == 1) {
      *(undefined1 *)(piVar4 + 3) = 1;
      bVar1 = false;
      sub_02054A60(piVar4[1],piVar4[2],0xffffffff,0,3,1,auStack_24);
      uVar5 = ov01_021FB904(*(undefined4 *)(iVar3 + 0x34));
      piVar6 = (int *)sub_02054D10(iVar3,4,4,auStack_24,0);
      iVar9 = 0;
      piVar11 = piVar6;
      do {
        if ((*piVar11 != 0) && (NARC_ReadWholeMember(uVar5,*piVar11,auStack_3c), cStack_38 != '\0'))
        {
          sub_02054AE4(iVar3,piVar6[iVar9],auStack_24,&uStack_40);
          bVar1 = true;
          iStack_50 = piVar6[iVar9];
          break;
        }
        iVar9 = iVar9 + 1;
        piVar11 = piVar11 + 1;
      } while (iVar9 < 4);
      Heap_Free(piVar6);
      if (bVar1) {
        iVar9 = MapPropAnimationManager_GetPropAnimationCount
                          (*(undefined4 *)(iVar3 + 0x54),iStack_50);
        if (iVar9 == 0) {
          return 0;
        }
        uVar8 = ov01_021FB9E0(*(undefined4 *)(iVar3 + 0x34));
        uVar5 = MapProp_GetRenderSurface(uStack_40);
        uVar7 = MapProp_GetResModel(uStack_40);
        MapPropOneShotAnimationManager_LoadPropAnimations
                  (*(undefined4 *)(iVar3 + 0x54),*(undefined4 *)(iVar3 + 0x58),1,iStack_50,uVar5,
                   uVar7,uVar8,iVar9,1,0);
        *piVar4 = 4;
        break;
      }
    }
    iVar9 = PlayerAvatar_GetFacingDirection(*(undefined4 *)(iVar3 + 0x40));
    if (iVar9 == 1) {
      MapObject_SetVisible(uVar8,1);
      *piVar4 = 1;
    }
    else {
      MapObject_SetVisible(uVar8,0);
      *piVar4 = 3;
    }
    break;
  case 1:
    uVar8 = PlayerAvatar_GetMapObject(*(undefined4 *)(iVar3 + 0x40));
    MapObject_SetVisible(uVar8,0);
    MapObject_SetHeldMovement(uVar8,0xd);
    *piVar4 = *piVar4 + 1;
    break;
  case 2:
    uVar8 = PlayerAvatar_GetMapObject(*(undefined4 *)(iVar3 + 0x40));
    iVar9 = MapObject_IsMovementPaused();
    if (iVar9 == 1) {
      MapObject_ClearHeldMovementIfActive(uVar8);
      *piVar4 = *piVar4 + 1;
    }
    break;
  case 3:
    iVar9 = IsPaletteFadeFinished();
    if ((iVar9 != 0) &&
       (uVar10 = func_0x0202360c(*(undefined4 *)(iVar3 + 0x24)),
       *(ushort *)((int)piVar4 + 0xe) == uVar10)) {
      return 1;
    }
    break;
  case 4:
    uVar8 = MapPropOneShotAnimationManager_GetAnimationMapPropModelID
                      (*(undefined4 *)(iVar3 + 0x58),1);
    uVar8 = GetDoorSE(iVar3,uVar8,1);
    MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect
              (*(undefined4 *)(iVar3 + 0x58),1,0,uVar8);
    *piVar4 = 5;
    break;
  case 5:
    iVar9 = MapPropOneShotAnimationManager_IsAnimationLoopFinished(*(undefined4 *)(iVar3 + 0x58),1);
    if (iVar9 != 0) {
      uVar8 = PlayerAvatar_GetMapObject(*(undefined4 *)(iVar3 + 0x40));
      MapObject_SetVisible(uVar8,0);
      *piVar4 = 6;
    }
    break;
  case 6:
    uVar8 = PlayerAvatar_GetMapObject(*(undefined4 *)(iVar3 + 0x40));
    MapObject_SetHeldMovement(uVar8,0xd);
    *piVar4 = 7;
    break;
  case 7:
    uVar8 = PlayerAvatar_GetMapObject(*(undefined4 *)(iVar3 + 0x40));
    iVar9 = MapObject_IsMovementPaused();
    if (iVar9 == 1) {
      MapObject_ClearHeldMovementIfActive(uVar8);
      ov01_02205790(iVar3,1);
      uVar8 = MapPropOneShotAnimationManager_GetAnimationMapPropModelID
                        (*(undefined4 *)(iVar3 + 0x58),1);
      uVar8 = GetDoorSE(iVar3,uVar8,0);
      MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect
                (*(undefined4 *)(iVar3 + 0x58),1,1,uVar8);
      *piVar4 = *piVar4 + 1;
    }
    break;
  case 8:
    iVar9 = MapPropOneShotAnimationManager_IsAnimationLoopFinished(*(undefined4 *)(iVar3 + 0x58),1);
    if (((iVar9 != 0) && (iVar9 = IsPaletteFadeFinished(), iVar9 != 0)) &&
       (uVar10 = func_0x0202360c(*(undefined4 *)(iVar3 + 0x24)),
       *(ushort *)((int)piVar4 + 0xe) == uVar10)) {
      MapPropOneShotAnimationManager_UnloadAnimation
                (*(undefined4 *)(iVar3 + 0x54),*(undefined4 *)(iVar3 + 0x58),1);
      return 1;
    }
  }
  if (piVar4[4] != 0) {
    ov01_021E9610(*(undefined4 *)(iVar3 + 0x24),(int)piVar4 + 0xd);
  }
  return 0;
}

