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
undefined4 YesNoPrompt_Destroy(void *);
undefined4 BeginNormalPaletteFade(int, int, int, unsigned short, int, int, int);
undefined4 ov46_02259550();
undefined4 sub_020393C8();
undefined4 sub_020397FC(void);
undefined4 sub_0203976C(void *, int);
undefined4 IsPaletteFadeFinished(void);
undefined4 ov46_02259450();
void * OverlayManager_GetData(void *);
undefined4 func_0x0222a5c0() __asm__("sub_0222A5C0");
undefined4 ov46_02259374();
undefined4 YesNoPrompt_HandleInput(void *);
undefined4 ov46_022593F8();
undefined4 ov46_02259474();
undefined4 sub_020397E4();
undefined4 func_0x0222b244() __asm__("sub_0222B244");
void * OverlayManager_GetArgs(void *);
undefined4 func_0x0222e7fc() __asm__("sub_0222E7FC");
undefined4 GF_AssertFail(void);
void * sub_020392D8(void);
undefined4 func_0x0222d7cc() __asm__("sub_0222D7CC");
undefined4 sub_02037D78(void);
undefined4 sub_020397C8(void);
long long GF_RTC_DateTimeToSec(void);
undefined4 func_0x0222e7cc() __asm__("sub_0222E7CC");
undefined4 GameStats_AddScore(void *, int);
undefined4 ov46_02259534();
undefined4 System_GetTouchNew(void);
undefined4 func_0x0222b270() __asm__("sub_0222B270");
undefined4 sub_02039274(void);
void * Save_GameStats_Get(void *);
undefined4 func_0x0222d7fc() __asm__("sub_0222D7FC");
extern uint  uRam021d1154 __asm__("sub_021D1154");

undefined4 ov46_0225892C(undefined *param_1,int *param_2)

