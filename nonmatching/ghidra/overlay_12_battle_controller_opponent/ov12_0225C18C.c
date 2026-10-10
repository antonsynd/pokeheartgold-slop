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
undefined4 func_0x02232694() __asm__("sub_02232694");
undefined4 func_0x02233ea0() __asm__("sub_02233EA0");
void * BattleSystem_GetSpriteSystem(void *);
undefined4 func_0x0221fe08() __asm__("sub_0221FE08");
undefined4 Pokepic_SetAttr();
undefined4 func_0x02233f20() __asm__("sub_02233F20");
undefined4 func_0x0221fdfc() __asm__("sub_0221FDFC");
undefined4 ov12_022612A4();
undefined4 func_0x02232a04() __asm__("sub_02232A04");
void * BattleSystem_GetPokepicManager(void *);
void * BattleSystem_GetPartyMon(void *, int, int);
undefined4 func_0x022329b0() __asm__("sub_022329B0");
undefined4 ov12_0223A8DC();
void * BattleSystem_GetPaletteData(void *);
undefined4 NARC_ReadPokepicAnimScript(void *, void *, unsigned short, unsigned short);
undefined4 Pokepic_StartPaletteFade(void *, int, int, int, int);
extern undefined ov12_0226D120;
undefined4 ov12_02261F38();
undefined4 func_0x0221c394() __asm__("sub_0221C394");
undefined4 sub_0200602C(unsigned short, int);
undefined4 Pokepic_AddAttr(void *, int, int);
undefined4 ov12_02261B80();
undefined4 sub_02017068();
undefined4 func_0x02233ecc(void *) __asm__("sub_02233ECC");
undefined4 func_0x02233e88() __asm__("sub_02233E88");
undefined4 func_0x0221c3b0() __asm__("sub_0221C3B0");
undefined4 func_0x02232a54() __asm__("sub_02232A54");
undefined4 Pokepic_GetAttr(void *, int);
void * ov12_0223B750(void *);
undefined4 sub_0200914C(void *, int);
undefined4 func_0x02232ab8() __asm__("sub_02232AB8");
undefined4 func_0x02232a44() __asm__("sub_02232A44");
undefined4 ov12_022643C8();
undefined4 Pokepic_IsAnimFinished(void *);
undefined4 func_0x02234a20() __asm__("sub_02234A20");
undefined4 func_0x0221c3c0() __asm__("sub_0221C3C0");
undefined4 ov12_02261CA8();
undefined4 ov12_0226430C();
undefined4 SysTask_Destroy(void *);
undefined4 Heap_Free(void *);

void ov12_0225C18C(undefined *param_1,undefined4 *param_2)

