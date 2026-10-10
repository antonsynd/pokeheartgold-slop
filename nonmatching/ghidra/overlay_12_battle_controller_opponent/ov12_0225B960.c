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
undefined4 func_0x02232a44() __asm__("sub_02232A44");
undefined4 BattleSystem_GetPartyMon();
undefined4 func_0x02232694() __asm__("sub_02232694");
undefined4 BattleSystem_GetBattleSpecial();
undefined4 func_0x0221fdfc() __asm__("sub_0221FDFC");
undefined4 func_0x022329b0() __asm__("sub_022329B0");
undefined4 Pokepic_SetAttr();
undefined4 BattleSystem_GetBattleType();
undefined4 func_0x02232a04() __asm__("sub_02232A04");
undefined4 ov12_022612A4();
undefined4 BattleSystem_GetPokepicManager();
undefined4 func_0x02233f20() __asm__("sub_02233F20");
undefined4 Pokepic_StartPaletteFade();
undefined4 NARC_ReadPokepicAnimScript();
undefined4 func_0x02233ea0() __asm__("sub_02233EA0");
undefined4 ov12_0223B688();
undefined4 func_0x0221c394() __asm__("sub_0221C394");
undefined4 sub_02017068();
undefined4 Pokepic_GetAttr();
undefined4 Pokepic_AddAttr();
undefined4 ov12_0223B750();
undefined4 func_0x0200914c() __asm__("sub_0200914C");
undefined4 func_0x02232a54() __asm__("sub_02232A54");
undefined4 func_0x02233e88() __asm__("sub_02233E88");
undefined4 ov12_02261F38();
undefined4 func_0x02232ab8() __asm__("sub_02232AB8");
undefined4 func_0x0221fe08() __asm__("sub_0221FE08");
undefined4 sub_0200602C();
undefined4 func_0x0221bedc() __asm__("sub_0221BEDC");
undefined4 ov12_02261B80();
undefined4 func_0x02233ecc() __asm__("sub_02233ECC");
undefined4 ov12_022643C8();
undefined4 Pokepic_IsAnimFinished();
undefined4 SysTask_Destroy();
undefined4 func_0x0221c3c0() __asm__("sub_0221C3C0");
undefined4 sub_02005B58();
undefined4 ov12_0226430C();
undefined4 Heap_Free();
undefined4 func_0x0221c3b0() __asm__("sub_0221C3B0");
undefined4 func_0x0221bfe0() __asm__("sub_0221BFE0");

