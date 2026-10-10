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
undefined4 NARC_ReadWholeMember(undefined4, undefined4, undefined4);
undefined4 sub_02054D10(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021FB9E0(undefined4);
undefined4 NewFieldFadeEnvironment(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 FieldMap_FadeScreen(undefined4);
undefined4 MapPropOneShotAnimationManager_LoadPropAnimations(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 MapPropAnimationManager_GetPropAnimationCount(undefined4, undefined4);
undefined4 func_0x0202360c(undefined4) __asm__("sub_0202360C");
undefined4 ov01_021EA1F4(undefined4, undefined4);
undefined4 MapPropOneShotAnimationManager_GetAnimationMapPropModelID(undefined4, undefined4);
undefined4 ov01_021FB904(undefined4);
undefined4 sub_02054AE4(undefined4, undefined4, undefined4, undefined4);
undefined4 GetDoorSE(undefined4, undefined4, undefined4);
undefined4 Camera_AdjustPerspectiveAngle(undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 sub_02054A60(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 MapProp_GetRenderSurface(undefined4);
undefined4 MapProp_GetResModel(undefined4);
undefined4 MapPropOneShotAnimationManager_IsAnimationLoopFinished(undefined4, undefined4);
undefined4 ov01_021E9610(undefined4, undefined4);
undefined4 IsPaletteFadeFinished(void);
undefined4 MapObject_ClearHeldMovementIfActive(undefined4);
undefined4 MapObject_SetHeldMovement(undefined4, undefined4);
undefined4 MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(undefined4, undefined4, undefined4, undefined4);
undefined4 MapObject_IsMovementPaused(void);
undefined4 MapObject_SetVisible(undefined4, undefined4);
undefined4 ov01_02205790(undefined4, undefined4);
undefined4 PlayerAvatar_GetMapObject(undefined4);
undefined4 MapPropOneShotAnimationManager_UnloadAnimation(undefined4, undefined4, undefined4);

undefined4 ov01_021E9374(int param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  undefined2 uVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  uint uVar7;
  int iVar8;
  int *piVar9;
  int iStack_50;
  undefined4 uStack_44;
  undefined1 auStack_40 [4];
  char cStack_3c;
  undefined1 auStack_28 [16];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  switch(*param_2) {
  case 0:
    param_2[4] = 0;
    *(undefined1 *)((int)param_2 + 0xd) = 0;
    sub_02054A60(param_2[1],param_2[2],0xffffffff,0,3,1,auStack_28);
    *(undefined1 *)(param_2 + 3) = 1;
    bVar1 = false;
    uVar6 = ov01_021FB904(*(undefined4 *)(param_1 + 0x34));
    piVar3 = (int *)sub_02054D10(param_1,4,4,auStack_28,0);
    iVar8 = 0;
    piVar9 = piVar3;
    do {
      if ((*piVar9 != 0) && (NARC_ReadWholeMember(uVar6,*piVar9,auStack_40), cStack_3c != '\0')) {
        sub_02054AE4(param_1,piVar3[iVar8],auStack_28,&uStack_44);
        bVar1 = true;
        iStack_50 = piVar3[iVar8];
        break;
      }
      iVar8 = iVar8 + 1;
      piVar9 = piVar9 + 1;
    } while (iVar8 < 4);
    Heap_Free(piVar3);
    if (!bVar1) {
      FieldMap_FadeScreen(1);
      *param_2 = 6;
      return 0;
    }
    iVar8 = MapPropAnimationManager_GetPropAnimationCount(*(undefined4 *)(param_1 + 0x54),iStack_50)
    ;
    if (iVar8 == 0) {
      FieldMap_FadeScreen(1);
      *param_2 = 6;
      return 0;
    }
    uVar6 = ov01_021FB9E0(*(undefined4 *)(param_1 + 0x34));
    uVar4 = MapProp_GetRenderSurface(uStack_44);
    uVar5 = MapProp_GetResModel(uStack_44);
    MapPropOneShotAnimationManager_LoadPropAnimations
              (*(undefined4 *)(param_1 + 0x54),*(undefined4 *)(param_1 + 0x58),1,iStack_50,uVar4,
               uVar5,uVar6,iVar8,1,0);
    uVar2 = func_0x0202360c(*(undefined4 *)(param_1 + 0x24));
    *(undefined2 *)((int)param_2 + 0xe) = uVar2;
    iVar8 = ov01_021EA1F4(param_1,iStack_50);
    if (iVar8 == 0) {
      Camera_AdjustPerspectiveAngle(0xffa0,*(undefined4 *)(param_1 + 0x24));
    }
    *param_2 = *param_2 + 1;
    break;
  case 1:
    NewFieldFadeEnvironment(*(undefined4 *)(param_1 + 0x10),0,9,1,0,6,1,0xb);
    uVar6 = MapPropOneShotAnimationManager_GetAnimationMapPropModelID
                      (*(undefined4 *)(param_1 + 0x58),1);
    iVar8 = ov01_021EA1F4(param_1,uVar6);
    if (iVar8 == 0) {
      param_2[4] = 1;
    }
    uVar6 = GetDoorSE(param_1,uVar6,1);
    MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect
              (*(undefined4 *)(param_1 + 0x58),1,0,uVar6);
    *param_2 = *param_2 + 1;
    break;
  case 2:
    iVar8 = MapPropOneShotAnimationManager_IsAnimationLoopFinished
                      (*(undefined4 *)(param_1 + 0x58),1);
    if (iVar8 != 0) {
      uVar6 = PlayerAvatar_GetMapObject(*(undefined4 *)(param_1 + 0x40));
      MapObject_SetVisible(uVar6,0);
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    uVar6 = PlayerAvatar_GetMapObject(*(undefined4 *)(param_1 + 0x40));
    MapObject_SetHeldMovement(uVar6,0xd);
    *param_2 = *param_2 + 1;
    break;
  case 4:
    uVar6 = PlayerAvatar_GetMapObject(*(undefined4 *)(param_1 + 0x40));
    iVar8 = MapObject_IsMovementPaused();
    if (iVar8 == 1) {
      MapObject_ClearHeldMovementIfActive(uVar6);
      ov01_02205790(param_1,1);
      uVar6 = MapPropOneShotAnimationManager_GetAnimationMapPropModelID
                        (*(undefined4 *)(param_1 + 0x58),1);
      uVar6 = GetDoorSE(param_1,uVar6,0);
      MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect
                (*(undefined4 *)(param_1 + 0x58),1,1,uVar6);
      *param_2 = *param_2 + 1;
    }
    break;
  case 5:
    iVar8 = MapPropOneShotAnimationManager_IsAnimationLoopFinished
                      (*(undefined4 *)(param_1 + 0x58),1);
    if (((iVar8 != 0) && (iVar8 = IsPaletteFadeFinished(), iVar8 != 0)) &&
       (uVar7 = func_0x0202360c(*(undefined4 *)(param_1 + 0x24)),
       *(ushort *)((int)param_2 + 0xe) == uVar7)) {
      MapPropOneShotAnimationManager_UnloadAnimation
                (*(undefined4 *)(param_1 + 0x54),*(undefined4 *)(param_1 + 0x58),1);
      return 1;
    }
    break;
  case 6:
    iVar8 = IsPaletteFadeFinished();
    if (iVar8 != 0) {
      return 1;
    }
  }
  if (param_2[4] != 0) {
    ov01_021E9610(*(undefined4 *)(param_1 + 0x24),(int)param_2 + 0xd);
  }
  return 0;
}

