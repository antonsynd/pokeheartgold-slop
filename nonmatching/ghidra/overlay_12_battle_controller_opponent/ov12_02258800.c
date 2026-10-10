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
undefined4 GetBattlerHeldItemEffect(void *, int);
undefined4 MaskOfFlagNo(int);
undefined4 GetMonData(void *, int, void *);
undefined4 Battler_GetRandomOpposingBattlerId(void *, void *, int);
undefined4 BattleSystem_GetBattlerIdPartner(void *, int);
undefined4 GetBattlerVar(void *, int, unsigned int, void *);
undefined4 BattleSystem_GetPartySize();
undefined4 ov12_02258BB4();
undefined4 BattleSystem_GetBattleType(void *);
unsigned char GetBattlerAbility(void *, int);
void * BattleSystem_GetPartyMon(void *, int, int);
void * BattleSystem_GetBattleContext(void *);
undefined4 CalculateTypeEffectiveness(unsigned char, unsigned char, unsigned char);
undefined4 ov12_02252054(void *, int, int, int, int, int, int, int, void *);
undefined4 CalcMoveDamage(void *, void *, unsigned int, unsigned int, unsigned int, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char);
undefined4 ov12_02251D28(void *, void *, int, int, int, int, int, void *);
unsigned char BattleSystem_GetFieldSide(void *, int);

uint ov12_02258800(undefined *param_1,uint param_2)