void ov12_0225B960(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_9c [40];
  uint auStack_74 [3];
  undefined1 auStack_68 [88];
  undefined4 uStack_10;

  uStack_10 = param_4;
  switch(*(undefined1 *)((int)param_2 + 0x83)) {
  case 0:
    *(undefined1 *)((int)param_2 + 0x96) = 0;
    param_2[4] = 0;
    uVar1 = BattleSystem_GetBattleType(*param_2);
    if ((uVar1 & 8) == 0) {
      uVar1 = BattleSystem_GetBattleSpecial(*param_2);
      if ((uVar1 & 0x20) == 0) {
        iVar3 = ov12_0223B688(*param_2);
        if ((iVar3 == 1) && (*(char *)((int)param_2 + 0x82) == '\x02')) {
          uVar2 = func_0x0221fdfc(*param_2,5);
          param_2[4] = uVar2;
        }
        else if (*(char *)((int)param_2 + 0x82) == '\0') {
          uVar2 = func_0x0221fdfc(*param_2,5);
          param_2[4] = uVar2;
        }
      }
    }
    else {
      uVar1 = BattleSystem_GetBattleSpecial(*param_2);
      if (((uVar1 & 0x20) == 0) && (*(char *)((int)param_2 + 0x82) == '\x02')) {
        uVar2 = func_0x0221fdfc(*param_2,5);
        param_2[4] = uVar2;
      }
    }
    *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
    return;
  case 1:
    auStack_74[1] = 0;
    auStack_74[2] = 0;
    auStack_74[0] = (uint)*(byte *)((int)param_2 + 0x82);
    auStack_74[2] =
         BattleSystem_GetPartyMon
                   (*param_2,*(undefined1 *)((int)param_2 + 0x81),*(undefined1 *)(param_2 + 0x23));
    uVar2 = func_0x02232694(5,auStack_74);
    param_2[2] = uVar2;
    func_0x022329b0();
    *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
    return;
  case 2:
    iVar3 = func_0x02233f20(*(undefined4 *)(param_2[1] + 0x88));
    if (((iVar3 == 0) && (iVar3 = func_0x02232a04(param_2[2]), iVar3 == 1)) &&
       (iVar3 = func_0x02233ea0(*(undefined4 *)(param_2[1] + 0x88)), iVar3 == 1)) {
      if (*(char *)((int)param_2 + 0x82) == '\x04') {
        *(char *)((int)param_2 + 0x96) = *(char *)((int)param_2 + 0x96) + '\x01';
        if (*(byte *)((int)param_2 + 0x96) < 0xc) {
          return;
        }
        *(undefined1 *)((int)param_2 + 0x96) = 0;
      }
      uVar2 = BattleSystem_GetPokepicManager(*param_2);
      NARC_ReadPokepicAnimScript
                (*(undefined4 *)(param_2[1] + 0x1a4),auStack_9c,*(undefined2 *)((int)param_2 + 0x86)
                 ,*(undefined1 *)((int)param_2 + 0x82));
      iVar3 = (uint)*(byte *)((int)param_2 + 0x82) * 6;
      uVar2 = ov12_022612A4(*param_2,uVar2,param_2 + 5,
                            (int)*(short *)((uint)*(byte *)((int)param_2 + 0x82) * 4 + 0x22377dc),
                            (int)*(short *)(iVar3 + 0x22377f6),(int)*(short *)(iVar3 + 0x22377f8),
                            *(undefined1 *)((int)param_2 + 0x85),(int)*(char *)(param_2 + 0x24),
                            (int)*(char *)((int)param_2 + 0x91),*(undefined1 *)((int)param_2 + 0x93)
                            ,*(undefined1 *)((int)param_2 + 0x81),auStack_9c,0);
      *(undefined4 *)(param_2[1] + 0x20) = uVar2;
      Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),0xc,0);
      Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),0xd,0);
      Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),0x2c,0);
      Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),6,1);
      Pokepic_StartPaletteFade
                (*(undefined4 *)(param_2[1] + 0x20),0x10,0x10,0,
                 *(undefined2 *)((uint)*(ushort *)((int)param_2 + 0x8e) * 2 + 0x226d15a));
      Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),6,0);
      func_0x02232a44(param_2[2]);
      if (*(char *)(param_2 + 0x21) == '\x02') {
        sub_0200602C(0x706,0x75);
      }
      else {
        sub_0200602C(0x706,0xffffff8b);
      }
      if (param_2[4] != 0) {
        func_0x0221fe08();
        param_2[4] = 0;
      }
      *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
      return;
    }
    break;
  case 3:
    iVar3 = func_0x02233e88(*(undefined4 *)(param_2[1] + 0x88));
    if (iVar3 != 1) {
      *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
    }
  case 4:
    iVar3 = Pokepic_GetAttr(*(undefined4 *)(param_2[1] + 0x20),0xc);
    if ((iVar3 == 0x100) && (iVar3 = func_0x02232a54(param_2[2]), iVar3 == 0)) {
      if (*(char *)(param_2 + 0x21) == '\x02') {
        Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),0x2d,0);
      }
      ov12_02261F38(*param_2,*(undefined1 *)((int)param_2 + 0x81),
                    *(undefined1 *)((int)param_2 + 0x82),*(undefined4 *)(param_2[1] + 0x20),
                    *(undefined4 *)(param_2[1] + 0x1a4),*(undefined2 *)((int)param_2 + 0x86),
                    *(undefined1 *)((int)param_2 + 0x97),*(undefined1 *)(param_2 + 0x21),
                    param_2[0x22]);
      Pokepic_StartPaletteFade
                (*(undefined4 *)(param_2[1] + 0x20),0x10,0,0,
                 *(undefined2 *)((uint)*(ushort *)((int)param_2 + 0x8e) * 2 + 0x226d15a));
      *(undefined1 *)((int)param_2 + 0x83) = 5;
      return;
    }
    iVar3 = Pokepic_GetAttr(*(undefined4 *)(param_2[1] + 0x20),0xc);
    if (0xff < iVar3) {
      Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),0xc);
      Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),0xd,0x100);
      if (*(char *)(param_2 + 0x21) == '\x02') {
        Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),0x2d,0);
      }
      ov12_02261F38(*param_2,*(undefined1 *)((int)param_2 + 0x81),
                    *(undefined1 *)((int)param_2 + 0x82),*(undefined4 *)(param_2[1] + 0x20),
                    *(undefined4 *)(param_2[1] + 0x1a4),*(undefined2 *)((int)param_2 + 0x86),
                    *(undefined1 *)((int)param_2 + 0x97),*(undefined1 *)(param_2 + 0x21),
                    param_2[0x22]);
      Pokepic_StartPaletteFade
                (*(undefined4 *)(param_2[1] + 0x20),0x10,0,1,
                 *(undefined2 *)((uint)*(ushort *)((int)param_2 + 0x8e) * 2 + 0x226d15a));
      *(undefined1 *)((int)param_2 + 0x83) = 5;
      return;
    }
    Pokepic_AddAttr(*(undefined4 *)(param_2[1] + 0x20),0xc,0x20);
    Pokepic_AddAttr(*(undefined4 *)(param_2[1] + 0x20),0xd,0x20);
    func_0x0200914c(*(undefined4 *)(param_2[1] + 0x20),(int)*(char *)(param_2 + 0x24));
    return;
  case 5:
    iVar3 = func_0x02232a54(param_2[2]);
    if (iVar3 == 0) {
      *(undefined1 *)((int)param_2 + 0x83) = 6;
      return;
    }
    break;
  case 6:
    uVar2 = ov12_0223B750(*param_2);
    iVar3 = sub_02017068(uVar2,*(undefined1 *)((int)param_2 + 0x81));
    if ((iVar3 == 1) &&
       (iVar3 = Pokepic_IsAnimFinished(*(undefined4 *)(param_2[1] + 0x20)), iVar3 == 0)) {
      func_0x02233ecc(*(undefined4 *)(param_2[1] + 0x88));
      *(undefined4 *)(param_2[1] + 0x88) = 0;
      func_0x02232ab8(param_2[2]);
      if (*(char *)((int)param_2 + 0x92) != '\0') {
        uVar2 = func_0x0221bedc(5);
        param_2[9] = uVar2;
        ov12_022643C8(*param_2,0,auStack_68,1,0xb,*(undefined1 *)((int)param_2 + 0x81),
                      *(undefined1 *)((int)param_2 + 0x81),0);
        ov12_02261B80(*param_2,param_2[1],param_2[9],auStack_68);
        *(undefined1 *)((int)param_2 + 0x83) = 7;
        return;
      }
      *(undefined1 *)((int)param_2 + 0x83) = 0xff;
      return;
    }
    break;
  case 7:
    func_0x0221c394(param_2[9]);
    iVar3 = func_0x0221c3b0(param_2[9]);
    if (iVar3 == 0) {
      func_0x0221c3c0(param_2[9]);
      func_0x0221bfe0(param_2[9]);
      *(undefined1 *)((int)param_2 + 0x83) = 0xff;
      return;
    }
    break;
  default:
    sub_02005B58(0);
    ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 0x81),*(undefined1 *)(param_2 + 0x20));
    Heap_Free(param_2);
    SysTask_Destroy(param_1);
  }
  return;
}

