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
void * func_0x02233db8(void *) __asm__("sub_02233DB8");
undefined4 Sprite_DeleteAndFreeResources(void *);
void * BattleSystem_GetSpriteSystem(void *);
undefined4 func_0x022344c0() __asm__("sub_022344C0");
undefined4 func_0x02233f20(void *) __asm__("sub_02233F20");
undefined4 BattleSystem_GetBattleType();
undefined4 ManagedSprite_SetAnimateFlag(void *, int);
undefined4 ManagedSprite_GetPositionXY(void *, void *, void *);
undefined4 func_0x022344d0() __asm__("sub_022344D0");
undefined4 func_0x022344c4() __asm__("sub_022344C4");
void * BattleSystem_GetSpriteManager(void *);
undefined4 BattleSystem_GetPaletteData();
undefined4 SpriteManager_UnloadCharObjById();
undefined4 ManagedSprite_SetAnimationFrame();
undefined4 ManagedSprite_SetAnim(void *, int);
undefined4 ManagedSprite_OffsetPositionXY(void *, short, short);
undefined4 SpriteManager_UnloadPlttObjById(void *, unsigned int);
unsigned short ManagedSprite_GetAnimationFrame(void *);
undefined4 SpriteManager_UnloadCellObjById(void *, unsigned int);
void * BattleSystem_GetOpponentData(void *, int);
undefined4 BattleSystem_GetBattlerIdPartner(void *, int);
undefined4 func_0x022344a8() __asm__("sub_022344A8");
undefined4 func_0x022344dc() __asm__("sub_022344DC");
undefined4 func_0x0223449c() __asm__("sub_0223449C");
undefined4 SpriteManager_UnloadAnimObjById(void *, unsigned int);
undefined4 func_0x02233efc() __asm__("sub_02233EFC");
undefined4 SysTask_Destroy(void *);
undefined4 func_0x02233e88() __asm__("sub_02233E88");
undefined4 ov12_0226430C();
undefined4 func_0x02233ecc(void *) __asm__("sub_02233ECC");
undefined4 PlaySE(unsigned short);
undefined4 Heap_Free(void *);

