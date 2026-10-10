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
undefined4 sub_02054B74(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021FB9E0(undefined4);
undefined4 MapObject_SetHeldMovement(undefined4, undefined4);
undefined4 MapPropOneShotAnimationManager_LoadPropAnimations(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 MapObject_AreBitsSetForMovementScriptInit(void);
undefined4 FieldMap_FadeScreen(undefined4);
undefined4 MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(undefined4, undefined4, undefined4, undefined4);
undefined4 MapObject_IsMovementPaused(void);
undefined4 sub_02054A60(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GF_AssertFail(void);
undefined4 PlayerAvatar_GetMapObject(undefined4);
undefined4 MapProp_GetRenderSurface(undefined4);
undefined4 MapProp_GetResModel(undefined4);
undefined4 MapPropOneShotAnimationManager_IsAnimationLoopFinished(undefined4, undefined4);
undefined4 IsPaletteFadeFinished(void);
undefined4 MapObject_ClearHeldMovementIfActive(undefined4);
undefined4 MapPropOneShotAnimationManager_UnloadAnimation(undefined4, undefined4, undefined4);
undefined4 ov01_02205790(undefined4, undefined4);
undefined4 func_0x02006154(undefined4, undefined4) __asm__("sub_02006154");

undefined4 ov01_021E971C(int param_1,int *param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined1 auStack_28 [16];
  undefined4 uStack_18;

  uStack_18 = param_4;
  switch(*param_2) {
  case 0:
    uStack_38 = 0xb;
    uStack_34 = 0xd;
    uStack_30 = 0xc;
    uStack_2c = 0xe;
    if (param_3 == 2) {
      sub_02054A60(param_2[1],param_2[2],0xffffffff,0,2,1,auStack_28);
    }
    else {
      sub_02054A60(param_2[1],param_2[2],0,0,2,1,auStack_28);
    }
    *(undefined1 *)(param_2 + 3) = 2;
    iVar3 = sub_02054B74(param_1,&uStack_38,4,auStack_28,&uStack_3c,&uStack_40);
    if (iVar3 == 0) {
      GF_AssertFail();
      return 1;
    }
    uVar2 = ov01_021FB9E0(*(undefined4 *)(param_1 + 0x34));
    uVar4 = MapProp_GetRenderSurface(uStack_3c);
    uVar1 = MapProp_GetResModel(uStack_3c);
    MapPropOneShotAnimationManager_LoadPropAnimations
              (*(undefined4 *)(param_1 + 0x54),*(undefined4 *)(param_1 + 0x58),2,uStack_40,uVar4,
               uVar1,uVar2,1,1,1);
    uVar2 = PlayerAvatar_GetMapObject(*(undefined4 *)(param_1 + 0x40));
    iVar3 = MapObject_AreBitsSetForMovementScriptInit();
    if (iVar3 == 1) {
      MapObject_SetHeldMovement(uVar2,0x49);
    }
    else {
      GF_AssertFail();
    }
    *param_2 = *param_2 + 1;
    break;
  case 1:
    FieldMap_FadeScreen(1);
    MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect
              (*(undefined4 *)(param_1 + 0x58),2,0,0x614);
    uVar2 = PlayerAvatar_GetMapObject(*(undefined4 *)(param_1 + 0x40));
    iVar3 = MapObject_AreBitsSetForMovementScriptInit();
    if (iVar3 == 1) {
      if (param_3 == 3) {
        uVar4 = 0xb;
      }
      else {
        uVar4 = 10;
      }
      MapObject_SetHeldMovement(uVar2,uVar4);
    }
    else {
      GF_AssertFail();
    }
    *param_2 = *param_2 + 1;
    break;
  case 2:
    uVar2 = PlayerAvatar_GetMapObject(*(undefined4 *)(param_1 + 0x40));
    iVar3 = MapObject_AreBitsSetForMovementScriptInit();
    if (iVar3 == 1) {
      MapObject_SetHeldMovement(uVar2,0x4a);
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    uVar2 = PlayerAvatar_GetMapObject(*(undefined4 *)(param_1 + 0x40));
    iVar3 = MapObject_AreBitsSetForMovementScriptInit();
    if (iVar3 == 1) {
      if (param_3 == 3) {
        uVar4 = 0xb;
      }
      else {
        uVar4 = 10;
      }
      MapObject_SetHeldMovement(uVar2,uVar4);
      *param_2 = *param_2 + 1;
    }
    break;
  case 4:
    uVar2 = PlayerAvatar_GetMapObject(*(undefined4 *)(param_1 + 0x40));
    iVar3 = MapObject_IsMovementPaused();
    if (iVar3 == 1) {
      MapObject_ClearHeldMovementIfActive(uVar2);
      ov01_02205790(param_1,param_3);
      *param_2 = *param_2 + 1;
    }
    break;
  case 5:
    iVar3 = MapPropOneShotAnimationManager_IsAnimationLoopFinished
                      (*(undefined4 *)(param_1 + 0x58),2);
    if ((iVar3 != 0) && (iVar3 = IsPaletteFadeFinished(), iVar3 != 0)) {
      MapPropOneShotAnimationManager_UnloadAnimation
                (*(undefined4 *)(param_1 + 0x54),*(undefined4 *)(param_1 + 0x58),2);
      func_0x02006154(0x614,0);
      return 1;
    }
  }
  return 0;
}

