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
void * SysTask_CreateOnMainQueue(void *, void *, unsigned int);
undefined4 BgSetPosTextAndCommit(void *, unsigned char, int, int);
void * BattleSystem_GetBgConfig(void *);
void * PokepicManager_CreatePokepic(void *, void *, int, int, int, int, void *, void *);
void * Heap_Alloc(int, unsigned int);
void * ov12_0223A8F4(void *, int);
undefined4 BattleSystem_GetBattleType(void *);
undefined4 ManagedSprite_SetPositionXY(void *, short, short);
undefined4 sub_02070D84(int, int, void *);
undefined4 ov12_02261EF0();
unsigned char ov12_0223C140(void *, unsigned int);
void * BattleSystem_GetPokepicManager(void *);
undefined4 ov12_02261B2C();

void ov12_0225A07C(undefined *param_1,int param_2,undefined1 *param_3,undefined4 param_4)

{
  byte bVar1;
  undefined2 uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  uint uVar5;
  int iVar6;
  undefined4 uVar7;
  undefined *puVar8;
  int iVar9;
  uint uStack_58;
  undefined4 uStack_4c;
  undefined auStack_40 [24];
  undefined auStack_28 [6];
  undefined2 uStack_22;
  undefined1 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  puVar3 = (undefined4 *)Heap_Alloc(5,0x24);
  *(undefined1 *)((int)puVar3 + 0x12) = 0;
  if ((*(byte *)(param_2 + 0x195) & 1) == 0) {
    *(undefined1 *)((int)puVar3 + 0x13) = 0;
    puVar4 = (undefined4 *)ov12_0223A8F4(param_1,0);
    puVar3[2] = puVar4;
    ManagedSprite_SetPositionXY
              ((undefined *)*puVar4,*(short *)((*(byte *)(param_2 + 0x195) & 1) * 6 + 0x22377f4),
               0x88);
  }
  else {
    *(undefined1 *)((int)puVar3 + 0x13) = 2;
    puVar4 = (undefined4 *)ov12_0223A8F4(param_1,1);
    puVar3[2] = puVar4;
    ManagedSprite_SetPositionXY
              ((undefined *)*puVar4,*(short *)((*(byte *)(param_2 + 0x195) & 1) * 6 + 0x22377f4),
               0x58);
  }
  uVar5 = BattleSystem_GetBattleType(param_1);
  if (((uVar5 & 8) == 0) &&
     ((uVar5 = BattleSystem_GetBattleType(param_1), (uVar5 & 0x10) == 0 ||
      ((*(byte *)(param_2 + 0x195) & 1) == 0)))) {
    uStack_58 = *(byte *)(param_2 + 0x195) & 1;
  }
  else {
    uStack_58 = (uint)*(byte *)(param_2 + 0x195);
  }
  uVar2 = ov12_02261EF0(param_1,*(undefined1 *)(param_2 + 0x194),*(ushort *)(param_3 + 2) & 0xff);
  *(undefined2 *)(param_3 + 2) = uVar2;
  uVar5 = BattleSystem_GetBattleType(param_1);
  uStack_4c = 0;
  bVar1 = ov12_0223C140(param_1,(uint)*(byte *)(param_2 + 0x194));
  if (bVar1 != 0xff) {
    if (((uVar5 & 2) == 0) || ((uVar5 & 8) != 0)) {
      uStack_4c = 1;
    }
    else {
      uStack_4c = 0;
    }
  }
  iVar9 = (int)*(short *)(uStack_58 * 6 + 0x22377f4);
  iVar6 = (int)*(short *)(uStack_58 * 6 + 0x22377f6);
  uVar7 = ov12_02261B2C(param_1,uStack_58,*(undefined2 *)(param_3 + 2),
                        *(undefined1 *)(param_2 + 0x195),uStack_4c,iVar9,iVar6);
  *(undefined4 *)(param_2 + 0x18) = uVar7;
  puVar3[3] = uVar7;
  if ((*(char *)((int)puVar3 + 0x13) == '\0') &&
     (((((uVar5 = BattleSystem_GetBattleType(param_1), uVar5 == 0 ||
         (uVar5 = BattleSystem_GetBattleType(param_1), uVar5 == 0x20)) ||
        (uVar5 = BattleSystem_GetBattleType(param_1), uVar5 == 0x100)) ||
       ((uVar5 = BattleSystem_GetBattleType(param_1), uVar5 == 0x200 ||
        (uVar5 = BattleSystem_GetBattleType(param_1), uVar5 == 0x400)))) ||
      (uVar5 = BattleSystem_GetBattleType(param_1), uVar5 == 0x1000)))) {
    puVar8 = BattleSystem_GetPokepicManager(param_1);
    sub_02070D84((uint)*(ushort *)(param_3 + 2),(uint)*(byte *)((int)puVar3 + 0x13),auStack_40);
    uStack_22 = 0;
    uStack_20 = 0;
    uStack_1c = 0;
    puVar8 = PokepicManager_CreatePokepic
                       (puVar8,auStack_28,iVar9,iVar6,(int)*(short *)(uStack_58 * 6 + 0x22377f8),
                        (uint)*(byte *)(param_2 + 0x194),(undefined *)0x0,(undefined *)0x0);
    puVar3[1] = puVar8;
  }
  else {
    puVar3[1] = 0;
  }
  *(undefined2 *)(puVar3 + 5) = *(undefined2 *)(uStack_58 * 4 + 0x22377dc);
  *puVar3 = param_1;
  *(undefined1 *)(puVar3 + 4) = *param_3;
  *(undefined1 *)((int)puVar3 + 0x11) = *(undefined1 *)(param_2 + 0x194);
  puVar3[6] = (uint)*(byte *)(param_2 + 0x195);
  puVar3[8] = 0;
  if ((puVar3[6] == 0) || (puVar3[6] == 2)) {
    puVar8 = BattleSystem_GetBgConfig(param_1);
    BgSetPosTextAndCommit(puVar8,3,2,0x84);
  }
  SysTask_CreateOnMainQueue((undefined *)0x225ce29,(undefined *)puVar3,0);
  return;
}

