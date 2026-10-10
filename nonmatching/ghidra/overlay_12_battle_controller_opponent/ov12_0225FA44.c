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
undefined4 PlaySE(undefined4);
undefined4 ov12_02264EB4(undefined4);
undefined4 BattleInput_CheckFeedbackDone(undefined4);
undefined4 BattleInput_DisableBallGauge(undefined4);
undefined4 BattleSystem_GetHpBar(undefined4);
undefined4 TextPrinterCheckActive(undefined4);
undefined4 NARC_New(undefined4, undefined4);
undefined4 NARC_Delete(undefined4);
undefined4 BattleSystem_GetMessageLoader(undefined4);
undefined4 GF_AssertFail(void);
undefined4 BattleInput_ChangeMenu(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 BattleSystem_GetOpponentData(undefined4, undefined4);
undefined4 BattleSystem_GetBgConfig(undefined4);
undefined4 BattleSystem_GetBattlerIdPartner(undefined4, undefined4);
undefined4 BattleSystem_GetTextFrameDelay(undefined4);
undefined4 BattleInput_CheckTouch(undefined4);
undefined4 BattleSystem_PrintBattleMessage(undefined4, undefined4, undefined4, undefined4);
undefined4 ov12_0226430C(undefined4, undefined4, undefined4);
undefined4 ov12_02262F24(undefined4, undefined4, undefined4);
undefined4 BattleInput_Deadstriped_022698AC(undefined4, undefined4);
undefined4 ov12_022698B0(undefined4);
undefined4 Heap_Free(undefined4);
undefined4 ov12_02262014(undefined4);
undefined4 ov12_02265D74(undefined4);
undefined4 SysTask_Destroy(undefined4);

void ov12_0225FA44(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  undefined2 auStack_40 [2];
  undefined1 uStack_3c;
  undefined1 uStack_3b;
  undefined2 uStack_3a;
  undefined4 uStack_38;
  undefined4 uStack_18;

  uStack_18 = param_4;
  BattleSystem_GetBgConfig(*param_2);
  uVar2 = BattleSystem_GetBattleInput(*param_2);
  uVar3 = BattleSystem_GetOpponentData(*param_2,*(undefined1 *)((int)param_2 + 0xd));
  uVar4 = BattleSystem_GetBattlerIdPartner(*param_2,*(undefined1 *)((int)param_2 + 0xd));
  if (uVar4 == *(byte *)((int)param_2 + 0xd)) {
    uVar5 = 0;
  }
  else {
    uVar5 = BattleSystem_GetHpBar(*param_2);
  }
  switch(*(undefined1 *)((int)param_2 + 0xe)) {
  case 0:
    iVar8 = BattleInput_CheckFeedbackDone(uVar2);
    if (iVar8 != 0) {
      if (param_2[4] != 0) {
        uVar2 = BattleSystem_GetMessageLoader(*param_2);
        if (*(char *)((int)param_2 + 0xf) == '\x05') {
          uStack_3b = 0x82;
          uStack_38 = param_2[5];
        }
        else {
          uStack_3b = 0;
        }
        uStack_3a = (undefined2)param_2[4];
        uVar3 = BattleSystem_GetTextFrameDelay(*param_2);
        uVar1 = BattleSystem_PrintBattleMessage(*param_2,uVar2,&uStack_3c,uVar3);
        *(undefined2 *)((int)param_2 + 0x1a) = uVar1;
      }
      *(undefined1 *)((int)param_2 + 0xe) = 1;
      return;
    }
    break;
  case 1:
    iVar8 = TextPrinterCheckActive(*(ushort *)((int)param_2 + 0x1a) & 0xff);
    if ((iVar8 == 0) || (param_2[4] == 0)) {
      uVar3 = NARC_New(7,5);
      uVar5 = NARC_New(8,5);
      BattleInput_DisableBallGauge(uVar2);
      auStack_40[0] = *(undefined2 *)(param_2 + 6);
      switch(*(undefined1 *)((int)param_2 + 0xf)) {
      case 0:
      case 5:
        BattleInput_ChangeMenu(uVar3,uVar5,uVar2,0xd,0,auStack_40);
        break;
      case 1:
        BattleInput_ChangeMenu(uVar3,uVar5,uVar2,0xe,0,auStack_40);
        break;
      case 2:
        BattleInput_ChangeMenu(uVar3,uVar5,uVar2,0xf,0,auStack_40);
        break;
      case 3:
        BattleInput_ChangeMenu(uVar3,uVar5,uVar2,0x10,0,auStack_40);
        break;
      case 4:
        BattleInput_ChangeMenu(uVar3,uVar5,uVar2,0x11,0,auStack_40);
        break;
      default:
        GF_AssertFail();
      }
      *(undefined1 *)((int)param_2 + 0xe) = 2;
      NARC_Delete(uVar3);
      NARC_Delete(uVar5);
      return;
    }
    break;
  case 2:
    iVar8 = BattleInput_CheckTouch(uVar2);
    param_2[2] = iVar8;
    if (iVar8 != -1) {
      PlaySE(0x5dd);
      *(undefined1 *)((int)param_2 + 0xe) = 3;
      return;
    }
    break;
  case 3:
    iVar8 = BattleInput_CheckFeedbackDone(uVar2);
    if (iVar8 == 1) {
      uVar6 = NARC_New(7,5);
      uVar7 = NARC_New(8,5);
      ov12_02264EB4(param_2[1]);
      ov12_02262014(uVar3);
      ov12_02265D74(uVar5);
      BattleInput_DisableBallGauge(uVar2);
      BattleInput_ChangeMenu(uVar6,uVar7,uVar2,0,0,0);
      if (param_2[2] == 1) {
        BattleInput_Deadstriped_022698AC(uVar2,0);
      }
      *(undefined1 *)((int)param_2 + 0xe) = 4;
      NARC_Delete(uVar6);
      NARC_Delete(uVar7);
      return;
    }
    break;
  case 4:
    iVar8 = ov12_022698B0(uVar2);
    if (iVar8 == 1) {
      ov12_02262F24(*param_2,*(undefined1 *)((int)param_2 + 0xd),param_2[2]);
      ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 0xd),*(undefined1 *)(param_2 + 3));
      Heap_Free(param_2);
      SysTask_Destroy(param_1);
    }
  }
  return;
}

