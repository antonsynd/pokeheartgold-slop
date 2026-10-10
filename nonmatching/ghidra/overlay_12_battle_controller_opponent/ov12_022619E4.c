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
undefined4 BattleSystem_GetMaxBattlers(void *);
undefined4 BattleSystem_GetBattlerFromBattlerType(void *, int);
undefined4 MaskOfFlagNo(int);
undefined4 BattleSystem_GetBattleType(void *);
unsigned char BattleSystem_GetFieldSide(void *, int);
undefined4 BattleSystem_SetBattleOutcomeFlags(void *, unsigned char);

void ov12_022619E4(undefined *param_1,undefined4 param_2,int param_3,int param_4)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined4 uStack_1c;
  
  iVar5 = 0;
  uStack_1c = 0;
  iVar4 = 0;
  iVar2 = BattleSystem_GetMaxBattlers(param_1);
  if (0 < iVar2) {
    do {
      uVar3 = MaskOfFlagNo(iVar4);
      if ((uVar3 & *(byte *)(param_3 + 1)) != 0) {
        bVar1 = BattleSystem_GetFieldSide(param_1,iVar4);
        if (bVar1 == 0) {
          iVar5 = iVar5 + 1;
        }
        else {
          uStack_1c = uStack_1c + 1;
        }
      }
      iVar4 = iVar4 + 1;
      iVar2 = BattleSystem_GetMaxBattlers(param_1);
    } while (iVar4 < iVar2);
  }
  if ((iVar5 != 0) && (uStack_1c != 0)) {
    *(undefined2 *)(param_4 + 2) = 0x30d;
    *(undefined1 *)(param_4 + 1) = 0;
    BattleSystem_SetBattleOutcomeFlags(param_1,0xc3);
    return;
  }
  if (iVar5 != 0) {
    *(undefined2 *)(param_4 + 2) = 0x30d;
    *(undefined1 *)(param_4 + 1) = 0;
    BattleSystem_SetBattleOutcomeFlags(param_1,0xc2);
    return;
  }
  uVar3 = BattleSystem_GetBattleType(param_1);
  if ((uVar3 & 8) == 0) {
    uVar3 = BattleSystem_GetBattleType(param_1);
    if ((uVar3 & 2) == 0) {
      *(undefined2 *)(param_4 + 2) = 0x317;
      *(undefined1 *)(param_4 + 1) = 8;
      iVar2 = BattleSystem_GetBattlerFromBattlerType(param_1,1);
      *(int *)(param_4 + 4) = iVar2;
    }
    else {
      *(undefined2 *)(param_4 + 2) = 0x317;
      *(undefined1 *)(param_4 + 1) = 8;
      iVar2 = BattleSystem_GetBattlerFromBattlerType(param_1,3);
      *(int *)(param_4 + 4) = iVar2;
    }
  }
  else {
    *(undefined2 *)(param_4 + 2) = 0x318;
    *(undefined1 *)(param_4 + 1) = 0x1a;
    iVar2 = BattleSystem_GetBattlerFromBattlerType(param_1,3);
    *(int *)(param_4 + 4) = iVar2;
    iVar2 = BattleSystem_GetBattlerFromBattlerType(param_1,5);
    *(int *)(param_4 + 8) = iVar2;
  }
  BattleSystem_SetBattleOutcomeFlags(param_1,0xc1);
  return;
}