{
  byte bVar1;
  undefined4 *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  int iVar7;
  longlong lVar8;
  undefined4 uStack_1c;

  puVar2 = (undefined4 *)OverlayManager_GetData(param_1);
  puVar3 = OverlayManager_GetArgs(param_1);
  switch(*param_2) {
  case 0:
    BeginNormalPaletteFade(0,1,1,0xffff,6,1,0x77);
    *param_2 = *param_2 + 1;
    break;
  case 1:
    iVar7 = IsPaletteFadeFinished();
    if (iVar7 != 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 2:
    if (*(int *)(puVar3 + 8) == 0) {
      ov46_02259374(puVar2 + 0x1c,0x11);
      uVar6 = ov46_02259550(puVar2[3],0x230);
      puVar2[0x34] = uVar6;
      *param_2 = *param_2 + 1;
    }
    else {
      *param_2 = 4;
    }
    break;
  case 3:
    iVar7 = YesNoPrompt_HandleInput((undefined *)puVar2[0x34]);
    if (iVar7 == 1) {
      YesNoPrompt_Destroy((undefined *)puVar2[0x34]);
      *param_2 = 4;
    }
    else if (iVar7 == 2) {
      YesNoPrompt_Destroy((undefined *)puVar2[0x34]);
      ov46_022593F8(puVar2 + 0x10);
      *param_2 = 7;
    }
    break;
  case 4:
    iVar7 = func_0x0222a5c0(*(undefined4 *)(puVar3 + 4));
    sub_0203976C((undefined *)*puVar2,iVar7);
    ov46_02259374(puVar2 + 0x1c,0x17);
    ov46_02259450(puVar2 + 0x1c);
    *param_2 = *param_2 + 1;
    break;
  case 5:
    iVar7 = sub_020393C8();
    if ((iVar7 != 0) || (iVar7 = sub_020397FC(), iVar7 != 0)) {
      ov46_02259474(puVar2 + 0x1c);
      *param_2 = 9;
    }
    bVar1 = sub_020397E4();
    if (bVar1 == 1) {
      func_0x0222b244(*(undefined4 *)(puVar3 + 4));
      *param_2 = *param_2 + 1;
    }
    break;
  case 6:
    iVar7 = sub_020393C8();
    if ((iVar7 != 0) || (iVar7 = sub_020397FC(), iVar7 != 0)) {
      ov46_02259474(puVar2 + 0x1c);
      *param_2 = 9;
    }
    iVar7 = sub_02039274();
    if (iVar7 != 0) {
      ov46_02259474(puVar2 + 0x1c);
      puVar4 = Save_GameStats_Get((undefined *)*puVar2);
      GameStats_AddScore(puVar4,0x21);
      lVar8 = GF_RTC_DateTimeToSec();
      **(longlong **)(puVar3 + 0xc) = lVar8;
      *(undefined4 *)(puVar3 + 0x10) = 1;
      *param_2 = *param_2 + 1;
    }
    break;
  case 7:
    BeginNormalPaletteFade(0,0,0,0,6,1,0x77);
    *param_2 = *param_2 + 1;
    break;
  case 8:
    iVar7 = IsPaletteFadeFinished();
    if (iVar7 != 0) {
      return 1;
    }
    break;
  case 9:
    iVar7 = sub_020393C8();
    if (iVar7 == 0) {
      func_0x0222e7cc();
      uVar6 = func_0x0222e7fc();
      uStack_1c = 0x20;
    }
    else {
      puVar5 = (undefined4 *)sub_020392D8();
      uStack_1c = func_0x0222d7cc(*puVar5,puVar5[1]);
      uVar6 = *puVar5;
    }
    func_0x0222b270(*(undefined4 *)(puVar3 + 4));
    ov46_022593F8(puVar2 + 0x10);
    ov46_022593F8(puVar2 + 0x1c);
    ov46_02259534(puVar2 + 0x28,uVar6);
    ov46_02259374(puVar2 + 0x28,uStack_1c);
    *param_2 = *param_2 + 1;
    break;
  case 10:
    if (((uRam021d1154 & 3) != 0) || (iVar7 = System_GetTouchNew(), iVar7 == 1)) {
      iVar7 = sub_020393C8();
      if (iVar7 == 0) {
        *param_2 = 0xb;
      }
      else {
        puVar2 = (undefined4 *)sub_020392D8();
        iVar7 = func_0x0222d7fc(*puVar2,puVar2[1]);
        if (iVar7 == 0) {
          *param_2 = 0xb;
        }
        else {
          *param_2 = 0xe;
        }
      }
    }
    break;
  case 0xb:
    ov46_022593F8(puVar2 + 0x28);
    ov46_02259374(puVar2 + 0x10,0x58);
    uVar6 = ov46_02259550(puVar2[3],0x230);
    puVar2[0x34] = uVar6;
    *param_2 = *param_2 + 1;
    break;
  case 0xc:
    iVar7 = YesNoPrompt_HandleInput((undefined *)puVar2[0x34]);
    if (iVar7 == 1) {
      YesNoPrompt_Destroy((undefined *)puVar2[0x34]);
      sub_020397C8();
      *param_2 = 0xd;
    }
    else if (iVar7 == 2) {
      YesNoPrompt_Destroy((undefined *)puVar2[0x34]);
      *param_2 = 0xe;
    }
    break;
  case 0xd:
    iVar7 = sub_02037D78();
    if (iVar7 == 0) {
      *param_2 = 4;
    }
    break;
  case 0xe:
    ov46_022593F8(puVar2 + 0x10);
    ov46_022593F8(puVar2 + 0x1c);
    ov46_022593F8(puVar2 + 0x28);
    sub_020397C8();
    *param_2 = *param_2 + 1;
    break;
  case 0xf:
    iVar7 = sub_02037D78();
    if (iVar7 == 0) {
      ov46_022593F8(puVar2 + 0x10);
      ov46_022593F8(puVar2 + 0x1c);
      *param_2 = 7;
    }
    break;
  default:
    GF_AssertFail();
  }
  return 0;
}