{
  byte bVar1;
  undefined *puVar2;
  uint uVar3;
  int iVar4;
  undefined *puVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  int iVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  int iStack_88;
  uint uStack_84;
  uint uStack_80;
  uint uStack_7c;
  uint uStack_70;
  uint uStack_64;
  uint uStack_60;
  uint uStack_5c;
  uint uStack_58;
  int iStack_44;
  uint uStack_18;

  puVar2 = BattleSystem_GetBattleContext(param_1);
  uVar12 = param_2 & 0xff;
  uVar3 = BattleSystem_GetBattleType(param_1);
  uStack_64 = uVar12;
  if (((uVar3 & 0x10) == 0) && (uVar3 = BattleSystem_GetBattleType(param_1), (uVar3 & 8) == 0)) {
    uVar3 = BattleSystem_GetBattlerIdPartner(param_1,param_2);
    uStack_64 = uVar3 & 0xff;
  }
  uVar3 = Battler_GetRandomOpposingBattlerId(param_1,puVar2,param_2);
  uVar14 = uVar3 & 0xff;
  iVar4 = BattleSystem_GetPartySize(param_1,param_2);
  uStack_58 = 0;
  do {
    uStack_60 = 0;
    uStack_70 = 6;
    uVar13 = 0;
    if (0 < iVar4) {
      do {
        puVar5 = BattleSystem_GetPartyMon(param_1,param_2,uVar13);
        uVar6 = GetMonData(puVar5,0xae,(undefined *)0x0);
        if ((((((uVar6 & 0xffff) == 0) || ((uVar6 & 0xffff) == 0x1ee)) ||
             (uVar6 = GetMonData(puVar5,0xa3,(undefined *)0x0), uVar6 == 0)) ||
            ((uVar6 = MaskOfFlagNo(uVar13), (uVar6 & uStack_58) != 0 ||
             (uVar13 == (byte)puVar2[uVar12 + 0x219c])))) ||
           ((uVar13 == (byte)puVar2[uStack_64 + 0x219c] ||
            ((uVar13 == (byte)puVar2[uVar12 + 0x21a4] ||
             (uVar13 == (byte)puVar2[uStack_64 + 0x21a4])))))) {
          uVar6 = MaskOfFlagNo(uVar13);
          uStack_58 = uVar6 & 0xff | uStack_58;
        }
        else {
          iVar7 = GetBattlerVar(puVar2,uVar14,0x1b,(undefined *)0x0);
          iVar8 = GetBattlerVar(puVar2,uVar14,0x1c,(undefined *)0x0);
          uVar6 = GetMonData(puVar5,0xb1,(undefined *)0x0);
          uVar9 = GetMonData(puVar5,0xb2,(undefined *)0x0);
          uVar6 = CalculateTypeEffectiveness((byte)uVar6,(byte)iVar7,(byte)iVar8);
          iVar7 = CalculateTypeEffectiveness((byte)uVar9,(byte)iVar7,(byte)iVar8);
          uStack_5c = (uVar6 & 0xff) + iVar7 & 0xff;
          if (uStack_60 < uStack_5c) {
            uStack_70 = uVar13 & 0xff;
            uStack_60 = uStack_5c;
          }
        }
        uVar13 = uVar13 + 1;
      } while ((int)uVar13 < iVar4);
    }
    if (uStack_70 == 6) {
      uStack_58 = 0x3f;
    }
    else {
      puVar5 = BattleSystem_GetPartyMon(param_1,param_2,uStack_70);
      iStack_88 = 0;
      do {
        uVar13 = GetMonData(puVar5,iStack_88 + 0x36,(undefined *)0x0);
        uVar13 = uVar13 & 0xffff;
        iVar7 = ov12_02258BB4(param_1,puVar2,puVar5,uVar13);
        if (uVar13 != 0) {
          uStack_18 = 0;
          uVar6 = GetMonData(puVar5,10,(undefined *)0x0);
          bVar1 = GetBattlerAbility(puVar2,uVar14);
          iVar8 = GetBattlerHeldItemEffect(puVar2,uVar14);
          iVar10 = GetBattlerVar(puVar2,uVar14,0x1b,(undefined *)0x0);
          iVar11 = GetBattlerVar(puVar2,uVar14,0x1c,(undefined *)0x0);
          ov12_02252054(puVar2,uVar13,iVar7,uVar6,(uint)bVar1,iVar8,iVar10,iVar11,
                        (undefined *)&uStack_18);
          if ((uStack_18 & 2) != 0) break;
        }
        iStack_88 = iStack_88 + 1;
      } while (iStack_88 < 4);
      if (iStack_88 != 4) {
        return uStack_70;
      }
      uVar13 = MaskOfFlagNo(uStack_70);
      uStack_58 = uVar13 & 0xff | uStack_58;
    }
    if (uStack_58 == 0x3f) {
      uStack_80 = 0;
      uStack_7c = 6;
      uStack_84 = 0;
      if (0 < iVar4) {
        do {
          puVar5 = BattleSystem_GetPartyMon(param_1,param_2,uStack_84);
          uVar13 = GetMonData(puVar5,0xae,(undefined *)0x0);
          if (((((uVar13 & 0xffff) != 0) && ((uVar13 & 0xffff) != 0x1ee)) &&
              (uVar13 = GetMonData(puVar5,0xa3,(undefined *)0x0), uVar13 != 0)) &&
             (((uStack_84 != (byte)puVar2[uVar12 + 0x219c] &&
               (uStack_84 != (byte)puVar2[uStack_64 + 0x219c])) &&
              ((uStack_84 != (byte)puVar2[uVar12 + 0x21a4] &&
               (uStack_84 != (byte)puVar2[uStack_64 + 0x21a4])))))) {
            iStack_44 = 0;
            do {
              uVar13 = GetMonData(puVar5,iStack_44 + 0x36,(undefined *)0x0);
              uVar13 = uVar13 & 0xffff;
              iVar7 = ov12_02258BB4(param_1,puVar2,puVar5,uVar13);
              if ((uVar13 != 0) && (puVar2[uVar13 * 0x10 + 0x3e1] != '\x01')) {
                bVar1 = BattleSystem_GetFieldSide(param_1,uVar14);
                uVar6 = CalcMoveDamage(param_1,puVar2,uVar13,
                                       *(uint *)(puVar2 + (uint)bVar1 * 4 + 0x1bc),
                                       *(uint *)(puVar2 + 0x180),0,0,(byte)param_2,(byte)uVar3,1);
                uStack_18 = 0;
                uVar13 = ov12_02251D28(param_1,puVar2,uVar13,iVar7,param_2,uVar14,uVar6 & 0xff,
                                       (undefined *)&uStack_18);
                uStack_5c = uVar13 & 0xff;
                if ((uStack_18 & 0x140808) != 0) {
                  uStack_5c = 0;
                }
              }
              if (uStack_80 < uStack_5c) {
                uStack_80 = uStack_5c;
                uStack_7c = uStack_84 & 0xff;
              }
              iStack_44 = iStack_44 + 1;
            } while (iStack_44 < 4);
          }
          uStack_84 = uStack_84 + 1;
        } while ((int)uStack_84 < iVar4);
      }
      return uStack_7c;
    }
  } while( true );
}