{
  undefined *puVar1;
  undefined4 uVar2;
  undefined *puVar3;
  int iVar4;
  uint uStack_1c4;
  uint uStack_1c0;
  undefined *puStack_1bc;
  undefined auStack_1b8 [40];
  uint auStack_190 [3];
  uint uStack_184;
  uint uStack_180;
  undefined4 uStack_17c;
  undefined4 uStack_178;
  undefined *puStack_174;
  undefined *puStack_170;
  undefined1 auStack_168 [88];
  undefined1 auStack_110 [80];
  undefined1 auStack_c0 [88];
  undefined1 auStack_68 [88];
  
  puVar1 = ov12_0223A8DC((undefined *)*param_2);
  switch(*(undefined1 *)((int)param_2 + 0x83)) {
  case 0:
    auStack_190[0] = (uint)(byte)(&ov12_0226D120)[*(byte *)((int)param_2 + 0x82)];
    auStack_190[1] = 5;
    uStack_184 = (uint)*(byte *)((int)param_2 + 0x81);
    uStack_180 = (uint)*(ushort *)((int)param_2 + 0x8e);
    puStack_174 = BattleSystem_GetSpriteSystem((undefined *)*param_2);
    puStack_170 = BattleSystem_GetPaletteData((undefined *)*param_2);
    uStack_17c = 1;
    uStack_178 = 0;
    auStack_190[2] = (uint)(*(short *)(param_2 + 0x25) == 1);
    uVar2 = func_0x02233db8(auStack_190);
    param_2[3] = uVar2;
    puVar1 = BattleSystem_GetPokepicManager((undefined *)*param_2);
    NARC_ReadPokepicAnimScript
              (*(undefined **)(param_2[1] + 0x1a4),auStack_1b8,*(ushort *)((int)param_2 + 0x86),
               (ushort)*(byte *)((int)param_2 + 0x82));
    iVar4 = (uint)*(byte *)((int)param_2 + 0x82) * 6;
    uVar2 = ov12_022612A4(*param_2,puVar1,param_2 + 5,
                          (int)*(short *)((uint)*(byte *)((int)param_2 + 0x82) * 4 + 0x22377dc),
                          (int)*(short *)(iVar4 + 0x22377f6),(int)*(short *)(iVar4 + 0x22377f8),
                          *(undefined1 *)((int)param_2 + 0x85),(int)*(char *)(param_2 + 0x24),
                          (int)*(char *)((int)param_2 + 0x91),*(undefined1 *)((int)param_2 + 0x93),
                          *(undefined1 *)((int)param_2 + 0x81),auStack_1b8,0);
    *(undefined4 *)(param_2[1] + 0x20) = uVar2;
    Pokepic_SetAttr(*(undefined **)(param_2[1] + 0x20),0xc,0);
    Pokepic_SetAttr(*(undefined **)(param_2[1] + 0x20),0xd,0);
    Pokepic_SetAttr(*(undefined **)(param_2[1] + 0x20),0x2c,0);
    Pokepic_SetAttr(*(undefined **)(param_2[1] + 0x20),6,1);
    param_2[4] = 0;
    uVar2 = func_0x0221fdfc(*param_2,5);
    param_2[4] = uVar2;
    *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
    return;
  case 1:
    uStack_1c0 = 0;
    puStack_1bc = (undefined *)0x0;
    uStack_1c4 = (uint)*(byte *)((int)param_2 + 0x82);
    puStack_1bc = BattleSystem_GetPartyMon
                            ((undefined *)*param_2,(uint)*(byte *)((int)param_2 + 0x81),
                             (uint)*(byte *)(param_2 + 0x23));
    uStack_1c0 = (uint)*(ushort *)((int)param_2 + 0x8e);
    uVar2 = func_0x02232694(5,&uStack_1c4);
    param_2[2] = uVar2;
    func_0x022329b0();
    *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
    return;
  case 2:
    iVar4 = func_0x02233f20(param_2[3]);
    if ((((iVar4 == 0) || (*(short *)(param_2 + 0x25) != 0)) &&
        (iVar4 = func_0x02232a04(param_2[2]), iVar4 == 1)) &&
       (iVar4 = func_0x02233ea0(param_2[3]), iVar4 == 1)) {
      if (param_2[4] != 0) {
        func_0x0221fe08();
      }
      Pokepic_StartPaletteFade
                (*(undefined **)(param_2[1] + 0x20),0x10,0x10,0,
                 (uint)*(ushort *)((uint)*(ushort *)((int)param_2 + 0x8e) * 2 + 0x226d15a));
      Pokepic_SetAttr(*(undefined **)(param_2[1] + 0x20),6,0);
      func_0x02232a44(param_2[2]);
      if (*(char *)(param_2 + 0x21) == '\x02') {
        sub_0200602C(0x706,0x75);
      }
      else {
        sub_0200602C(0x706,-0x75);
      }
      *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
      return;
    }
    break;
  case 3:
    iVar4 = func_0x02233e88(param_2[3]);
    if (iVar4 != 1) {
      *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
    }
  case 4:
    iVar4 = Pokepic_GetAttr(*(undefined **)(param_2[1] + 0x20),0xc);
    if ((iVar4 == 0x100) && (iVar4 = func_0x02232a54(param_2[2]), iVar4 == 0)) {
      if (*(char *)(param_2 + 0x21) == '\x02') {
        Pokepic_SetAttr(*(undefined **)(param_2[1] + 0x20),0x2d,0);
      }
      ov12_02261F38(*param_2,*(undefined1 *)((int)param_2 + 0x81),
                    *(undefined1 *)((int)param_2 + 0x82),*(undefined4 *)(param_2[1] + 0x20),
                    *(undefined4 *)(param_2[1] + 0x1a4),*(undefined2 *)((int)param_2 + 0x86),
                    *(undefined1 *)((int)param_2 + 0x97),*(undefined1 *)(param_2 + 0x21),
                    param_2[0x22]);
      Pokepic_StartPaletteFade
                (*(undefined **)(param_2[1] + 0x20),0x10,0,0,
                 (uint)*(ushort *)((uint)*(ushort *)((int)param_2 + 0x8e) * 2 + 0x226d15a));
      *(undefined1 *)((int)param_2 + 0x83) = 5;
      return;
    }
    iVar4 = Pokepic_GetAttr(*(undefined **)(param_2[1] + 0x20),0xc);
    if (0xff < iVar4) {
      Pokepic_SetAttr(*(undefined **)(param_2[1] + 0x20),0xc,0x100);
      Pokepic_SetAttr(*(undefined **)(param_2[1] + 0x20),0xd,0x100);
      if (*(char *)(param_2 + 0x21) == '\x02') {
        Pokepic_SetAttr(*(undefined **)(param_2[1] + 0x20),0x2d,0);
      }
      ov12_02261F38(*param_2,*(undefined1 *)((int)param_2 + 0x81),
                    *(undefined1 *)((int)param_2 + 0x82),*(undefined4 *)(param_2[1] + 0x20),
                    *(undefined4 *)(param_2[1] + 0x1a4),*(undefined2 *)((int)param_2 + 0x86),
                    *(undefined1 *)((int)param_2 + 0x97),*(undefined1 *)(param_2 + 0x21),
                    param_2[0x22]);
      Pokepic_StartPaletteFade
                (*(undefined **)(param_2[1] + 0x20),0x10,0,1,
                 (uint)*(ushort *)((uint)*(ushort *)((int)param_2 + 0x8e) * 2 + 0x226d15a));
      *(undefined1 *)((int)param_2 + 0x83) = 5;
      return;
    }
    Pokepic_AddAttr(*(undefined **)(param_2[1] + 0x20),0xc,0x20);
    Pokepic_AddAttr(*(undefined **)(param_2[1] + 0x20),0xd,0x20);
    sub_0200914C(*(undefined **)(param_2[1] + 0x20),(int)*(char *)(param_2 + 0x24));
    return;
  case 5:
    iVar4 = func_0x02232a54(param_2[2]);
    if (iVar4 == 0) {
      *(undefined1 *)((int)param_2 + 0x83) = 6;
      return;
    }
    break;
  case 6:
    puVar3 = ov12_0223B750((undefined *)*param_2);
    iVar4 = sub_02017068(puVar3,*(undefined1 *)((int)param_2 + 0x81));
    if ((iVar4 == 1) &&
       (iVar4 = Pokepic_IsAnimFinished(*(undefined **)(param_2[1] + 0x20)), iVar4 == 0)) {
      func_0x02233ecc(param_2[3]);
      func_0x02232ab8(param_2[2]);
      if (*(char *)((int)param_2 + 0x92) != '\0') {
        ov12_022643C8(*param_2,0,auStack_68,1,0xb,*(undefined1 *)((int)param_2 + 0x81),
                      *(undefined1 *)((int)param_2 + 0x81),0);
        ov12_02261B80(*param_2,param_2[1],puVar1,auStack_68);
        *(undefined1 *)((int)param_2 + 0x83) = 7;
        return;
      }
      *(undefined1 *)((int)param_2 + 0x83) = 8;
      return;
    }
    break;
  case 7:
  case 9:
  case 0xb:
    func_0x0221c394();
    iVar4 = func_0x0221c3b0(puVar1);
    if (iVar4 == 0) {
      func_0x0221c3c0(puVar1);
      *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
      return;
    }
    break;
  case 8:
    if (param_2[0x26] != 0) {
      ov12_022643C8(*param_2,0,auStack_c0,1,0xf,*(undefined1 *)((int)param_2 + 0x81),
                    *(undefined1 *)((int)param_2 + 0x81),0);
      ov12_02261B80(*param_2,param_2[1],puVar1,auStack_c0);
      *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
      return;
    }
    *(undefined1 *)((int)param_2 + 0x83) = 0xff;
    return;
  case 10:
    ov12_02261CA8(*param_2,param_2 + 10,auStack_110,*(undefined1 *)((int)param_2 + 0x81));
    func_0x02234a20(auStack_110,5);
    ov12_022643C8(*param_2,0,auStack_168,1,0x10,*(undefined1 *)((int)param_2 + 0x81),
                  *(undefined1 *)((int)param_2 + 0x81),0);
    ov12_02261B80(*param_2,param_2[1],puVar1,auStack_168);
    *(undefined4 *)(param_2[1] + 0x1a0) = 1;
    *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
    return;
  default:
    ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 0x81),*(undefined1 *)(param_2 + 0x20));
    Heap_Free((undefined *)param_2);
    SysTask_Destroy(param_1);
  }
  return;
}

