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
undefined4 BattleSystem_SetCriticalHpMusicDelay();
undefined4 func_0x02006184() __asm__("sub_02006184");
undefined4 OpponentData_GetHpBar();
undefined4 BattleSystem_GetFieldSide();
undefined4 BattleSystem_GetBattleSpecial();
undefined4 BattleSystem_GetBattleType();
undefined4 PlaySE();
undefined4 BattleSystem_GetCriticalHpMusicDelay();
undefined4 CalculateHpBarColor();
undefined4 BattleSystem_GetMaxBattlers();
undefined4 ov12_02261264();
undefined4 BattleSystem_GetOpponentData();
undefined4 func_0x020726c0() __asm__("sub_020726C0");
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 BattleSystem_SetCriticalHpMusicFlag();
undefined4 BattleSystem_GetCriticalHpMusicFlag();

void ov12_02239854(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  
  iVar1 = BattleSystem_GetMaxBattlers(param_2);
  uVar7 = 0;
  uVar2 = BattleSystem_GetCriticalHpMusicFlag(param_2);
  uVar3 = BattleSystem_GetBattleType(param_2);
  if ((uVar3 & 0x220) == 0) {
    if ((uVar2 & 2) == 0) {
      iVar6 = 0;
      if (0 < iVar1) {
        do {
          uVar4 = BattleSystem_GetOpponentData(param_2,iVar6);
          iVar5 = ov12_02261264();
          if ((((iVar5 == 0) &&
               (uVar2 = BattleSystem_GetBattleSpecial(param_2), (uVar2 & 0x10) == 0)) ||
              ((iVar5 = BattleSystem_GetFieldSide(param_2,iVar6), iVar5 == 0 &&
               (uVar2 = BattleSystem_GetBattleSpecial(param_2), (uVar2 & 0x10) != 0)))) &&
             ((iVar5 = OpponentData_GetHpBar(uVar4), iVar5 != 0 &&
              (iVar5 = CalculateHpBarColor(*(uint *)(iVar5 + 0x28) & 0xffff,
                                           *(uint *)(iVar5 + 0x2c) & 0xffff,0x30), iVar5 == 1)))) {
            uVar2 = func_0x020726c0(iVar6);
            uVar7 = uVar7 | uVar2;
          }
          iVar6 = iVar6 + 1;
        } while (iVar6 < iVar1);
      }
      if ((uVar7 == 0) || (iVar1 = BattleSystem_GetCriticalHpMusicFlag(param_2), iVar1 != 0)) {
        if ((uVar7 == 0) && (iVar1 = BattleSystem_GetCriticalHpMusicFlag(param_2), iVar1 != 0)) {
          func_0x02006154(0x704,0);
          BattleSystem_SetCriticalHpMusicFlag(param_2,0);
        }
      }
      else {
        PlaySE(0x704);
        BattleSystem_SetCriticalHpMusicFlag(param_2,1);
        BattleSystem_SetCriticalHpMusicDelay(param_2,4);
      }
      iVar1 = BattleSystem_GetCriticalHpMusicFlag(param_2);
      if (iVar1 != 0) {
        iVar1 = BattleSystem_GetCriticalHpMusicDelay(param_2);
        iVar6 = func_0x02006184(0x704);
        if (iVar6 == 0) {
          if (iVar1 - 1U == 0) {
            PlaySE(0x704);
            BattleSystem_SetCriticalHpMusicDelay(param_2,4);
            return;
          }
          BattleSystem_SetCriticalHpMusicDelay(param_2,iVar1 - 1U & 0xff);
        }
      }
    }
    else if ((uVar2 & 1) != 0) {
      func_0x02006154(0x704,0);
      BattleSystem_SetCriticalHpMusicFlag(param_2,2);
      return;
    }
  }
  return;
}

