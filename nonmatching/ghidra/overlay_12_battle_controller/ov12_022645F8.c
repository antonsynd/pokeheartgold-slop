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
void * Party_GetMonByIndex(void *, int);
undefined4 Party_GetCount(void *);
unsigned char ov12_0223AB0C(void *, int);
undefined4 GetMonData(void *, int, void *);
undefined4 BattleSystem_GetBattlerIdPartner(void *, int);
void * BattleSystem_GetParty(void *, int);
undefined4 BattleSystem_GetBattleType(void *);
unsigned char BattleSystem_GetFieldSide(void *, int);
undefined4 MIi_CpuClearFast(unsigned int, void *, unsigned int);

void ov12_022645F8(undefined *param_1,int param_2,undefined *param_3,undefined1 param_4,uint param_5
                  )

{
  byte bVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  undefined *puVar5;
  int iVar6;
  undefined *puVar7;
  int iVar8;
  int iVar9;

  MIi_CpuClearFast(0,param_3,8);
  uVar2 = BattleSystem_GetBattleType(param_1);
  *param_3 = param_4;
  if (((((uVar2 & 0xc) == 0xc) ||
       (((uVar2 & 0x10) != 0 && (bVar1 = BattleSystem_GetFieldSide(param_1,param_5), bVar1 != 0))))
      || ((uVar2 == 0x4b && (bVar1 = BattleSystem_GetFieldSide(param_1,param_5), bVar1 != 0)))) ||
     (uVar2 == 0xcb)) {
    bVar1 = ov12_0223AB0C(param_1,param_5);
    if ((bVar1 == 2) || (bVar1 = ov12_0223AB0C(param_1,param_5), bVar1 == 3)) {
      uVar3 = BattleSystem_GetBattlerIdPartner(param_1,param_5);
      uVar2 = param_5;
      param_5 = uVar3;
    }
    else {
      uVar2 = BattleSystem_GetBattlerIdPartner(param_1,param_5);
    }
    puVar5 = BattleSystem_GetParty(param_1,uVar2);
    iVar8 = 0;
    iVar9 = 0;
    iVar6 = Party_GetCount(puVar5);
    if (0 < iVar6) {
      iVar6 = param_2 + uVar2 * 6;
      do {
        puVar7 = Party_GetMonByIndex(puVar5,(uint)*(byte *)(iVar6 + 0x312c));
        uVar2 = GetMonData(puVar7,0xae,(undefined *)0x0);
        if ((uVar2 != 0) && (uVar2 != 0x1ee)) {
          uVar2 = GetMonData(puVar7,0xa3,(undefined *)0x0);
          if (uVar2 == 0) {
            param_3[iVar8 + 2] = 2;
          }
          else {
            uVar2 = GetMonData(puVar7,0xa0,(undefined *)0x0);
            if (uVar2 == 0) {
              param_3[iVar8 + 2] = 1;
            }
            else {
              param_3[iVar8 + 2] = 3;
            }
          }
          iVar8 = iVar8 + 1;
        }
        iVar6 = iVar6 + 1;
        iVar9 = iVar9 + 1;
        iVar4 = Party_GetCount(puVar5);
      } while (iVar9 < iVar4);
    }
    puVar5 = BattleSystem_GetParty(param_1,param_5);
    iVar8 = 3;
    iVar9 = 0;
    iVar6 = Party_GetCount(puVar5);
    if (0 < iVar6) {
      param_2 = param_2 + param_5 * 6;
      do {
        puVar7 = Party_GetMonByIndex(puVar5,(uint)*(byte *)(param_2 + 0x312c));
        uVar2 = GetMonData(puVar7,0xae,(undefined *)0x0);
        if ((uVar2 != 0) && (uVar2 != 0x1ee)) {
          uVar2 = GetMonData(puVar7,0xa3,(undefined *)0x0);
          if (uVar2 == 0) {
            param_3[iVar8 + 2] = 2;
          }
          else {
            uVar2 = GetMonData(puVar7,0xa0,(undefined *)0x0);
            if (uVar2 == 0) {
              param_3[iVar8 + 2] = 1;
            }
            else {
              param_3[iVar8 + 2] = 3;
            }
          }
          iVar8 = iVar8 + 1;
        }
        param_2 = param_2 + 1;
        iVar9 = iVar9 + 1;
        iVar6 = Party_GetCount(puVar5);
      } while (iVar9 < iVar6);
      return;
    }
  }
  else {
    if (((uVar2 & 2) != 0) && ((uVar2 & 8) == 0)) {
      param_5 = param_5 & 1;
    }
    puVar5 = BattleSystem_GetParty(param_1,param_5);
    iVar8 = 0;
    iVar9 = 0;
    iVar6 = Party_GetCount(puVar5);
    if (0 < iVar6) {
      param_2 = param_2 + param_5 * 6;
      do {
        puVar7 = Party_GetMonByIndex(puVar5,(uint)*(byte *)(param_2 + 0x312c));
        uVar2 = GetMonData(puVar7,0xae,(undefined *)0x0);
        if ((uVar2 != 0) && (uVar2 != 0x1ee)) {
          uVar2 = GetMonData(puVar7,0xa3,(undefined *)0x0);
          if (uVar2 == 0) {
            param_3[iVar8 + 2] = 2;
          }
          else {
            uVar2 = GetMonData(puVar7,0xa0,(undefined *)0x0);
            if (uVar2 == 0) {
              param_3[iVar8 + 2] = 1;
            }
            else {
              param_3[iVar8 + 2] = 3;
            }
          }
          iVar8 = iVar8 + 1;
        }
        param_2 = param_2 + 1;
        iVar9 = iVar9 + 1;
        iVar6 = Party_GetCount(puVar5);
      } while (iVar9 < iVar6);
    }
  }
  return;
}

