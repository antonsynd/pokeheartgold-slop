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
undefined4 sub_0207294C();
undefined4 PlayCry(unsigned short, unsigned char);
undefined4 sub_0201649C(void *, int);
undefined4 Pokepic_SetAnimScript(void *, void *);
unsigned char TextPrinterCheckActive(unsigned char);
undefined4 Pokepic_GetAttr();
undefined4 SetMasterBrightnessNeutral(int);
undefined4 NARC_ReadPokepicAnimScript(void *, void *, unsigned short, unsigned short);
undefined4 BufferBoxMonNickname();
unsigned short PaletteData_GetSelectedBuffersBitmask(void *);
undefined4 sub_020772F8();
undefined4 Pokepic_StartAnim();
undefined4 Pokepic_AddAttr(void *, int, int);
void * Mon_GetBoxMon(void *);
unsigned char PaletteData_BeginPaletteFade(void *, unsigned short, unsigned short, signed char, unsigned char, unsigned char, unsigned short);
extern uint  uRam021d1154 __asm__("sub_021D1154");
undefined4 Pokepic_IsAnimFinished(void *);
undefined4 sub_02005D10();
undefined4 GF_AssertFail(void);
undefined4 Pokepic_SetAttr(void *, int, int);
undefined4 HeapExp_FndGetTotalFreeSize(int);
void * sub_02077604(void *);
undefined4 sub_02077650();
undefined4 sub_02077634(void *, int);
undefined4 sub_02017068();
undefined4 IsCryFinished(void);
undefined4 Pokepic_StartPaletteFadeAll(void *, int, int, int, int);
undefined4 PlaySE(unsigned short);
undefined4 Pokepic_StartPaletteFade(void *, int, int, int, int);
undefined4 UpdateMonAbility(void *);
undefined4 GameStats_Inc(void *, int);
undefined4 MonTryLearnMoveOnLevelUp(void *, void *, void *);
undefined4 sub_0200FBF4(int, unsigned short);
undefined4 BufferMoveName(void *, unsigned int, unsigned int);
undefined4 GetMonData(void *, int, void *);
undefined4 SetMonData(void *, int, void *);
undefined4 CalcMonLevelAndStats(void *);
undefined4 Pokedex_SetMonCaughtFlag(void *, void *);
undefined4 GameStats_AddScore(void *, int);
undefined4 sub_02075770();
undefined4 sub_020771A0();
undefined4 sub_02089D40(void *, void *);
undefined4 sub_02077394();
undefined4 sub_0207584C();
undefined4 sub_02075A04();
undefined4 BufferBoxMonSpeciesName(void *, unsigned int, void *);
undefined4 sub_02075630();
undefined4 sub_0203A880(void);
undefined4 sub_02076E64();
undefined4 MonSetMoveInSlot(void *, unsigned short, unsigned char);
undefined4 DrawFrameAndWindow2(void *, int, unsigned short, unsigned char);
undefined4 IsFanfarePlaying(void);
undefined4 Pokepic_ScheduleReloadFromNarc(void *);
undefined4 StopBGM();
undefined4 sub_02077664(void *);
undefined4 OverlayManager_Delete(void *);
undefined4 sub_02076C90();
undefined4 OverlayManager_Run(void *);






void sub_02075E14(undefined4 *param_1)

