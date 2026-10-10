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
undefined4 BattleSystem_GetBattleInput(undefined4);
undefined4 BattleSystem_GetHpBar(undefined4);
undefined4 BattleSystem_GetTrainerIndex(undefined4, undefined4);
undefined4 ov12_02261FD4(undefined4, undefined4);
undefined4 TextPrinterCheckActive(undefined4);
undefined4 BattleSystem_GetBattleType(undefined4);
undefined4 BattleSystem_GetMessageLoader(undefined4);
undefined4 BattleSystem_GetTrainerGender(undefined4);
undefined4 BattleInput_LoadFightMenuText(undefined4, undefined4, undefined4);
undefined4 BattleSystem_GetOpponentData(undefined4, undefined4);
undefined4 ov12_0223BB04(undefined4);
undefined4 BattleSystem_GetBgConfig(undefined4);
undefined4 BattleSystem_GetBattlerIdPartner(undefined4, undefined4);
undefined4 BattleSystem_GetTextFrameDelay(undefined4);
undefined4 ov12_02264E84(undefined4);
undefined4 BattleSystem_PrintBattleMessage(undefined4, undefined4, undefined4, undefined4);
undefined4 ov12_0223B580(undefined4, undefined4, undefined4);
undefined4 NARC_New(undefined4, undefined4);
undefined4 BattleInput_CheckFeedbackDone(undefined4);
undefined4 ov12_0223BB64(undefined4, undefined4);
undefined4 BattleSystem_GetBattleSpecial(undefined4);
undefined4 BattleInput_ChangeMenu(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 BattleInput_Deadstriped_022698AC(undefined4, undefined4);
undefined4 PlaySE(undefined4);
undefined4 GF_AssertFail(void);
undefined4 ov12_02264EB4(undefined4);
undefined4 ov12_02262014(undefined4);
undefined4 BattleInput_SetPartyExpPercents(undefined4, undefined4);
undefined4 ov12_02264C84(undefined4);
undefined4 BattleInput_GetCancelRunFlag(undefined4);
undefined4 ov12_02265D70(void);
undefined4 BattleSystem_GetMaxBattlers(undefined4);
undefined4 BattleInput_CheckTouch(undefined4);
undefined4 NARC_Delete(undefined4);
undefined4 BattleInput_UpdateBallGaugeAnimation(undefined4, undefined4, undefined4);
undefined4 BattleInput_EnableBallGauge(undefined4);
undefined4 ov12_02265D74(undefined4);
extern undefined4 uRam021d1154 __asm__("sub_021D1154");
undefined4 ov12_0226430C(undefined4, undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 BattleInput_DisableBallGauge(undefined4);
undefined4 SysTask_Destroy(undefined4);
undefined4 ov12_02262F24(undefined4, undefined4, undefined4);
undefined4 ov12_022698B0(undefined4);

void ov12_0225DAD4(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 *puVar10;
  undefined2 *puVar11;
  int iStack_68;
  char cStack_60;
  undefined1 uStack_5f;
  undefined1 uStack_5e;
  undefined1 uStack_5d;
  undefined2 uStack_5c;
  undefined2 uStack_5a;
  undefined1 uStack_58;
  undefined1 uStack_54;
  undefined1 uStack_53;
  short sStack_52;
  uint uStack_50;
  undefined2 auStack_30 [4];
  ushort auStack_28 [4];
  ushort auStack_20 [4];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  BattleSystem_GetBgConfig(*param_2);
  uVar3 = BattleSystem_GetBattleInput(*param_2);
  iVar4 = BattleSystem_GetOpponentData(*param_2,*(undefined1 *)((int)param_2 + 9));
  uVar5 = BattleSystem_GetBattleType(*param_2);
  uVar6 = BattleSystem_GetBattlerIdPartner(*param_2,*(undefined1 *)((int)param_2 + 9));
  if (uVar6 == *(byte *)((int)param_2 + 9)) {
    iStack_68 = 0;
  }
  else {
    iStack_68 = BattleSystem_GetHpBar(*param_2);
  }
  switch(*(undefined1 *)((int)param_2 + 10)) {
  case 0:
    iVar4 = 0;
    puVar11 = auStack_30;
    puVar10 = param_2;
    do {
      puVar1 = puVar10 + 9;
      puVar10 = (undefined4 *)((int)puVar10 + 2);
      *puVar11 = *(undefined2 *)puVar1;
      puVar11[4] = (ushort)*(byte *)((int)param_2 + iVar4 + 0x2c);
      iVar7 = iVar4 + 0x30;
      iVar4 = iVar4 + 1;
      puVar11[8] = (ushort)*(byte *)((int)param_2 + iVar7);
      puVar11 = puVar11 + 1;
    } while (iVar4 < 4);
    uVar3 = BattleSystem_GetBattleInput(*param_2);
    BattleInput_LoadFightMenuText(uVar3,*(undefined1 *)(param_2 + 0xd),auStack_30);
    *(char *)((int)param_2 + 10) = *(char *)((int)param_2 + 10) + '\x01';
  case 1:
    uVar3 = BattleSystem_GetMessageLoader(*param_2);
    if ((uVar5 & 0x400) == 0) {
      if ((uVar5 & 0x20) == 0) {
        if ((uVar5 & 0x200) == 0) {
          uStack_53 = 2;
          uStack_50 = (uint)CONCAT11(*(undefined1 *)((int)param_2 + 0x23),
                                     *(undefined1 *)((int)param_2 + 9));
          sStack_52 = 0x399;
        }
        else {
          uStack_53 = 8;
          uStack_50 = BattleSystem_GetTrainerIndex(*param_2,*(undefined1 *)((int)param_2 + 9));
          sStack_52 = 0x4c6;
        }
      }
      else {
        uStack_53 = 8;
        uStack_50 = BattleSystem_GetTrainerIndex(*param_2,*(undefined1 *)((int)param_2 + 9));
        sStack_52 = 0x39a;
      }
      BattleSystem_PrintBattleMessage(*param_2,uVar3,&uStack_54,0);
      *(undefined1 *)((int)param_2 + 10) = 3;
      return;
    }
    iVar4 = ov12_0223BB04(*param_2);
    if (iVar4 != 0) {
      if (iVar4 != 1) {
        return;
      }
      uStack_53 = 0;
      sStack_52 = BattleSystem_GetTrainerGender(*param_2);
      sStack_52 = sStack_52 + 0x4ca;
      uVar8 = BattleSystem_GetTextFrameDelay(*param_2);
      uVar2 = BattleSystem_PrintBattleMessage(*param_2,uVar3,&uStack_54,uVar8);
      *(undefined1 *)((int)param_2 + 0x35) = uVar2;
      *(undefined1 *)((int)param_2 + 10) = 2;
      return;
    }
    uStack_53 = 2;
    uStack_50 = (uint)CONCAT11(*(undefined1 *)((int)param_2 + 0x23),
                               *(undefined1 *)((int)param_2 + 9));
    sStack_52 = 0x399;
    BattleSystem_PrintBattleMessage(*param_2,uVar3,&uStack_54,0);
    *(undefined1 *)((int)param_2 + 10) = 3;
    return;
  case 2:
    iVar4 = TextPrinterCheckActive(*(undefined1 *)((int)param_2 + 0x35));
    if (iVar4 == 0) {
      *(undefined1 *)((int)param_2 + 10) = 3;
      return;
    }
    break;
  case 3:
    ov12_02264E84(param_2[1]);
    ov12_02261FD4(iVar4,*param_2);
    *(undefined1 *)((int)param_2 + 10) = 4;
  case 4:
    iVar7 = BattleInput_CheckFeedbackDone(uVar3);
    if (iVar7 != 0) {
      uVar8 = NARC_New(7,5);
      uVar9 = NARC_New(8,5);
      uStack_5f = *(undefined1 *)((int)param_2 + 9);
      cStack_60 = *(char *)(param_2 + 0xd);
      uStack_5e = *(undefined1 *)((int)param_2 + 0x23);
      uStack_5c = *(undefined2 *)((int)param_2 + 0x36);
      uStack_5a = *(undefined2 *)(param_2 + 0xe);
      uStack_5d = *(undefined1 *)((int)param_2 + 0x3a);
      uStack_58 = ov12_0223B580(*param_2,*(undefined1 *)((int)param_2 + 9),
                                *(undefined1 *)((int)param_2 + 0x3b));
      if (*(char *)(iVar4 + 0x197) == '\0') {
        uVar5 = BattleSystem_GetBattleSpecial(*param_2);
        if ((uVar5 & 1) == 0) {
          uVar5 = BattleSystem_GetBattleType(*param_2);
          if ((uVar5 & 0x200) == 0) {
            uVar5 = BattleSystem_GetBattleType(*param_2);
            if ((uVar5 & 0x20) == 0) {
              uVar5 = BattleSystem_GetBattleType(*param_2);
              if ((uVar5 & 0x1000) == 0) {
                if (cStack_60 == '\x04') {
                  BattleInput_ChangeMenu(uVar8,uVar9,uVar3,2,0,&cStack_60);
                }
                else {
                  BattleInput_ChangeMenu(uVar8,uVar9,uVar3,1,0,&cStack_60);
                }
              }
              else {
                BattleInput_ChangeMenu(uVar8,uVar9,uVar3,0x13,0,&cStack_60);
              }
            }
            else {
              BattleInput_ChangeMenu(uVar8,uVar9,uVar3,7,0,&cStack_60);
            }
          }
          else {
            BattleInput_ChangeMenu(uVar8,uVar9,uVar3,9,0,&cStack_60);
          }
        }
        else {
          BattleInput_ChangeMenu(uVar8,uVar9,uVar3,5,0,&cStack_60);
        }
        *(undefined1 *)(iVar4 + 0x197) = 1;
      }
      else {
        BattleInput_Deadstriped_022698AC(uVar3,1);
        uVar5 = BattleSystem_GetBattleSpecial(*param_2);
        if ((uVar5 & 1) == 0) {
          uVar5 = BattleSystem_GetBattleType(*param_2);
          if ((uVar5 & 0x200) == 0) {
            uVar5 = BattleSystem_GetBattleType(*param_2);
            if ((uVar5 & 0x20) == 0) {
              uVar5 = BattleSystem_GetBattleType(*param_2);
              if ((uVar5 & 0x1000) == 0) {
                if ((cStack_60 == '\x04') &&
                   (uVar5 = BattleSystem_GetBattleType(*param_2), (uVar5 & 8) == 0)) {
                  BattleInput_ChangeMenu(uVar8,uVar9,uVar3,4,0,&cStack_60);
                }
                else {
                  BattleInput_ChangeMenu(uVar8,uVar9,uVar3,3,0,&cStack_60);
                }
              }
              else {
                BattleInput_ChangeMenu(uVar8,uVar9,uVar3,0x14,0,&cStack_60);
              }
            }
            else {
              BattleInput_ChangeMenu(uVar8,uVar9,uVar3,8,0,&cStack_60);
            }
          }
          else {
            BattleInput_ChangeMenu(uVar8,uVar9,uVar3,10,0,&cStack_60);
          }
        }
        else {
          BattleInput_ChangeMenu(uVar8,uVar9,uVar3,6,0,&cStack_60);
        }
        ov12_0223BB64(*param_2,1);
      }
      BattleInput_SetPartyExpPercents(uVar3,param_2 + 7);
      BattleInput_UpdateBallGaugeAnimation(uVar3,param_2 + 4,(int)param_2 + 0x16);
      BattleInput_EnableBallGauge(uVar3);
      NARC_Delete(uVar8);
      NARC_Delete(uVar9);
      if (iStack_68 != 0) {
        ov12_02265D70();
      }
      *(undefined1 *)((int)param_2 + 10) = 5;
      return;
    }
    break;
  case 5:
    if ((uRam021d1154 & 8) != 0) {
      iVar7 = 0;
      iVar4 = BattleSystem_GetMaxBattlers(*param_2);
      if (0 < iVar4) {
        do {
          iVar4 = BattleSystem_GetOpponentData(*param_2,iVar7);
          ov12_02264C84(iVar4 + 0x28);
          iVar7 = iVar7 + 1;
          iVar4 = BattleSystem_GetMaxBattlers(*param_2);
        } while (iVar7 < iVar4);
      }
    }
    iVar4 = BattleInput_CheckTouch(uVar3);
    param_2[3] = iVar4;
    if (iVar4 != -1) {
      *(undefined1 *)((int)param_2 + 0xb) = 10;
      PlaySE(0x5dd);
      *(undefined1 *)((int)param_2 + 10) = 6;
      return;
    }
    break;
  case 6:
    iVar7 = BattleInput_CheckFeedbackDone(uVar3);
    if ((iVar7 == 1) || (param_2[3] == 1)) {
      switch(param_2[3]) {
      default:
        GF_AssertFail();
        break;
      case 1:
        uVar5 = BattleSystem_GetBattleType(*param_2);
        if ((uVar5 & 0x220) != 0) {
          *(undefined1 *)((int)param_2 + 10) = 7;
        }
        break;
      case 2:
        uVar8 = NARC_New(7,5);
        uVar9 = NARC_New(8,5);
        BattleInput_ChangeMenu(uVar8,uVar9,uVar3,0,0,0);
        BattleInput_Deadstriped_022698AC(uVar3,0);
        ov12_02265D74(iStack_68);
        ov12_02264EB4(param_2[1]);
        ov12_02262014(iVar4);
        NARC_Delete(uVar8);
        NARC_Delete(uVar9);
        break;
      case 3:
        uVar8 = NARC_New(7,5);
        uVar9 = NARC_New(8,5);
        BattleInput_ChangeMenu(uVar8,uVar9,uVar3,0,0,0);
        BattleInput_Deadstriped_022698AC(uVar3,0);
        ov12_02265D74(iStack_68);
        ov12_02264EB4(param_2[1]);
        ov12_02262014(iVar4);
        NARC_Delete(uVar8);
        NARC_Delete(uVar9);
        break;
      case 4:
        uVar8 = NARC_New(7,5);
        uVar9 = NARC_New(8,5);
        iVar4 = BattleInput_GetCancelRunFlag(uVar3);
        if (iVar4 == 1) {
          ov12_02265D74(iStack_68);
          param_2[3] = 0xff;
        }
        BattleInput_ChangeMenu(uVar8,uVar9,uVar3,0,0,0);
        NARC_Delete(uVar8);
        NARC_Delete(uVar9);
      }
      *(undefined1 *)((int)param_2 + 10) = 8;
      return;
    }
    break;
  case 7:
    iVar7 = BattleInput_CheckFeedbackDone(uVar3);
    if (iVar7 == 1) {
      uVar8 = NARC_New(7,5);
      uVar9 = NARC_New(8,5);
      BattleInput_ChangeMenu(uVar8,uVar9,uVar3,0,0,0);
      BattleInput_Deadstriped_022698AC(uVar3,0);
      ov12_02265D74(iStack_68);
      ov12_02264EB4(param_2[1]);
      ov12_02262014(iVar4);
      BattleInput_DisableBallGauge(uVar3);
      *(undefined1 *)((int)param_2 + 10) = 8;
      NARC_Delete(uVar8);
      NARC_Delete(uVar9);
      return;
    }
    break;
  case 8:
    iVar4 = ov12_022698B0(uVar3);
    if (iVar4 == 1) {
      ov12_02262F24(*param_2,*(undefined1 *)((int)param_2 + 9),param_2[3]);
      ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 9),*(undefined1 *)(param_2 + 2));
      Heap_Free(param_2);
      SysTask_Destroy(param_1);
    }
  }
  return;
}