void ov12_0225D138(undefined *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined *puVar4;
  int iVar5;
  int iVar6;
  short sStack_44;
  short sStack_42;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  uint uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_28;
  undefined *puStack_24;
  undefined *puStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  uVar2 = BattleSystem_GetBattleType((undefined *)*param_2);
  switch(*(undefined1 *)((int)param_2 + 10)) {
  case 0:
    if (param_2[4] != 0) {
      switch(param_2[4]) {
      default:
        uStack_40 = 0xf;
        param_2[6] = 3;
        uStack_30 = 5;
        break;
      case 2:
        uStack_40 = 0xc;
        param_2[6] = 0;
        uStack_30 = 0x401;
        break;
      case 3:
        uStack_40 = 0xd;
        param_2[6] = 0;
        uStack_30 = 0x402;
        break;
      case 4:
        uStack_40 = 0xf;
        param_2[6] = 3;
        uStack_30 = 0x400;
      }
      uStack_3c = 5;
      uStack_38 = 4;
      uStack_34 = (uint)*(byte *)((int)param_2 + 9);
      puStack_24 = BattleSystem_GetSpriteSystem((undefined *)*param_2);
      puStack_20 = BattleSystem_GetPaletteData((undefined *)*param_2);
      uStack_28 = 0;
      uStack_1c = *param_2;
      uVar3 = func_0x02233db8(&uStack_40);
      *(undefined4 *)(param_2[1] + 0x88) = uVar3;
      func_0x022344c4(*(undefined4 *)(param_2[1] + 0x88),100);
      func_0x022344d0(*(undefined4 *)(param_2[1] + 0x88),2);
      func_0x022344c0(*(undefined4 *)(param_2[1] + 0x88),0);
      ManagedSprite_SetAnimationFrame(*(undefined **)(param_2[1] + 0x18),0);
      ManagedSprite_SetAnim(*(undefined **)(param_2[1] + 0x18),1);
      ManagedSprite_SetAnimateFlag(*(undefined **)(param_2[1] + 0x18),1);
      *(undefined1 *)((int)param_2 + 10) = 3;
      return;
    }
    *(undefined1 *)((int)param_2 + 10) = 1;
    return;
  case 1:
    if (*(char *)((int)param_2 + 0xb) != '\x02') {
      ManagedSprite_SetAnimationFrame(*(undefined **)(param_2[1] + 0x18),0);
      ManagedSprite_SetAnim(*(undefined **)(param_2[1] + 0x18),1);
      ManagedSprite_SetAnimateFlag(*(undefined **)(param_2[1] + 0x18),1);
      *(undefined1 *)((int)param_2 + 10) = 2;
      return;
    }
    ManagedSprite_OffsetPositionXY(*(undefined **)(param_2[1] + 0x18),5,0);
    ManagedSprite_GetPositionXY
              (*(undefined **)(param_2[1] + 0x18),(undefined *)&sStack_42,(undefined *)&sStack_44);
    if ((sStack_42 < 0xa0) ||
       (iVar5 = func_0x02233f20(*(undefined4 *)(param_2[1] + 0x88)), iVar5 == 0)) {
      if (0x127 < sStack_42) {
        puVar4 = BattleSystem_GetSpriteManager((undefined *)*param_2);
        Sprite_DeleteAndFreeResources(*(undefined **)(param_2[1] + 0x18));
        *(undefined4 *)(param_2[1] + 0x18) = 0;
        SpriteManager_UnloadCharObjById(puVar4,*(byte *)(param_2[1] + 0x195) + 0x4e2f);
        SpriteManager_UnloadPlttObjById(puVar4,*(byte *)(param_2[1] + 0x195) + 0x4e2a);
        SpriteManager_UnloadCellObjById(puVar4,*(byte *)(param_2[1] + 0x195) + 0x4e27);
        SpriteManager_UnloadAnimObjById(puVar4,*(byte *)(param_2[1] + 0x195) + 0x4e27);
        *(undefined1 *)((int)param_2 + 10) = 6;
        return;
      }
    }
    else {
      func_0x0223449c(*(undefined4 *)(param_2[1] + 0x88),1);
      func_0x02233efc(*(undefined4 *)(param_2[1] + 0x88),0);
      if (((uVar2 & 2) != 0) && ((uVar2 & 8) == 0)) {
        iVar5 = BattleSystem_GetBattlerIdPartner
                          ((undefined *)*param_2,(uint)*(byte *)((int)param_2 + 9));
        puVar4 = BattleSystem_GetOpponentData((undefined *)*param_2,iVar5);
        func_0x0223449c(*(undefined4 *)(puVar4 + 0x88),1);
        func_0x02233efc(*(undefined4 *)(puVar4 + 0x88),0);
        func_0x022344dc(*(undefined4 *)(puVar4 + 0x88),0xc);
        return;
      }
    }
    break;
  case 2:
    ManagedSprite_OffsetPositionXY(*(undefined **)(param_2[1] + 0x18),-5,0);
    ManagedSprite_GetPositionXY
              (*(undefined **)(param_2[1] + 0x18),(undefined *)&sStack_42,(undefined *)&sStack_44);
    if (*(int *)(param_2[1] + 0x88) != 0) {
      uVar1 = ManagedSprite_GetAnimationFrame(*(undefined **)(param_2[1] + 0x18));
      iVar5 = (uint)uVar1 * 4;
      if (*(short *)(iVar5 + param_2[3] * 0x18 + 0x226d1e8) != 0x7fff) {
        func_0x0223449c(*(undefined4 *)(param_2[1] + 0x88),1);
        func_0x022344a8(*(undefined4 *)(param_2[1] + 0x88),
                        ((int)sStack_42 + (int)*(short *)(iVar5 + param_2[3] * 0x18 + 0x226d1e8)) *
                        0x10000 >> 0x10,
                        ((int)sStack_44 + (int)*(short *)(iVar5 + param_2[3] * 0x18 + 0x226d1ea)) *
                        0x10000 >> 0x10);
        if ((uVar1 == 3) &&
           (iVar5 = func_0x02233f20(*(undefined4 *)(param_2[1] + 0x88)), iVar5 != 0)) {
          func_0x02233efc(*(undefined4 *)(param_2[1] + 0x88),0);
          func_0x022344c0(*(undefined4 *)(param_2[1] + 0x88),1);
          if (((uVar2 & 2) != 0) && ((uVar2 & 8) == 0)) {
            iVar5 = BattleSystem_GetBattlerIdPartner
                              ((undefined *)*param_2,(uint)*(byte *)((int)param_2 + 9));
            puVar4 = BattleSystem_GetOpponentData((undefined *)*param_2,iVar5);
            func_0x022344a8(*(undefined4 *)(puVar4 + 0x88),
                            ((int)sStack_42 + (int)*(short *)(param_2[3] * 0x18 + 0x226d1f4)) *
                            0x10000 >> 0x10,
                            ((int)sStack_44 + (int)*(short *)(param_2[3] * 0x18 + 0x226d1f6)) *
                            0x10000 >> 0x10);
            func_0x0223449c(*(undefined4 *)(puVar4 + 0x88),1);
            func_0x02233efc(*(undefined4 *)(puVar4 + 0x88),0);
            func_0x022344c0(*(undefined4 *)(puVar4 + 0x88),1);
          }
        }
      }
    }
    if (sStack_42 < -0x27) {
      puVar4 = BattleSystem_GetSpriteManager((undefined *)*param_2);
      Sprite_DeleteAndFreeResources(*(undefined **)(param_2[1] + 0x18));
      *(undefined4 *)(param_2[1] + 0x18) = 0;
      SpriteManager_UnloadCharObjById(puVar4,*(byte *)(param_2[1] + 0x195) + 0x4e2f);
      SpriteManager_UnloadPlttObjById(puVar4,*(byte *)(param_2[1] + 0x195) + 0x4e2a);
      SpriteManager_UnloadCellObjById(puVar4,*(byte *)(param_2[1] + 0x195) + 0x4e27);
      SpriteManager_UnloadAnimObjById(puVar4,*(byte *)(param_2[1] + 0x195) + 0x4e27);
      *(undefined1 *)((int)param_2 + 10) = 6;
      return;
    }
    break;
  case 3:
    ManagedSprite_GetPositionXY
              (*(undefined **)(param_2[1] + 0x18),(undefined *)&sStack_42,(undefined *)&sStack_44);
    uVar1 = ManagedSprite_GetAnimationFrame(*(undefined **)(param_2[1] + 0x18));
    uVar2 = (uint)uVar1;
    if (uVar2 == 4) {
      param_2[5] = 8;
      *(undefined1 *)((int)param_2 + 10) = 4;
      return;
    }
    if (*(int *)(param_2[1] + 0x88) != 0) {
      iVar5 = (int)*(short *)(uVar2 * 4 + param_2[3] * 0x18 + 0x226d1e8);
      if ((iVar5 != 0x7fff) &&
         (func_0x022344a8(*(int *)(param_2[1] + 0x88),(sStack_42 + iVar5) * 0x10000 >> 0x10,
                          ((int)sStack_44 +
                          (int)*(short *)(uVar2 * 4 + param_2[3] * 0x18 + 0x226d1ea)) * 0x10000 >>
                          0x10), uVar2 == 3)) {
        iVar6 = param_2[6];
        iVar5 = func_0x02233f20(*(undefined4 *)(param_2[1] + 0x88));
        if (iVar6 != iVar5) {
          func_0x02233efc(*(undefined4 *)(param_2[1] + 0x88),iVar6);
          func_0x022344d0(*(undefined4 *)(param_2[1] + 0x88),1);
          func_0x022344c0(*(undefined4 *)(param_2[1] + 0x88),1);
          if (param_2[6] != 3) {
            PlaySE(0x70a);
            return;
          }
        }
      }
    }
    break;
  case 4:
    iVar5 = param_2[5];
    param_2[5] = iVar5 + -1;
    if (iVar5 + -1 == 0) {
      if (param_2[6] == 3) {
        *(undefined1 *)((int)param_2 + 10) = 6;
        return;
      }
      *(undefined1 *)((int)param_2 + 10) = 5;
      return;
    }
    break;
  case 5:
    iVar5 = func_0x02233e88(*(undefined4 *)(param_2[1] + 0x88));
    if (iVar5 != 1) {
      func_0x02233ecc(*(undefined4 *)(param_2[1] + 0x88));
      *(undefined4 *)(param_2[1] + 0x88) = 0;
      *(undefined1 *)((int)param_2 + 10) = 6;
      return;
    }
    break;
  case 6:
    ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 9),*(undefined1 *)(param_2 + 2));
    Heap_Free((undefined *)param_2);
    SysTask_Destroy(param_1);
  }
  return;
}