{
  undefined1 uVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined2 auStack_8c [2];
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined1 auStack_80 [40];
  undefined1 auStack_58 [40];
  undefined1 auStack_30 [40];

  if (*(byte *)(param_1 + 0x1c) != 0) {
    if ((*(byte *)(param_1 + 0x1c) & 1) == 0) {
      Pokepic_AddAttr(param_1[7],0xc,-(uint)*(byte *)((int)param_1 + 0x71));
      Pokepic_AddAttr(param_1[7],0xd,-(uint)*(byte *)((int)param_1 + 0x71));
      Pokepic_AddAttr(param_1[8],0xc,*(undefined1 *)((int)param_1 + 0x71));
      Pokepic_AddAttr(param_1[8],0xd,*(undefined1 *)((int)param_1 + 0x71));
      iVar2 = Pokepic_GetAttr(param_1[7],0xc);
      if (iVar2 == 0) {
        *(byte *)(param_1 + 0x1c) = *(byte *)(param_1 + 0x1c) ^ 1;
      }
    }
    else {
      Pokepic_AddAttr(param_1[7],0xc,*(undefined1 *)((int)param_1 + 0x71));
      Pokepic_AddAttr(param_1[7],0xd,*(undefined1 *)((int)param_1 + 0x71));
      Pokepic_AddAttr(param_1[8],0xc,-(uint)*(byte *)((int)param_1 + 0x71));
      Pokepic_AddAttr(param_1[8],0xd,-(uint)*(byte *)((int)param_1 + 0x71));
      iVar2 = Pokepic_GetAttr(param_1[8],0xc);
      if ((iVar2 == 0) &&
         (*(byte *)(param_1 + 0x1c) = *(byte *)(param_1 + 0x1c) ^ 1,
         *(byte *)((int)param_1 + 0x71) < 0x40)) {
        *(char *)((int)param_1 + 0x71) = *(char *)((int)param_1 + 0x71) << 1;
      }
    }
  }
  if ((((param_1[0x1f] & 1) != 0) && (*(char *)(param_1 + 0x19) == '\b')) &&
     ((uRam021d1154 & 2) != 0)) {
    PaletteData_BeginPaletteFade(param_1[5],0xf,0xf3ff,0,0,0x10,0x7fff);
    *(undefined1 *)(param_1 + 0x19) = 0x29;
  }
  switch(*(undefined1 *)(param_1 + 0x19)) {
  case 0:
    *(char *)((int)param_1 + 0x66) = *(char *)((int)param_1 + 0x66) + -1;
    if (*(char *)((int)param_1 + 0x66) == '\0') {
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 1:
    SetMasterBrightnessNeutral(0);
    SetMasterBrightnessNeutral(1);
    sub_0201649C(param_1[0x16],0);
    if ((param_1[0x1f] & 2) == 0) {
      *(undefined1 *)(param_1 + 0x19) = 4;
      return;
    }
    *(undefined1 *)(param_1 + 0x19) = 2;
    return;
  case 2:
    iVar2 = PaletteData_GetSelectedBuffersBitmask(param_1[5]);
    if (iVar2 == 0) {
      uVar1 = sub_020772F8(param_1,0x394);
      *(undefined1 *)((int)param_1 + 0x65) = uVar1;
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 3:
    iVar2 = TextPrinterCheckActive(*(undefined1 *)((int)param_1 + 0x65));
    if (iVar2 == 0) {
      *(undefined1 *)(param_1 + 0x19) = 4;
      return;
    }
    break;
  case 4:
    iVar2 = PaletteData_GetSelectedBuffersBitmask(param_1[5]);
    if (iVar2 == 0) {
      sub_0207294C(param_1[0x21],param_1[0x11],param_1[7],*(undefined2 *)(param_1 + 0x18),2,0,0);
      NARC_ReadPokepicAnimScript(param_1[0x21],auStack_30,*(undefined2 *)(param_1 + 0x18),1);
      Pokepic_SetAnimScript(param_1[7],auStack_30);
      Pokepic_StartAnim(param_1[7],0);
      PlayCry(*(undefined2 *)(param_1 + 0x18),*(undefined1 *)(param_1 + 0x20));
      uVar4 = Mon_GetBoxMon(param_1[10]);
      BufferBoxMonNickname(param_1[3],0,uVar4);
      if ((param_1[0x1f] & 2) == 0) {
        uVar1 = sub_020772F8(param_1,0x393);
      }
      else {
        uVar1 = sub_020772F8(param_1,0x395);
      }
      *(undefined1 *)((int)param_1 + 0x65) = uVar1;
      *(undefined1 *)(param_1 + 0x19) = 5;
      return;
    }
    break;
  case 5:
    iVar2 = TextPrinterCheckActive(*(undefined1 *)((int)param_1 + 0x65));
    if ((((iVar2 == 0) && (iVar2 = IsCryFinished(), iVar2 == 0)) &&
        (iVar2 = sub_02017068(param_1[0x11],0), iVar2 == 1)) &&
       (iVar2 = Pokepic_IsAnimFinished(param_1[7]), iVar2 == 0)) {
      sub_0201649C(param_1[0x16],1);
      sub_02005D10(0x3f3);
      *(undefined1 *)((int)param_1 + 0x66) = 0x14;
      *(undefined1 *)(param_1 + 0x19) = 6;
      return;
    }
    break;
  case 6:
    *(char *)((int)param_1 + 0x66) = *(char *)((int)param_1 + 0x66) + -1;
    if (*(char *)((int)param_1 + 0x66) == '\0') {
      uStack_88 = param_1[0x17];
      uStack_84 = 0;
      uVar4 = sub_02077604(&uStack_88);
      param_1[0xc] = uVar4;
      sub_02077634(uVar4,0);
      Pokepic_StartPaletteFade(param_1[7],0,0x10,4,0x7fff);
      Pokepic_StartPaletteFade(param_1[8],0,0x10,4,0x7fff);
      uVar3 = HeapExp_FndGetTotalFreeSize(param_1[0x17]);
      if (uVar3 < 0x8001) {
        GF_AssertFail();
      }
      PlaySE(0x5f8);
      *(undefined1 *)((int)param_1 + 0x66) = 0x28;
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 7:
    if (*(byte *)((int)param_1 + 0x73) < 0x28) {
      *(char *)((int)param_1 + 0x73) = *(char *)((int)param_1 + 0x73) + '\x02';
      *(char *)((int)param_1 + 0x75) = *(char *)((int)param_1 + 0x75) + -2;
    }
    *(char *)((int)param_1 + 0x66) = *(char *)((int)param_1 + 0x66) + -1;
    if (*(char *)((int)param_1 + 0x66) == '\0') {
      sub_02077634(param_1[0xc],1);
      sub_02077634(param_1[0xc],2);
      sub_02077634(param_1[0xc],7);
      sub_02077634(param_1[0xc],8);
      sub_02077634(param_1[0xc],9);
      sub_02077634(param_1[0xc],0xb);
      PlaySE(0x5f9);
      *(undefined1 *)(param_1 + 0x1c) = 0x10;
      *(undefined1 *)((int)param_1 + 0x71) = 8;
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 8:
    iVar2 = sub_02077650(param_1[0xc]);
    if (iVar2 == 0) {
      sub_02077634(param_1[0xc],3);
      sub_02077634(param_1[0xc],4);
      sub_02077634(param_1[0xc],5);
      sub_02077634(param_1[0xc],6);
      sub_02077634(param_1[0xc],10);
      PaletteData_BeginPaletteFade(param_1[5],0xf,0xf3ff,2,0,0x10,0x7fff);
      Pokepic_SetAttr(param_1[7],0xc,0);
      Pokepic_SetAttr(param_1[7],0xd,0);
      Pokepic_SetAttr(param_1[8],0xc,0x100);
      Pokepic_SetAttr(param_1[8],0xd,0x100);
      PlaySE(0x5fa);
      *(undefined1 *)(param_1 + 0x1c) = 0;
      *(undefined1 *)((int)param_1 + 0x66) = 8;
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 9:
    if (*(char *)((int)param_1 + 0x73) != '\0') {
      *(char *)((int)param_1 + 0x73) = *(char *)((int)param_1 + 0x73) + -2;
      *(char *)((int)param_1 + 0x75) = *(char *)((int)param_1 + 0x75) + '\x02';
    }
    iVar2 = PaletteData_GetSelectedBuffersBitmask(param_1[5]);
    if ((iVar2 == 0) &&
       (*(char *)((int)param_1 + 0x66) = *(char *)((int)param_1 + 0x66) + -1,
       *(char *)((int)param_1 + 0x66) == '\0')) {
      sub_02077634(param_1[0xc],0xc);
      PaletteData_BeginPaletteFade(param_1[5],0xf,0xf3ff,4,0x10,0,0x7fff);
      Pokepic_StartPaletteFadeAll(param_1[6],0x10,0,3,0x7fff);
      PlaySE(0x5fb);
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 10:
    iVar2 = PaletteData_GetSelectedBuffersBitmask(param_1[5]);
    if ((iVar2 == 0) && (iVar2 = sub_02077650(param_1[0xc]), iVar2 == 0)) {
      sub_0207294C(param_1[0x21],param_1[0x11],param_1[8],*(undefined2 *)((int)param_1 + 0x62),2,0,0
                  );
      NARC_ReadPokepicAnimScript(param_1[0x21],auStack_58,*(undefined2 *)((int)param_1 + 0x62),1);
      Pokepic_SetAnimScript(param_1[8],auStack_58);
      Pokepic_StartAnim(param_1[8],0);
      PlayCry(*(undefined2 *)((int)param_1 + 0x62),*(undefined1 *)(param_1 + 0x20));
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 0xb:
    iVar2 = IsCryFinished();
    if (((iVar2 == 0) && (iVar2 = sub_02017068(param_1[0x11],0), iVar2 == 1)) &&
       (iVar2 = Pokepic_IsAnimFinished(param_1[8]), iVar2 == 0)) {
      SetMonData(param_1[10],5,(int)param_1 + 0x62);
      UpdateMonAbility(param_1[10]);
      CalcMonLevelAndStats(param_1[10]);
      uVar4 = Mon_GetBoxMon(param_1[10]);
      BufferBoxMonNickname(param_1[3],0,uVar4);
      uVar4 = Mon_GetBoxMon(param_1[10]);
      BufferBoxMonSpeciesName(param_1[3],1,uVar4);
      uVar1 = sub_020772F8(param_1,0x396);
      *(undefined1 *)((int)param_1 + 0x65) = uVar1;
      *(undefined1 *)((int)param_1 + 0x66) = 0x28;
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 0xc:
    iVar2 = TextPrinterCheckActive(*(undefined1 *)((int)param_1 + 0x65));
    if ((iVar2 == 0) &&
       (*(char *)((int)param_1 + 0x66) = *(char *)((int)param_1 + 0x66) + -1,
       *(char *)((int)param_1 + 0x66) == '\0')) {
      Pokedex_SetMonCaughtFlag(param_1[0x12],param_1[10]);
      GameStats_Inc(param_1[0x14],0xd);
      GameStats_AddScore(param_1[0x14],0x15);
      iVar2 = GetMonData(param_1[10],0x4d,0);
      if (iVar2 == 0) {
        SetMonData(param_1[10],0xb3,0);
      }
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 0xd:
    iVar2 = MonTryLearnMoveOnLevelUp(param_1[10],param_1 + 0x1a,auStack_8c);
    if (iVar2 == 0) {
      *(undefined1 *)(param_1 + 0x19) = 0x27;
      return;
    }
    if (iVar2 != 0xfffe) {
      if (iVar2 == 0xffff) {
        *(undefined2 *)(param_1 + 0x1b) = auStack_8c[0];
        *(undefined1 *)(param_1 + 0x19) = 0xe;
        return;
      }
      uVar4 = Mon_GetBoxMon(param_1[10]);
      BufferBoxMonNickname(param_1[3],0,uVar4);
      BufferMoveName(param_1[3],1,auStack_8c[0]);
      uVar1 = sub_020772F8(param_1,4);
      *(undefined1 *)((int)param_1 + 0x65) = uVar1;
      *(undefined1 *)((int)param_1 + 0x66) = 0x1e;
      *(undefined1 *)(param_1 + 0x19) = 0x25;
      return;
    }
    break;
  case 0xe:
    uVar4 = Mon_GetBoxMon(param_1[10]);
    BufferBoxMonNickname(param_1[3],0,uVar4);
    BufferMoveName(param_1[3],1,*(undefined2 *)(param_1 + 0x1b));
    uVar1 = sub_020772F8(param_1,0x4a9);
    *(undefined1 *)((int)param_1 + 0x65) = uVar1;
    *(undefined1 *)((int)param_1 + 0x66) = 0x1e;
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    return;
  case 0xf:
  case 0x11:
  case 0x13:
  case 0x1a:
  case 0x1c:
  case 0x1e:
  case 0x21:
    iVar2 = TextPrinterCheckActive(*(undefined1 *)((int)param_1 + 0x65));
    if ((iVar2 == 0) &&
       (*(char *)((int)param_1 + 0x66) = *(char *)((int)param_1 + 0x66) + -1,
       *(char *)((int)param_1 + 0x66) == '\0')) {
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 0x10:
    uVar4 = Mon_GetBoxMon(param_1[10]);
    BufferBoxMonNickname(param_1[3],0,uVar4);
    uVar1 = sub_020772F8(param_1,0x4aa);
    *(undefined1 *)((int)param_1 + 0x65) = uVar1;
    *(undefined1 *)((int)param_1 + 0x66) = 0x1e;
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    return;
  case 0x12:
    uVar1 = sub_020772F8(param_1,0x4ab);
    *(undefined1 *)((int)param_1 + 0x65) = uVar1;
    *(undefined1 *)((int)param_1 + 0x66) = 1;
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    return;
  case 0x14:
    sub_0207584C(param_1,1);
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    return;
  case 0x15:
    iVar2 = sub_02075A04(param_1);
    if (iVar2 == 1) {
      *(undefined1 *)(param_1 + 0x19) = 0x16;
      PaletteData_BeginPaletteFade(param_1[5],0xf,0xffff,1,0,0x10,0);
      Pokepic_StartPaletteFadeAll(param_1[6],0,0x10,0,0);
      return;
    }
    if (iVar2 == 2) {
      *(undefined1 *)(param_1 + 0x19) = 0x20;
      return;
    }
    return;
  case 0x16:
    iVar2 = PaletteData_GetSelectedBuffersBitmask(param_1[5]);
    if (iVar2 == 0) {
      sub_0200FBF4(0,0);
      sub_0200FBF4(1,0);
      sub_020771A0(*param_1);
      sub_02075770(param_1);
      Pokepic_SetAttr(param_1[7],6,1);
      Pokepic_SetAttr(param_1[8],6,1);
      *(undefined4 *)param_1[0xf] = param_1[10];
      *(undefined4 *)(param_1[0xf] + 4) = param_1[0xb];
      *(undefined1 *)(param_1[0xf] + 0x11) = 0;
      *(undefined1 *)(param_1[0xf] + 0x14) = 0;
      *(undefined1 *)(param_1[0xf] + 0x13) = 1;
      *(undefined2 *)(param_1[0xf] + 0x18) = *(undefined2 *)(param_1 + 0x1b);
      *(undefined1 *)(param_1[0xf] + 0x12) = 2;
      *(undefined4 *)(param_1[0xf] + 0x28) = 0;
      *(undefined4 *)(param_1[0xf] + 0x30) = 0;
      sub_02089D40(param_1[0xf],0x20ffec0);
      sub_02077394(param_1);
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 0x17:
    iVar2 = OverlayManager_Run(param_1[0xe]);
    if (iVar2 != 0) {
      OverlayManager_Delete(param_1[0xe]);
      param_1[0xe] = 0;
      sub_02076E64(param_1,*param_1);
      sub_02075630(param_1);
      DrawFrameAndWindow2(param_1[1],0,1,10);
      Pokepic_SetAttr(param_1[7],6,0);
      Pokepic_SetAttr(param_1[8],6,0);
      Pokepic_ScheduleReloadFromNarc(param_1[7]);
      Pokepic_ScheduleReloadFromNarc(param_1[8]);
      PaletteData_BeginPaletteFade(param_1[5],0xf,0xffff,1,0x10,0,0);
      Pokepic_StartPaletteFadeAll(param_1[6],0x10,0,0,0);
      sub_0203A880();
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 0x18:
    SetMasterBrightnessNeutral(0);
    SetMasterBrightnessNeutral(1);
    iVar2 = PaletteData_GetSelectedBuffersBitmask(param_1[5]);
    if (iVar2 == 0) {
      if (*(char *)(param_1[0xf] + 0x16) != '\x04') {
        *(char *)((int)param_1 + 0x6e) = *(char *)(param_1[0xf] + 0x16);
        *(undefined1 *)(param_1 + 0x19) = 0x19;
        return;
      }
      *(undefined1 *)(param_1 + 0x19) = 0x20;
      return;
    }
    break;
  case 0x19:
    uVar1 = sub_020772F8(param_1,0x4af);
    *(undefined1 *)((int)param_1 + 0x65) = uVar1;
    *(undefined1 *)((int)param_1 + 0x66) = 0x1e;
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    return;
  case 0x1b:
    uVar4 = Mon_GetBoxMon(param_1[10]);
    BufferBoxMonNickname(param_1[3],0,uVar4);
    uVar4 = GetMonData(param_1[10],*(byte *)((int)param_1 + 0x6e) + 0x36,0);
    BufferMoveName(param_1[3],1,uVar4);
    uVar1 = sub_020772F8(param_1,0x4b0);
    *(undefined1 *)((int)param_1 + 0x65) = uVar1;
    *(undefined1 *)((int)param_1 + 0x66) = 0x1e;
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    return;
  case 0x1d:
    uVar1 = sub_020772F8(param_1,0x4b1);
    *(undefined1 *)((int)param_1 + 0x65) = uVar1;
    *(undefined1 *)((int)param_1 + 0x66) = 0x1e;
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    return;
  case 0x1f:
    uVar4 = Mon_GetBoxMon(param_1[10]);
    BufferBoxMonNickname(param_1[3],0,uVar4);
    BufferMoveName(param_1[3],1,*(undefined2 *)(param_1 + 0x1b));
    uVar1 = sub_020772F8(param_1,0x4b2);
    *(undefined1 *)((int)param_1 + 0x65) = uVar1;
    *(undefined1 *)((int)param_1 + 0x66) = 0;
    SetMonData(param_1[10],*(byte *)((int)param_1 + 0x6e) + 0x3e,(int)param_1 + 0x66);
    MonSetMoveInSlot(param_1[10],*(undefined2 *)(param_1 + 0x1b),
                     *(undefined1 *)((int)param_1 + 0x6e));
    *(undefined1 *)((int)param_1 + 0x66) = 0x1e;
    *(undefined1 *)(param_1 + 0x19) = 0x25;
    return;
  case 0x20:
    BufferMoveName(param_1[3],0,*(undefined2 *)(param_1 + 0x1b));
    uVar1 = sub_020772F8(param_1,0x4ad);
    *(undefined1 *)((int)param_1 + 0x65) = uVar1;
    *(undefined1 *)((int)param_1 + 0x66) = 1;
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    return;
  case 0x22:
    sub_0207584C(param_1,0);
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    return;
  case 0x23:
    iVar2 = sub_02075A04(param_1);
    if (iVar2 == 1) {
      uVar4 = Mon_GetBoxMon(param_1[10]);
      BufferBoxMonNickname(param_1[3],0,uVar4);
      BufferMoveName(param_1[3],1,*(undefined2 *)(param_1 + 0x1b));
      uVar1 = sub_020772F8(param_1,0x4ae);
      *(undefined1 *)((int)param_1 + 0x65) = uVar1;
      *(undefined1 *)((int)param_1 + 0x66) = 0x1e;
      *(undefined1 *)(param_1 + 0x19) = 0x24;
      return;
    }
    if (iVar2 == 2) {
      *(undefined1 *)(param_1 + 0x19) = 0xe;
      return;
    }
    return;
  case 0x24:
    iVar2 = TextPrinterCheckActive(*(undefined1 *)((int)param_1 + 0x65));
    if ((iVar2 == 0) &&
       (*(char *)((int)param_1 + 0x66) = *(char *)((int)param_1 + 0x66) + -1,
       *(char *)((int)param_1 + 0x66) == '\0')) {
      *(undefined1 *)(param_1 + 0x19) = 0xd;
      return;
    }
    break;
  case 0x25:
    iVar2 = TextPrinterCheckActive(*(undefined1 *)((int)param_1 + 0x65));
    if (iVar2 == 0) {
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 0x26:
    iVar2 = IsFanfarePlaying();
    if ((iVar2 == 0) &&
       (*(char *)((int)param_1 + 0x66) = *(char *)((int)param_1 + 0x66) + -1,
       *(char *)((int)param_1 + 0x66) == '\0')) {
      *(undefined1 *)(param_1 + 0x19) = 0xd;
      return;
    }
    break;
  case 0x27:
    PaletteData_BeginPaletteFade(param_1[5],0xf,0xffff,1,0,0x10,0);
    Pokepic_StartPaletteFadeAll(param_1[6],0,0x10,0,0);
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    return;
  case 0x28:
    iVar2 = PaletteData_GetSelectedBuffersBitmask(param_1[5]);
    if (iVar2 == 0) {
      sub_02077664(param_1[0xc]);
      sub_02076C90(param_1);
      *(undefined1 *)((int)param_1 + 0x67) = 1;
      return;
    }
    break;
  case 0x29:
    iVar2 = PaletteData_GetSelectedBuffersBitmask(param_1[5]);
    if (iVar2 == 0) {
      Pokepic_SetAttr(param_1[7],0xc,0x100);
      Pokepic_SetAttr(param_1[7],0xd,0x100);
      Pokepic_SetAttr(param_1[8],0xc,0);
      Pokepic_SetAttr(param_1[8],0xd,0);
      Pokepic_SetAttr(param_1[8],6,1);
      PaletteData_BeginPaletteFade(param_1[5],0xf,0xf3ff,0,0x10,0,0x7fff);
      Pokepic_StartPaletteFadeAll(param_1[6],0x10,0,0,0x7fff);
      *(undefined1 *)((int)param_1 + 0x72) = 0;
      *(undefined1 *)((int)param_1 + 0x73) = 0;
      *(undefined1 *)(param_1 + 0x1d) = 0xff;
      *(undefined1 *)((int)param_1 + 0x75) = 0xa0;
      *(undefined1 *)(param_1 + 0x1c) = 0;
      StopBGM(0x3f3);
      sub_02077664(param_1[0xc]);
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 0x2a:
    iVar2 = PaletteData_GetSelectedBuffersBitmask(param_1[5]);
    if (iVar2 == 0) {
      sub_0207294C(param_1[0x21],param_1[0x11],param_1[7],*(undefined2 *)(param_1 + 0x18),2,0,0);
      NARC_ReadPokepicAnimScript(param_1[0x21],auStack_80,*(undefined2 *)(param_1 + 0x18),1);
      Pokepic_SetAnimScript(param_1[7],auStack_80);
      Pokepic_StartAnim(param_1[7],0);
      PlayCry(*(undefined2 *)(param_1 + 0x18),*(undefined1 *)(param_1 + 0x20));
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 0x2b:
    iVar2 = IsCryFinished();
    if (((iVar2 == 0) && (iVar2 = sub_02017068(param_1[0x11],0), iVar2 == 1)) &&
       (iVar2 = Pokepic_IsAnimFinished(param_1[7]), iVar2 == 0)) {
      uVar4 = Mon_GetBoxMon(param_1[10]);
      BufferBoxMonNickname(param_1[3],0,uVar4);
      uVar1 = sub_020772F8(param_1,0x397);
      *(undefined1 *)((int)param_1 + 0x65) = uVar1;
      *(undefined1 *)((int)param_1 + 0x66) = 0x14;
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 0x2c:
    iVar2 = TextPrinterCheckActive(*(undefined1 *)((int)param_1 + 0x65));
    if ((iVar2 == 0) &&
       (*(char *)((int)param_1 + 0x66) = *(char *)((int)param_1 + 0x66) + -1,
       *(char *)((int)param_1 + 0x66) == '\0')) {
      PaletteData_BeginPaletteFade(param_1[5],0xf,0xffff,1,0,0x10,0);
      Pokepic_StartPaletteFadeAll(param_1[6],0,0x10,0,0);
      *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
      return;
    }
    break;
  case 0x2d:
    iVar2 = PaletteData_GetSelectedBuffersBitmask(param_1[5]);
    if (iVar2 == 0) {
      *(undefined1 *)((int)param_1 + 0x67) = 1;
    }
  }
  return;
}

